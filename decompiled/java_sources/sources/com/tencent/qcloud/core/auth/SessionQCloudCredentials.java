package com.tencent.qcloud.core.auth;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.tencent.qcloud.core.http.HttpConfiguration;

/* loaded from: classes10.dex */
public class SessionQCloudCredentials implements QCloudLifecycleCredentials, QCloudRawCredentials {
    private final long expiredTime;
    private final String secretId;
    private final String secretKey;
    private final long startTime;
    private final String token;

    public SessionQCloudCredentials(String str, String str2, String str3, long j) {
        this(str, str2, str3, HttpConfiguration.getDeviceTimeWithOffset(), j);
    }

    private String getKeyTime(long j, long j2) {
        return Utils.handleTimeAccuracy(j) + AndroidTreeView.f47214k + Utils.handleTimeAccuracy(j2);
    }

    private String getSignKey(String str, String str2) {
        byte[] hmacSha1 = Utils.hmacSha1(str2, str);
        if (hmacSha1 != null) {
            return new String(Utils.encodeHex(hmacSha1));
        }
        return null;
    }

    public long getExpiredTime() {
        return this.expiredTime;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudCredentials
    public String getSecretId() {
        return this.secretId;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudRawCredentials
    public String getSecretKey() {
        return this.secretKey;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public String getToken() {
        return this.token;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public boolean isValid() {
        return HttpConfiguration.getDeviceTimeWithOffset() <= this.expiredTime - 60;
    }

    public SessionQCloudCredentials(String str, String str2, String str3, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException("secretId cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("secretKey cannot be null.");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("token cannot be null.");
        }
        if (j < j2) {
            this.secretId = str;
            this.secretKey = str2;
            this.startTime = j;
            this.expiredTime = j2;
            this.token = str3;
            return;
        }
        throw new IllegalArgumentException("beginTime must be less than expiredTime.");
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public String getKeyTime() {
        return Utils.handleTimeAccuracy(this.startTime) + AndroidTreeView.f47214k + Utils.handleTimeAccuracy(this.expiredTime);
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public String getSignKey() {
        return getSignKey(this.secretKey, getKeyTime());
    }

    public SessionQCloudCredentials(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("secretId cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("secretKey cannot be null.");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("token cannot be null.");
        }
        if (str4 != null) {
            this.secretId = str;
            this.secretKey = str2;
            this.token = str3;
            long[] parseKeyTimes = Utils.parseKeyTimes(str4);
            this.startTime = parseKeyTimes[0];
            this.expiredTime = parseKeyTimes[1];
            return;
        }
        throw new IllegalArgumentException("keyTime cannot be null.");
    }
}
