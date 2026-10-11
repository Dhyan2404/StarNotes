package com.couchbase.lite.internal.core.impl;

import com.couchbase.lite.internal.core.C4Prediction;

/* loaded from: classes4.dex */
public class NativeC4Prediction implements C4Prediction.NativeImpl {
    private static native void registerModel(String str, long j);

    private static native void unregisterModel(String str);

    @Override // com.couchbase.lite.internal.core.C4Prediction.NativeImpl
    public void nRegisterModel(String str, long j) {
        registerModel(str, j);
    }

    @Override // com.couchbase.lite.internal.core.C4Prediction.NativeImpl
    public void nUnregisterModel(String str) {
        unregisterModel(str);
    }
}
