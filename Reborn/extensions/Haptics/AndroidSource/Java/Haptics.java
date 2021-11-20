/*
Haptics extension by Mick @ GamePhase (Mikael Norrgard)
*/

package ${YYAndroidPackageName};

import android.content.Context;
import android.os.Vibrator;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.String;
import java.lang.Math;

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib; 

public class Haptics 
{   
	private Context mContext;
	private Vibrator mVibrator;
	private boolean mHasVibrator;
	private int mVersion;
	
	public double GetSdkVersion()
	{
		return mVersion;
	}
	
	public double Init()
	{
		mContext = RunnerJNILib.GetApplicationContext();
		mVibrator = (Vibrator)mContext.getSystemService(Context.VIBRATOR_SERVICE);
		mHasVibrator = mVibrator.hasVibrator();
		mVersion = android.os.Build.VERSION.SDK_INT;
		return 1;
	}  
	
	public double HasVibrator()
	{
		if(mHasVibrator)
			return 1;
		else	
			return 0;
	}
	
	public double StopVibration()
	{
		if(mHasVibrator) {
			mVibrator.cancel();
			return 1;
		}
		else
			return 0;
	}
	
	public double Vibrate(double time)
	{
		if(mHasVibrator) 
    {
      // Vibrate "forever"
      if(time < 0) { 
        long pattern[] = {0, 100, 0};
        if(mVersion < 26)
          mVibrator.vibrate(pattern, 0);
      }
      // Vibrate a specific amount of time (API < 26)
      else if (mVersion < 26) {
        mVibrator.vibrate((long)time);
      }
      return 1;
		}
		else
			return 0;
	}
	
	public double VibrateIntensity(double time, double intensity)
	{
		if(mHasVibrator) 
		{
			int rep = -1;
			if(time<0) {
				rep = 0;
				time = 46;
			}
			int intens = (int)intensity;
			int time_on = 10;
			int time_off = 0;
			int pulseCount = 1;
			
			switch(intens) {
				case 4:
					if(time < 45) time_on = (int)(time-1); else time_on = 45;
					time_off = 1;
					break;
				case 3:
					if(time < 23) time_on = (int)(time-1); else time_on = 23;
					time_off = 1;
					break;
				case 2:
					if(time < 8) time_on = (int)(time-1); else time_on = 8;
					time_off = 1;
					break;
				case 1:
					time_on = 1;
					time_off = 5;
					break;
				default:
					time_on = (int)time;
					time_off = 0;
					break;
			}
			
			pulseCount = (int)Math.ceil(time/(time_on+time_off));
			
			long[] pattern = new long[pulseCount+1];
			pattern[0] = 0;
			for( int i = 1; i <= pulseCount; i++ ) {
				if(i % 2 == 1)
					pattern[i] = time_on;
				else
					pattern[i] = time_off;
			}
			
      if(mVersion < 26)
        mVibrator.vibrate(pattern, rep);
			
			return 1;
		}
		else
			return 0;
	}
	
	public double Pattern2(double vibrate1, double pause1, double vibrate2)
	{
		if(mHasVibrator) {
			long pattern[] = {0, (long)vibrate1, (long)pause1, (long)vibrate2};
      if(mVersion < 26)
        mVibrator.vibrate(pattern, -1);
			return 1;
		}
			else
				return 0;
	}
	
	public double Pattern3(double vibrate1, double pause1, double vibrate2, double pause2, double vibrate3)
	{
		if(mHasVibrator) {
			long pattern[] = {0, (long)vibrate1, (long)pause1, (long)vibrate2, (long)pause2, (long)vibrate3};
			if(mVersion < 26)
        mVibrator.vibrate(pattern, -1);
			return 1;
		}
			else
				return 0;
	}
	
	public double Pattern4(double vibrate1, double pause1, double vibrate2, double pause2, double vibrate3, double pause3, double vibrate4)
	{
		if(mHasVibrator) {
			long pattern[] = {0, (long)vibrate1, (long)pause1, (long)vibrate2, (long)pause2, (long)vibrate3, (long)pause3, (long)vibrate4};
			if(mVersion < 26)
        mVibrator.vibrate(pattern, -1);
			return 1;
		}
			else
				return 0;
	}
	
	public double PatternString(String sPattern)
	{
		return PatternStringInternal(sPattern, -1);
	}
	
	public double PatternStringRepeat(String sPattern)
	{
		return PatternStringInternal(sPattern, 0);
	}
	
	public double PatternStringInternal(String sPattern, int rep)
	{
		if(mHasVibrator) {
			sPattern = sPattern.replaceAll("\\s","");
			String [] asPattern = sPattern.split(",");
			long[] pattern = new long[asPattern.length+1];  
			pattern[0] = 0;
			for (int i = 0; i < asPattern.length; i++) {   
				pattern[i+1] = Long.parseLong(asPattern[i]);   
			}
			if(mVersion < 26)
        mVibrator.vibrate(pattern, rep);
			return 1;
		}
		else
			return 0;
	}
	
}