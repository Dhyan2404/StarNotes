package com.sunia.nbiv2.sdk;

import android.content.Context;
import com.sunia.commonv2.bean.NAIResult;
import com.sunia.naiv2.sdk.NAIPath;
import com.sunia.nbiv2.local.LocalNBIListener;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class NBIEngine {
    private static final String TAG = "NBIEngine";

    public static NBIEngine createInstance() {
        return new NBIEngineNative();
    }

    public abstract boolean clearPoints();

    public abstract void destroyBeatifyEngine();

    public abstract boolean doBeautifyTransform(NAIResult nAIResult, long j, long j2);

    public abstract boolean doBeautifyTransform(List<NAIPath> list, long j, long j2);

    public abstract String getErrorInfo();

    public abstract boolean isValidate();

    public abstract boolean nbiSetAxisOutput(boolean z);

    public abstract boolean nbiSetOutlineOutput(boolean z);

    public abstract boolean setCallback(LocalNBIListener localNBIListener);

    public abstract boolean setParameters(int[] iArr);

    public abstract boolean start(Context context, String str);

    public abstract void stopBeautify();
}
