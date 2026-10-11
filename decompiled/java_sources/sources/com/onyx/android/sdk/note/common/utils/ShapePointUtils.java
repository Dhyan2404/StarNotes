package com.onyx.android.sdk.note.common.utils;

import com.onyx.android.sdk.note.common.shape.Shape;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapePointUtils;", "", "()V", "shapePointCount", "", "shapes", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapePointUtils {

    @NotNull
    public static final ShapePointUtils INSTANCE = new ShapePointUtils();

    public final int shapePointCount(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getUsePointCount();
        }
        return i;
    }
}
