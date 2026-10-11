package com.onyx.android.sdk.note.common.shape.object;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeRenders;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\u0006H\u0002R\"\u0010\u0014\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/TagShape;", "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "", "render", "", "updateShapeRect", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "a", "", "J", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TagShape extends ObjectShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: K */
    @NotNull
    public static final Lazy<TextPaint> f43736K;

    /* renamed from: J, reason: from kotlin metadata */
    public int type = 45;

    @Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J(\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006J,\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0013\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "createTagBean", "", "width", "height", "scale", "Landroid/graphics/Bitmap;", "createBitmap", "tagBean", "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;", "renderMeasure", "", "title", "", "calculateWidth", "getTagHeight", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "tagModel", "getTagDisplayTitle", "Landroid/text/TextPaint;", "tagTextPaint$delegate", "Lkotlin/Lazy;", "a", "()Landroid/text/TextPaint;", "tagTextPaint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final TextPaint m33874a() {
            return (TextPaint) TagShape.f43736K.getValue();
        }

        public final int calculateWidth(@Nullable RenderMeasure renderMeasure, @Nullable String title) {
            int coerceAtLeast;
            int coerceAtMost;
            TextPaint m33874a = m33874a();
            ResManager resManager = ResManager.INSTANCE;
            m33874a.setTextSize(resManager.getDimens(C7485R.dimen.tag_name_text_size));
            int ceil = (int) Math.ceil(m33874a.measureText(title));
            float dimension = resManager.getDimension(C7485R.dimen.tag_width_offset_size);
            float dimension2 = ceil + dimension + resManager.getDimension(C7485R.dimen.link_audio_margin_end) + resManager.getDimension(C7485R.dimen.link_padding);
            float f = 2;
            int ceil2 = (int) FloatKt.ceil(dimension2 + (resManager.getDimension(C7485R.dimen.tag_shape_border_width) * f));
            if (renderMeasure == null) {
                return ceil2;
            }
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(ceil2, (int) ((renderMeasure.getViewPortRect().width() * f) / 3.0f));
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(ceil2, coerceAtLeast);
            return coerceAtMost;
        }

        @Nullable
        public final Bitmap createBitmap(@NotNull Shape shape, float width, float height, float scale) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            return createBitmap(ShapeOptions.INSTANCE.getTagBean(shape), width, height, scale);
        }

        @Nullable
        public final ShapeTagBean createTagBean(@NotNull Shape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            return (ShapeTagBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeTagBean.class);
        }

        @NotNull
        public final String getTagDisplayTitle(@NotNull SyncTagModel tagModel) {
            Intrinsics.checkNotNullParameter(tagModel, "tagModel");
            return tagModel.getContent();
        }

        public final int getTagHeight() {
            return ResManager.INSTANCE.getDimens(C7485R.dimen.tag_shape_height);
        }

        public Companion() {
        }

        @SuppressLint({"InflateParams"})
        @Nullable
        public final Bitmap createBitmap(@Nullable ShapeTagBean tagBean, float width, float height, float scale) {
            if (tagBean == null) {
                return null;
            }
            View inflate = LayoutInflater.from(ResManager.INSTANCE.getAppContext()).inflate(C7485R.layout.layout_tag_shape, (ViewGroup) null);
            Intrinsics.checkNotNull(inflate, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) inflate;
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(C7485R.id.content);
            for (SyncTagModel syncTagModel : tagBean.getTagList()) {
                ResManager resManager = ResManager.INSTANCE;
                View inflate2 = LayoutInflater.from(resManager.getAppContext()).inflate(C7485R.layout.item_tag_shape_text, viewGroup, false);
                LinearLayout linearLayout = inflate2 instanceof LinearLayout ? (LinearLayout) inflate2 : null;
                if (linearLayout != null) {
                    TextView textView = (TextView) linearLayout.findViewById(C7485R.id.title);
                    ImageView imageView = (ImageView) linearLayout.findViewById(C7485R.id.iv_icon);
                    Drawable background = linearLayout.getBackground();
                    Intrinsics.checkNotNull(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
                    GradientDrawable gradientDrawable = (GradientDrawable) background;
                    int argb = Color.argb(resManager.getInteger(C7485R.integer.tag_shape_stroke_color_alpha), Color.red(syncTagModel.getStyle().getColor()), Color.green(syncTagModel.getStyle().getColor()), Color.blue(syncTagModel.getStyle().getColor()));
                    ColorUtils colorUtils = ColorUtils.INSTANCE;
                    gradientDrawable.setColor(colorUtils.blend(syncTagModel.getStyle().getColor(), -1, resManager.getFloat(C7485R.dimen.tag_shape_fill_white_overlay_percent)));
                    gradientDrawable.setStroke(resManager.getDimens(C7485R.dimen.tag_shape_border_width), argb);
                    int blend = colorUtils.blend(syncTagModel.getStyle().getColor(), -16777216, resManager.getFloat(C7485R.dimen.tag_shape_fill_black_overlay_percent));
                    imageView.setImageTintList(ColorStateList.valueOf(blend));
                    textView.setTextColor(blend);
                    textView.setText(getTagDisplayTitle(syncTagModel));
                    viewGroup2.addView(linearLayout);
                }
            }
            int ceil = (int) FloatKt.ceil(width);
            int ceil2 = (int) FloatKt.ceil(height);
            float f = ceil;
            float f2 = ceil2;
            viewGroup.measure(View.MeasureSpec.makeMeasureSpec(ceil, 1073741824), View.MeasureSpec.makeMeasureSpec(ceil2, 1073741824));
            viewGroup.layout(0, 0, viewGroup.getMeasuredWidth(), viewGroup.getMeasuredHeight());
            int ceil3 = (int) FloatKt.ceil(f * scale);
            int ceil4 = (int) FloatKt.ceil(f2 * scale);
            Matrix matrix = new Matrix();
            matrix.postScale(scale, scale);
            matrix.postScale(width / f, height / f2);
            Unit unit = Unit.INSTANCE;
            return ViewKt.loadBitmapWithMatrix(viewGroup, ceil3, ceil4, matrix);
        }
    }

    static {
        Lazy<TextPaint> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TextPaint>() { // from class: com.onyx.android.sdk.note.common.shape.object.TagShape$Companion$tagTextPaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TextPaint invoke() {
                return new TextPaint();
            }
        });
        f43736K = lazy;
    }

    /* renamed from: a */
    public final void m33873a() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) ShapeOptions.INSTANCE.getTagBean(this).getTagList());
        SyncTagModel syncTagModel = (SyncTagModel) lastOrNull;
        int calculateWidth = syncTagModel != null ? INSTANCE.calculateWidth(null, syncTagModel.getContent()) : 0;
        int tagHeight = INSTANCE.getTagHeight();
        if (calculateWidth != 0) {
            RectF pointsBoundingRect = getPointsBoundingRect();
            TouchPoint touchPoint = new TouchPoint(pointsBoundingRect.left, pointsBoundingRect.top);
            TouchPoint touchPoint2 = new TouchPoint(pointsBoundingRect.left + calculateWidth, pointsBoundingRect.top + tagHeight);
            getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().clear();
            onDown(touchPoint, touchPoint);
            onUp(touchPoint2, touchPoint2);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        float width = getOriginRect().width();
        float height = getOriginRect().height();
        if (width <= 0.0f || height <= 0.0f) {
            Debug.INSTANCE.m32044e(TagShape.class, "origin rect width or height is error.", new Object[0]);
            return false;
        }
        Matrix renderMatrix = getRenderMatrix(renderContext);
        float minScale = MatrixKt.getMinScale(renderMatrix);
        float f = 1 / minScale;
        renderMatrix.postScale(f, f);
        MatrixKt.scaleTranslate(renderMatrix, minScale, minScale);
        Bitmap createBitmap = INSTANCE.createBitmap(this, width, height, minScale);
        if (createBitmap == null) {
            return false;
        }
        if (!BitmapKt.isValid(createBitmap)) {
            Debug.INSTANCE.m32044e(TagShape.class, "bitmap not valid", new Object[0]);
            return false;
        }
        ShapeRenders.INSTANCE.applyStrokeStyle(this, renderContext);
        Matrix matrix = new Matrix();
        matrix.postTranslate(getDownPoint().getX() * minScale, getDownPoint().getY() * minScale);
        matrix.postConcat(renderMatrix);
        renderContext.getCanvas().drawBitmap(createBitmap, matrix, renderContext.getPaint());
        createBitmap.recycle();
        return true;
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
        PdfShapeInfo initPdfShape = pdfShapeConvertUtils.initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        float width = getOriginRect().width();
        float height = getOriginRect().height();
        if (width > 0.0f && height > 0.0f) {
            initPdfShape.setBitmap(INSTANCE.createBitmap(this, width, height, 1.0f));
            pdfShapeConvertUtils.setTransformMatrix(initPdfShape, pdfShapeConvertUtils.getTransformRectF(embedShapeBean, getOriginRect()));
        }
        return initPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        m33873a();
        super.updateShapeRect();
    }
}
