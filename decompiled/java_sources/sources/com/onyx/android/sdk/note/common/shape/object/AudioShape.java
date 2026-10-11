package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextPaint;
import android.view.View;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.MirrorType;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeAudioUtils;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\bH\u0016J\b\u0010\u0015\u001a\u00020\u0006H\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\"\u0010\u0012\u001a\u00020\u001d8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001fR\u0016\u0010+\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001f¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/AudioShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "", "x", "y", "inSpeechRect", "angle", "Landroid/graphics/PointF;", "pivotPoint", "onPreRotate", "onRotate", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "type", "translateDistance", "onMirror", "recycle", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "b", "c", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "Landroid/view/View;", "K", "Landroid/view/View;", "shapeView", "L", "shapeWidth", "M", "shapeHeight", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AudioShape extends ObjectShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: N */
    @NotNull
    public static final TextPaint f43707N;

    /* renamed from: O */
    public static int f43708O;

    /* renamed from: P */
    public static int f43709P;

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 23;

    /* renamed from: K, reason: from kotlin metadata */
    @Nullable
    public View shapeView;

    /* renamed from: L, reason: from kotlin metadata */
    public int shapeWidth;

    /* renamed from: M, reason: from kotlin metadata */
    public int shapeHeight;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/AudioShape$Companion;", "", "()V", "AUDIO_SHAPE_TEXT_MAX_WIDTH", "", "getAUDIO_SHAPE_TEXT_MAX_WIDTH", "()I", "setAUDIO_SHAPE_TEXT_MAX_WIDTH", "(I)V", "AUDIO_SHAPE_TEXT_SIZE", "getAUDIO_SHAPE_TEXT_SIZE", "setAUDIO_SHAPE_TEXT_SIZE", "textPaint", "Landroid/text/TextPaint;", "getTextPaint", "()Landroid/text/TextPaint;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getAUDIO_SHAPE_TEXT_MAX_WIDTH() {
            return AudioShape.f43709P;
        }

        public final int getAUDIO_SHAPE_TEXT_SIZE() {
            return AudioShape.f43708O;
        }

        @NotNull
        public final TextPaint getTextPaint() {
            return AudioShape.f43707N;
        }

        public final void setAUDIO_SHAPE_TEXT_MAX_WIDTH(int i) {
            AudioShape.f43709P = i;
        }

        public final void setAUDIO_SHAPE_TEXT_SIZE(int i) {
            AudioShape.f43708O = i;
        }

        public Companion() {
        }
    }

    static {
        TextPaint textPaint = new TextPaint(1);
        f43707N = textPaint;
        ResManager resManager = ResManager.INSTANCE;
        f43708O = resManager.getDimensionPixelSize(C7485R.dimen.audio_text_size);
        f43709P = resManager.getDimens(C7485R.dimen.audio_text_max_width);
        textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        textPaint.setTextSize(f43708O);
    }

    /* renamed from: a */
    public final float m33846a(RenderContext renderContext) {
        return renderContext.getRenderMeasure().getScale();
    }

    /* renamed from: b */
    public final void m33847b(RenderContext renderContext) {
        ResManager resManager = ResManager.INSTANCE;
        this.shapeWidth = resManager.getDimens(C7485R.dimen.audio_shape_width);
        this.shapeHeight = resManager.getDimens(C7485R.dimen.audio_shape_height);
        this.shapeView = ShapeAudioUtils.INSTANCE.createAudioView(ShapeOptions.INSTANCE.getResource(this), this.shapeWidth, this.shapeHeight, m33846a(renderContext));
        m33848c();
    }

    /* renamed from: c */
    public final void m33848c() {
        getOriginRect().union(getDownPoint().getX() + this.shapeWidth, getDownPoint().getY() + this.shapeHeight);
        setBoundingRect(new RectF(getOriginRect()));
        Matrix shapeMatrix = getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.mapRect(getBoundingRect());
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    public final boolean inSpeechRect(float x, float y) {
        float f = x - getBoundingRect().left;
        ResManager resManager = ResManager.INSTANCE;
        return f > 0.0f && f < ((float) ((resManager.getDimens(C7485R.dimen.audio_inner_padding_horizontal) + resManager.getDimens(C7485R.dimen.audio_icon_size)) + resManager.getDimens(C7485R.dimen.audio_text_margin_horizontal)));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onMirror(@NotNull MirrorType type, float translateDistance) {
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onPreRotate(float angle, @NotNull PointF pivotPoint) {
        Intrinsics.checkNotNullParameter(pivotPoint, "pivotPoint");
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeTransform
    public void onRotate(float angle, @NotNull PointF pivotPoint) {
        Intrinsics.checkNotNullParameter(pivotPoint, "pivotPoint");
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeResAttributes
    public void recycle() {
        super.recycle();
        ShapeAudioUtils.INSTANCE.deleteAudioTextFiles(this);
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        ShapeOptions shapeOptions;
        ShapeResource resource;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (isIntersectClipRect(renderContext) && (resource = (shapeOptions = ShapeOptions.INSTANCE).getResource(this)) != null && resource.isAudioResource() && resource.isLocalExist() && !shapeOptions.isTransparent(this)) {
            RectF rectF = new RectF(getDownPoint().getX(), getDownPoint().getY(), getCurrentPoint().getX(), getCurrentPoint().getY());
            if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                m33847b(renderContext);
                ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
                Bitmap loadBitmap = ViewKt.loadBitmap(this.shapeView);
                if (loadBitmap == null) {
                    return false;
                }
                Matrix matrix = new Matrix();
                matrix.postTranslate(getDownPoint().getX(), getDownPoint().getY());
                matrix.postConcat(getRenderMatrix(renderContext));
                renderContext.getCanvas().drawBitmap(loadBitmap, matrix, renderContext.getPaint());
                BitmapUtils.INSTANCE.recycle(loadBitmap);
                return true;
            }
            Debug.INSTANCE.m32044e(AudioShape.class, "shape rect error", new Object[0]);
        }
        return false;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createSoundShape(), embedShapeBean);
        pdfShapeConvertUtils.setAudioData(initPdfShape, embedShapeBean);
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        super.updateShapeRect();
        if (this.shapeView != null) {
            m33848c();
        }
    }
}
