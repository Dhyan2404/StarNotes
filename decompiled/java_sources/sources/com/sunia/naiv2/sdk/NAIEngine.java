package com.sunia.naiv2.sdk;

import android.content.Context;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.commonv2.bean.NAIResult;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class NAIEngine {
    private static final String TAG = "NAIEngine";

    public static NAIEngine createInstance() {
        return new NAIEngineNative();
    }

    public abstract int addRecognizePath(RecognizePath recognizePath);

    public abstract String getErrorInfo();

    public abstract NAIResult getNAIResult(int i);

    public abstract NAIResult getNAIResult(String str, int i);

    public abstract NAIResult getNAIResultForGraphic(int i, int i2);

    public abstract boolean naiClearPoints();

    public abstract boolean naiDestroyEngine();

    public abstract boolean naiEngineValid();

    public abstract boolean naiRemoveLines(int[] iArr);

    public abstract boolean naiResetConfig();

    public abstract void naiSetConfig(String str);

    public abstract String naiSupportLayout(String str, int i);

    public abstract boolean start(Context context, String str, String str2, String str3, List<InputStream> list, boolean z);
}
