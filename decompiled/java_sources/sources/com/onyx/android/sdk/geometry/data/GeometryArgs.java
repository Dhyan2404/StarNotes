package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\bM\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u0000 l2\u00020\u0001:\u0001lB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gJ\u0006\u0010h\u001a\u00020iJ\u0006\u0010j\u001a\u00020iJ\u0006\u0010k\u001a\u00020eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\u001a\u0010\"\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR \u0010%\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\u001a\u0010(\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\u001a\u0010+\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\u001a\u0010.\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001a\u00101\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0006\"\u0004\b3\u0010\bR\u001a\u00104\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0006\"\u0004\b6\u0010\bR\u001a\u00107\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0006\"\u0004\b9\u0010\bR\u001a\u0010:\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\u001a\u0010=\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0006\"\u0004\b?\u0010\bR\u001a\u0010@\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010\u0006\"\u0004\bB\u0010\bR\u001a\u0010C\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010\u0006\"\u0004\bE\u0010\bR\u001a\u0010F\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u0006\"\u0004\bH\u0010\bR\u001a\u0010I\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010\u0006\"\u0004\bK\u0010\bR\u001a\u0010L\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010\u0006\"\u0004\bN\u0010\bR\u001a\u0010O\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u0006\"\u0004\bQ\u0010\bR\u001a\u0010R\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010\u0006\"\u0004\bT\u0010\bR\u001a\u0010U\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010\u0006\"\u0004\bW\u0010\bR\u001a\u0010X\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u0006\"\u0004\bZ\u0010\bR\u001a\u0010[\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010\u0006\"\u0004\b]\u0010\bR\u001a\u0010^\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010\u0006\"\u0004\b`\u0010\bR\u001a\u0010a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010\u0006\"\u0004\bc\u0010\b¨\u0006m"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "", "()V", "bottom", "", "getBottom", "()F", "setBottom", "(F)V", "cx", "getCx", "setCx", "cy", "getCy", "setCy", "cycle", "getCycle", "setCycle", "endAngle", "getEndAngle", "setEndAngle", "extras", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getExtras", "()Ljava/util/List;", "setExtras", "(Ljava/util/List;)V", "height", "getHeight", "setHeight", "left", "getLeft", "setLeft", "peak", "getPeak", "setPeak", PointConstant.POINT_FILE_END, "getPoints", "setPoints", "r", "getR", "setR", gon.f71288n0, "getRight", "setRight", "rotateX", "getRotateX", "setRotateX", "rotateY", "getRotateY", "setRotateY", "rotation", "getRotation", "setRotation", "rx", "getRx", "setRx", "ry", "getRy", "setRy", "scaleX", "getScaleX", "setScaleX", "scaleY", "getScaleY", "setScaleY", "startAngle", "getStartAngle", "setStartAngle", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "getStrokeWidth", "setStrokeWidth", "sweepAngle", "getSweepAngle", "setSweepAngle", "sx", "getSx", "setSx", "sy", "getSy", "setSy", OneDriverConstants.TOP, "getTop", "setTop", "translateX", "getTranslateX", "setTranslateX", "translateY", "getTranslateY", "setTranslateY", "width", "getWidth", "setWidth", "x", "getX", "setX", "y", "getY", "setY", "applyMatrix", "", "matrix", "Landroid/graphics/Matrix;", "hasThreePoints", "", "hasTwoPoints", "updateCorners", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeometryArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeometryArgs.kt\ncom/onyx/android/sdk/geometry/data/GeometryArgs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1855#2,2:102\n1855#2,2:104\n*S KotlinDebug\n*F\n+ 1 GeometryArgs.kt\ncom/onyx/android/sdk/geometry/data/GeometryArgs\n*L\n90#1:102,2\n91#1:104,2\n*E\n"})
/* loaded from: classes7.dex */
public final class GeometryArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final GeometryArgs Empty = new GeometryArgs();
    private float bottom;
    private float cx;
    private float cy;
    private float cycle;
    private float endAngle;

    @NotNull
    private List<TouchPoint> extras;
    private float height;
    private float left;
    private float peak;

    @NotNull
    private List<TouchPoint> points;
    private float r;
    private float right;
    private float rotateX;
    private float rotateY;
    private float rotation;
    private float rx;
    private float ry;
    private float scaleX;
    private float scaleY;
    private float startAngle;
    private float strokeWidth;
    private float sweepAngle;
    private float sx = 1.0f;
    private float sy = 1.0f;
    private float top;
    private float translateX;
    private float translateY;
    private float width;
    private float x;
    private float y;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/GeometryArgs$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "getEmpty", "()Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GeometryArgs getEmpty() {
            return GeometryArgs.Empty;
        }

        private Companion() {
        }
    }

    public GeometryArgs() {
        List<TouchPoint> emptyList;
        List<TouchPoint> emptyList2;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.points = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.extras = emptyList2;
    }

    public final void applyMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        PointF mapPoint = MatrixKt.mapPoint(matrix, this.left, this.top);
        this.left = mapPoint.x;
        this.top = mapPoint.y;
        PointF mapPoint2 = MatrixKt.mapPoint(matrix, this.right, this.bottom);
        this.right = mapPoint2.x;
        this.bottom = mapPoint2.y;
        PointF mapPoint3 = MatrixKt.mapPoint(matrix, this.rotateX, this.rotateY);
        this.rotateX = mapPoint3.x;
        this.rotateY = mapPoint3.y;
        PointF mapPoint4 = MatrixKt.mapPoint(matrix, this.x, this.y);
        this.x = mapPoint4.x;
        this.y = mapPoint4.y;
        PointF mapPoint5 = MatrixKt.mapPoint(matrix, this.cx, this.cy);
        this.cx = mapPoint5.x;
        this.cy = mapPoint5.y;
        PointF mapPoint6 = MatrixKt.mapPoint(matrix, this.width, this.height);
        this.width = mapPoint6.x;
        this.height = mapPoint6.y;
        Iterator<T> it2 = this.points.iterator();
        while (it2.hasNext()) {
            ((TouchPoint) it2.next()).applyMatrix(matrix);
        }
        Iterator<T> it3 = this.extras.iterator();
        while (it3.hasNext()) {
            ((TouchPoint) it3.next()).applyMatrix(matrix);
        }
    }

    public final float getBottom() {
        return this.bottom;
    }

    public final float getCx() {
        return this.cx;
    }

    public final float getCy() {
        return this.cy;
    }

    public final float getCycle() {
        return this.cycle;
    }

    public final float getEndAngle() {
        return this.endAngle;
    }

    @NotNull
    public final List<TouchPoint> getExtras() {
        return this.extras;
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getLeft() {
        return this.left;
    }

    public final float getPeak() {
        return this.peak;
    }

    @NotNull
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    public final float getR() {
        return this.r;
    }

    public final float getRight() {
        return this.right;
    }

    public final float getRotateX() {
        return this.rotateX;
    }

    public final float getRotateY() {
        return this.rotateY;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getRx() {
        return this.rx;
    }

    public final float getRy() {
        return this.ry;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final float getStartAngle() {
        return this.startAngle;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public final float getSweepAngle() {
        return this.sweepAngle;
    }

    public final float getSx() {
        return this.sx;
    }

    public final float getSy() {
        return this.sy;
    }

    public final float getTop() {
        return this.top;
    }

    public final float getTranslateX() {
        return this.translateX;
    }

    public final float getTranslateY() {
        return this.translateY;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public final boolean hasThreePoints() {
        return this.points.size() == 3;
    }

    public final boolean hasTwoPoints() {
        return this.points.size() == 2;
    }

    public final void setBottom(float f) {
        this.bottom = f;
    }

    public final void setCx(float f) {
        this.cx = f;
    }

    public final void setCy(float f) {
        this.cy = f;
    }

    public final void setCycle(float f) {
        this.cycle = f;
    }

    public final void setEndAngle(float f) {
        this.endAngle = f;
    }

    public final void setExtras(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.extras = list;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setLeft(float f) {
        this.left = f;
    }

    public final void setPeak(float f) {
        this.peak = f;
    }

    public final void setPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.points = list;
    }

    public final void setR(float f) {
        this.r = f;
    }

    public final void setRight(float f) {
        this.right = f;
    }

    public final void setRotateX(float f) {
        this.rotateX = f;
    }

    public final void setRotateY(float f) {
        this.rotateY = f;
    }

    public final void setRotation(float f) {
        this.rotation = f;
    }

    public final void setRx(float f) {
        this.rx = f;
    }

    public final void setRy(float f) {
        this.ry = f;
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
    }

    public final void setScaleY(float f) {
        this.scaleY = f;
    }

    public final void setStartAngle(float f) {
        this.startAngle = f;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public final void setSweepAngle(float f) {
        this.sweepAngle = f;
    }

    public final void setSx(float f) {
        this.sx = f;
    }

    public final void setSy(float f) {
        this.sy = f;
    }

    public final void setTop(float f) {
        this.top = f;
    }

    public final void setTranslateX(float f) {
        this.translateX = f;
    }

    public final void setTranslateY(float f) {
        this.translateY = f;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    public final void updateCorners() {
        float f = this.cx;
        float f2 = this.width;
        float f3 = 2;
        this.left = f - (f2 / f3);
        this.right = f + (f2 / f3);
        float f4 = this.cy;
        float f5 = this.height;
        this.top = f4 - (f5 / f3);
        this.bottom = f4 + (f5 / f3);
    }
}
