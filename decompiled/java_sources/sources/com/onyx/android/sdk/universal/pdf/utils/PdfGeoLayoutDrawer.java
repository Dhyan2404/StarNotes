package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.IGeoLayoutDrawer;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001a\u0018\u00002\u00020\u0001:\u0001IB\u000f\u0012\u0006\u0010(\u001a\u00020&¢\u0006\u0004\bG\u0010HJ\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J*\u0010\u001b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J(\u0010\u001d\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000eH\u0016J\b\u0010 \u001a\u00020\u0006H\u0016J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010%\u001a\u00020\u0018H\u0002R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010'R$\u0010/\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R.\u00107\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u0001008\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\"\u0010@\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00109\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010F¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer;", "Lcom/onyx/android/sdk/genericshape/IGeoLayoutDrawer;", "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;", "callback", "", "thresholdCount", "", "setPDFExportCallback", "", "space", "total", "spaceAdaptive", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Paint;", "paint", "Landroid/graphics/RectF;", "rectF", "drawRect", "", "pts", "drawLine", "Landroid/graphics/Matrix;", "matrix", "", "adaptiveSpacing", "useShader", "drawDotted", "radius", "drawCircle", "strokePaint", "strokeColorAdaptive", "recycle", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "pdfShapeInfo", "b", "a", "c", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "geoLayout", "", Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "value", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "getPdfNative", "()Lcom/onyx/android/sdk/neopdf/NeoPdf;", "setPdfNative", "(Lcom/onyx/android/sdk/neopdf/NeoPdf;)V", "pdfNative", "d", "I", "savePdfShapeThresholdCount", "e", "getSavedPdfShapeCount", "()I", "setSavedPdfShapeCount", "(I)V", "savedPdfShapeCount", C6997f.f39671c, "Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;", "getCallback", "()Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;", "setCallback", "(Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "PDFExportCallback", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PdfGeoLayoutDrawer implements IGeoLayoutDrawer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final GeoLayout geoLayout;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String pageId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public NeoPdf pdfNative;

    /* renamed from: d, reason: from kotlin metadata */
    public int savePdfShapeThresholdCount;

    /* renamed from: e, reason: from kotlin metadata */
    public int savedPdfShapeCount;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public PDFExportCallback callback;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/PdfGeoLayoutDrawer$PDFExportCallback;", "", "onThresholdReached", "", "shouldAbortExport", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface PDFExportCallback {
        void onThresholdReached();

        boolean shouldAbortExport();
    }

    public PdfGeoLayoutDrawer(@NotNull GeoLayout geoLayout) {
        Intrinsics.checkNotNullParameter(geoLayout, "geoLayout");
        this.geoLayout = geoLayout;
        this.savePdfShapeThresholdCount = 5000;
    }

    public static /* synthetic */ void setPDFExportCallback$default(PdfGeoLayoutDrawer pdfGeoLayoutDrawer, PDFExportCallback pDFExportCallback, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = pdfGeoLayoutDrawer.savePdfShapeThresholdCount;
        }
        pdfGeoLayoutDrawer.setPDFExportCallback(pDFExportCallback, i);
    }

    /* renamed from: a */
    public final PdfShapeInfo m41584a(Paint paint) {
        PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
        pdfShapeInfo.setId(UUIDUtils.INSTANCE.shortUUID());
        pdfShapeInfo.setStrokeWidth(paint.getStrokeWidth());
        pdfShapeInfo.setColor(paint.getColor());
        pdfShapeInfo.setFillColor(paint.getColor());
        pdfShapeInfo.setPageId(this.pageId);
        pdfShapeInfo.setMatrix(MatrixKt.getMatrixValue(new Matrix()));
        pdfShapeInfo.setLayerId("0");
        pdfShapeInfo.setExtraAttr("");
        return pdfShapeInfo;
    }

    /* renamed from: b */
    public final void m41585b(PdfShapeInfo pdfShapeInfo) {
        NeoPdf neoPdf = this.pdfNative;
        if (neoPdf != null) {
            neoPdf.drawPageBackgroundShape(pdfShapeInfo);
        }
        int i = this.savedPdfShapeCount + 1;
        this.savedPdfShapeCount = i;
        if (i >= this.savePdfShapeThresholdCount) {
            PDFExportCallback pDFExportCallback = this.callback;
            if (pDFExportCallback != null) {
                pDFExportCallback.onThresholdReached();
            }
            this.savedPdfShapeCount = 0;
        }
    }

    /* renamed from: c */
    public final boolean m41586c() {
        PDFExportCallback pDFExportCallback = this.callback;
        if (pDFExportCallback != null) {
            return pDFExportCallback.shouldAbortExport();
        }
        return false;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawCircle(@NotNull Canvas canvas, @NotNull Paint paint, float radius, @NotNull float[] pts) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(pts, "pts");
        PdfShapeInfo m41584a = m41584a(paint);
        m41584a.setType(5);
        m41584a.setVertices(pts);
        float f = pts[0];
        float f2 = pts[1];
        m41584a.setRect(new RectF(f - radius, f2 - radius, f + radius, f2 + radius));
        m41585b(m41584a);
    }

    /* JADX WARN: Incorrect condition in loop: B:42:0x00e6 */
    /* JADX WARN: Incorrect condition in loop: B:50:0x0107 */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0152 A[SYNTHETIC] */
    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawDotted(@org.jetbrains.annotations.NotNull android.graphics.Canvas r20, @org.jetbrains.annotations.Nullable android.graphics.Matrix r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.pdf.utils.PdfGeoLayoutDrawer.drawDotted(android.graphics.Canvas, android.graphics.Matrix, boolean, boolean):void");
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawLine(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull float[] pts) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(pts, "pts");
        PdfShapeInfo m41584a = m41584a(paint);
        m41584a.setType(1);
        m41584a.setVertices(pts);
        m41584a.setRect(new RectF(pts[0], pts[1], pts[2], pts[3]));
        RectF rect = m41584a.getRect();
        if (rect != null) {
            RectKt.expand(rect, m41584a.getStrokeWidth());
        }
        m41585b(m41584a);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void drawRect(@NotNull Canvas canvas, @NotNull Paint paint, @NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        PdfShapeInfo m41584a = m41584a(paint);
        m41584a.setType(4);
        m41584a.setVertices(new float[]{rectF.left, rectF.top, rectF.right, rectF.bottom});
        m41584a.setRect(RectFKt.copy(rectF));
        NeoPdf neoPdf = this.pdfNative;
        if (neoPdf != null) {
            neoPdf.drawPageBackgroundShape(m41584a);
        }
    }

    @Nullable
    public final PDFExportCallback getCallback() {
        return this.callback;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final NeoPdf getPdfNative() {
        return this.pdfNative;
    }

    public final int getSavedPdfShapeCount() {
        return this.savedPdfShapeCount;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void recycle() {
    }

    public final void setCallback(@Nullable PDFExportCallback pDFExportCallback) {
        this.callback = pDFExportCallback;
    }

    public final void setPDFExportCallback(@Nullable PDFExportCallback callback, int thresholdCount) {
        this.savePdfShapeThresholdCount = thresholdCount;
        this.callback = callback;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    @JSONField(deserialize = false, serialize = false)
    public final void setPdfNative(@Nullable NeoPdf neoPdf) {
        this.pdfNative = neoPdf;
    }

    public final void setSavedPdfShapeCount(int i) {
        this.savedPdfShapeCount = i;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public float spaceAdaptive(float space, float total) {
        return space;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeoLayoutDrawer
    public void strokeColorAdaptive(@NotNull Paint strokePaint) {
        Intrinsics.checkNotNullParameter(strokePaint, "strokePaint");
        FillAttr fillAttr = this.geoLayout.getProperties().getFillAttr();
        if (fillAttr == null || !fillAttr.getEnableColor() || fillAttr.getColor() == 0) {
            return;
        }
        strokePaint.setColor(ColorKt.similarWithoutAlpha(strokePaint.getColor(), fillAttr.getColor()));
    }
}
