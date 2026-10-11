package com.tencent.qcloud.core.auth;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.tencent.qcloud.core.http.HttpConfiguration;

/* loaded from: classes10.dex */
public class BasicQCloudCredentials implements QCloudLifecycleCredentials, QCloudRawCredentials {
    private final String keyTime;
    private final String secretId;
    private final String secretKey;
    private final String signKey;

    public BasicQCloudCredentials(String str, String str2, String str3, long j, long j2) {
        if (str == null) {
            throw new IllegalArgumentException("secretId cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("secretKey cannot be null.");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("signKey cannot be null.");
        }
        if (j < j2) {
            this.secretId = str;
            this.secretKey = str2;
            this.signKey = str3;
            this.keyTime = Utils.handleTimeAccuracy(j) + AndroidTreeView.f47214k + Utils.handleTimeAccuracy(j2);
            return;
        }
        throw new IllegalArgumentException("beginTime must be less than expiredTime.");
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public String getKeyTime() {
        return this.keyTime;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudCredentials
    public String getSecretId() {
        return this.secretId;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudRawCredentials
    public String getSecretKey() {
        return this.secretKey;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public String getSignKey() {
        return this.signKey;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudLifecycleCredentials
    public boolean isValid() {
        long deviceTimeWithOffset = HttpConfiguration.getDeviceTimeWithOffset();
        long[] parseKeyTimes = Utils.parseKeyTimes(this.keyTime);
        return deviceTimeWithOffset > parseKeyTimes[0] && deviceTimeWithOffset < parseKeyTimes[1] - 60;
    }

    public BasicQCloudCredentials(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("secretId cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("secretKey cannot be null.");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("signKey cannot be null.");
        }
        if (str4 != null) {
            this.secretId = str;
            this.secretKey = str2;
            this.signKey = str3;
            this.keyTime = str4;
            return;
        }
        throw new IllegalArgumentException("keyTime cannot be null.");
    }
}
