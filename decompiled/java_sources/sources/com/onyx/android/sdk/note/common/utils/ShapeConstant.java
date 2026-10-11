package com.onyx.android.sdk.note.common.utils;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000e\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeConstant;", "", "", "a", "I", "getSHAPE_REGULAR_POLYGON_SIZE_NUM", "()I", "setSHAPE_REGULAR_POLYGON_SIZE_NUM", "(I)V", "SHAPE_REGULAR_POLYGON_SIZE_NUM", "b", "getSHAPE_REGULAR_HEXAGON_SIZE_NUM", "setSHAPE_REGULAR_HEXAGON_SIZE_NUM", "SHAPE_REGULAR_HEXAGON_SIZE_NUM", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeConstant {

    @NotNull
    public static final ShapeConstant INSTANCE = new ShapeConstant();

    /* renamed from: a, reason: from kotlin metadata */
    public static int SHAPE_REGULAR_POLYGON_SIZE_NUM = 5;

    /* renamed from: b, reason: from kotlin metadata */
    public static int SHAPE_REGULAR_HEXAGON_SIZE_NUM = 6;

    public final int getSHAPE_REGULAR_HEXAGON_SIZE_NUM() {
        return SHAPE_REGULAR_HEXAGON_SIZE_NUM;
    }

    public final int getSHAPE_REGULAR_POLYGON_SIZE_NUM() {
        return SHAPE_REGULAR_POLYGON_SIZE_NUM;
    }

    public final void setSHAPE_REGULAR_HEXAGON_SIZE_NUM(int i) {
        SHAPE_REGULAR_HEXAGON_SIZE_NUM = i;
    }

    public final void setSHAPE_REGULAR_POLYGON_SIZE_NUM(int i) {
        SHAPE_REGULAR_POLYGON_SIZE_NUM = i;
    }
}
