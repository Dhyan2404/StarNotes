package com.sunia.HTREnginev2.sdk;

import android.content.Context;
import com.sunia.HTREnginev2.impl_native.EngineNative;
import com.sunia.HTREnginev2.impl_native.Local.LocalEngineNative;
import com.sunia.HTREnginev2.sdk.editor.Editor;

/* loaded from: classes10.dex */
public abstract class Engine {
    private static final String TAG = "Engine";

    @Deprecated
    public static Engine createInstance(Context context, String str, String str2, String str3, String str4, String str5, String str6, Object obj) {
        throw new RuntimeException("Not supported in current version");
    }

    public static String getEngineVersionV2() {
        return LocalEngineNative.getEngineVersion(0L);
    }

    public abstract Editor createEditor(Params params);

    public abstract String getAuthInfo();

    public abstract String getEngineVersion();

    public abstract boolean isValidate();

    public abstract void release();

    public abstract void setDebugLevel(int i);

    public abstract void setInitializeCallback(EngineAuthenticateCallback engineAuthenticateCallback);

    public abstract void setLogDir(String str);

    public abstract void start();

    public abstract void stopEngine();

    public static Engine createInstance(Context context, String str) {
        return new EngineNative(context, str);
    }
}
