package org.greenrobot.eventbus.android;

import android.util.Log;
import java.util.logging.Level;
import org.greenrobot.eventbus.Logger;

/* loaded from: classes13.dex */
public class AndroidLogger implements Logger {

    /* renamed from: a */
    public final String f113928a;

    public AndroidLogger(String str) {
        this.f113928a = str;
    }

    /* renamed from: a */
    public final int m71039a(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        }
        if (intValue < 900) {
            return 4;
        }
        return intValue < 1000 ? 5 : 6;
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(m71039a(level), this.f113928a, str);
        }
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            Log.println(m71039a(level), this.f113928a, str + "\n" + Log.getStackTraceString(th));
        }
    }
}
