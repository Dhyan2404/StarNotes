package com.sunia.HTREnginev2.impl_native;

import com.sunia.HTREnginev2.impl_native.Local.LocalParamsNative;
import com.sunia.HTREnginev2.sdk.CalculateParams;
import com.sunia.HTREnginev2.sdk.Params;
import com.sunia.HTREnginev2.utils.LogUtil;

/* loaded from: classes10.dex */
public class ParamsNative extends ObjectNativeBase implements Params {
    static String TAG = "ParamsNative";
    private CalculateParams calculateParams;

    public ParamsNative() {
        this.lHandler = LocalParamsNative.createNewParams();
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public CalculateParams getCalculateParams() {
        return this.calculateParams;
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public int getMode() {
        return LocalParamsNative.getMode(this.lHandler);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setAssociateDataDir(String str) {
        LogUtil.m57653d(TAG, "setAssociateDataDir");
        LocalParamsNative.setAssociateDataDir(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setConfigName(String str) {
        LocalParamsNative.setConfigName(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setDataDir(String str) {
        LocalParamsNative.setDataDir(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setKeyValuesConfig(String str) {
        LogUtil.m57653d(TAG, "setKeyValuesConfig:" + str);
        LocalParamsNative.setKeyValuesConfig(this.lHandler, str);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setMode(int i) {
        LocalParamsNative.setMode(this.lHandler, i);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultAssociational(boolean z) {
        LocalParamsNative.setResultAssociational(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultCalculate(boolean z) {
        LocalParamsNative.setResultCalculate(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultCandidate(boolean z) {
        LocalParamsNative.setResultCandidate(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultCoordinate(boolean z) {
        LocalParamsNative.setResultCoordinate(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultPartitionCoordinate(boolean z) {
        LocalParamsNative.setResultPartitionCoordinate(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setResultSpanProcessed(boolean z) {
        LocalParamsNative.setResultSpanProcessed(this.lHandler, z);
    }

    @Override // com.sunia.HTREnginev2.sdk.Params
    public void setWordSplitTimeLot(long j) {
        LocalParamsNative.setWordSplitTimeLot(this.lHandler, j);
    }

    public ParamsNative(long j) {
        if (j != 0) {
            this.lHandler = j;
        } else if (LogUtil.canLogE()) {
            LogUtil.m57654e(TAG, "invalidate handle");
        }
        this.calculateParams = new CalculateParamsNative(this.lHandler);
    }
}
