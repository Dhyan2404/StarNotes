package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public interface DrmSDK {
    byte[] decrypt(byte[] bArr, String str);

    boolean isEncrypted(String str);
}
