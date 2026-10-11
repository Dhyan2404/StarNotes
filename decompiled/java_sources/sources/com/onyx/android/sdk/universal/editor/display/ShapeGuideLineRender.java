package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.shape.correct.ShapeCorrectionArgs;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.universal.editor.helper.UniversalShapeAbilityFilterKt;
import com.onyx.android.sdk.universal.editor.helper.UniversalShapeEditor;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bE\u0010FJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J.\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eJJ\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fJ$\u0010&\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u001aH\u0002J2\u0010)\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170'H\u0002J2\u0010+\u001a\u00020\u00022\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00170'H\u0002R\u0014\u0010-\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010,R\u0014\u0010.\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010\u001e\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u00100R\u0016\u00103\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R \u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R \u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00107R\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00170'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u001c\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00170'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R(\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170@0'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010<R(\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170@0'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010<¨\u0006G"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;", "", "", Constants.CLEAR_ATTRIBUTES, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "p", "saveFirstPoint", "updateTouchPoint", "touchPoint", "lastPoint", "Landroid/graphics/RectF;", "shapeBoundRect", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "transformAction", "", "touchVelocity", "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;", "consumeStickyDistance", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", DavPrincipal.KEY_SELF, com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;", "editMode", "drawGuideLines", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;", "args", "configureShapeCorrectionArgs", "guideLine", "Landroid/graphics/Paint;", "paint", "extendLength", "c", "", "aligns", "a", "parallels", "b", "Landroid/graphics/Paint;", "alignPaint", "directionPaint", "", Constants.HASIDCALL_INDEX_SIG, "d", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "firstPoint", "e", "", C6997f.f39671c, "Ljava/util/Map;", "haltPointsForAlign", C6998g.f39679a, "haltPointsForParallel", C6999h.f39688c, "Ljava/util/List;", "alignGuideLines", "i", "parallelGuideLines", "Lkotlin/Pair;", "j", "alignedPairs", C4921e.f26537n, "paralleledPairs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,269:1\n215#2,2:270\n215#2,2:274\n1855#3,2:272\n1855#3,2:276\n1855#3,2:278\n1855#3,2:280\n1855#3:282\n1855#3,2:283\n1856#3:285\n1549#3:286\n1620#3,3:287\n1549#3:290\n1620#3,3:291\n766#3:294\n857#3:295\n858#3:297\n1855#3,2:298\n1855#3,2:308\n1855#3:310\n1855#3,2:311\n1856#3:313\n1855#3,2:314\n1549#3:316\n1620#3,3:317\n1549#3:320\n1620#3,3:321\n766#3:324\n857#3:325\n858#3:327\n1855#3,2:328\n1855#3,2:338\n1655#3,8:340\n637#4:296\n637#4:303\n637#4:326\n637#4:333\n526#5:300\n511#5,2:301\n513#5,4:304\n526#5:330\n511#5,2:331\n513#5,4:334\n*S KotlinDebug\n*F\n+ 1 ShapeGuideLineRender.kt\ncom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender\n*L\n121#1:270,2\n137#1:274,2\n130#1:272,2\n146#1:276,2\n184#1:278,2\n192#1:280,2\n220#1:282\n221#1:283,2\n220#1:285\n229#1:286\n229#1:287,3\n230#1:290\n230#1:291,3\n231#1:294\n231#1:295\n231#1:297\n232#1:298,2\n234#1:308,2\n243#1:310\n244#1:311,2\n243#1:313\n251#1:314,2\n261#1:316\n261#1:317,3\n262#1:320\n262#1:321,3\n263#1:324\n263#1:325\n263#1:327\n264#1:328,2\n266#1:338,2\n267#1:340,8\n231#1:296\n233#1:303\n263#1:326\n265#1:333\n233#1:300\n233#1:301,2\n233#1:304,4\n265#1:330\n265#1:331,2\n265#1:334,4\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeGuideLineRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint alignPaint;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Paint directionPaint;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean drawGuideLines = true;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public TouchPoint firstPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Map<Guideline, TouchPoint> haltPointsForAlign = new LinkedHashMap();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<Guideline, TouchPoint> haltPointsForParallel = new LinkedHashMap();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<Guideline> alignGuideLines = new ArrayList();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<Guideline> parallelGuideLines = new ArrayList();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<Pair<Guideline, Guideline>> alignedPairs = new ArrayList();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<Pair<Guideline, Guideline>> paralleledPairs = new ArrayList();

    public ShapeGuideLineRender() {
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        float dp2PxFloat = dimenUtils.dp2PxFloat(2.0f);
        float dp2PxFloat2 = dimenUtils.dp2PxFloat(2.0f);
        Paint paint = new Paint();
        this.alignPaint = paint;
        paint.setColor(-16776961);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dimenUtils.dp2PxFloat(1.0f));
        paint.setPathEffect(new DashPathEffect(new float[]{dp2PxFloat, dp2PxFloat2}, 0.0f));
        this.directionPaint = new Paint(paint);
    }

    /* renamed from: a */
    public final void m40813a(List<Guideline> self, List<Guideline> other, List<Guideline> aligns) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        for (Guideline guideline : self) {
            for (Guideline guideline2 : other) {
                if (GuideLineKt.isAlign(guideline, guideline2)) {
                    aligns.add(GuideLineKt.merge(guideline, guideline2));
                    this.alignedPairs.add(new Pair<>(guideline, guideline2));
                }
            }
        }
        List<Guideline> list = this.alignGuideLines;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Guideline) it2.next()).getId());
        }
        List<Guideline> list2 = aligns;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((Guideline) it3.next()).getId());
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list2) {
            if (!arrayList.contains(((Guideline) obj).getId())) {
                arrayList3.add(obj);
            }
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            this.haltPointsForAlign.put((Guideline) it4.next(), this.touchPoint);
        }
        Map<Guideline, TouchPoint> map = this.haltPointsForAlign;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Guideline, TouchPoint> entry : map.entrySet()) {
            if (!arrayList2.contains(entry.getKey().getId())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it5 = linkedHashMap.keySet().iterator();
        while (it5.hasNext()) {
            this.haltPointsForAlign.remove((Guideline) it5.next());
        }
        this.alignGuideLines = CollectionKt.copy(aligns);
    }

    /* renamed from: b */
    public final void m40814b(List<Guideline> self, List<Guideline> other, List<Guideline> parallels) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<Guideline> mutableList;
        List<Guideline> list = self;
        for (Guideline guideline : list) {
            for (Guideline guideline2 : other) {
                if (GuideLineKt.isParallel(guideline, guideline2) && GuideLineKt.isNear$default(guideline, guideline2, null, 2, null)) {
                    parallels.add(guideline);
                    this.paralleledPairs.add(new Pair<>(guideline, guideline2));
                }
            }
        }
        for (Guideline guideline3 : list) {
            if (guideline3.getSupportHorizontalAlignment() && GuideLineKt.isParallel(guideline3, GuideLineKt.getHorizontalGuideline())) {
                parallels.add(guideline3);
                this.paralleledPairs.add(new Pair<>(guideline3, GuideLineKt.getHorizontalGuideline()));
            }
            if (guideline3.getSupportVerticalAlignment() && GuideLineKt.isParallel(guideline3, GuideLineKt.getVerticalGuideline())) {
                parallels.add(guideline3);
                this.paralleledPairs.add(new Pair<>(guideline3, GuideLineKt.getVerticalGuideline()));
            }
        }
        List<Guideline> list2 = this.parallelGuideLines;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Guideline) it2.next()).getId());
        }
        List<Guideline> list3 = parallels;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList2.add(((Guideline) it3.next()).getId());
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list3) {
            if (!arrayList.contains(((Guideline) obj).getId())) {
                arrayList3.add(obj);
            }
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            this.haltPointsForParallel.put((Guideline) it4.next(), this.touchPoint);
        }
        Map<Guideline, TouchPoint> map = this.haltPointsForParallel;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Guideline, TouchPoint> entry : map.entrySet()) {
            if (!arrayList2.contains(entry.getKey().getId())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it5 = linkedHashMap.keySet().iterator();
        while (it5.hasNext()) {
            this.haltPointsForParallel.remove((Guideline) it5.next());
        }
        List copy = CollectionKt.copy(parallels);
        HashSet hashSet = new HashSet();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : copy) {
            if (hashSet.add(((Guideline) obj2).getId())) {
                arrayList4.add(obj2);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
        this.parallelGuideLines = mutableList;
    }

    /* renamed from: c */
    public final void m40815c(Canvas canvas, Guideline guideline, Paint paint, float f) {
        Guideline stretch = GuideLineKt.stretch(guideline, Float.valueOf(f));
        canvas.drawLine(stretch.getP1().getX(), stretch.getP1().getY(), stretch.getP2().getX(), stretch.getP2().getY(), paint);
    }

    public final void clear() {
        this.alignGuideLines.clear();
        this.parallelGuideLines.clear();
        this.haltPointsForAlign.clear();
        this.haltPointsForParallel.clear();
    }

    public final void configureShapeCorrectionArgs(@NotNull ShapeCorrectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (this.drawGuideLines) {
            if (this.alignGuideLines.isEmpty() && this.parallelGuideLines.isEmpty()) {
                return;
            }
            args.setAlignedPairs(this.alignedPairs);
            args.setParalleledPairs(this.paralleledPairs);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0184  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult consumeStickyDistance(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TouchPoint r9, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.base.data.TouchPoint r10, @org.jetbrains.annotations.NotNull android.graphics.RectF r11, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction r12, @org.jetbrains.annotations.NotNull float[] r13) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.display.ShapeGuideLineRender.consumeStickyDistance(com.onyx.android.sdk.base.data.TouchPoint, com.onyx.android.sdk.base.data.TouchPoint, android.graphics.RectF, com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction, float[]):com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult");
    }

    public final void drawGuideLines(@NotNull Canvas canvas, @NotNull UniversalShape shape, @NotNull List<Guideline> self, @NotNull List<Guideline> other, float strokeWidth, @NotNull UniversalShapeEditor.Mode editMode, @NotNull ShapeTransformAction transformAction) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(editMode, "editMode");
        Intrinsics.checkNotNullParameter(transformAction, "transformAction");
        this.alignedPairs.clear();
        this.paralleledPairs.clear();
        if (this.drawGuideLines) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (UniversalShapeAbilityFilterKt.shouldDrawAligns(shape, editMode)) {
                m40813a(self, other, arrayList);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    m40815c(canvas, (Guideline) it2.next(), this.alignPaint, GeometryConfigurations.INSTANCE.getGuidelineExtendLengthForAlign() + (strokeWidth / 2));
                }
            } else {
                this.alignGuideLines = new ArrayList();
                this.haltPointsForAlign.clear();
            }
            if (!UniversalShapeAbilityFilterKt.shouldDrawParallel(shape, editMode, transformAction)) {
                this.parallelGuideLines = new ArrayList();
                this.haltPointsForParallel.clear();
            } else {
                m40814b(self, other, arrayList2);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    m40815c(canvas, (Guideline) it3.next(), this.directionPaint, GeometryConfigurations.INSTANCE.getGuidelineExtendLengthForParallel() + (strokeWidth / 2));
                }
            }
        }
    }

    public final void saveFirstPoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        this.firstPoint = new TouchPoint(p);
        this.drawGuideLines = false;
    }

    public final void updateTouchPoint(@NotNull TouchPoint p) {
        Intrinsics.checkNotNullParameter(p, "p");
        this.touchPoint = new TouchPoint(p);
    }
}
