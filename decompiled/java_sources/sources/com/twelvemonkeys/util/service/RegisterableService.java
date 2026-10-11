package com.twelvemonkeys.util.service;

/* loaded from: classes10.dex */
public interface RegisterableService {
    void onDeregistration(ServiceRegistry serviceRegistry, Class cls);

    void onRegistration(ServiceRegistry serviceRegistry, Class cls);
}
