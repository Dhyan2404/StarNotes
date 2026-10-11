package com.onyx.android.sdk.geometry.extension;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.geometry.data.MirrorType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"mirrorAllPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "type", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "translateDistance", "", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TouchPointListKt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MirrorType.values().length];
            try {
                iArr[MirrorType.XAxisMirror.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MirrorType.YAxisMirror.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void mirrorAllPoints(@NotNull TouchPointList touchPointList, @NotNull MirrorType type, float f) {
        Intrinsics.checkNotNullParameter(touchPointList, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        Matrix matrix = new Matrix();
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            matrix.setScale(-1.0f, 1.0f);
            matrix.postTranslate(f, 0.0f);
        } else if (i == 2) {
            matrix.setScale(1.0f, -1.0f);
            matrix.postTranslate(0.0f, f);
        }
        for (TouchPoint touchPoint : touchPointList.getPoints()) {
            float[] fArr = {touchPoint.getX(), touchPoint.getY()};
            matrix.mapPoints(fArr);
            touchPoint.setX(fArr[0]);
            touchPoint.setY(fArr[1]);
        }
    }
}
