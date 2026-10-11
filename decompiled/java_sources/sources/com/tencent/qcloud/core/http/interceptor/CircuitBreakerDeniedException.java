package com.tencent.qcloud.core.http.interceptor;

import java.io.IOException;

/* loaded from: classes10.dex */
public class CircuitBreakerDeniedException extends IOException {
    public CircuitBreakerDeniedException(String str) {
        super(str);
    }
}
