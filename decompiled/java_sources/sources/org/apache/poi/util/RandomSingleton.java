package org.apache.poi.util;

import java.security.SecureRandom;

/* loaded from: classes13.dex */
public class RandomSingleton {
    private static final SecureRandom INSTANCE = new SecureRandom();

    public static SecureRandom getInstance() {
        return INSTANCE;
    }
}
