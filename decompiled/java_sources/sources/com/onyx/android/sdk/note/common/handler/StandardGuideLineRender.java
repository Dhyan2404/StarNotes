package com.onyx.android.sdk.note.common.handler;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.rxgesture.VelocityTrackerWrapper;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b9\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u000eJ&\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0014J(\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ(\u0010!\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001aH\u0002J\b\u0010\"\u001a\u00020\u0006H\u0002R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001c\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010%R\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%R \u0010,\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u001b\u0010\u001f\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b'\u00108¨\u0006;"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "pointInRender", "", "action", "", "onPoint", "touchPointInRender", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", "guideLinesInRender", "update", Constants.CLEAR_ATTRIBUTES, "", "isDrawingGuideLine", "touchPoint", "lastPoint", "Landroid/graphics/RectF;", "boundRect", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;", "consumeStickyDistance", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "guideLines", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "drawGuideLines", "guideLine", "Landroid/graphics/Paint;", "paint", "extendLength", "b", "a", Constants.HASIDCALL_INDEX_SIG, "", "Ljava/util/List;", "selfGuideLines", "c", "parallelGuideLines", "", "d", "Ljava/util/Map;", "parallelGuideLineStickPoints", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "e", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "touchVelocityTracker", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "firstPoint", C6998g.f39679a, "currentPoint", C6999h.f39688c, "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStandardGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,195:1\n215#2,2:196\n1855#3,2:198\n1855#3,2:200\n1855#3,2:202\n1549#3:204\n1620#3,3:205\n1549#3:208\n1620#3,3:209\n766#3:212\n857#3:213\n858#3:215\n1855#3,2:216\n1855#3,2:226\n1655#3,8:228\n637#4:214\n637#4:221\n526#5:218\n511#5,2:219\n513#5,4:222\n*S KotlinDebug\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n*L\n132#1:196,2\n141#1:198,2\n164#1:200,2\n179#1:202,2\n187#1:204\n187#1:205,3\n188#1:208\n188#1:209,3\n189#1:212\n189#1:213\n189#1:215\n190#1:216,2\n192#1:226,2\n193#1:228,8\n189#1:214\n191#1:221\n191#1:218\n191#1:219,2\n191#1:222,4\n*E\n"})
/* loaded from: classes8.dex */
public final class StandardGuideLineRender {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean drawGuideLines = true;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Guideline> selfGuideLines = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<Guideline> parallelGuideLines = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Map<Guideline, TouchPoint> parallelGuideLineStickPoints = new LinkedHashMap();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final VelocityTrackerWrapper touchVelocityTracker = new VelocityTrackerWrapper();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public TouchPoint firstPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public TouchPoint currentPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy paint;

    public StandardGuideLineRender() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.note.common.handler.StandardGuideLineRender$paint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                DimenUtils dimenUtils = DimenUtils.INSTANCE;
                float dp2PxFloat = dimenUtils.dp2PxFloat(2.0f);
                float dp2PxFloat2 = dimenUtils.dp2PxFloat(2.0f);
                Paint paint = new Paint();
                paint.setColor(-16776961);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(dimenUtils.dp2PxFloat(1.0f));
                paint.setPathEffect(new DashPathEffect(new float[]{dp2PxFloat, dp2PxFloat2}, 0.0f));
                return paint;
            }
        });
        this.paint = lazy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void drawGuideLines$default(StandardGuideLineRender standardGuideLineRender, Canvas canvas, List list, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            list = standardGuideLineRender.parallelGuideLines;
        }
        if ((i & 4) != 0) {
            f = 0.0f;
        }
        standardGuideLineRender.drawGuideLines(canvas, list, f);
    }

    public static /* synthetic */ void onPoint$default(StandardGuideLineRender standardGuideLineRender, TouchPoint touchPoint, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 2;
        }
        standardGuideLineRender.onPoint(touchPoint, i);
    }

    /* renamed from: a */
    public final void m33796a() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<Guideline> mutableList;
        ArrayList arrayList = new ArrayList();
        for (Guideline guideline : this.selfGuideLines) {
            if (guideline.getSupportHorizontalAlignment() && GuideLineKt.isParallel(guideline, GuideLineKt.getHorizontalGuideline())) {
                arrayList.add(guideline);
            }
            if (guideline.getSupportVerticalAlignment() && GuideLineKt.isParallel(guideline, GuideLineKt.getVerticalGuideline())) {
                arrayList.add(guideline);
            }
        }
        List<Guideline> list = this.parallelGuideLines;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Guideline) it2.next()).getId());
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((Guideline) it3.next()).getId());
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : arrayList) {
            if (!arrayList2.contains(((Guideline) obj).getId())) {
                arrayList4.add(obj);
            }
        }
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            this.parallelGuideLineStickPoints.put((Guideline) it4.next(), this.currentPoint);
        }
        Map<Guideline, TouchPoint> map = this.parallelGuideLineStickPoints;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Guideline, TouchPoint> entry : map.entrySet()) {
            if (!arrayList3.contains(entry.getKey().getId())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it5 = linkedHashMap.keySet().iterator();
        while (it5.hasNext()) {
            this.parallelGuideLineStickPoints.remove((Guideline) it5.next());
        }
        List copy = CollectionKt.copy(arrayList);
        HashSet hashSet = new HashSet();
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : copy) {
            if (hashSet.add(((Guideline) obj2).getId())) {
                arrayList5.add(obj2);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList5);
        this.parallelGuideLines = mutableList;
    }

    /* renamed from: b */
    public final void m33797b(Canvas canvas, Guideline guideLine, Paint paint, float extendLength) {
        if (GuideLineKt.isParallel(guideLine, GuideLineKt.getHorizontalGuideline()) || GuideLineKt.isParallel(guideLine, GuideLineKt.getVerticalGuideline())) {
            Guideline stretch = GuideLineKt.stretch(guideLine, Float.valueOf(extendLength));
            canvas.drawLine(stretch.getP1().getX(), stretch.getP1().getY(), stretch.getP2().getX(), stretch.getP2().getY(), paint);
        }
    }

    /* renamed from: c */
    public final Paint m33798c() {
        return (Paint) this.paint.getValue();
    }

    public final void clear() {
        this.drawGuideLines = false;
        this.selfGuideLines.clear();
        this.parallelGuideLines.clear();
        this.parallelGuideLineStickPoints.clear();
    }

    @NotNull
    public final ShapeGuideLineConsumeResult consumeStickyDistance(@NotNull TouchPoint touchPoint, @NotNull TouchPoint lastPoint, @NotNull RectF boundRect, @NotNull ShapeTransformAction action) {
        List listOf;
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        Intrinsics.checkNotNullParameter(boundRect, "boundRect");
        Intrinsics.checkNotNullParameter(action, "action");
        ShapeGuideLineConsumeResult shapeGuideLineConsumeResult = new ShapeGuideLineConsumeResult();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ShapeTransformAction.Translate);
        boolean contains = listOf.contains(action);
        boolean z = false;
        if (contains) {
            this.drawGuideLines = false;
            return ShapeGuideLineConsumeResult.INSTANCE.createNonStickyResult(touchPoint, lastPoint);
        }
        long timestamp = touchPoint.getTimestamp() - this.firstPoint.getTimestamp();
        ResManager resManager = ResManager.INSTANCE;
        if (timestamp < resManager.getLong(C7485R.integer.guideline_min_start_time)) {
            this.drawGuideLines = false;
            return ShapeGuideLineConsumeResult.INSTANCE.createNonStickyResult(touchPoint, lastPoint);
        }
        if (RectKt.longerSize(boundRect) < resManager.getDimension(C7485R.dimen.guideline_min_shape_size)) {
            this.drawGuideLines = false;
            return ShapeGuideLineConsumeResult.INSTANCE.createNonStickyResult(touchPoint, lastPoint);
        }
        this.drawGuideLines = true;
        float[] realtimeVelocity = this.touchVelocityTracker.getRealtimeVelocity();
        if (NumberUtils.max(Math.abs(realtimeVelocity[0]), Math.abs(realtimeVelocity[1])) <= GeometryConfigurations.INSTANCE.getGuidelineVelocityTriggerThreshold() && !this.parallelGuideLineStickPoints.isEmpty()) {
            TouchPointPair touchPointPair = new TouchPointPair(lastPoint, touchPoint);
            if (this.parallelGuideLineStickPoints.isEmpty()) {
                z = true;
            } else {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<Guideline, TouchPoint> entry : this.parallelGuideLineStickPoints.entrySet()) {
                    Guideline key = entry.getKey();
                    if (new TouchPointPair(entry.getValue(), touchPoint).componentAlongPerpendicularDirection(key).length() > GeometryConfigurations.INSTANCE.getGuidelineStickyDistanceForStandards()) {
                        arrayList.add(key);
                        z = true;
                    } else {
                        touchPointPair = touchPointPair.componentAlongLineDirection(key);
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    this.parallelGuideLineStickPoints.remove((Guideline) it2.next());
                }
            }
            if (z) {
                return ShapeGuideLineConsumeResult.INSTANCE.createNonStickyResult(touchPoint, lastPoint);
            }
            shapeGuideLineConsumeResult.setDx(touchPointPair.m33278dx());
            shapeGuideLineConsumeResult.setDy(touchPointPair.m33279dy());
            shapeGuideLineConsumeResult.setStickyState(true);
            return shapeGuideLineConsumeResult;
        }
        return ShapeGuideLineConsumeResult.INSTANCE.createNonStickyResult(touchPoint, lastPoint);
    }

    public final void drawGuideLines(@NotNull Canvas canvas, @NotNull List<Guideline> guideLines, float strokeWidth) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(guideLines, "guideLines");
        if (this.drawGuideLines) {
            Iterator it2 = CollectionKt.copy(guideLines).iterator();
            while (it2.hasNext()) {
                m33797b(canvas, (Guideline) it2.next(), m33798c(), GeometryConfigurations.INSTANCE.getGuidelineExtendLengthForParallel() + (strokeWidth / 2));
            }
        }
    }

    /* renamed from: isDrawingGuideLine, reason: from getter */
    public final boolean getDrawGuideLines() {
        return this.drawGuideLines;
    }

    public final void onPoint(@NotNull TouchPoint pointInRender, int action) {
        Intrinsics.checkNotNullParameter(pointInRender, "pointInRender");
        MotionEvent motionEvent = GeometryUtils.INSTANCE.toMotionEvent(pointInRender, action);
        if (action == 0) {
            this.firstPoint = pointInRender.copy();
            this.touchVelocityTracker.onDown(motionEvent);
        } else if (action == 1) {
            this.touchVelocityTracker.onRelease();
        } else {
            if (action != 2) {
                return;
            }
            this.touchVelocityTracker.onMove(motionEvent);
        }
    }

    public final void update(@NotNull TouchPoint touchPointInRender, @NotNull List<Guideline> guideLinesInRender) {
        List<Guideline> mutableList;
        Intrinsics.checkNotNullParameter(touchPointInRender, "touchPointInRender");
        Intrinsics.checkNotNullParameter(guideLinesInRender, "guideLinesInRender");
        this.currentPoint = touchPointInRender;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) guideLinesInRender);
        this.selfGuideLines = mutableList;
        m33796a();
    }
}
