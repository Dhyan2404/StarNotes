package com.sunia.HTREnginev2.impl_native;

import com.sunia.HTREnginev2.impl_native.Local.LocalParamsNative;
import com.sunia.HTREnginev2.sdk.CalculateParams;
import com.sunia.HTREnginev2.utils.LogUtil;

/* loaded from: classes10.dex */
public class CalculateParamsNative extends ObjectNativeBase implements CalculateParams {
    static String TAG = "CalculateParamsNative";

    public CalculateParamsNative(long j) {
        if (j != 0) {
            this.lHandler = j;
        } else if (LogUtil.canLogE()) {
            LogUtil.m57654e(TAG, "invalidate handle");
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.CalculateParams
    public void setMathEngineRadianOrDegree(String str) {
        LocalParamsNative.setMathEngineRadianOrDegree(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.CalculateParams
    public void setMathResultRoundingMode(int i) {
        LocalParamsNative.setMathResultRoundingMode(this.lHandler, i);
    }

    @Override // com.sunia.HTREnginev2.sdk.CalculateParams
    public void setMathResultScale(int i) {
        LocalParamsNative.setMathResultScale(this.lHandler, i);
    }
}
