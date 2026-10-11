package com.tencent.qcloud.core.http;

import com.tencent.qcloud.core.task.SelfConstraintRetryStrategy;

/* loaded from: classes10.dex */
public class HttpSelConstraintRetryStrategy extends SelfConstraintRetryStrategy {
    public HttpSelConstraintRetryStrategy(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    @Override // com.tencent.qcloud.core.task.SelfConstraintRetryStrategy
    public boolean shouldIncreaseDelay(Exception exc) {
        return HttpUtil.isNetworkTimeoutError(exc);
    }
}
