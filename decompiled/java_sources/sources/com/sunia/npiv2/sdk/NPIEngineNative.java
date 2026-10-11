package com.sunia.npiv2.sdk;

import android.app.Application;
import android.content.Context;
import android.media.Image;
import com.sunia.HTREnginev2.sdk.RecognizePath;
import com.sunia.HTREnginev2.sdk.RecognizePoint;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.commonv2.util.HWRCommonUtil;
import com.sunia.npiv2.local.LocalEngineNative;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class NPIEngineNative extends NPIEngine {
    private static final String TAG = "NPIEngineNative";
    private Application mContext;
    private long mHandler;
    private boolean mIsValid = true;
    private long startTime;

    public NPIEngineNative(Context context) {
        this.mContext = (Application) HWRCommonUtil.getApplicationContent(context);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public List<RecognizePath> getNpiTransformResult() {
        ArrayList arrayList = new ArrayList();
        int npiGetLineCount = LocalEngineNative.npiGetLineCount(this.mHandler);
        for (int i = 0; i < npiGetLineCount; i++) {
            int npiGetLinePointsCount = LocalEngineNative.npiGetLinePointsCount(this.mHandler, i);
            double[] dArr = new double[npiGetLinePointsCount];
            double[] dArr2 = new double[npiGetLinePointsCount];
            LocalEngineNative.npiGetLinePoints(this.mHandler, i, dArr, dArr2);
            RecognizePath recognizePath = new RecognizePath();
            ArrayList<RecognizePoint> arrayList2 = new ArrayList<>(npiGetLinePointsCount);
            recognizePath.setPoints(arrayList2);
            arrayList.add(recognizePath);
            for (int i2 = 0; i2 < npiGetLinePointsCount; i2++) {
                RecognizePoint recognizePoint = new RecognizePoint();
                recognizePoint.f84039x = (float) dArr[i2];
                recognizePoint.f84040y = (float) dArr2[i2];
                if (i2 == 0) {
                    recognizePoint.down();
                } else if (i == npiGetLinePointsCount - 1) {
                    recognizePoint.m57152up();
                } else {
                    recognizePoint.move();
                }
                arrayList2.add(recognizePoint);
            }
        }
        return arrayList;
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public long npiCreateEngine() {
        this.mHandler = LocalEngineNative.npiCreateEngine("");
        LogUtil.m57653d(TAG, "npiCreateEngine result=" + this.mHandler);
        return this.mHandler;
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public boolean npiDestroyEngine() {
        return LocalEngineNative.npiDestroyEngine(this.mHandler);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public boolean npiEngineValid() {
        return LocalEngineNative.npiEngineValid(this.mHandler);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public boolean npiExtractFromData(byte[] bArr) {
        return LocalEngineNative.npiExtractFromData(this.mHandler, bArr);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public boolean npiExtractFromFile(String str) {
        return LocalEngineNative.npiExtractFromFile(this.mHandler, str);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public boolean npiExtractFromObject(Image image) {
        return LocalEngineNative.npiExtractFromObject(this.mHandler, image);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public int npiGetLineCount() {
        return LocalEngineNative.npiGetLineCount(this.mHandler);
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public int npiGetLinePoints(int i, double[] dArr, double[] dArr2) {
        return 0;
    }

    @Override // com.sunia.npiv2.sdk.NPIEngine
    public int npiGetLinePointsCount(int i) {
        return LocalEngineNative.npiGetLinePointsCount(this.mHandler, i);
    }
}
