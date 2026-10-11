package com.onyx.android.sdk.note.common.data.render;

import android.graphics.Paint;
import android.graphics.Path;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.note.extension.PaintKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\b\u0018\u0000 C2\u00020\u0001:\u0001CB\u0007¢\u0006\u0004\bA\u0010BJ\u0006\u0010\u0003\u001a\u00020\u0002J&\u0010\b\u001a\u00020\u00022\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010.\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010%\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)R*\u00105\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0011\u00109\u001a\u0002068F¢\u0006\u0006\u001a\u0004\b7\u00108R\u0011\u0010;\u001a\u0002068F¢\u0006\u0006\u001a\u0004\b:\u00108R\u0017\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00060<8F¢\u0006\u0006\u001a\u0004\b=\u00102R\u0017\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00060<8F¢\u0006\u0006\u001a\u0004\b?\u00102¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;", "", "", "composePath", "Lkotlin/Function1;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", Constant.MAP_TAG, "composePoints", "", "isPointCountOverThreshold", Constants.RESET, "resetPredict", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "touchData", "a", "c", "d", "b", "Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;", "Lcom/onyx/android/sdk/note/common/data/render/PathBezierArgs;", "pathBezierArgs", "Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;", "Lcom/onyx/android/sdk/note/common/data/render/PointBezierArg;", "pointBezierArgs", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "setPaint", "(Landroid/graphics/Paint;)V", "paint", "getPredictPaint", "setPredictPaint", "predictPaint", "", "e", "I", "getPointCount", "()I", "setPointCount", "(I)V", "pointCount", C6997f.f39671c, "getPointCountThreshold", "setPointCountThreshold", "pointCountThreshold", C6998g.f39679a, "Ljava/util/List;", "getTouchDataList", "()Ljava/util/List;", "setTouchDataList", "(Ljava/util/List;)V", "touchDataList", "Landroid/graphics/Path;", "getPath", "()Landroid/graphics/Path;", "path", "getPredictPath", "predictPath", "", "getRealPointList", "realPointList", "getPredictPointList", "predictPointList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLowLatencyRenderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n1855#2,2:117\n*S KotlinDebug\n*F\n+ 1 LowLatencyRenderData.kt\ncom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData\n*L\n56#1:115,2\n65#1:117,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LowLatencyRenderData {
    public static final int DEFAULT_POINT_COUNT_THRESHOLD = 100;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Paint predictPaint;

    /* renamed from: e, reason: from kotlin metadata */
    public int pointCount;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public List<TouchData> touchDataList;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public PathBezierArgs pathBezierArgs = new PathBezierArgs();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public PointBezierArg pointBezierArgs = new PointBezierArg();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Paint paint = new Paint();

    /* renamed from: f, reason: from kotlin metadata */
    public int pointCountThreshold = 100;

    public LowLatencyRenderData() {
        this.predictPaint = new Paint();
        PaintKt.updateShapeDrawPaintStyle(this.paint);
        this.paint.setStrokeWidth(30.0f);
        this.predictPaint = this.paint;
    }

    /* renamed from: a */
    public final void m33644a(TouchData touchData) {
        int action = touchData.getAction();
        if (action == 0) {
            m33646c(touchData);
        } else if (action == 1) {
            m33645b(touchData);
        } else {
            if (action != 2) {
                return;
            }
            m33647d(touchData);
        }
    }

    /* renamed from: b */
    public final void m33645b(TouchData touchData) {
        this.pointCount = this.pointCountThreshold;
    }

    /* renamed from: c */
    public final void m33646c(TouchData touchData) {
        this.pointCount = 0;
    }

    public final void composePath() {
        List<TouchData> list = this.touchDataList;
        if (list == null || CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        for (TouchData touchData : list) {
            m33644a(touchData);
            this.pathBezierArgs.onTouchData(touchData);
        }
    }

    public final void composePoints(@NotNull Function1<? super List<TouchPoint>, ? extends List<TouchPoint>> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        List<TouchData> list = this.touchDataList;
        if (list == null) {
            return;
        }
        this.pointBezierArgs.setPointMap(map);
        for (TouchData touchData : list) {
            m33644a(touchData);
            this.pointBezierArgs.onTouchData(touchData);
        }
    }

    /* renamed from: d */
    public final void m33647d(TouchData touchData) {
        this.pointCount++;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    @NotNull
    public final Path getPath() {
        return this.pathBezierArgs.getPath();
    }

    public final int getPointCount() {
        return this.pointCount;
    }

    public final int getPointCountThreshold() {
        return this.pointCountThreshold;
    }

    @NotNull
    public final Paint getPredictPaint() {
        return this.predictPaint;
    }

    @NotNull
    public final Path getPredictPath() {
        return this.pathBezierArgs.getPredictPath();
    }

    @NotNull
    public final List<TouchPoint> getPredictPointList() {
        return this.pointBezierArgs.getPredictPointList();
    }

    @NotNull
    public final List<TouchPoint> getRealPointList() {
        return this.pointBezierArgs.getRealPointList();
    }

    @Nullable
    public final List<TouchData> getTouchDataList() {
        return this.touchDataList;
    }

    public final boolean isPointCountOverThreshold() {
        return this.pointCount >= this.pointCountThreshold;
    }

    public final void reset() {
        this.pointCount = 0;
        this.pointBezierArgs.reset();
        this.pathBezierArgs.reset();
        resetPredict();
    }

    public final void resetPredict() {
        this.pathBezierArgs.resetPredict();
        this.pointBezierArgs.resetPredict();
    }

    public final void setPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.paint = paint;
    }

    public final void setPointCount(int i) {
        this.pointCount = i;
    }

    public final void setPointCountThreshold(int i) {
        this.pointCountThreshold = i;
    }

    public final void setPredictPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.predictPaint = paint;
    }

    public final void setTouchDataList(@Nullable List<TouchData> list) {
        this.touchDataList = list;
    }
}
