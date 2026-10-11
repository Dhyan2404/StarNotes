package com.onyx.android.sdk.hwr.service.comparator;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH&J\u000e\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bH&¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/comparator/ShapeCandidateComparator;", "", "compare", "", "firstShape", "", "nextShape", "firstShapeArgs", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "nextShapeArgs", "originPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getSupportedShapes", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface ShapeCandidateComparator {
    int compare(@NotNull String firstShape, @NotNull String nextShape, @NotNull GeometryArgs firstShapeArgs, @NotNull GeometryArgs nextShapeArgs, @NotNull List<TouchPoint> originPoints);

    @NotNull
    List<String> getSupportedShapes();
}
