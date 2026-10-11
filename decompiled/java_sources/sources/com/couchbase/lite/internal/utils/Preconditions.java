package com.couchbase.lite.internal.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.fasterxml.jackson.core.base.ParserBase;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Collection;

/* loaded from: classes4.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static int assertInt(long j, @NonNull String str) {
        if (j >= ParserBase.f21225q && j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalArgumentException(str + " must be -2147483648" + CloudStorageConstants.OPERATION_LESS_EQUAL + j + CloudStorageConstants.OPERATION_LESS_EQUAL + Integer.MAX_VALUE);
    }

    public static long assertNegative(long j, @NonNull String str) {
        if (j < 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " must be <0");
    }

    @NonNull
    public static String assertNotEmpty(@Nullable String str, @NonNull String str2) {
        if (!StringUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(str2 + " must not be empty");
    }

    public static long assertNotNegative(long j, @NonNull String str) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " must be >=0");
    }

    @NonNull
    public static <T> T assertNotNull(@Nullable T t, @NonNull String str) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException(str + " must not be null");
    }

    public static long assertNotZero(long j, @NonNull String str) {
        if (j != 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " must not be 0");
    }

    public static long assertPositive(long j, @NonNull String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " must be >0");
    }

    public static void assertThat(boolean z, @NonNull String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static long assertUInt32(long j, @NonNull String str) {
        if (j >= 0 && j < 4294967296L) {
            return j;
        }
        throw new IllegalArgumentException(str + " must be 0 <= " + j + " < 2^32");
    }

    public static long assertZero(long j, @NonNull String str) {
        if (j == 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " must be 0");
    }

    public static int assertNegative(int i, @NonNull String str) {
        if (i < 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " must be <0");
    }

    @NonNull
    public static <K extends Collection<T>, T> K assertNotEmpty(@Nullable K k, @NonNull String str) {
        if (k != null && !k.isEmpty()) {
            return k;
        }
        throw new IllegalArgumentException(str + " must not be null or empty");
    }

    public static int assertNotNegative(int i, @NonNull String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " must be >=0");
    }

    public static int assertNotZero(int i, @NonNull String str) {
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " must not be 0");
    }

    public static int assertPositive(int i, @NonNull String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " must be >0");
    }

    @Nullable
    public static <T> T assertThat(@Nullable T t, @NonNull String str, @NonNull InterfaceC2217Fn.NullablePredicate<T> nullablePredicate) {
        if (nullablePredicate.test(t)) {
            return t;
        }
        throw new IllegalArgumentException(str);
    }

    public static int assertZero(int i, @NonNull String str) {
        if (i == 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " must be 0");
    }

    @NonNull
    public static char[] assertNotEmpty(@Nullable char[] cArr, @NonNull String str) {
        if (cArr != null && cArr.length > 0) {
            return cArr;
        }
        throw new IllegalArgumentException(str + " must not be empty");
    }
}
