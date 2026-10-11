package com.onyx.android.sdk.note.common.utils;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeFillUtils;", "", "()V", "createFillRectF", "", "Landroid/graphics/RectF;", "touchPointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeFillUtils {

    @NotNull
    public static final ShapeFillUtils INSTANCE = new ShapeFillUtils();

    @NotNull
    public final List<RectF> createFillRectF(@NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
        ArrayList arrayList = new ArrayList();
        int size = touchPointList.size();
        for (int i = 0; i < size; i += 2) {
            int i2 = i + 1;
            if (i2 >= size) {
                break;
            }
            TouchPoint touchPoint = touchPointList.get(i);
            TouchPoint touchPoint2 = touchPointList.get(i2);
            arrayList.add(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()));
        }
        return arrayList;
    }
}
