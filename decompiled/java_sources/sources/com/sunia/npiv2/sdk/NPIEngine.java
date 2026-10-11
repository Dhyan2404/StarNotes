package com.sunia.npiv2.sdk;

import android.content.Context;
import android.media.Image;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class NPIEngine {
    private static final String TAG = "NPIEngine";

    public static NPIEngine createInstance(Context context) {
        return new NPIEngineNative(context);
    }

    public abstract List<RecognizePath> getNpiTransformResult();

    public abstract long npiCreateEngine();

    public abstract boolean npiDestroyEngine();

    public abstract boolean npiEngineValid();

    public abstract boolean npiExtractFromData(byte[] bArr);

    public abstract boolean npiExtractFromFile(String str);

    public abstract boolean npiExtractFromObject(Image image);

    public abstract int npiGetLineCount();

    public abstract int npiGetLinePoints(int i, double[] dArr, double[] dArr2);

    public abstract int npiGetLinePointsCount(int i);
}
