package com.onyx.android.sdk.note.common.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Pair;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onegravity.rteditor.RTEditText;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bQ\u0010RJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\tH\u0002J \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0017J\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0017J\u0016\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0017J\u0016\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0017J\u000e\u0010 \u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0017J\u000e\u0010!\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0017J\"\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00170$2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\t2\u0006\u0010'\u001a\u00020\tJ \u0010+\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010\u0006\u001a\u00020\u0004J\u000e\u0010,\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010-\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010.\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ \u0010/\u001a\u0004\u0018\u00010(2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0016\u0010\u001c\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u00102\u001a\u0004\u0018\u0001012\u0006\u0010#\u001a\u00020\"2\u0006\u00100\u001a\u00020\u0002J\u0010\u00104\u001a\u0004\u0018\u0001032\u0006\u0010#\u001a\u00020\"J\u000e\u00104\u001a\u0002032\u0006\u00105\u001a\u000201J\"\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170$2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u00107\u001a\u00020\u0017J\u0006\u00109\u001a\u000208J\u0014\u0010<\u001a\u00020\t*\u00020:2\b\u0010;\u001a\u0004\u0018\u00010\u0004R\u0014\u0010?\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u0010@\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010B\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010AR\u0014\u0010C\u001a\u00020\u00178\u0006X\u0086T¢\u0006\u0006\n\u0004\bC\u0010AR\u0014\u0010D\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bD\u0010>R\u0014\u0010E\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010>R\u0014\u0010F\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\bF\u0010GR\u0014\u0010H\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\bH\u0010GR\u0014\u0010I\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\bI\u0010GR\u0014\u0010J\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\bJ\u0010GR\u0014\u0010K\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\bK\u0010GR\u0014\u0010L\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010N\u001a\u00020\f8\u0006X\u0086T¢\u0006\u0006\n\u0004\bN\u0010MR\u0011\u0010\u000f\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006S"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "d", "cacheType", "b", "c", "", "renderWidth", "renderHeight", "", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Size;", "normalRenderSize", C6998g.f39679a, "e", C6999h.f39688c, "Landroid/content/Context;", "context", "Lcom/onegravity/rteditor/RTEditText;", "initNativeEditor", "", ExtUnits.UNIT_PT, "pointToPixel", ExtUnits.UNIT_PX, "pixelToPoint", "getRenderSize", "dpValue", "revertRenderSize", "multi", "getLineHeight", "revertLineHeight", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Landroid/util/Pair;", "getLimitSize", "width", "height", "Landroid/graphics/Bitmap;", "bitmap", "", "saveRenderThumbnailCache", "clearCache", "recycle", "isRenderCacheExists", "loadThumbnailCache", "textShape", "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "getSelectionRect", "Landroid/graphics/RectF;", "getRenderRect", "selectionRect", "getRenderScale", "getInputTextShapeDefaultX", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getDefaultInputTextPoint", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "richText", "getAlignTypeCompat", "a", Constants.STRING_SIG, "RENDER_CACHE_DIR", "EXPAND_SPACING_V1", "F", "BASE_LINE_HEIGHT", "RENDER_SEARCH_LINE_EXPAND", "RENDER_CACHE_TYPE_BASE", "RENDER_CACHE_TYPE_ZOOM", "DEFAULT_DENSITY_DPI", "I", "MAX_RENDER_CACHE_MULTI", "FONT_SIZE_SCALE", "NORMAL_FONT_SIZE", "MIN_FONT_SIZE", "USING_NATIVE_EDITOR", Constants.HASIDCALL_INDEX_SIG, "ENABLE_ADAPTIVE_WIDTH", "getNormalRenderSize", "()Lcom/onyx/android/sdk/base/data/Size;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextRenderUtil {
    public static final float BASE_LINE_HEIGHT = 0.35f;
    public static final int DEFAULT_DENSITY_DPI = 240;
    public static final boolean ENABLE_ADAPTIVE_WIDTH = false;
    public static final float EXPAND_SPACING_V1 = 1.3f;
    public static final int FONT_SIZE_SCALE = 10;
    public static final int MAX_RENDER_CACHE_MULTI = 3;
    public static final int MIN_FONT_SIZE = 6;
    public static final int NORMAL_FONT_SIZE = 1;

    @NotNull
    public static final String RENDER_CACHE_TYPE_BASE = "BASE";

    @NotNull
    public static final String RENDER_CACHE_TYPE_ZOOM = "ZOOM";
    public static final float RENDER_SEARCH_LINE_EXPAND = 0.15f;
    public static final boolean USING_NATIVE_EDITOR = true;

    @NotNull
    public static final TextRenderUtil INSTANCE = new TextRenderUtil();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String RENDER_CACHE_DIR = ResManager.INSTANCE.getAppContext().getFilesDir().getAbsolutePath() + "/textRender/";

    /* renamed from: i */
    public static final boolean m34077i(String uniqueId, File file, String str) {
        Intrinsics.checkNotNullParameter(uniqueId, "$uniqueId");
        return StringUtils.startsWith(str, uniqueId);
    }

    /* renamed from: b */
    public final String m34078b(Shape shape, String cacheType) {
        ShapeTextStyle textStyle = shape.getTextStyle();
        if (textStyle == null) {
            return shape.getShapeUniqueId();
        }
        return shape.getShapeUniqueId() + '-' + (shape.getRichText() + textStyle.getTextWidth() + textStyle.getTextHeight() + textStyle.getTextSize() + textStyle.getFontFace() + textStyle.getAlignType() + textStyle.getOrientation() + textStyle.getTextSpacing() + textStyle.getIsTextConverted() + textStyle.getTextConvertType().name() + cacheType).hashCode();
    }

    /* renamed from: c */
    public final String m34079c(Shape shape, String cacheType) {
        String m34080d = m34080d(shape);
        FileUtils.INSTANCE.mkdirs(m34080d);
        return m34080d + '/' + m34078b(shape, cacheType);
    }

    public final void clearCache(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (FileUtils.INSTANCE.fileExist(m34079c(shape, "BASE"))) {
            return;
        }
        recycle(shape);
    }

    /* renamed from: d */
    public final String m34080d(Shape shape) {
        return RENDER_CACHE_DIR + shape.getDataUniqueId();
    }

    /* renamed from: e */
    public final boolean m34081e(Size normalRenderSize, int renderHeight) {
        return renderHeight > normalRenderSize.getHeight() * 3;
    }

    /* renamed from: f */
    public final boolean m34082f(int renderWidth, int renderHeight) {
        Size normalRenderSize = getNormalRenderSize();
        return m34083g(normalRenderSize, renderWidth) || m34081e(normalRenderSize, renderHeight);
    }

    /* renamed from: g */
    public final boolean m34083g(Size normalRenderSize, int renderWidth) {
        return renderWidth > normalRenderSize.getWidth() * 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getAlignTypeCompat(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle r4, @org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r3 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
            r3 = 0
            if (r5 == 0) goto L11
            boolean r0 = kotlin.text.StringsKt.isBlank(r5)
            if (r0 == 0) goto Lf
            goto L11
        Lf:
            r0 = r3
            goto L12
        L11:
            r0 = 1
        L12:
            if (r0 == 0) goto L19
            int r3 = r4.getAlignType()
            return r3
        L19:
            r0 = 2
            r1 = 0
            java.lang.String r2 = "<div"
            boolean r5 = kotlin.text.StringsKt.startsWith$default(r5, r2, r3, r0, r1)
            if (r5 == 0) goto L27
            int r3 = r4.getAlignType()
        L27:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.TextRenderUtil.getAlignTypeCompat(com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle, java.lang.String):int");
    }

    @NotNull
    public final TouchPoint getDefaultInputTextPoint() {
        TouchPoint touchPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        touchPoint.setX(getInputTextShapeDefaultX());
        touchPoint.setY(ResManager.INSTANCE.getWindowDefaultHeight() * 0.2f);
        return touchPoint;
    }

    public final float getInputTextShapeDefaultX() {
        ResManager resManager = ResManager.INSTANCE;
        return resManager.getDimension(C7485R.dimen.note_textbox_border_margin) + resManager.getDimension(C7485R.dimen.note_textbox_content_padding);
    }

    @NotNull
    public final Pair<Size, Float> getLimitSize(@NotNull RenderContext renderContext, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Size renderSize = getRenderSize(renderContext, shape);
        Pair<Size, Float> create = Pair.create(getLimitSize(renderSize.getWidth(), renderSize.getHeight()), Float.valueOf(r1.getWidth() / shape.getOriginRect().width()));
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    public final float getLineHeight(float multi) {
        return multi + 0.35f;
    }

    @NotNull
    public final Size getNormalRenderSize() {
        ResManager resManager = ResManager.INSTANCE;
        return new Size((int) resManager.getScreenWidth(), (int) resManager.getScreenHeight());
    }

    @Nullable
    public final RectF getRenderRect(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        SelectionRect selectionRect = renderContext.getSelectionRect();
        if (selectionRect == null) {
            return null;
        }
        return getRenderRect(selectionRect);
    }

    @NotNull
    public final Pair<Float, Float> getRenderScale(@NotNull RenderContext renderContext, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        float[] matrixValue = MatrixKt.getMatrixValue(shape.getRenderMatrix(renderContext));
        Pair<Float, Float> create = Pair.create(Float.valueOf(MatrixKt.getMatrixScaleX(matrixValue)), Float.valueOf(MatrixKt.getMatrixScaleY(matrixValue)));
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    public final float getRenderSize(@NotNull Context context, float px) {
        Intrinsics.checkNotNullParameter(context, "context");
        return px / context.getResources().getDisplayMetrics().density;
    }

    @Nullable
    public final SelectionRect getSelectionRect(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        List listOf;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        float normalizeScale = renderContext.getNormalizeScale();
        Rect pageRect = renderContext.getRenderMeasure().getPageRect();
        RectF rectF = new RectF(0.0f, 0.0f, pageRect.right, pageRect.bottom);
        RectUtils.INSTANCE.scale(rectF, normalizeScale, normalizeScale);
        SelectionRect.Companion companion = SelectionRect.INSTANCE;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(textShape);
        return SelectionRect.Companion.buildSelectionRect$default(companion, listOf, renderContext, rectF, false, 8, null);
    }

    /* renamed from: h */
    public final String m34084h(Shape shape, int renderWidth, int renderHeight) {
        return m34082f(renderWidth, renderHeight) ? m34079c(shape, RENDER_CACHE_TYPE_ZOOM) : m34079c(shape, "BASE");
    }

    @NotNull
    public final RTEditText initNativeEditor(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        RTEditText rTEditText = new RTEditText(context.getApplicationContext());
        rTEditText.setBackgroundColor(0);
        rTEditText.setPadding(0, 0, 0, 0);
        ViewKt.setMargins(rTEditText, 0);
        rTEditText.setGravity(48);
        rTEditText.setVerticalScrollBarEnabled(false);
        return rTEditText;
    }

    public final boolean isRenderCacheExists(@NotNull Shape shape, int renderWidth, int renderHeight) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return FileUtils.INSTANCE.fileExist(m34084h(shape, renderWidth, renderHeight));
    }

    @Nullable
    public final Bitmap loadThumbnailCache(@NotNull Shape shape, int renderWidth, int renderHeight) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String m34084h = m34084h(shape, renderWidth, renderHeight);
        if (FileUtils.INSTANCE.fileExist(m34084h)) {
            return BitmapUtils.INSTANCE.loadBitmapFromFile(m34084h);
        }
        return null;
    }

    public final float pixelToPoint(float px) {
        return (px * 72) / 240;
    }

    public final float pointToPixel(@NotNull Context context, float pt) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DimenUtils.INSTANCE.pt2px(context, pt);
    }

    public final void recycle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String m34080d = m34080d(shape);
        final String shapeUniqueId = shape.getShapeUniqueId();
        Iterator<File> it2 = FileUtils.INSTANCE.listAllFiles(m34080d, new FilenameFilter() { // from class: com.sunia.HTREnginev2.zen
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m34077i;
                m34077i = TextRenderUtil.m34077i(shapeUniqueId, file, str);
                return m34077i;
            }
        }).iterator();
        while (it2.hasNext()) {
            it2.next().delete();
        }
    }

    public final float revertLineHeight(float multi) {
        return multi - 0.35f;
    }

    public final float revertRenderSize(@NotNull Context context, float dpValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return dpValue * context.getResources().getDisplayMetrics().density;
    }

    public final void saveRenderThumbnailCache(@NotNull Shape shape, @Nullable Bitmap bitmap, @NotNull String cacheType) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(cacheType, "cacheType");
        String m34079c = m34079c(shape, cacheType);
        if (bitmap != null) {
            BitmapKt.save$default(bitmap, m34079c, 0, 2, null);
        }
    }

    @NotNull
    public final Size getRenderSize(@NotNull RenderContext renderContext, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        RectF originRect = shape.getOriginRect();
        float[] matrixValue = MatrixKt.getMatrixValue(shape.getRenderMatrix(renderContext));
        return new Size((int) (MatrixKt.getMatrixScaleX(matrixValue) * Math.abs(originRect.width())), (int) (MatrixKt.getMatrixScaleY(matrixValue) * Math.abs(originRect.height())));
    }

    @NotNull
    public final RectF getRenderRect(@NotNull SelectionRect selectionRect) {
        Intrinsics.checkNotNullParameter(selectionRect, "selectionRect");
        RectF rectF = new RectF(selectionRect.getOriginRect());
        Matrix renderMatrix = selectionRect.getRenderMatrix();
        Intrinsics.checkNotNull(renderMatrix);
        renderMatrix.mapRect(rectF);
        return rectF;
    }

    @NotNull
    public final Size getLimitSize(int width, int height) {
        Size normalRenderSize = getNormalRenderSize();
        int width2 = normalRenderSize.getWidth();
        int height2 = normalRenderSize.getHeight();
        if (m34082f(width, height)) {
            width2 = normalRenderSize.getWidth() * 3;
            height2 = normalRenderSize.getHeight() * 3;
        }
        if (width != width2) {
            height = (int) (height * (width2 / width));
            width = width2;
        }
        if (height > height2) {
            width = (int) (width * (height2 / height));
        } else {
            height2 = height;
        }
        return new Size(width, height2);
    }
}
