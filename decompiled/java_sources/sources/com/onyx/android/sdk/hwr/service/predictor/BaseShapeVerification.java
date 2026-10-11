package com.onyx.android.sdk.hwr.service.predictor;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0004\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b%\u0010&J\u0016\u0010\u0005\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0014\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0002J\u0014\u0010\u000e\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u000e\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\u0006J\u0006\u0010\u0013\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0006J\u0010\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0006J4\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00062\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u0015J\u0016\u0010\u001f\u001a\u00020\u00062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0002H\u0002R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0004\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "pointerEvents", "input", "", "verify", "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;", Constants.ELEMNAME_OUTPUT_STRING, "events", "", "subPathCount", "splitSubPath", "likeStraightLine", "likeMultiStraightLine", "likeHeadToTail", "isClosurePath", "likeHasStartArrow", "likeHasEndArrow", "isMainSegmentStraight", "", SymmLQ.f108603e, "isAllSegmentsStraight", "isAllSegmentsCurvy", "includeStarPoint", "includeEndPoint", "cleanNearPoints", "spacing", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "kneePoints", "a", "Ljava/util/List;", "getPointerEvents", "()Ljava/util/List;", "setPointerEvents", "(Ljava/util/List;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseShapeVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShapeVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1774#2,4:183\n1855#2,2:187\n1855#2,2:189\n1940#2,14:191\n1#3:205\n*S KotlinDebug\n*F\n+ 1 BaseShapeVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification\n*L\n44#1:183,4\n51#1:187,2\n90#1:189,2\n124#1:191,14\n*E\n"})
/* loaded from: classes7.dex */
public abstract class BaseShapeVerification implements IShapeVerification {
    public List<HWRPointerEvent> pointerEvents;

    public static /* synthetic */ boolean isAllSegmentsStraight$default(BaseShapeVerification baseShapeVerification, Number number, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isAllSegmentsStraight");
        }
        if ((i & 1) != 0) {
            number = Float.valueOf(-1.0f);
        }
        return baseShapeVerification.isAllSegmentsStraight(number);
    }

    public static /* synthetic */ List kneePoints$default(BaseShapeVerification baseShapeVerification, boolean z, boolean z2, boolean z3, Number number, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: kneePoints");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            z3 = true;
        }
        if ((i & 8) != 0) {
            number = Float.valueOf(0.0f);
        }
        return baseShapeVerification.kneePoints(z, z2, z3, number);
    }

    /* renamed from: a */
    public final boolean m33376a(List<TouchPoint> kneePoints) {
        Iterator<T> it2 = GeometryUtils.INSTANCE.findAllSides(kneePoints, false).iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            float length = ((TouchPointPair) next).length();
            do {
                Object next2 = it2.next();
                float length2 = ((TouchPointPair) next2).length();
                if (Float.compare(length, length2) < 0) {
                    next = next2;
                    length = length2;
                }
            } while (it2.hasNext());
        }
        TouchPointPair touchPointPair = (TouchPointPair) next;
        int indexOf = kneePoints.indexOf(touchPointPair.getP2());
        if (indexOf == kneePoints.size() - 1) {
            return false;
        }
        TouchPoint touchPoint = kneePoints.get(indexOf);
        float length3 = touchPointPair.length();
        int size = kneePoints.size();
        for (int i = indexOf + 1; i < size; i++) {
            if (TouchPoint.INSTANCE.distance(kneePoints.get(i), touchPoint) / length3 > 0.5d) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final List<HWRPointerEvent> getPointerEvents() {
        List<HWRPointerEvent> list = this.pointerEvents;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pointerEvents");
        return null;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public IShapeVerification input(@NotNull List<HWRPointerEvent> pointerEvents) {
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        setPointerEvents(pointerEvents);
        return this;
    }

    public final boolean isAllSegmentsCurvy() {
        return GeometryUtils.isAllSegmentsCurvy$default(GeometryUtils.INSTANCE, HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents()), null, 1, null);
    }

    public final boolean isAllSegmentsStraight(@NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        return GeometryUtils.INSTANCE.isAllSegmentsStraight(HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents()), threshold);
    }

    public final boolean isClosurePath() {
        if (likeHeadToTail()) {
            return true;
        }
        return PathKt.isPathClosed$default(PathKt.createPathFrom$default(HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents()), null, 2, null), null, null, 3, null);
    }

    public final boolean isMainSegmentStraight() {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return GeometryUtils.isSegmentStraight$default(geometryUtils, geometryUtils.findLongestSegment(geometryUtils.getSegmentsByKneePoints(HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents()))), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List, T] */
    /* JADX WARN: Type inference failed for: r7v12, types: [java.util.List, T] */
    @NotNull
    public final List<TouchPoint> kneePoints(boolean includeStarPoint, boolean includeEndPoint, boolean cleanNearPoints, @NotNull Number spacing) {
        List<TouchPoint> mutableList;
        Object last;
        Object first;
        List<TouchPoint> emptyList;
        List<TouchPoint> emptyList2;
        Intrinsics.checkNotNullParameter(spacing, "spacing");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        objectRef.element = touchPointList;
        if (((List) touchPointList).isEmpty()) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        if (cleanNearPoints) {
            Float valueOf = Float.valueOf(spacing.floatValue());
            if (!(valueOf.floatValue() > 0.0f)) {
                valueOf = null;
            }
            objectRef.element = GeometryUtils.INSTANCE.cleanClosePoints((List) objectRef.element, Float.valueOf(((Number) AnyKt.getOrElse(valueOf, new Function0<Float>() { // from class: com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification$kneePoints$spacing$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Float invoke() {
                    return Float.valueOf(GeometryUtils.INSTANCE.getResampleSpacing(objectRef.element));
                }
            })).floatValue()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) GeometryUtils.findKneePoints$default(GeometryUtils.INSTANCE, (List) objectRef.element, null, 1, null));
        if (mutableList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        if (includeStarPoint) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) objectRef.element);
            mutableList.add(0, first);
        }
        if (includeEndPoint) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) objectRef.element);
            mutableList.add(last);
        }
        return mutableList;
    }

    public final boolean likeHasEndArrow() {
        return m33376a(kneePoints$default(this, true, true, false, null, 8, null));
    }

    public final boolean likeHasStartArrow() {
        List<TouchPoint> reversed;
        reversed = CollectionsKt___CollectionsKt.reversed(kneePoints$default(this, true, true, false, null, 8, null));
        return m33376a(reversed);
    }

    public final boolean likeHeadToTail() {
        Object first;
        Object last;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        float length = GeometryUtils.INSTANCE.length(touchPointList);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchPointList);
        return new TouchPointPair((TouchPoint) first, (TouchPoint) last).length() / length < 0.1f;
    }

    public final boolean likeMultiStraightLine() {
        Iterator<T> it2 = splitSubPath().iterator();
        while (it2.hasNext()) {
            if (!likeStraightLine((List) it2.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean likeStraightLine(@NotNull List<HWRPointerEvent> pointerEvents) {
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(pointerEvents, "pointerEvents");
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(pointerEvents);
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) touchPointList);
        TouchPoint touchPoint = (TouchPoint) first;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) touchPointList);
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, (TouchPoint) last);
        float length = touchPointPair.length();
        float direction = touchPointPair.direction();
        int size = touchPointList.size();
        for (int i = 1; i < size; i++) {
            TouchPointPair touchPointPair2 = new TouchPointPair(touchPoint, touchPointList.get(i));
            if (touchPointPair2.length() >= length / 10.0f) {
                float direction2 = touchPointPair2.direction();
                GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
                if (Math.abs(geometryUtils.radToDegree(direction) - geometryUtils.radToDegree(direction2)) > 20.0f) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public VerificationResult output() {
        return new VerificationResult(shapeName(), getPointerEvents());
    }

    public final void setPointerEvents(@NotNull List<HWRPointerEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pointerEvents = list;
    }

    @NotNull
    public final List<List<HWRPointerEvent>> splitSubPath() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (HWRPointerEvent hWRPointerEvent : getPointerEvents()) {
            if (hWRPointerEvent.getEventType() == HWRPointerEventType.DOWN) {
                arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
            }
            arrayList2.add(hWRPointerEvent);
        }
        return arrayList;
    }

    public final int subPathCount(@NotNull List<HWRPointerEvent> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        List<HWRPointerEvent> list = events;
        if ((list instanceof Collection) && list.isEmpty()) {
            return 0;
        }
        Iterator<T> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if ((((HWRPointerEvent) it2.next()).getEventType() == HWRPointerEventType.DOWN) && (i = i + 1) < 0) {
                CollectionsKt__CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        return true;
    }

    public final boolean likeStraightLine() {
        return likeStraightLine(getPointerEvents());
    }
}
