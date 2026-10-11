package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.lite.utils.ColorUtils;
import com.onyx.android.sdk.data.common.data.LineStyleTypes;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001bH\u0016J\u0010\u0010#\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u001bH\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&H\u0016J\u0016\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020&J\b\u0010*\u001a\u00020+H\u0002J\u001a\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0010\u0010,\u001a\u00020!2\u0006\u00101\u001a\u000202H\u0016J\u0010\u0010,\u001a\u00020!2\u0006\u00103\u001a\u000204H\u0016J,\u00105\u001a\u00020!2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\u0006\u00106\u001a\u00020+2\b\u00107\u001a\u0004\u0018\u00010+H\u0014J\u0010\u00108\u001a\u00020!2\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020!2\u0006\u00103\u001a\u000204H\u0016J\b\u0010<\u001a\u00020=H\u0016J\u0006\u0010>\u001a\u00020\u001bJ\u0006\u0010?\u001a\u00020:J\b\u0010@\u001a\u00020:H\u0016J\u0006\u0010A\u001a\u00020:J\u0012\u0010B\u001a\u0004\u0018\u00010+2\b\u0010/\u001a\u0004\u0018\u000100J\b\u0010C\u001a\u00020DH\u0016J\u000e\u0010E\u001a\b\u0012\u0004\u0012\u00020G0FH\u0016J\u000e\u0010H\u001a\u00020\u001b2\u0006\u0010I\u001a\u00020JJ\u0012\u0010K\u001a\u00020+2\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0018\u0010L\u001a\u00020!2\u0006\u0010M\u001a\u00020&2\u0006\u0010N\u001a\u00020&H\u0016J\u000e\u0010O\u001a\u00020!2\u0006\u0010P\u001a\u00020:J\u0010\u0010Q\u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u001bH\u0016J\u0010\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020UH\u0016J\u000e\u0010V\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001bJ\u0016\u0010W\u001a\u00020!2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020G0FH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Feature;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", GeoConstant.KEY_Geometry, "getGeometry", "()Lcom/onyx/android/sdk/genericshape/Geometry;", "setGeometry", "(Lcom/onyx/android/sdk/genericshape/Geometry;)V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", GeoConstant.KEY_Properties, "Lcom/onyx/android/sdk/genericshape/Properties;", "getProperties", "()Lcom/onyx/android/sdk/genericshape/Properties;", "setProperties", "(Lcom/onyx/android/sdk/genericshape/Properties;)V", "type", "getType", "setType", GeoConstant.KEY_Universal_Shape_Type, "getUniversalShapeType", "setUniversalShapeType", "version", "", "getVersion", "()I", "setVersion", "(I)V", "applyFillColor", "", "color", "applyStrokeColor", "applyStrokeWidth", "width", "", "colorWithAlpha", "baseColor", "alpha", "createBasePaint", "Landroid/graphics/Paint;", "draw", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "matrix", "Landroid/graphics/Matrix;", "drawContext", "Lcom/onyx/android/sdk/genericshape/DrawContext;", "renderContext", "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "drawInternal", "strokePaint", "fillPaint", "enableFillColor", "enable", "", EventHandlerManager.ERASE, "getBoundingRect", "Landroid/graphics/RectF;", "getDisplayFillColor", "isEnableFill", "isEnableFillColor", "isFillColorSupported", "loadFillPaint", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "loadStrokeColor", "strokeAttr", "Lcom/onyx/android/sdk/genericshape/StrokeAttr;", "loadStrokePaint", "scaleSelectionPoints", "scaleX", "scaleY", "setFillColorSupported", "supported", "setFromShapeType", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "transformColor", "updateBySelectionPoints", "list", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Feature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 5 Boolean.kt\ncom/onyx/android/sdk/base/extension/BooleanKt\n*L\n1#1,1558:1\n1#2:1559\n11115#3:1560\n11450#3,3:1561\n32#4,5:1564\n41#4,5:1569\n12#5,3:1574\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Feature\n*L\n161#1:1560\n161#1:1561,3\n242#1:1564,5\n251#1:1569,5\n274#1:1574,3\n*E\n"})
/* loaded from: classes7.dex */
public class Feature extends Geometry {

    @Nullable
    private Geometry geometry;

    @Nullable
    private String id;

    @NotNull
    private String type = GeoConstant.Feature;

    @NotNull
    private Properties properties = new Properties();

    @NotNull
    private String universalShapeType = "";
    private int version = 1;

    private final Paint createBasePaint() {
        Paint paint = new Paint();
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeMiter(4.0f);
        if (this.properties.getUnderContent()) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
        }
        return paint;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyFillColor(int color) {
        FillAttr fillAttr = this.properties.getFillAttr();
        if (fillAttr != null && fillAttr.getEnableColor()) {
            fillAttr.setColor(color);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeColor(int color) {
        StrokeAttr strokeAttr = this.properties.getStrokeAttr();
        if (strokeAttr == null) {
            return;
        }
        if (strokeAttr.getEnableColor()) {
            strokeAttr.setColor(color);
        } else {
            strokeAttr.setColor(0);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void applyStrokeWidth(float width) {
        StrokeAttr strokeAttr = this.properties.getStrokeAttr();
        if (strokeAttr == null) {
            return;
        }
        strokeAttr.setWidth(width);
        Geometry geometry = getGeometry();
        if (!(geometry instanceof DirectionLine)) {
            geometry = null;
        }
        DirectionLine directionLine = (DirectionLine) geometry;
        if (directionLine == null) {
            return;
        }
        directionLine.setLineWidth(Float.valueOf(width));
    }

    public final int colorWithAlpha(int baseColor, float alpha) {
        int coerceAtLeast;
        int coerceAtMost;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, (int) (alpha * 255));
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(255, coerceAtLeast);
        return (coerceAtMost << 24) + (baseColor & 16777215);
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull Canvas canvas, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        drawInternal(canvas, matrix, loadStrokePaint(matrix), loadFillPaint(matrix));
    }

    public void drawInternal(@NotNull Canvas canvas, @Nullable Matrix matrix, @NotNull Paint strokePaint, @Nullable Paint fillPaint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        if (!(this.properties.getSubType().length() == 0)) {
            super.draw(canvas, matrix, strokePaint, fillPaint);
            return;
        }
        Geometry geometry = getGeometry();
        if (geometry != null) {
            geometry.draw(canvas, matrix, strokePaint, fillPaint);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void enableFillColor(boolean enable) {
        FillAttr fillAttr = this.properties.getFillAttr();
        if (fillAttr == null) {
            return;
        }
        fillAttr.setEnableColor(enable);
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void erase(@NotNull GeoRenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Matrix matrix = renderContext.getMatrix();
        Paint loadStrokePaint = loadStrokePaint(matrix);
        loadStrokePaint.setStrokeWidth(loadStrokePaint.getStrokeWidth() + 1.0f);
        loadStrokePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint loadFillPaint = loadFillPaint(matrix);
        if (loadFillPaint != null) {
            loadFillPaint.setXfermode(loadStrokePaint.getXfermode());
        } else {
            loadFillPaint = null;
        }
        drawInternal(renderContext.getCanvas(), matrix, loadStrokePaint, loadFillPaint);
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public RectF getBoundingRect() {
        RectF boundingRect;
        if (!(getGeometry() instanceof BidirectionalLine) && !(getGeometry() instanceof DirectionLine)) {
            return super.getBoundingRect();
        }
        Geometry geometry = getGeometry();
        RectF rectF = null;
        if (geometry != null && (boundingRect = geometry.getBoundingRect()) != null && (!RectKt.isNullOrEmpty(boundingRect))) {
            rectF = boundingRect;
        }
        return (RectF) AnyKt.getOrElse(rectF, new Function0<RectF>() { // from class: com.onyx.android.sdk.genericshape.Feature$getBoundingRect$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RectF invoke() {
                RectF boundingRect2;
                boundingRect2 = super/*com.onyx.android.sdk.genericshape.Geometry*/.getBoundingRect();
                return boundingRect2;
            }
        });
    }

    public final int getDisplayFillColor() {
        FillAttr fillAttr = this.properties.getFillAttr();
        if (fillAttr == null || !fillAttr.getEnableColor() || fillAttr.getColor() == 0) {
            return 0;
        }
        return fillAttr.getColor();
    }

    @Nullable
    public Geometry getGeometry() {
        return this.geometry;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final Properties getProperties() {
        return this.properties;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @NotNull
    public final String getUniversalShapeType() {
        return this.universalShapeType;
    }

    public final int getVersion() {
        return this.version;
    }

    public final boolean isEnableFill() {
        FillAttr fillAttr = this.properties.getFillAttr();
        return (fillAttr == null || !fillAttr.getEnableColor() || fillAttr.getColor() == 0) ? false : true;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public boolean isEnableFillColor() {
        FillAttr fillAttr = this.properties.getFillAttr();
        if (fillAttr != null) {
            return fillAttr.getEnableColor();
        }
        return false;
    }

    public final boolean isFillColorSupported() {
        return this.properties.getFillAttr() != null;
    }

    @Nullable
    public final Paint loadFillPaint(@Nullable Matrix matrix) {
        Paint paint;
        FillAttr fillAttr = this.properties.getFillAttr();
        if (fillAttr == null) {
            return null;
        }
        if (!fillAttr.getEnableColor() || fillAttr.getColor() == 0) {
            paint = null;
        } else {
            paint = createBasePaint();
            paint.setColor(transformColor(fillAttr.getColor()));
            paint.setStyle(Paint.Style.FILL);
        }
        if (paint == null) {
            return null;
        }
        paint.setStrokeWidth(paint.getStrokeWidth() * MatrixKt.getAverageScale(matrix));
        return paint;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Path loadRenderPath;
        Geometry geometry = getGeometry();
        return (geometry == null || (loadRenderPath = geometry.loadRenderPath()) == null) ? new Path() : loadRenderPath;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        List<TouchPoint> loadSelectionPoints;
        Geometry geometry = getGeometry();
        return (geometry == null || (loadSelectionPoints = geometry.loadSelectionPoints()) == null) ? new ArrayList() : loadSelectionPoints;
    }

    public final int loadStrokeColor(@NotNull StrokeAttr strokeAttr) {
        Intrinsics.checkNotNullParameter(strokeAttr, "strokeAttr");
        int color = strokeAttr.getColor();
        Float opacity = strokeAttr.getOpacity();
        if (opacity != null) {
            color = colorWithAlpha(color, opacity.floatValue());
        }
        return strokeAttr.getColorTransformMode() == 1 ? ColorUtils.INSTANCE.invertColor(-16777216) : transformColor(color);
    }

    @NotNull
    public Paint loadStrokePaint(@Nullable Matrix matrix) {
        float[] dashIntervalsArray;
        float[] floatArray;
        Paint createBasePaint = createBasePaint();
        StrokeAttr strokeAttr = this.properties.getStrokeAttr();
        Float valueOf = Float.valueOf(strokeAttr != null ? strokeAttr.getWidth() : 2.0f);
        if (!(valueOf.floatValue() > 0.0f)) {
            valueOf = null;
        }
        float floatValue = ((Number) AnyKt.getOrElse(valueOf, new Function0<Float>() { // from class: com.onyx.android.sdk.genericshape.Feature$loadStrokePaint$strokeWidth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(2.0f);
            }
        })).floatValue();
        createBasePaint.setStrokeWidth(floatValue);
        StrokeAttr strokeAttr2 = this.properties.getStrokeAttr();
        if (strokeAttr2 != null) {
            if (strokeAttr2.getEnableColor()) {
                createBasePaint.setColor(loadStrokeColor(strokeAttr2));
                createBasePaint.setStyle(Paint.Style.STROKE);
            }
            if (!strokeAttr2.getRoundCorner()) {
                createBasePaint.setStrokeCap(Paint.Cap.SQUARE);
                createBasePaint.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        LineStyle lineStyle = this.properties.getLineStyle();
        if (lineStyle != null && (dashIntervalsArray = LineStyleTypes.INSTANCE.getDashIntervalsArray(lineStyle.getType(), floatValue, floatValue)) != null) {
            if (((dashIntervalsArray.length == 0) ^ true ? dashIntervalsArray : null) != null) {
                float averageScale = MatrixKt.getAverageScale(matrix);
                ArrayList arrayList = new ArrayList(dashIntervalsArray.length);
                for (float f : dashIntervalsArray) {
                    arrayList.add(Float.valueOf(f * averageScale));
                }
                floatArray = CollectionsKt___CollectionsKt.toFloatArray(arrayList);
                createBasePaint.setPathEffect(new DashPathEffect(floatArray, lineStyle.getPhase() * averageScale));
            }
        }
        createBasePaint.setStrokeWidth(createBasePaint.getStrokeWidth() * MatrixKt.getAverageScale(matrix));
        return createBasePaint;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void scaleSelectionPoints(float scaleX, float scaleY) {
        Geometry geometry = getGeometry();
        if (geometry != null) {
            geometry.scaleSelectionPoints(scaleX, scaleY);
        }
    }

    public final void setFillColorSupported(boolean supported) {
        if (!supported) {
            this.properties.setFillAttr(null);
            return;
        }
        if (this.properties.getFillAttr() == null) {
            FillAttr fillAttr = new FillAttr();
            fillAttr.setColor(0);
            fillAttr.setEnableColor(false);
            this.properties.setFillAttr(fillAttr);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setFromShapeType(int type) {
        Geometry geometry = getGeometry();
        if (geometry != null) {
            geometry.setFromShapeType(type);
        }
        super.setFromShapeType(type);
    }

    public void setGeometry(@Nullable Geometry geometry) {
        this.geometry = geometry;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setProperties(@NotNull Properties properties) {
        Intrinsics.checkNotNullParameter(properties, "<set-?>");
        this.properties = properties;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setUniversalShapeType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.universalShapeType = str;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    public final int transformColor(int color) {
        return this.properties.getUnderContent() ? ColorKt.similarWithoutAlpha$default(color, 0, 1, null) : color;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Geometry geometry = getGeometry();
        if (geometry != null) {
            geometry.updateBySelectionPoints(list);
        }
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull GeoRenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Matrix matrix = renderContext.getMatrix();
        drawInternal(renderContext.getCanvas(), matrix, loadStrokePaint(matrix), loadFillPaint(matrix));
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    public void draw(@NotNull DrawContext drawContext) {
        Intrinsics.checkNotNullParameter(drawContext, "drawContext");
        Canvas canvas = drawContext.getCanvas();
        if (canvas != null) {
            draw(canvas, drawContext.getMatrix());
        }
    }
}
