package com.onyx.android.sdk.hwr.service.comparator;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\fH&¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/comparator/SubclassComparator;", "Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;", "()V", "compare", "", "firstShape", "", "nextShape", "firstShapeArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "nextShapeArgs", "originPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getPriorityOrders", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class SubclassComparator implements ShapeCandidateComparator {
    @Override // com.onyx.android.sdk.hwr.service.comparator.ShapeCandidateComparator
    public int compare(@NotNull String firstShape, @NotNull String nextShape, @NotNull GeometryArgs firstShapeArgs, @NotNull GeometryArgs nextShapeArgs, @NotNull List<TouchPoint> originPoints) {
        Intrinsics.checkNotNullParameter(firstShape, "firstShape");
        Intrinsics.checkNotNullParameter(nextShape, "nextShape");
        Intrinsics.checkNotNullParameter(firstShapeArgs, "firstShapeArgs");
        Intrinsics.checkNotNullParameter(nextShapeArgs, "nextShapeArgs");
        Intrinsics.checkNotNullParameter(originPoints, "originPoints");
        List<String> priorityOrders = getPriorityOrders();
        return priorityOrders.indexOf(firstShape) - priorityOrders.indexOf(nextShape);
    }

    @NotNull
    public abstract List<String> getPriorityOrders();
}
