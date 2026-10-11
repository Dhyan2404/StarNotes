package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000e\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0004J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/SplitResult;", "", "()V", "removeSegmentList", "", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getRemoveSegmentList", "()Ljava/util/List;", "splitSegmentList", "getSplitSegmentList", "addRemoveSegment", "", PointConstant.POINT_FILE_END, "addSplitSegment", "getRemoveTouchPointLists", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getSplitTouchPointLists", Constants.ELEMNAME_TRANSFORM_STRING, "matrix", "Landroid/graphics/Matrix;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nSplitResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitResult.kt\ncom/onyx/android/sdk/geometry/data/SplitResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1549#2:44\n1620#2,3:45\n1549#2:48\n1620#2,2:49\n1549#2:51\n1620#2,3:52\n1549#2:55\n1620#2,3:56\n1549#2:59\n1620#2,3:60\n*S KotlinDebug\n*F\n+ 1 SplitResult.kt\ncom/onyx/android/sdk/geometry/data/SplitResult\n*L\n29#1:44\n29#1:45,3\n30#1:48\n30#1:49,2\n30#1:51\n30#1:52,3\n37#1:55\n37#1:56,3\n41#1:59\n41#1:60,3\n*E\n"})
/* loaded from: classes7.dex */
public final class SplitResult {

    @NotNull
    private final List<List<TouchPoint>> splitSegmentList = new ArrayList();

    @NotNull
    private final List<List<TouchPoint>> removeSegmentList = new ArrayList();

    public final void addRemoveSegment(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return;
        }
        this.removeSegmentList.add(points);
    }

    public final void addSplitSegment(@NotNull List<TouchPoint> points) {
        Intrinsics.checkNotNullParameter(points, "points");
        if (points.isEmpty()) {
            return;
        }
        this.splitSegmentList.add(points);
    }

    @NotNull
    public final List<List<TouchPoint>> getRemoveSegmentList() {
        return this.removeSegmentList;
    }

    @NotNull
    public final List<TouchPointList> getRemoveTouchPointLists() {
        int collectionSizeOrDefault;
        List<TouchPointList> mutableList;
        List<List<TouchPoint>> list = this.removeSegmentList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new TouchPointList((List<TouchPoint>) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final List<List<TouchPoint>> getSplitSegmentList() {
        return this.splitSegmentList;
    }

    @NotNull
    public final List<TouchPointList> getSplitTouchPointLists() {
        int collectionSizeOrDefault;
        List<TouchPointList> mutableList;
        List<List<TouchPoint>> list = this.splitSegmentList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new TouchPointList((List<TouchPoint>) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final SplitResult transform(@NotNull Matrix matrix) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        int collectionSizeOrDefault4;
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        SplitResult splitResult = new SplitResult();
        List<List<TouchPoint>> list = this.splitSegmentList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            List list2 = (List) it2.next();
            collectionSizeOrDefault4 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault4);
            Iterator it3 = list2.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((TouchPoint) it3.next()).transform(matrix));
            }
            arrayList.add(arrayList2);
        }
        List<List<TouchPoint>> list3 = this.splitSegmentList;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it4 = list3.iterator();
        while (it4.hasNext()) {
            List list4 = (List) it4.next();
            collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
            ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault3);
            Iterator it5 = list4.iterator();
            while (it5.hasNext()) {
                arrayList4.add(((TouchPoint) it5.next()).transform(matrix));
            }
            arrayList3.add(arrayList4);
        }
        splitResult.splitSegmentList.addAll(arrayList);
        splitResult.removeSegmentList.addAll(arrayList3);
        return splitResult;
    }
}
