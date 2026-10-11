package com.onyx.android.sdk.genericshape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.genericshape.GeoLayoutShaderManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u0001.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J*\u0010\u0015\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J \u0010\u001b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u001c\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001d\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u001e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 H\u0016J \u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J(\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020 2\u0006\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u0012H\u0002J\b\u0010(\u001a\u00020\fH\u0016J\u0018\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u0012H\u0016J\u0010\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer;", "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;", "geoLayout", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "dstPath", "Landroid/graphics/Path;", "originPathData", "Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;", "shaderManager", "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;", "drawCircle", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "radius", "", "pts", "", "drawDotted", "matrix", "Landroid/graphics/Matrix;", "adaptiveSpacing", "", "useShader", "drawDottedWithPath", "drawDottedWithShader", "drawLine", "drawRect", "rectF", "Landroid/graphics/RectF;", "generateDottedPath", "visibleRect", "spacing", "generateDottedRowPath", "startX", "stopX", "adaptiveSpace", "recycle", "spaceAdaptive", "space", "total", "strokeColorAdaptive", "strokePaint", "PathCacheData", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class GeoLayoutDrawer implements IGeoLayoutDrawer {

    @NotNull
    private final Path dstPath;

    @NotNull
    private final GeoLayout geoLayout;

    @NotNull
    private final PathCacheData originPathData;

    @NotNull
    private final GeoLayoutShaderManager shaderManager;

    @Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u001c\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u001aR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/GeoLayoutDrawer$PathCacheData;", "", "()V", "cachePath", "Landroid/graphics/Path;", "getCachePath", "()Landroid/graphics/Path;", "lineSpace", "", "matrix", "Landroid/graphics/Matrix;", "getMatrix", "()Landroid/graphics/Matrix;", "setMatrix", "(Landroid/graphics/Matrix;)V", "originRect", "Landroid/graphics/RectF;", "hasData", "", Constants.RESET, "", "shouldUpdate", GeoConstant.KEY_Properties, "Lcom/onyx/android/sdk/genericshape/Properties;", "updatePathDataIf", "generatePathBlock", "Lkotlin/Function0;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class PathCacheData {

        @NotNull
        private final Path cachePath = new Path();

        @NotNull
        private Matrix matrix = new Matrix();

        @NotNull
        private RectF originRect = new RectF();
        private float lineSpace = 10.0f;

        @NotNull
        public final Path getCachePath() {
            return this.cachePath;
        }

        @NotNull
        public final Matrix getMatrix() {
            return this.matrix;
        }

        public final boolean hasData() {
            return !this.cachePath.isEmpty();
        }

        public final void reset() {
            this.originRect.setEmpty();
            this.cachePath.reset();
            this.matrix.reset();
        }

        public final void setMatrix(@NotNull Matrix matrix) {
            Intrinsics.checkNotNullParameter(matrix, "<set-?>");
            this.matrix = matrix;
        }

        public final boolean shouldUpdate(@NotNull Properties properties) {
            Intrinsics.checkNotNullParameter(properties, "properties");
            if (!hasData()) {
                return true;
            }
            PageMargins pageMargins = properties.getPageMargins();
            if (pageMargins == null) {
                return false;
            }
            if (!(pageMargins.getSpacing() == this.lineSpace)) {
                return true;
            }
            if (!(pageMargins.getLayoutRect().left == this.originRect.left)) {
                return true;
            }
            if (!(pageMargins.getLayoutRect().right == this.originRect.right)) {
                return true;
            }
            if (pageMargins.getLayoutRect().top == this.originRect.top) {
                return !((pageMargins.getLayoutRect().bottom > this.originRect.bottom ? 1 : (pageMargins.getLayoutRect().bottom == this.originRect.bottom ? 0 : -1)) == 0);
            }
            return true;
        }

        public final void updatePathDataIf(@NotNull Properties properties, @NotNull Function0<? extends Path> generatePathBlock) {
            Intrinsics.checkNotNullParameter(properties, "properties");
            Intrinsics.checkNotNullParameter(generatePathBlock, "generatePathBlock");
            if (shouldUpdate(properties)) {
                this.cachePath.set(generatePathBlock.invoke());
                PageMargins pageMargins = properties.getPageMargins();
                if (pageMargins == null) {
                    return;
                }
                this.originRect.set(pageMargins.getLayoutRect());
                this.lineSpace = pageMargins.getSpacing();
            }
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawOrigin.values().length];
            try {
                iArr[DrawOrigin.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawOrigin.RIGHT_TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawOrigin.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawOrigin.RIGHT_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public GeoLayoutDrawer(@NotNull GeoLayout geoLayout) {
        Intrinsics.checkNotNullParameter(geoLayout, "geoLayout");
        this.geoLayout = geoLayout;
        this.originPathData = new PathCacheData();
        this.dstPath = new Path();
        this.shaderManager = new GeoLayoutShaderManager();
    }

    private final void drawDottedWithShader(Canvas canvas, Matrix matrix, boolean adaptiveSpacing) {
        RectF pagePaddingRect;
        RectF pagePaddingRect2;
        RectF pagePaddingRect3;
        RectF pagePaddingRect4;
        Properties properties = this.geoLayout.getProperties();
        PageMargins pageMargins = properties.getPageMargins();
        if (pageMargins == null) {
            return;
        }
        RectF copy = RectFKt.copy(pageMargins.getLayoutRect());
        float spacing = this.geoLayout.getSpacing();
        Paint paint = new Paint();
        StrokeAttr strokeAttr = properties.getStrokeAttr();
        if (strokeAttr != null) {
            paint.setColor(this.geoLayout.loadStrokeColor(strokeAttr));
        }
        paint.setStyle(Paint.Style.FILL);
        PageMargins pageMargins2 = properties.getPageMargins();
        float f = 0.0f;
        float f2 = (pageMargins2 == null || (pagePaddingRect4 = pageMargins2.getPagePaddingRect()) == null) ? 0.0f : pagePaddingRect4.left;
        PageMargins pageMargins3 = properties.getPageMargins();
        float f3 = (pageMargins3 == null || (pagePaddingRect3 = pageMargins3.getPagePaddingRect()) == null) ? 0.0f : pagePaddingRect3.right;
        PageMargins pageMargins4 = properties.getPageMargins();
        float f4 = (pageMargins4 == null || (pagePaddingRect2 = pageMargins4.getPagePaddingRect()) == null) ? 0.0f : pagePaddingRect2.top;
        PageMargins pageMargins5 = properties.getPageMargins();
        float f5 = (pageMargins5 == null || (pagePaddingRect = pageMargins5.getPagePaddingRect()) == null) ? 0.0f : pagePaddingRect.bottom;
        float f6 = copy.left;
        float f7 = copy.top;
        if (adaptiveSpacing) {
            spacing = spaceAdaptive(spacing, (copy.width() - f2) - f3);
        }
        float width = (adaptiveSpacing || properties.getForceFullFit()) ? 0.0f : (((copy.width() - f2) - f3) % spacing) / 2;
        float f8 = f6 + f2 + width;
        float f9 = (copy.right - f3) - width;
        float f10 = 1;
        float f11 = f9 + f10;
        if (!adaptiveSpacing && !properties.getForceFullFit()) {
            f = (((copy.height() - f4) - f5) % spacing) / 2;
        }
        float f12 = f7 + f4 + f;
        float f13 = ((copy.bottom - f5) - f) + f10;
        GeoLayoutShaderManager.GeoLayoutShader geoLayoutShader = this.shaderManager.getGeoLayoutShader(this.geoLayout, MatrixKt.getScaleX(matrix), spacing);
        Matrix matrix2 = new Matrix(geoLayoutShader.getShaderMatrix());
        RectF rectF = new RectF(Math.min(f8, f11), Math.min(f12, f13), Math.max(f8, f11), Math.max(f12, f13));
        if (properties.getIgnoreFirstColumn()) {
            if (properties.getDrawOrigin() == DrawOrigin.LEFT_TOP || properties.getDrawOrigin() == DrawOrigin.LEFT_BOTTOM) {
                rectF.left += spacing;
            } else {
                rectF.right -= spacing;
            }
        }
        if (properties.getIgnoreFirstRow()) {
            if (properties.getDrawOrigin() == DrawOrigin.LEFT_TOP || properties.getDrawOrigin() == DrawOrigin.RIGHT_TOP) {
                rectF.top += spacing;
            } else {
                rectF.bottom -= spacing;
            }
        }
        if (matrix != null) {
            matrix.mapRect(rectF);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[properties.getDrawOrigin().ordinal()];
        if (i == 1) {
            matrix2.postTranslate(rectF.left, rectF.top);
        } else if (i == 2) {
            matrix2.postTranslate(rectF.right, rectF.top);
        } else if (i == 3) {
            matrix2.postTranslate(rectF.left, rectF.bottom);
        } else if (i == 4) {
            matrix2.postTranslate(rectF.right, rectF.bottom);
        }
        geoLayoutShader.getShader().setLocalMatrix(matrix2);
        this.shaderManager.getShaderPaint().setShader(geoLayoutShader.getShader());
        RectKt.expand(rectF, properties.getRadius() * MatrixKt.getScaleX(matrix));
        canvas.drawRect(rectF, this.shaderManager.getShaderPaint());
    }

    /* JADX WARN: Incorrect condition in loop: B:37:0x00b7 */
    /* JADX WARN: Incorrect condition in loop: B:43:0x00d2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.graphics.Path generateDottedPath(android.graphics.RectF r18, float r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayoutDrawer.generateDottedPath(android.graphics.RectF, float, boolean):android.graphics.Path");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Incorrect condition in loop: B:6:0x0024 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Path generateDottedRowPath(android.graphics.RectF r6, float r7, float r8, float r9) {
        /*
            r5 = this;
            com.onyx.android.sdk.genericshape.GeoLayout r0 = r5.geoLayout
            com.onyx.android.sdk.genericshape.Properties r0 = r0.getProperties()
            boolean r1 = r0.getIgnoreFirstColumn()
            if (r1 == 0) goto Lf
            float r1 = r7 + r9
            goto L10
        Lf:
            r1 = r7
        L10:
            com.onyx.android.sdk.genericshape.GeoLayout r5 = r5.geoLayout
            float r5 = r5.getAlignOffsetX(r6, r9)
            float r1 = r1 + r5
            android.graphics.Path r5 = new android.graphics.Path
            r5.<init>()
        L1c:
            int r6 = kotlin.math.MathKt.roundToInt(r1)
            int r2 = kotlin.math.MathKt.roundToInt(r8)
            if (r6 > r2) goto L57
            com.onyx.android.sdk.genericshape.DrawOrigin r6 = r0.getDrawOrigin()
            com.onyx.android.sdk.genericshape.DrawOrigin r2 = com.onyx.android.sdk.genericshape.DrawOrigin.LEFT_TOP
            r3 = 1
            if (r6 == r2) goto L3e
            com.onyx.android.sdk.genericshape.DrawOrigin r6 = r0.getDrawOrigin()
            com.onyx.android.sdk.genericshape.DrawOrigin r2 = com.onyx.android.sdk.genericshape.DrawOrigin.LEFT_BOTTOM
            if (r6 != r2) goto L38
            goto L3e
        L38:
            float r6 = r8 + r7
            float r6 = r6 - r1
            float r2 = (float) r3
            float r6 = r6 - r2
            goto L3f
        L3e:
            r6 = r1
        L3f:
            r2 = 2
            float[] r2 = new float[r2]
            r4 = 0
            r2[r4] = r6
            r6 = 0
            r2[r3] = r6
            float r6 = r0.getRadius()
            r4 = r2[r4]
            r2 = r2[r3]
            android.graphics.Path$Direction r3 = android.graphics.Path.Direction.CW
            r5.addCircle(r4, r2, r6, r3)
            float r1 = r1 + r9
            goto L1c
        L57:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayoutDrawer.generateDottedRowPath(android.graphics.RectF, float, float, float):android.graphics.Path");
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawCircle(@NotNull Canvas canvas, @NotNull Paint paint, float radius, @NotNull float[] pts) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(pts, "pts");
        canvas.drawCircle(pts[0], pts[1], radius, paint);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawDotted(@NotNull Canvas canvas, @Nullable Matrix matrix, boolean adaptiveSpacing, boolean useShader) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (useShader) {
            drawDottedWithShader(canvas, matrix, adaptiveSpacing);
        } else {
            drawDottedWithPath(canvas, matrix, adaptiveSpacing);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:42:0x0109 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawDottedWithPath(@org.jetbrains.annotations.NotNull android.graphics.Canvas r18, @org.jetbrains.annotations.Nullable android.graphics.Matrix r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.GeoLayoutDrawer.drawDottedWithPath(android.graphics.Canvas, android.graphics.Matrix, boolean):void");
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawLine(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull float[] pts) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(pts, "pts");
        canvas.drawLine(pts[0], pts[1], pts[2], pts[3], paint);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawRect(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        canvas.drawRect(rectF, paint);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void recycle() {
        this.originPathData.reset();
        this.dstPath.reset();
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public float spaceAdaptive(float space, float total) {
        int i = (int) (total / space);
        return i == 0 ? space : space + ((total % space) / i);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void strokeColorAdaptive(@NotNull Paint strokePaint) {
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
    }
}
