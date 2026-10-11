package com.sunia.HTREnginev2.sdk;

import com.sunia.HTREnginev2.impl_native.ParamsNative;

/* loaded from: classes10.dex */
public interface Params {
    static Params createInstance() {
        return new ParamsNative();
    }

    CalculateParams getCalculateParams();

    int getMode();

    void setAssociateDataDir(String str);

    void setConfigName(String str);

    void setDataDir(String str);

    void setKeyValuesConfig(String str);

    void setMode(int i);

    void setResultAssociational(boolean z);

    void setResultCalculate(boolean z);

    void setResultCandidate(boolean z);

    void setResultCoordinate(boolean z);

    void setResultPartitionCoordinate(boolean z);

    void setResultSpanProcessed(boolean z);

    void setWordSplitTimeLot(long j);
}
