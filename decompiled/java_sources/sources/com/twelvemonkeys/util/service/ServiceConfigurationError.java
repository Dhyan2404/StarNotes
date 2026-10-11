package com.twelvemonkeys.util.service;

/* loaded from: classes10.dex */
public class ServiceConfigurationError extends Error {
    public ServiceConfigurationError(Throwable th) {
        super(th);
    }

    public ServiceConfigurationError(String str) {
        super(str);
    }

    public ServiceConfigurationError(String str, Throwable th) {
        super(str, th);
    }
}
