package com.sunia.HTREnginev2.sdk;

/* loaded from: classes10.dex */
public interface EngineAuthenticateCallback {
    void onError(Exception exc, String str);

    void onSuccess(Engine engine, String str, String str2);
}
