package com.sunia.HTREnginev2.impl_native.Local;

import com.sunia.HTREnginev2.sdk.AuthenticateCallBack;
import com.sunia.HTREnginev2.utils.LogUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes10.dex */
public class LocalAuthenticateCallBack implements AuthenticateCallBack {
    private final WeakReference<EngineAuthorInterface> weakEngine;

    /* loaded from: classes10.dex */
    public interface EngineAuthorInterface {
        void setInvalidate(boolean z, String str, String str2);
    }

    public LocalAuthenticateCallBack(EngineAuthorInterface engineAuthorInterface) {
        this.weakEngine = new WeakReference<>(engineAuthorInterface);
    }

    @Override // com.sunia.HTREnginev2.sdk.AuthenticateCallBack
    public void onFail(String str, String str2) {
        EngineAuthorInterface engineAuthorInterface = this.weakEngine.get();
        LogUtil.m57653d("authenticateCallBack", str + " " + str2);
        if (engineAuthorInterface != null) {
            engineAuthorInterface.setInvalidate(false, str, str2);
        }
    }

    @Override // com.sunia.HTREnginev2.sdk.AuthenticateCallBack
    public void onSuccess(String str, String str2) {
        LogUtil.m57653d("authenticateCallBack", "onSuccess:" + str + " " + str2);
        EngineAuthorInterface engineAuthorInterface = this.weakEngine.get();
        if (engineAuthorInterface != null) {
            engineAuthorInterface.setInvalidate(true, str, str2);
        }
    }
}
