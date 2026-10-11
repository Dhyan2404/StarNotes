package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0016\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Bracket;", "Lcom/onyx/android/sdk/genericshape/Feature;", "multiPoint", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "(Lcom/onyx/android/sdk/genericshape/MultiPoint;)V", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "getBoundingRect", "Landroid/graphics/RectF;", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "updateBySelectionPoints", "", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Bracket extends Feature {

    @Nullable
    private Geometry geometry;

    @NotNull
    private final MultiPoint multiPoint;

    public Bracket(@NotNull MultiPoint multiPoint) {
        Intrinsics.checkNotNullParameter(multiPoint, "multiPoint");
        this.multiPoint = multiPoint;
        this.geometry = multiPoint;
        getProperties().setSubType(GeoConstant.Bracket);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        RectF rectF = new RectF();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null || coordinates.length < 3) {
            return rectF;
        }
        float[] fArr = coordinates[0];
        TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[1];
        TouchPoint touchPoint2 = new TouchPoint(fArr2[0], fArr2[1]);
        float[] fArr3 = coordinates[2];
        TouchPoint touchPoint3 = new TouchPoint(fArr3[0], fArr3[1]);
        boolean z = touchPoint2.getX() >= touchPoint.getX();
        float f = 10;
        rectF.set(z ? touchPoint.getX() : touchPoint2.getX() - 10, touchPoint2.getY() - f, z ? touchPoint2.getX() + f : touchPoint.getX(), touchPoint3.getY() + f);
        return rectF;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        TouchPoint touchPoint;
        Path path = new Path();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null || coordinates.length < 3) {
            return path;
        }
        float[] fArr = coordinates[0];
        TouchPoint touchPoint2 = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[1];
        TouchPoint touchPoint3 = new TouchPoint(fArr2[0], fArr2[1]);
        float[] fArr3 = coordinates[2];
        TouchPoint touchPoint4 = new TouchPoint(fArr3[0], fArr3[1]);
        if (touchPoint4.getY() < touchPoint3.getY()) {
            touchPoint = touchPoint3;
            touchPoint3 = touchPoint4;
        } else {
            touchPoint = touchPoint4;
        }
        boolean z = touchPoint3.getX() >= touchPoint2.getX();
        float x = z ? touchPoint3.getX() + 10 : touchPoint3.getX() - 10;
        float x2 = z ? touchPoint.getX() + 10 : touchPoint.getX() - 10;
        float floatValue = ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(20.0f), Float.valueOf(new TouchPointPair(touchPoint3, touchPoint).length() * GeometryConfigurations.INSTANCE.getCurlyBracketMaxHeightPercent()))).floatValue();
        path.moveTo(touchPoint2.getX(), touchPoint2.getY());
        path.lineTo(touchPoint3.getX(), touchPoint2.getY() - floatValue);
        path.lineTo(touchPoint3.getX(), touchPoint3.getY());
        float f = 8;
        float f2 = 10;
        path.cubicTo(touchPoint3.getX(), touchPoint3.getY(), touchPoint3.getX(), touchPoint3.getY() - f, x, touchPoint3.getY() - f2);
        path.moveTo(touchPoint2.getX(), touchPoint2.getY());
        path.lineTo(touchPoint.getX(), touchPoint2.getY() + floatValue);
        path.lineTo(touchPoint.getX(), touchPoint.getY());
        path.cubicTo(touchPoint.getX(), touchPoint.getY(), touchPoint.getX(), touchPoint.getY() + f, x2, touchPoint.getY() + f2);
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        float[][] coordinates = this.multiPoint.getCoordinates();
        if (coordinates == null) {
            return arrayList;
        }
        float[] fArr = coordinates[0];
        TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
        float[] fArr2 = coordinates[1];
        TouchPoint touchPoint2 = new TouchPoint(fArr2[0], fArr2[1]);
        float[] fArr3 = coordinates[2];
        TouchPoint touchPoint3 = new TouchPoint(fArr3[0], fArr3[1]);
        arrayList.add(touchPoint);
        arrayList.add(touchPoint2);
        arrayList.add(touchPoint3);
        return arrayList;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    public void setGeometry(@Nullable Geometry geometry) {
        this.geometry = geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.multiPoint.setCoordinates(GeoJsonKt.toFloatArray(list));
    }
}
