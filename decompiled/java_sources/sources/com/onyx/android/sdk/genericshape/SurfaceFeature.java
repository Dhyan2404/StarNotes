package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\b\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0010H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/SurfaceFeature;", "Lcom/onyx/android/sdk/genericshape/Feature;", "featureCollection", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "(Lcom/onyx/android/sdk/genericshape/FeatureCollection;)V", "getFeatureCollection", "()Lcom/onyx/android/sdk/genericshape/FeatureCollection;", GeoConstant.KEY_Geometry, "Lcom/onyx/android/sdk/genericshape/Geometry;", "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "applyFillColor", "", "color", "", "applyStrokeColor", "applyStrokeWidth", "width", "", "draw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "renderContext", "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "enableFillColor", "enable", "", "getFillPath", "Landroid/graphics/Path;", "setFromShapeType", "type", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/SurfaceFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1558:1\n1855#2,2:1559\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/SurfaceFeature\n*L\n376#1:1559,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SurfaceFeature extends Feature {

    @NotNull
    private final FeatureCollection featureCollection;

    @Nullable
    private Geometry geometry;

    public SurfaceFeature(@NotNull FeatureCollection featureCollection) {
        Intrinsics.checkNotNullParameter(featureCollection, "featureCollection");
        this.featureCollection = featureCollection;
        this.geometry = featureCollection;
        getProperties().setSubType(GeoConstant.Surface);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyFillColor(int color) {
        super.applyFillColor(color);
        this.featureCollection.applyFillColor(color);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeColor(int color) {
        super.applyStrokeColor(color);
        this.featureCollection.applyStrokeColor(color);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeWidth(float width) {
        super.applyStrokeWidth(width);
        this.featureCollection.applyStrokeWidth(width);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull GeoRenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        this.featureCollection.draw(renderContext);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void enableFillColor(boolean enable) {
        super.enableFillColor(enable);
        this.featureCollection.enableFillColor(enable);
    }

    @NotNull
    public final FeatureCollection getFeatureCollection() {
        return this.featureCollection;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path getFillPath() {
        Object firstOrNull;
        Object firstOrNull2;
        Path path = new Path();
        int length = this.featureCollection.getFeatures().length;
        if (length <= 0) {
            return path;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.featureCollection.getFeatures()[0].loadSelectionPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint != null) {
            path.moveTo(touchPoint.getX(), touchPoint.getY());
        }
        for (int i = 1; i < length; i++) {
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.featureCollection.getFeatures()[i].loadSelectionPoints());
            TouchPoint touchPoint2 = (TouchPoint) firstOrNull2;
            if (touchPoint2 != null) {
                path.lineTo(touchPoint2.getX(), touchPoint2.getY());
            }
        }
        path.close();
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry
    public void setFromShapeType(int type) {
        super.setFromShapeType(type);
        this.featureCollection.setFromShapeType(type);
    }

    @Override // com.onyx.android.sdk.genericshape.Feature
    public void setGeometry(@Nullable Geometry geometry) {
        this.geometry = geometry;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        List list;
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        SplitShapeResult split = this.featureCollection.split(eraseBean);
        ArrayList arrayList = new ArrayList();
        List<IGeometry> splitShapes = split.getSplitShapes();
        if (splitShapes != null) {
            for (IGeometry iGeometry : splitShapes) {
                if (iGeometry instanceof Feature) {
                    arrayList.add(iGeometry);
                } else if (iGeometry instanceof FeatureCollection) {
                    list = ArraysKt___ArraysKt.toList(((FeatureCollection) iGeometry).getFeatures());
                    CollectionKt.safeAddAll(arrayList, list);
                }
            }
        }
        splitShapeResult.setSplitShapes(arrayList);
        splitShapeResult.setShapeErased(split.getShapeErased());
        splitShapeResult.setRemoveShapes(CollectionKt.ensureList(split.getRemoveShapes()));
        return splitShapeResult;
    }

    @Override // com.onyx.android.sdk.genericshape.Feature, com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.featureCollection.draw(canvas, matrix);
    }
}
