package com.onyx.android.sdk.base.utils;

import android.util.Log;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0003\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u0004\u001a\f\u0010\u0005\u001a\u00020\u0001*\u0004\u0018\u00010\u0006\u001a\f\u0010\u0005\u001a\u00020\u0001*\u0004\u0018\u00010\u0007\u001a\f\u0010\b\u001a\u00020\t*\u0004\u0018\u00010\u0006¨\u0006\n"}, m61528d2 = {"isNotEmpty", "", "T", "", "([Ljava/lang/Object;)Z", "isNullOrEmpty", "", "", "utf16le", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ArraysKt {
    public static final <T> boolean isNotEmpty(@Nullable T[] tArr) {
        return !(tArr == null || tArr.length == 0);
    }

    public static final boolean isNullOrEmpty(@Nullable int[] iArr) {
        if (iArr != null) {
            return iArr.length == 0;
        }
        return true;
    }

    @NotNull
    public static final String utf16le(@Nullable byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            Charset forName = Charset.forName("UTF-16LE");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
            return new String(bArr, forName);
        } catch (Exception e) {
            Log.w("", e);
            return "";
        }
    }

    public static final boolean isNullOrEmpty(@Nullable byte[] bArr) {
        if (bArr != null) {
            return bArr.length == 0;
        }
        return true;
    }
}
