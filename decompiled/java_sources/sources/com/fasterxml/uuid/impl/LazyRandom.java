package com.fasterxml.uuid.impl;

import java.security.SecureRandom;

/* loaded from: classes4.dex */
public final class LazyRandom {

    /* renamed from: a */
    public static final SecureRandom f21380a = new SecureRandom();

    public static SecureRandom sharedSecureRandom() {
        return f21380a;
    }
}
