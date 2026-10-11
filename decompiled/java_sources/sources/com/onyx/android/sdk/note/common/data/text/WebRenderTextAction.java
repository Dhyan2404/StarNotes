package com.onyx.android.sdk.note.common.data.text;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.Pair;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010%\u001a\u00020 ¢\u0006\u0004\b5\u00106J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\n\u001a\u00020\bH\u0002J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J \u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0004H\u0002J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0015H\u0002J\b\u0010\u0019\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010/R\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010/R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00104¨\u00067"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "render", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/Bitmap;", "bitmap", "", "s", GoogleApiAvailabilityLight.f29016b, "", "renderWidth", "renderHeight", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Landroid/graphics/Matrix;", "matrix", "l", "r", "Lcom/onyx/android/sdk/note/common/data/text/MeasureRichTextAction;", "q", "measure", "p", "m", "Lcom/onyx/android/sdk/note/common/data/text/SaveRenderCacheAction;", "t", "e", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getTextShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/text/TextRender;", "textRender", "Lcom/onyx/android/sdk/base/data/Size;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/data/Size;", "limitSize", "i", "F", "originScaleX", "j", "originScaleY", C4921e.f26537n, "Landroid/graphics/Bitmap;", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WebRenderTextAction extends RxBaseAction<WebRenderTextAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TextRender textRender;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Size limitSize;

    /* renamed from: i, reason: from kotlin metadata */
    public float originScaleX;

    /* renamed from: j, reason: from kotlin metadata */
    public float originScaleY;

    /* renamed from: k, reason: from kotlin metadata */
    public float renderWidth;

    /* renamed from: l, reason: from kotlin metadata */
    public float renderHeight;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: com.onyx.android.sdk.note.common.data.text.WebRenderTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C7496a<T, R> implements Function {
        public C7496a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebRenderTextAction apply(@NotNull MeasureRichTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebRenderTextAction.this.m33733p(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.WebRenderTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C7497b<T, R> implements Function {
        public C7497b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Bitmap apply(@NotNull WebRenderTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebRenderTextAction.this.m33730m();
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.WebRenderTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C7498c<T, R> implements Function {
        public C7498c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveRenderCacheAction> apply(@NotNull Bitmap it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebRenderTextAction.this.m33737t(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.note.common.data.text.WebRenderTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C7499d<T, R> implements Function {
        public C7499d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final WebRenderTextAction apply(@NotNull SaveRenderCacheAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WebRenderTextAction.this;
        }
    }

    public WebRenderTextAction(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
        this.limitSize = new Size(0, 0, 3, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<WebRenderTextAction> create() {
        Observable<WebRenderTextAction> map = m33734q().observeOn(this.renderContext.getTextRenderObserveOn()).map(new C7496a()).map(new C7497b()).flatMap(new C7498c()).map(new C7499d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final Shape getTextShape() {
        return this.textShape;
    }

    /* renamed from: l */
    public final void m33729l(RenderContext renderContext, Matrix matrix, Bitmap bitmap) {
        float width;
        ShapeTextStyle textStyle = this.textShape.getTextStyle();
        if (textStyle == null) {
            return;
        }
        float f = this.textShape.getOriginRect().top;
        matrix.postTranslate(new float[]{this.textShape.getOriginRect().left, f}[0], f);
        matrix.postConcat(this.textShape.getRenderMatrix(renderContext));
        if (textStyle.isVertical()) {
            width = this.renderHeight / bitmap.getHeight();
            matrix.postTranslate(-((bitmap.getWidth() * width) - this.renderWidth), 0.0f);
        } else {
            width = this.renderWidth / bitmap.getWidth();
        }
        Float f2 = NumberUtils.FLOAT_ONE;
        matrix.preScale((f2.floatValue() / this.originScaleX) * width, (f2.floatValue() / this.originScaleY) * width);
    }

    /* renamed from: m */
    public final Bitmap m33730m() {
        Pair<Size, Float> limitSize = TextRenderUtil.INSTANCE.getLimitSize(this.renderContext, this.textShape);
        Object first = limitSize.first;
        Intrinsics.checkNotNullExpressionValue(first, "first");
        Size size = (Size) first;
        this.limitSize = size;
        Float f = (Float) limitSize.second;
        Bitmap createBitmap = Bitmap.createBitmap(size.getWidth(), this.limitSize.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        Matrix matrix = new Matrix();
        Intrinsics.checkNotNull(f);
        matrix.postScale(f.floatValue(), f.floatValue());
        canvas.concat(matrix);
        TextRender textRender = this.textRender;
        Intrinsics.checkNotNull(textRender);
        textRender.draw(canvas);
        return createBitmap;
    }

    /* renamed from: n */
    public final void m33731n() {
        RectF originRect = this.textShape.getOriginRect();
        float[] matrixValue = MatrixKt.getMatrixValue(this.textShape.getRenderMatrix(this.renderContext));
        this.originScaleX = MatrixKt.getMatrixScaleX(matrixValue);
        this.originScaleY = MatrixKt.getMatrixScaleY(matrixValue);
        this.renderWidth = this.originScaleX * Math.abs(originRect.width());
        this.renderHeight = this.originScaleY * Math.abs(originRect.height());
    }

    /* renamed from: o */
    public final Bitmap m33732o(float renderWidth, float renderHeight) {
        return TextRenderUtil.INSTANCE.loadThumbnailCache(this.textShape, (int) renderWidth, (int) renderHeight);
    }

    /* renamed from: p */
    public final WebRenderTextAction m33733p(MeasureRichTextAction measure) {
        this.textRender = measure.getTextRender();
        return this;
    }

    /* renamed from: q */
    public final Observable<MeasureRichTextAction> m33734q() {
        return new MeasureRichTextAction(this.renderContext, this.textShape).build();
    }

    /* renamed from: r */
    public final Bitmap m33735r() {
        try {
            create().blockingSubscribe();
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(WebRenderTextAction.class, e);
        }
        return this.bitmap;
    }

    public final boolean render() {
        ShapeTextStyle textStyle = this.textShape.getTextStyle();
        if (textStyle == null) {
            return false;
        }
        m33731n();
        Bitmap m33732o = m33732o(this.renderWidth, this.renderHeight);
        if (!BitmapKt.isValid(m33732o)) {
            Debug.INSTANCE.m32035d(WebRenderTextAction.class, "font = " + textStyle.getFontFace(), new Object[0]);
            m33732o = m33735r();
        }
        if (!BitmapKt.isValid(m33732o)) {
            return false;
        }
        m33736s(m33732o);
        return true;
    }

    /* renamed from: s */
    public final void m33736s(Bitmap bitmap) {
        this.renderContext.getCanvas().save();
        Matrix matrix = new Matrix();
        m33729l(this.renderContext, matrix, bitmap);
        ShapeRenders.INSTANCE.applyStrokeStyle(this.textShape, this.renderContext);
        this.renderContext.getPaint().setColor(-1);
        this.renderContext.getCanvas().drawBitmap(bitmap, matrix, this.renderContext.getPaint());
        this.renderContext.getCanvas().restore();
        bitmap.recycle();
    }

    /* renamed from: t */
    public final Observable<SaveRenderCacheAction> m33737t(Bitmap bitmap) {
        this.bitmap = bitmap;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        return new SaveRenderCacheAction(this.renderContext, this.textShape, createBitmap).setSize(this.limitSize).build();
    }
}
