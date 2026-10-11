package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00012\b\u0010\t\u001a\u0004\u0018\u00010\u0001J+\u0010\u0003\u001a\u00020\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b2\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b¢\u0006\u0002\u0010\rJ\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000eJ\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00172\b\u0010\t\u001a\u0004\u0018\u00010\u0017J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00192\f\u0010\u001a\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0019H\u0007¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/EqualsUtils;", "", "()V", "equals", "", "b1", "Landroid/graphics/Bitmap;", "b2", "s1", "s2", "a1", "", "a2", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", "", "", "f1", "", "f2", "", "i1", "", "i2", "", "l1", "", "l2", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EqualsUtils {

    @NotNull
    public static final EqualsUtils INSTANCE = new EqualsUtils();

    public final boolean equals(byte b1, byte b2) {
        return b1 == b2;
    }

    public final boolean equals(int i1, int i2) {
        return i1 == i2;
    }

    public final boolean equals(boolean b1, boolean b2) {
        return b1 == b2;
    }

    public final boolean equals(@Nullable Object s1, @Nullable Object s2) {
        if (s1 == s2) {
            return true;
        }
        if (s1 == null || s2 == null) {
            return false;
        }
        return Intrinsics.areEqual(s1, s2);
    }

    public final boolean equals(float f1, float f2) {
        return Math.abs(f1 - f2) <= 0.02f;
    }

    public final boolean equals(@Nullable String s1, @Nullable String s2) {
        if (s1 == s2) {
            return true;
        }
        if (TextUtils.isEmpty(s1) && TextUtils.isEmpty(s2)) {
            return true;
        }
        if (s1 == null || s2 == null) {
            return false;
        }
        return Intrinsics.areEqual(s1, s2);
    }

    public final boolean equals(@Nullable Bitmap b1, @Nullable Bitmap b2) {
        if (Intrinsics.areEqual(b1, b2)) {
            return true;
        }
        if (b1 == null || b2 == null || b1.getWidth() != b2.getWidth() || b1.getHeight() != b2.getHeight() || b1.getConfig() != b2.getConfig()) {
            return false;
        }
        int height = b1.getHeight();
        for (int i = 0; i < height; i++) {
            int width = b1.getWidth();
            for (int i2 = 0; i2 < width; i2++) {
                if (b1.getPixel(i2, i) != b2.getPixel(i2, i)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean equals(@Nullable float[] a1, @Nullable float[] a2) {
        if (Intrinsics.areEqual(a1, a2)) {
            return true;
        }
        if (a1 == null || a2 == null || a1.length != a2.length) {
            return false;
        }
        int length = a1.length;
        for (int i = 0; i < length; i++) {
            if (!equals(a1[i], a2[i])) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(@Nullable byte[] a1, @Nullable byte[] a2) {
        if (Intrinsics.areEqual(a1, a2)) {
            return true;
        }
        if (a1 == null || a2 == null || a1.length != a2.length) {
            return false;
        }
        int length = a1.length;
        for (int i = 0; i < length; i++) {
            if (!equals(a1[i], a2[i])) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(@Nullable Object[] a1, @Nullable Object[] a2) {
        if (Intrinsics.areEqual(a1, a2)) {
            return true;
        }
        if (a1 == null || a2 == null || a1.length != a2.length) {
            return false;
        }
        int length = a1.length;
        for (int i = 0; i < length; i++) {
            if (!Intrinsics.areEqual(a1[i], a2[i])) {
                return false;
            }
        }
        return true;
    }

    @JvmStatic
    public static final boolean equals(@Nullable List<?> l1, @Nullable List<?> l2) {
        if (l1 == l2) {
            return true;
        }
        if (l1 == null || l2 == null || l1.size() != l2.size()) {
            return false;
        }
        int size = l1.size();
        for (int i = 0; i < size; i++) {
            if (!Intrinsics.areEqual(l1.get(i), l2.get(i))) {
                return false;
            }
        }
        return true;
    }
}
