package com.onyx.android.sdk.note.common.utils;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004R\u001a\u0010\u0010\u001a\u00020\u000b8\u0006X\u0086D¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PathUtils;", "", "Landroid/graphics/Path;", "path", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "drawRect", "rectPointList", "rectToPathPointList", "expandPathByTouchList", "", "a", "I", "getRECT_TO_PAHT_POINT_STEP", "()I", "RECT_TO_PAHT_POINT_STEP", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1855#2,2:72\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\ncom/onyx/android/sdk/note/common/utils/PathUtils\n*L\n40#1:72,2\n*E\n"})
/* loaded from: classes8.dex */
public final class PathUtils {

    @NotNull
    public static final PathUtils INSTANCE = new PathUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int RECT_TO_PAHT_POINT_STEP = 10;

    public final void drawRect(@NotNull Path path, @Nullable TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (pointList == null || pointList.size() <= 0) {
            return;
        }
        path.reset();
        TouchPointList rectTouchPointList = PointUtils.INSTANCE.toRectTouchPointList(pointList);
        if (rectTouchPointList.size() < 4) {
            return;
        }
        path.moveTo(rectTouchPointList.get(0).getX(), rectTouchPointList.get(0).getY());
        path.lineTo(rectTouchPointList.get(1).getX(), rectTouchPointList.get(1).getY());
        path.lineTo(rectTouchPointList.get(2).getX(), rectTouchPointList.get(2).getY());
        path.lineTo(rectTouchPointList.get(3).getX(), rectTouchPointList.get(3).getY());
        path.close();
    }

    public final void expandPathByTouchList(@NotNull Path path, @Nullable TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (pointList == null || pointList.size() <= 0) {
            return;
        }
        Iterator<TouchPoint> it2 = pointList.iterator();
        float[] fArr = new float[2];
        TouchPoint next = it2.next();
        if (path.isEmpty()) {
            path.moveTo(next.getX(), next.getY());
        } else {
            path.quadTo(next.getX(), next.getY(), next.getX(), next.getY());
        }
        fArr[0] = next.getX();
        fArr[1] = next.getY();
        while (it2.hasNext()) {
            TouchPoint next2 = it2.next();
            float f = 2;
            path.quadTo((fArr[0] + next2.getX()) / f, (fArr[1] + next2.getY()) / f, next2.getX(), next2.getY());
            fArr[0] = next2.getX();
            fArr[1] = next2.getY();
        }
    }

    public final int getRECT_TO_PAHT_POINT_STEP() {
        return RECT_TO_PAHT_POINT_STEP;
    }

    @NotNull
    public final TouchPointList rectToPathPointList(@NotNull TouchPointList rectPointList) {
        Intrinsics.checkNotNullParameter(rectPointList, "rectPointList");
        if (rectPointList.size() < 2) {
            return rectPointList;
        }
        Path path = new Path();
        path.moveTo(rectPointList.get(0).getX(), rectPointList.get(0).getY());
        for (TouchPoint touchPoint : rectPointList.getPoints()) {
            path.lineTo(touchPoint.getX(), touchPoint.getY());
        }
        path.close();
        return new TouchPointList(TouchPoint.INSTANCE.parseTouchPointsFromPath(path, RECT_TO_PAHT_POINT_STEP));
    }
}
