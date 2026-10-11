package com.onyx.android.sdk.geometry.data;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 )2\u00020\u0001:\u0001)B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u0006\u0010\u0019\u001a\u00020\u0000J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eJ\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\"J\t\u0010#\u001a\u00020$HÖ\u0001J\u0006\u0010%\u001a\u00020\u001bJ\u0006\u0010&\u001a\u00020\u0000J\t\u0010'\u001a\u00020(HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/RotatedRect;", "", "center", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "width", "", "height", "rotationInRad", "(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V", "getCenter", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setCenter", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "getHeight", "()F", "setHeight", "(F)V", "getRotationInRad", "setRotationInRad", "getWidth", "setWidth", "component1", "component2", "component3", "component4", "copy", "equals", "", Constants.ATTRVAL_OTHER, "getRealPoints", "", "getRotationMatrix", "Landroid/graphics/Matrix;", "getUnRotatedRect", "Landroid/graphics/RectF;", "hashCode", "", "isEmpty", "swapWidthAndHeightIfNeeded", "toString", "", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class RotatedRect {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final RotatedRect EMPTY = new RotatedRect(TouchPoint.INSTANCE.getEmpty(), 0.0f, 0.0f, 0.0f);

    @NotNull
    private TouchPoint center;
    private float height;
    private float rotationInRad;
    private float width;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;", "", "()V", "EMPTY", "Lcom/onyx/android/sdk/geometry/data/RotatedRect;", "getEMPTY", "()Lcom/onyx/android/sdk/geometry/data/RotatedRect;", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RotatedRect getEMPTY() {
            return RotatedRect.EMPTY;
        }

        private Companion() {
        }
    }

    public RotatedRect(@NotNull TouchPoint center, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(center, "center");
        this.center = center;
        this.width = f;
        this.height = f2;
        this.rotationInRad = f3;
    }

    public static /* synthetic */ RotatedRect copy$default(RotatedRect rotatedRect, TouchPoint touchPoint, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            touchPoint = rotatedRect.center;
        }
        if ((i & 2) != 0) {
            f = rotatedRect.width;
        }
        if ((i & 4) != 0) {
            f2 = rotatedRect.height;
        }
        if ((i & 8) != 0) {
            f3 = rotatedRect.rotationInRad;
        }
        return rotatedRect.copy(touchPoint, f, f2, f3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final TouchPoint getCenter() {
        return this.center;
    }

    /* renamed from: component2, reason: from getter */
    public final float getWidth() {
        return this.width;
    }

    /* renamed from: component3, reason: from getter */
    public final float getHeight() {
        return this.height;
    }

    /* renamed from: component4, reason: from getter */
    public final float getRotationInRad() {
        return this.rotationInRad;
    }

    @NotNull
    public final RotatedRect copy(@NotNull TouchPoint center, float width, float height, float rotationInRad) {
        Intrinsics.checkNotNullParameter(center, "center");
        return new RotatedRect(center, width, height, rotationInRad);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RotatedRect)) {
            return false;
        }
        RotatedRect rotatedRect = (RotatedRect) other;
        return Intrinsics.areEqual(this.center, rotatedRect.center) && Float.compare(this.width, rotatedRect.width) == 0 && Float.compare(this.height, rotatedRect.height) == 0 && Float.compare(this.rotationInRad, rotatedRect.rotationInRad) == 0;
    }

    @NotNull
    public final TouchPoint getCenter() {
        return this.center;
    }

    public final float getHeight() {
        return this.height;
    }

    @NotNull
    public final List<TouchPoint> getRealPoints() {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        return geometryUtils.rotationTransform(geometryUtils.vertexPoints(getUnRotatedRect()), this.center, this.rotationInRad);
    }

    public final float getRotationInRad() {
        return this.rotationInRad;
    }

    @NotNull
    public final Matrix getRotationMatrix() {
        Matrix matrix = new Matrix();
        matrix.postRotate(GeometryUtils.INSTANCE.radToDegree(this.rotationInRad), this.center.getX(), this.center.getY());
        return matrix;
    }

    @NotNull
    public final RectF getUnRotatedRect() {
        float f = 2;
        return new RectF(this.center.getX() - (this.width / f), this.center.getY() - (this.height / f), this.center.getX() + (this.width / f), this.center.getY() + (this.height / f));
    }

    public final float getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((this.center.hashCode() * 31) + Float.hashCode(this.width)) * 31) + Float.hashCode(this.height)) * 31) + Float.hashCode(this.rotationInRad);
    }

    public final boolean isEmpty() {
        return this == EMPTY;
    }

    public final void setCenter(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.center = touchPoint;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setRotationInRad(float f) {
        this.rotationInRad = f;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    @NotNull
    public final RotatedRect swapWidthAndHeightIfNeeded() {
        RotatedRect copy = copy();
        if (copy.width < copy.height) {
            copy.rotationInRad += 1.5707964f;
            copy.width = this.height;
            copy.height = this.width;
        }
        return copy;
    }

    @NotNull
    public String toString() {
        return "RotatedRect(center=" + this.center + ", width=" + this.width + ", height=" + this.height + ", rotationInRad=" + this.rotationInRad + ')';
    }

    @NotNull
    public final RotatedRect copy() {
        return new RotatedRect(this.center.copy(), this.width, this.height, this.rotationInRad);
    }
}
