package com.sunia.commonv2.callback;

import com.sunia.HTREnginev2.utils.LogUtil;

/* loaded from: classes10.dex */
public abstract class AbsCoreCommonCallback<T> implements CoreCommonCallback<T> {
    private static final String TAG = "AbsCoreCommonCallback";

    @Override // com.sunia.commonv2.callback.CoreCommonCallback
    public void onError(Throwable th) {
        LogUtil.m57657w(TAG, LogUtil.getStackTraceString(th));
    }
}
