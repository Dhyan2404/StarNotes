package com.onyx.android.sdk.geometry.utils;

import android.graphics.Matrix;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/utils/TinyMathUtils;", "", "Landroid/graphics/Matrix;", "matrix", "", "isEmptyMatrix", "", "INT_ONE", "I", "", "FLOAT_ONE", "F", "a", "Landroid/graphics/Matrix;", "EMPTY", Constants.CONSTRUCTOR_NAME, "()V", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class TinyMathUtils {
    public static final float FLOAT_ONE = 1.0f;
    public static final int INT_ONE = 1;

    @NotNull
    public static final TinyMathUtils INSTANCE = new TinyMathUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Matrix EMPTY = new Matrix();

    public final boolean isEmptyMatrix(@Nullable Matrix matrix) {
        return matrix == null || Intrinsics.areEqual(matrix, EMPTY);
    }
}
