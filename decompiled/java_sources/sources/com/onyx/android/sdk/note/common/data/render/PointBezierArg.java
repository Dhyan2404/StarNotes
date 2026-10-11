package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R(\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R:\u0010 \u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00190\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;", "Lcom/onyx/android/sdk/note/common/data/render/BezierArgs;", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "", "onTouchDown", "onTouchMove", Constants.RESET, "resetPredict", "b", "a", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "c", "Ljava/util/List;", "getRealPointList", "()Ljava/util/List;", "setRealPointList", "(Ljava/util/List;)V", "realPointList", "d", "getPredictPointList", "setPredictPointList", "predictPointList", "Lkotlin/Function1;", "", "e", "Lkotlin/jvm/functions/Function1;", "getPointMap", "()Lkotlin/jvm/functions/Function1;", "setPointMap", "(Lkotlin/jvm/functions/Function1;)V", "pointMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PointBezierArg extends BezierArgs {

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> realPointList = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> predictPointList = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Function1<? super List<TouchPoint>, ? extends List<TouchPoint>> pointMap = new Function1<List<? extends TouchPoint>, List<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.note.common.data.render.PointBezierArg$pointMap$1
        @NotNull
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final List<TouchPoint> invoke2(@NotNull List<TouchPoint> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ List<? extends TouchPoint> invoke(List<? extends TouchPoint> list) {
            return invoke2((List<TouchPoint>) list);
        }
    };

    /* renamed from: a */
    public final void m33651a(TouchData touchData) {
        List listOf;
        resetPredict();
        TouchPoint predictPoint = touchData.getPredictPoint();
        if (predictPoint != null) {
            List<TouchPoint> list = this.predictPointList;
            Function1<? super List<TouchPoint>, ? extends List<TouchPoint>> function1 = this.pointMap;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchData.getTouchPoint(), predictPoint});
            list.addAll(function1.invoke(listOf));
        }
    }

    /* renamed from: b */
    public final void m33652b(TouchData touchData) {
        List listOf;
        List<TouchPoint> list = this.realPointList;
        Function1<? super List<TouchPoint>, ? extends List<TouchPoint>> function1 = this.pointMap;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPoint(getLastPoint()), touchData.getTouchPoint()});
        list.addAll(function1.invoke(listOf));
    }

    @NotNull
    public final Function1<List<TouchPoint>, List<TouchPoint>> getPointMap() {
        return this.pointMap;
    }

    @NotNull
    public final List<TouchPoint> getPredictPointList() {
        return this.predictPointList;
    }

    @NotNull
    public final List<TouchPoint> getRealPointList() {
        return this.realPointList;
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void onTouchDown(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchDown(touchData);
        this.realPointList.clear();
        resetPredict();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void onTouchMove(@NotNull TouchData touchData) {
        Intrinsics.checkNotNullParameter(touchData, "touchData");
        super.onTouchMove(touchData);
        m33652b(touchData);
        m33651a(touchData);
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void reset() {
        this.realPointList.clear();
        super.reset();
    }

    @Override // com.onyx.android.sdk.note.common.data.render.BezierArgs
    public void resetPredict() {
        this.predictPointList.clear();
    }

    public final void setPointMap(@NotNull Function1<? super List<TouchPoint>, ? extends List<TouchPoint>> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.pointMap = function1;
    }

    public final void setPredictPointList(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.predictPointList = list;
    }

    public final void setRealPointList(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.realPointList = list;
    }
}
