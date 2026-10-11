package com.onyx.android.sdk.note.common.shape.graphical;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0002R\"\u0010\u0016\u001a\u00020\u000f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001f\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001e¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape;", "Lcom/onyx/android/sdk/note/common/shape/graphical/LineShape;", "", "updateShapeRect", "", "scale", "scaleDisplayScale", "Landroid/graphics/Path;", "getPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "", "a", "", "K", "I", "getType", "()I", "setType", "(I)V", "type", "d", "()F", "wavyLength", "e", "wavyPeak", "Landroid/graphics/Matrix;", "c", "()Landroid/graphics/Matrix;", "shapeTransformMatrix", "b", "rotationMatrix", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WaveLineShape extends LineShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: K, reason: from kotlin metadata */
    public int type = 25;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/graphical/WaveLineShape$Companion;", "", "()V", "createPdfShape", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "embedShapeBean", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfShapeInfo createPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
            Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
            PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
            PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createWavyLineShape(), embedShapeBean);
            float f = embedShapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String();
            float renderScale = embedShapeBean.getRenderScale();
            float f2 = 2;
            initPdfShape.setVertices(pdfShapeConvertUtils.getPolyLineVertices(embedShapeBean));
            initPdfShape.setStrokeWavyLength(((f * f2) + 24.0f) * renderScale);
            initPdfShape.setStrokeWavyPeak(((f / f2) + 6.0f) * renderScale);
            return initPdfShape;
        }

        public Companion() {
        }
    }

    /* renamed from: a */
    public final double m33820a() {
        return MathUtils.INSTANCE.distance(getCurrentPoint().getX(), getCurrentPoint().getY(), getDownPoint().getX(), getDownPoint().getY());
    }

    /* renamed from: b */
    public final Matrix m33821b() {
        float calculateAngle = MathUtils.INSTANCE.calculateAngle(getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY());
        Matrix matrix = new Matrix();
        if (Float.isNaN(calculateAngle)) {
            return matrix;
        }
        matrix.postRotate(-calculateAngle, getDownPoint().getX(), getDownPoint().getY());
        return matrix;
    }

    /* renamed from: c */
    public final Matrix m33822c() {
        Matrix m33821b = m33821b();
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            m33821b.postConcat(shapeMatrix);
        }
        return m33821b;
    }

    /* renamed from: d */
    public final float m33823d() {
        return getShapeCreateArgs().getCreateScaleValue(24.0f);
    }

    /* renamed from: e */
    public final float m33824e() {
        return getShapeCreateArgs().getCreateScaleValue(6.0f);
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    @NotNull
    public Path getPath() {
        double m33820a = m33820a();
        Path path = new Path();
        path.moveTo(getDownPoint().getX(), getDownPoint().getY());
        float f = 2;
        float m33823d = m33823d() + (getStrokeWidth() * f);
        float m33824e = m33824e() + (getStrokeWidth() / f);
        int i = (int) (m33820a / m33823d);
        for (int i2 = 0; i2 < i; i2++) {
            float f2 = m33823d / 4;
            float f3 = m33823d / f;
            path.rQuadTo(f2, m33824e, f3, 0.0f);
            path.rQuadTo(f2, -m33824e, f3, 0.0f);
        }
        path.transform(m33822c());
        return path;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void scaleDisplayScale(float scale) {
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.graphical.LineShape, com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        return INSTANCE.createPdfShape(embedShapeBean);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        float m33824e = m33824e();
        setOriginRect(new RectF(getDownPoint().getX(), getDownPoint().getY() - m33824e, (float) (getDownPoint().getX() + m33820a()), getDownPoint().getY() + m33824e));
        m33821b().mapRect(getOriginRect());
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }
}
