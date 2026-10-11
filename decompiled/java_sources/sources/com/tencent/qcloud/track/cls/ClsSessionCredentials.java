package com.tencent.qcloud.track.cls;

/* loaded from: classes10.dex */
public class ClsSessionCredentials {
    private final long expiredTime;
    private final String secretId;
    private final String secretKey;
    private final String token;

    public ClsSessionCredentials(String str, String str2, String str3, long j) {
        if (str == null) {
            throw new IllegalArgumentException("secretId cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("secretKey cannot be null.");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("token cannot be null.");
        }
        this.secretId = str;
        this.secretKey = str2;
        this.expiredTime = j;
        this.token = str3;
    }

    public long getExpiredTime() {
        return this.expiredTime;
    }

    public String getSecretId() {
        return this.secretId;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    public String getToken() {
        return this.token;
    }

    public boolean isValid() {
        return System.currentTimeMillis() / 1000 <= this.expiredTime - 60;
    }
}
