package com.onyx.android.sdk.rxgesture.palm;

import android.graphics.PointF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.SPUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.rxgesture.palm.TouchSizeHistogram;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 12\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b/\u00100J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\fH\u0002R \u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00170\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0019R\"\u0010%\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001cR\u0016\u0010'\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010 R\u0016\u0010)\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001cR\u0016\u0010,\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010+R\u0016\u0010.\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010 ¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;", "", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "isForceDetect", "", "collectSize", "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;", "getTouchSizeType", "logAfterUpOrCancel", Constants.RESET, "", "size", C6999h.f39688c, "j", C6997f.f39671c, "e", "", NotificationCompat.CATEGORY_MESSAGE, C4921e.f26537n, "d", "", "", "a", "Ljava/util/Map;", "sizeMap", "b", "I", "totalCollectEventCount", "c", "palmCountMap", "F", "getPalmSize", "()F", "setPalmSize", "(F)V", "palmSize", "modeCount", "modeSize", C6998g.f39679a, "eventCollectionCount", "Landroid/graphics/PointF;", "Landroid/graphics/PointF;", "lastCollectPoint", "i", "savedPalmSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTouchSizeHistogram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,229:1\n288#2,2:230\n2730#2,7:232\n2730#2,7:239\n1855#2,2:246\n1855#2,2:248\n2730#2,7:250\n215#3,2:257\n*S KotlinDebug\n*F\n+ 1 TouchSizeHistogram.kt\ncom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram\n*L\n64#1:230,2\n169#1:232,7\n170#1:239,7\n175#1:246,2\n184#1:248,2\n191#1:250,7\n192#1:257,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TouchSizeHistogram {

    @NotNull
    public static final String KEY_PALM_SIZE = "key_palm_size";
    public static final float MIN_PALM_SIMILAR_RATIO = 0.8f;
    public static final int PALM_COLLECT_EVENT_COUNT = 5;
    public static final int PALM_COLLECT_EVENT_FORCE_COUNT = 3;

    /* renamed from: j */
    public static boolean f46543j;

    /* renamed from: b, reason: from kotlin metadata */
    public int totalCollectEventCount;

    /* renamed from: e, reason: from kotlin metadata */
    public int modeCount;

    /* renamed from: f, reason: from kotlin metadata */
    public float modeSize;

    /* renamed from: g, reason: from kotlin metadata */
    public int eventCollectionCount;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    public static boolean f46544k = true;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<Float, Integer> sizeMap = new LinkedHashMap();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<Float, Integer> palmCountMap = new LinkedHashMap();

    /* renamed from: d, reason: from kotlin metadata */
    public float palmSize = Float.MAX_VALUE;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public PointF lastCollectPoint = new PointF(0.0f, 0.0f);

    /* renamed from: i, reason: from kotlin metadata */
    public float savedPalmSize = SPUtils.getInstance().getFloat(KEY_PALM_SIZE, Float.MAX_VALUE);

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram$Companion;", "", "()V", "DEBUG_LOG", "", "getDEBUG_LOG", Constants.BOOLEAN_VALUE_SIG, "setDEBUG_LOG", "(Z)V", "KEY_PALM_SIZE", "", "MIN_PALM_SIMILAR_RATIO", "", "PALM_COLLECT_EVENT_COUNT", "", "PALM_COLLECT_EVENT_FORCE_COUNT", "isEnabledPalmDetect", "setEnabledPalmDetect", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getDEBUG_LOG() {
            return TouchSizeHistogram.f46543j;
        }

        public final boolean isEnabledPalmDetect() {
            return TouchSizeHistogram.f46544k;
        }

        public final void setDEBUG_LOG(boolean z) {
            TouchSizeHistogram.f46543j = z;
        }

        public final void setEnabledPalmDetect(boolean z) {
            TouchSizeHistogram.f46544k = z;
        }

        public Companion() {
        }
    }

    public static /* synthetic */ void collectSize$default(TouchSizeHistogram touchSizeHistogram, MotionEvent motionEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        touchSizeHistogram.collectSize(motionEvent, z);
    }

    /* renamed from: g */
    public static final Integer m36017g(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Integer) tmp0.invoke(obj);
    }

    /* renamed from: i */
    public static final Integer m36018i(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Integer) tmp0.invoke(obj);
    }

    /* renamed from: l */
    public static final Integer m36019l(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Integer) tmp0.invoke(obj);
    }

    public final void collectSize(@NotNull MotionEvent event, boolean isForceDetect) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isForceDetect) {
            if (!(this.savedPalmSize == Float.MAX_VALUE)) {
                m36025k("Palm features have been collected before!!!");
                return;
            }
        }
        if (MotionEventKt.isDownAction(event)) {
            this.eventCollectionCount++;
            m36025k("collectSize start eventCollectionCount：" + this.eventCollectionCount);
        }
        if (event.getSize() <= 0.0f) {
            m36025k("no size value, do not collect size, x= " + event.getX() + ", y = " + event.getY() + ", size = " + event.getSize());
            return;
        }
        int pointerCount = event.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            m36023h(event.getSize(i), isForceDetect);
            int historySize = event.getHistorySize();
            for (int i2 = 0; i2 < historySize; i2++) {
                m36023h(event.getHistoricalSize(i, i2), isForceDetect);
            }
        }
        this.lastCollectPoint.set(event.getX(), event.getY());
    }

    /* renamed from: d */
    public final float m36020d() {
        float f = this.palmSize;
        if (f == Float.MAX_VALUE) {
            return Float.MAX_VALUE;
        }
        return f * DeviceFactory.INSTANCE.getCurrentDevice().getBigPalmSizeFactor();
    }

    /* renamed from: e */
    public final PalmType m36021e(MotionEvent event) {
        int pointerCount = event.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            float size = event.getSize(i);
            if (size > m36020d()) {
                return PalmType.BIG_PALM_SIZE;
            }
            if (size > this.palmSize) {
                return PalmType.PALM_SIZE;
            }
            int historySize = event.getHistorySize();
            for (int i2 = 0; i2 < historySize; i2++) {
                float historicalSize = event.getHistoricalSize(i, i2);
                if (historicalSize > m36020d()) {
                    return PalmType.BIG_PALM_SIZE;
                }
                if (historicalSize > this.palmSize) {
                    return PalmType.PALM_SIZE;
                }
            }
        }
        return PalmType.NORMAL_SIZE;
    }

    /* renamed from: f */
    public final void m36022f(float size) {
        Map<Float, Integer> map = this.palmCountMap;
        Float valueOf = Float.valueOf(size);
        final TouchSizeHistogram$increasePalmSizeCount$count$1 touchSizeHistogram$increasePalmSizeCount$count$1 = new Function1<Float, Integer>() { // from class: com.onyx.android.sdk.rxgesture.palm.TouchSizeHistogram$increasePalmSizeCount$count$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull Float it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return 0;
            }
        };
        Integer computeIfAbsent = map.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.okn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer m36017g;
                m36017g = TouchSizeHistogram.m36017g(Function1.this, obj);
                return m36017g;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        int intValue = computeIfAbsent.intValue() + 1;
        this.palmCountMap.put(Float.valueOf(size), Integer.valueOf(intValue));
    }

    public final float getPalmSize() {
        return this.palmSize;
    }

    @NotNull
    public final PalmType getTouchSizeType(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        float f = this.savedPalmSize;
        if (f == Float.MAX_VALUE) {
            return m36021e(event);
        }
        this.palmSize = f;
        return m36021e(event);
    }

    /* renamed from: h */
    public final void m36023h(float size, boolean isForceDetect) {
        Object obj;
        Iterator<T> it2 = this.sizeMap.keySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            float floatValue = ((Number) obj).floatValue();
            if (size >= 0.8f * floatValue && size <= floatValue) {
                break;
            }
        }
        Float f = (Float) obj;
        Map<Float, Integer> map = this.sizeMap;
        Float valueOf = Float.valueOf(f != null ? f.floatValue() : 0.0f);
        final TouchSizeHistogram$increaseSizeCount$count$1 touchSizeHistogram$increaseSizeCount$count$1 = new Function1<Float, Integer>() { // from class: com.onyx.android.sdk.rxgesture.palm.TouchSizeHistogram$increaseSizeCount$count$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull Float it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return 0;
            }
        };
        Integer computeIfAbsent = map.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.pkn
            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                Integer m36018i;
                m36018i = TouchSizeHistogram.m36018i(Function1.this, obj2);
                return m36018i;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        int intValue = computeIfAbsent.intValue() + 1;
        this.sizeMap.put(Float.valueOf(f != null ? f.floatValue() : size), Integer.valueOf(intValue));
        this.totalCollectEventCount++;
        float f2 = this.modeSize;
        if (intValue > this.modeCount) {
            this.modeCount = intValue;
            this.modeSize = size;
        }
        float f3 = this.modeSize;
        if (!(f2 == f3)) {
            this.palmSize = f3 * DeviceFactory.INSTANCE.getCurrentDevice().getPalmSizeFactor();
            m36025k("palmSize changed = " + this.palmSize + ", modeSize = " + this.modeSize + ", modeCount = " + this.modeCount);
        }
        if (m36024j(isForceDetect)) {
            SPUtils.getInstance().put(KEY_PALM_SIZE, this.palmSize);
            this.savedPalmSize = this.palmSize;
            LogUtils.file("TouchSizeHistogram modeSie:" + this.modeSize + " palmSize:" + this.palmSize + " modeCount:" + this.modeCount);
            if (isForceDetect) {
                ToastUtils.showShort("success!", new Object[0]);
            }
            this.eventCollectionCount = 0;
            m36025k("enabledDetectByModeCount, first mode, modeSize = " + this.modeSize + ", modeCount = " + this.modeCount + ", palmSize = " + this.palmSize + ", totalCollectEventCount = " + this.totalCollectEventCount);
        }
    }

    /* renamed from: j */
    public final boolean m36024j(boolean isForceDetect) {
        return this.eventCollectionCount >= (isForceDetect ? 3 : 5);
    }

    /* renamed from: k */
    public final void m36025k(String msg) {
        if (f46543j) {
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), msg, new Object[0]);
        }
    }

    public final void logAfterUpOrCancel() {
        List sorted;
        Object lastOrNull;
        Object next;
        Object next2;
        Object next3;
        if (f46543j) {
            Map<Float, Integer> map = this.sizeMap;
            Map<Float, Integer> map2 = this.palmCountMap;
            m36025k("--- start log size map, map.size = " + map.size() + " ---");
            sorted = CollectionsKt___CollectionsKt.sorted(map.keySet());
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) sorted);
            Float f = (Float) lastOrNull;
            if (f != null) {
                f.floatValue();
                Iterator<T> it2 = map.values().iterator();
                if (it2.hasNext()) {
                    next = it2.next();
                    while (it2.hasNext()) {
                        next = Integer.valueOf(((Number) next).intValue() + ((Number) it2.next()).intValue());
                    }
                } else {
                    next = null;
                }
                Integer num = (Integer) next;
                if (num != null) {
                    int intValue = num.intValue();
                    Iterator<T> it3 = map.keySet().iterator();
                    if (it3.hasNext()) {
                        next2 = it3.next();
                        while (it3.hasNext()) {
                            float floatValue = ((Number) it3.next()).floatValue();
                            float floatValue2 = ((Number) next2).floatValue();
                            Float valueOf = Float.valueOf(floatValue);
                            final TouchSizeHistogram$logAfterUpOrCancel$totalSizeValue$1$1 touchSizeHistogram$logAfterUpOrCancel$totalSizeValue$1$1 = new Function1<Float, Integer>() { // from class: com.onyx.android.sdk.rxgesture.palm.TouchSizeHistogram$logAfterUpOrCancel$totalSizeValue$1$1
                                @Override // kotlin.jvm.functions.Function1
                                @NotNull
                                public final Integer invoke(@NotNull Float it4) {
                                    Intrinsics.checkNotNullParameter(it4, "it");
                                    return 0;
                                }
                            };
                            Integer computeIfAbsent = map.computeIfAbsent(valueOf, new Function() { // from class: com.sunia.HTREnginev2.qkn
                                @Override // java.util.function.Function
                                public final Object apply(Object obj) {
                                    Integer m36019l;
                                    m36019l = TouchSizeHistogram.m36019l(Function1.this, obj);
                                    return m36019l;
                                }
                            });
                            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
                            next2 = Float.valueOf(floatValue2 + (floatValue * computeIfAbsent.floatValue()));
                        }
                    } else {
                        next2 = null;
                    }
                    Float f2 = (Float) next2;
                    float f3 = 0.0f;
                    float f4 = intValue;
                    float floatValue3 = (f2 != null ? f2.floatValue() : 0.0f) / f4;
                    List list = sorted;
                    Iterator it4 = list.iterator();
                    float f5 = 0.0f;
                    int i = 0;
                    while (it4.hasNext()) {
                        float floatValue4 = ((Number) it4.next()).floatValue();
                        Integer num2 = map.get(Float.valueOf(floatValue4));
                        int intValue2 = num2 != null ? num2.intValue() : 0;
                        if (intValue2 > i) {
                            f5 = floatValue4;
                            i = intValue2;
                        }
                    }
                    float palmSizeFactor = DeviceFactory.INSTANCE.getCurrentDevice().getPalmSizeFactor() * f5;
                    Iterator it5 = list.iterator();
                    while (it5.hasNext()) {
                        float floatValue5 = ((Number) it5.next()).floatValue();
                        Integer num3 = map.get(Float.valueOf(floatValue5));
                        int intValue3 = num3 != null ? num3.intValue() : 0;
                        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
                        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
                        float floatValue6 = (intValue3 * FLOAT_ONE.floatValue()) / f4;
                        f3 += floatValue6;
                        m36025k("size = " + floatValue5 + ", count = " + intValue3 + ", probability = " + floatValue6 + ", accProbability = " + f3);
                    }
                    Iterator<T> it6 = map2.values().iterator();
                    if (it6.hasNext()) {
                        next3 = it6.next();
                        while (it6.hasNext()) {
                            next3 = Integer.valueOf(((Number) next3).intValue() + ((Number) it6.next()).intValue());
                        }
                    } else {
                        next3 = null;
                    }
                    Integer num4 = (Integer) next3;
                    int intValue4 = num4 != null ? num4.intValue() : 0;
                    for (Map.Entry<Float, Integer> entry : map2.entrySet()) {
                        m36025k("palmDetail, size = " + entry.getKey().floatValue() + ", count = " + entry.getValue().intValue());
                    }
                    m36025k("map.size = " + map.size() + ", newPalmSize = " + palmSizeFactor + ", this.palmSize = " + this.palmSize + ", averageSize = " + floatValue3 + ", modeProbabilitySize = " + f5 + ", totalEventCount = " + intValue + ", palmDetectTotal = " + intValue4);
                    m36025k("--- finish log size map---");
                }
            }
        }
    }

    public final void reset() {
        this.sizeMap.clear();
        this.modeSize = 0.0f;
        this.modeCount = 0;
        this.eventCollectionCount = 0;
        this.savedPalmSize = Float.MAX_VALUE;
        this.palmSize = Float.MAX_VALUE;
    }

    public final void setPalmSize(float f) {
        this.palmSize = f;
    }
}
