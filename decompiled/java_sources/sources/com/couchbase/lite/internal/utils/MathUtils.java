package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import java.util.Random;

/* loaded from: classes4.dex */
public final class MathUtils {

    @NonNull
    public static final ThreadLocal<Random> RANDOM = new ThreadLocal<Random>() { // from class: com.couchbase.lite.internal.utils.MathUtils.1
        @Override // java.lang.ThreadLocal
        @NonNull
        public synchronized Random initialValue() {
            return new Random();
        }
    };

    private MathUtils() {
    }
}
