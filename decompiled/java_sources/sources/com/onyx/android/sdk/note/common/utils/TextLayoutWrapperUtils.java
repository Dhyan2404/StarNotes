package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\f\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b:\u0010;J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u0007\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\u0007\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\u0007\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ(\u0010\u0007\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u0018\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\u0019\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ \u0010\u001c\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\"\u0010\u001d\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u001e\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 2\u0006\u0010\t\u001a\u00020\bJ\u001a\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010'\u001a\u00020&2\u0006\u0010\u000b\u001a\u00020\nH\u0002JJ\u00102\u001a\u00020\u00062\b\u0010(\u001a\u0004\u0018\u00010$2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00122\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020\u00122\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020 H\u0002J\u001c\u00104\u001a\u0002032\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002R\u001a\u00109\u001a\u0002058\u0006X\u0086D¢\u0006\f\n\u0004\b%\u00106\u001a\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Landroid/text/TextPaint;", "tp", "Lcom/onyx/android/sdk/note/common/utils/StaticLayoutWrapper;", "createTextLayout", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "", "content", "", "buildShapeTextPaint", "Landroid/graphics/Typeface;", "getShapeTypeface", "Landroid/graphics/Matrix;", "renderMatrix", "", "getFontBaseLineTranslate", "fontFace", "getFontBaseLine", "scaleShapeTextStyleToJson", "matrix", "scaleShapeTextStyle", "updateTextStyle", "getMaxLineWidth", "getMaxWordWidth", "getTextLayoutCharMinWidth", "getTextLayoutCharMinHeight", "getMaxVerticalLineHeight", gon.f71305w, "", "line", "Landroid/graphics/RectF;", "getLineRectWithoutSpacing", "", "a", "Landroid/text/SpannableString;", "b", "source", "paint", "width", "Landroid/text/Layout$Alignment;", "align", "spacingmult", "spacingadd", "", "includepad", "orientation", "c", "", "d", "", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getCHAR_SPACE", "()C", "CHAR_SPACE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextLayoutWrapperUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,335:1\n731#2,9:336\n731#2,9:347\n37#3,2:345\n37#3,2:356\n*S KotlinDebug\n*F\n+ 1 TextLayoutWrapperUtils.kt\ncom/onyx/android/sdk/note/common/utils/TextLayoutWrapperUtils\n*L\n243#1:336,9\n312#1:347,9\n243#1:345,2\n312#1:356,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextLayoutWrapperUtils {

    @NotNull
    public static final TextLayoutWrapperUtils INSTANCE = new TextLayoutWrapperUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final char CHAR_SPACE = ' ';

    /* renamed from: a */
    public final CharSequence m34072a(ShapeTextStyle textStyle, String content) {
        String replace$default;
        String replace$default2;
        if (TextUtils.isEmpty(content)) {
            return "";
        }
        replace$default = StringsKt__StringsJVMKt.replace$default(String.valueOf(ShapeTextUtils.INSTANCE.getDisplayText(content, textStyle)), "\r\n", "\n", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "\r", "\n", false, 4, (Object) null);
        return textStyle.getTextUnderline() ? m34073b(replace$default2) : replace$default2;
    }

    /* renamed from: b */
    public final SpannableString m34073b(String content) {
        SpannableString spannableString = new SpannableString(content);
        spannableString.setSpan(new UnderlineSpan(), 0, content.length(), 0);
        return spannableString;
    }

    public final void buildShapeTextPaint(@NotNull TextPaint tp, @NotNull ShapeTextStyle textStyle, @Nullable String content) {
        Intrinsics.checkNotNullParameter(tp, "tp");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Typeface shapeTypeface = getShapeTypeface(textStyle, content);
        tp.setStyle(Paint.Style.FILL_AND_STROKE);
        tp.setTextSize(textStyle.getTextSize());
        tp.setFakeBoldText(textStyle.getTextBold());
        tp.setAntiAlias(true);
        tp.setDither(true);
        tp.setTypeface(Typeface.create(shapeTypeface, textStyle.getTextItalic() ? 2 : 0));
    }

    /* renamed from: c */
    public final StaticLayoutWrapper m34074c(CharSequence source, TextPaint paint, float width, Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, int orientation) {
        return orientation == 0 ? StaticLayoutWrapper.INSTANCE.create(source, paint, width, align, spacingmult, spacingadd, includepad) : StaticVerticalLayoutWrapper.INSTANCE.create(source, paint, width, align, spacingmult, spacingadd, includepad);
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@NotNull Shape shape, @NotNull TextPaint tp) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(tp, "tp");
        return createTextLayout((Matrix) null, shape, tp);
    }

    /* renamed from: d */
    public final float[] m34075d(Matrix renderMatrix, ShapeTextStyle textStyle) {
        float[] fArr = new float[2];
        Float FLOAT_ONE = NumberUtils.FLOAT_ONE;
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        float floatValue = FLOAT_ONE.floatValue();
        Intrinsics.checkNotNullExpressionValue(FLOAT_ONE, "FLOAT_ONE");
        float floatValue2 = FLOAT_ONE.floatValue();
        if (renderMatrix != null && textStyle != null) {
            float[] fArr2 = new float[9];
            renderMatrix.getValues(fArr2);
            floatValue = MatrixKt.getMatrixScaleX(fArr2) * textStyle.getPointScale();
            floatValue2 = MatrixKt.getMatrixScaleY(fArr2) * textStyle.getPointScale();
        }
        fArr[0] = floatValue;
        fArr[1] = floatValue2;
        return fArr;
    }

    public final char getCHAR_SPACE() {
        return CHAR_SPACE;
    }

    public final float getFontBaseLine(@NotNull Shape shape, @Nullable String fontFace) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeTextStyle textStyle = shape.getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        textStyle.setFontFace(fontFace);
        StaticLayoutWrapper createTextLayout = createTextLayout(shape, new TextPaint());
        if (createTextLayout.getLineCount() <= 0) {
            return 0.0f;
        }
        return createTextLayout.getLineBaseline(0);
    }

    public final float getFontBaseLineTranslate(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeTextStyle textStyle = shape.getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        String fontFace = textStyle.getFontFace();
        if (StringUtils.isEmpty(fontFace) || FileUtils.INSTANCE.isEmpty(fontFace)) {
            return 0.0f;
        }
        float fontBaseLine = getFontBaseLine(shape, null);
        float fontBaseLine2 = getFontBaseLine(shape, fontFace);
        ShapeTextStyle textStyle2 = shape.getTextStyle();
        Intrinsics.checkNotNull(textStyle2);
        textStyle2.setFontFace(fontFace);
        return fontBaseLine - fontBaseLine2;
    }

    @NotNull
    public final RectF getLineRectWithoutSpacing(@NotNull StaticLayoutWrapper layout, int line, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        RectF rectF = new RectF();
        layout.getLineBounds(line, rectF);
        if (line == layout.getLineCount() - 1) {
            return rectF;
        }
        rectF.bottom = rectF.top + (layout.getLineHeight(line) / textStyle.getTextSpacing());
        return rectF;
    }

    public final float getMaxLineWidth(@NotNull String content, @NotNull ShapeTextStyle textStyle) {
        List emptyList;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        float f = 0.0f;
        if (StringUtils.isEmpty(content)) {
            return 0.0f;
        }
        TextPaint textPaint = new TextPaint();
        buildShapeTextPaint(textPaint, textStyle, content);
        List<String> split = new Regex("\n").split(content, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        for (String str : (String[]) emptyList.toArray(new String[0])) {
            f = Math.max(textPaint.measureText(str), f);
        }
        return f;
    }

    public final float getMaxVerticalLineHeight(@NotNull String content, @NotNull ShapeTextStyle textStyle) {
        List emptyList;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        if (StringUtils.isEmpty(content)) {
            return 0.0f;
        }
        TextPaint textPaint = new TextPaint();
        buildShapeTextPaint(textPaint, textStyle, content);
        List<String> split = new Regex("\n").split(content, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        int i = 0;
        for (String str : (String[]) emptyList.toArray(new String[0])) {
            i = Math.max(i, str.length());
        }
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return i * (fontMetrics.bottom - fontMetrics.top);
    }

    public final float getMaxWordWidth(@NotNull String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        float f = 0.0f;
        if (StringUtils.isEmpty(content)) {
            return 0.0f;
        }
        TextPaint textPaint = new TextPaint();
        buildShapeTextPaint(textPaint, textStyle, content);
        int length = content.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            f = Math.max(textPaint.measureText(content, i, i2), f);
            i = i2;
        }
        return f;
    }

    @NotNull
    public final Typeface getShapeTypeface(@NotNull ShapeTextStyle textStyle, @Nullable String content) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        if (FileUtils.INSTANCE.fileExist(textStyle.getFontFace())) {
            Typeface typeface = Typeface.SANS_SERIF;
            Intrinsics.checkNotNull(typeface);
            return typeface;
        }
        Typeface typeface2 = StringKt.isCJK(content) ? Typeface.DEFAULT : Typeface.SANS_SERIF;
        Intrinsics.checkNotNull(typeface2);
        return typeface2;
    }

    public final float getTextLayoutCharMinHeight(@Nullable Matrix renderMatrix, @Nullable String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        if (StringUtils.isEmpty(content)) {
            return 0.0f;
        }
        if (renderMatrix != null) {
            textStyle = textStyle.m72374clone();
            updateTextStyle(renderMatrix, textStyle);
        }
        TextPaint textPaint = new TextPaint();
        buildShapeTextPaint(textPaint, textStyle, content);
        Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
        return fontMetrics.bottom - fontMetrics.top;
    }

    public final float getTextLayoutCharMinWidth(@Nullable Matrix renderMatrix, @NotNull String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        float f = 0.0f;
        if (StringUtils.isEmpty(content)) {
            return 0.0f;
        }
        if (renderMatrix != null) {
            textStyle = textStyle.m72374clone();
            INSTANCE.updateTextStyle(renderMatrix, textStyle);
        }
        TextPaint textPaint = new TextPaint();
        buildShapeTextPaint(textPaint, textStyle, content);
        int length = content.length();
        for (int i = 0; i < length; i++) {
            f = Math.max(textPaint.measureText(String.valueOf(content.charAt(i))), f);
        }
        return f;
    }

    @NotNull
    public final ShapeTextStyle scaleShapeTextStyle(@Nullable Matrix matrix, @NotNull ShapeTextStyle textStyle) {
        float coerceAtLeast;
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        ShapeTextStyle m72374clone = textStyle.m72374clone();
        if (matrix != null) {
            float[] matrixValue = MatrixKt.getMatrixValue(matrix);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(MatrixKt.getMatrixScaleX(matrixValue), MatrixKt.getMatrixScaleY(matrixValue));
            m72374clone.setTextSize(m72374clone.getTextSize() * coerceAtLeast);
            m72374clone.setTextWidth(m72374clone.getTextWidth() * coerceAtLeast);
            m72374clone.setTextHeight(m72374clone.getTextHeight() * coerceAtLeast);
            m72374clone.setTextSpacing(TextRenderUtil.INSTANCE.getLineHeight(m72374clone.getTextSpacing()));
        }
        return m72374clone;
    }

    @Nullable
    public final String scaleShapeTextStyleToJson(@NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        ShapeTextStyle m72374clone = textStyle.m72374clone();
        m72374clone.setTextSpacing(TextRenderUtil.INSTANCE.getLineHeight(m72374clone.getTextSpacing()));
        return JSONUtils.INSTANCE.toJson(m72374clone);
    }

    public final void updateTextStyle(@Nullable Matrix renderMatrix, @NotNull ShapeTextStyle textStyle) {
        float coerceAtLeast;
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        if (renderMatrix != null) {
            float[] m34075d = m34075d(renderMatrix, textStyle);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(m34075d[0], m34075d[1]);
            textStyle.setTextSize(textStyle.getTextSize() * coerceAtLeast);
            textStyle.setTextWidth(textStyle.getTextWidth() * coerceAtLeast);
            textStyle.setTextHeight(textStyle.getTextHeight() * coerceAtLeast);
        }
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return createTextLayout((Matrix) null, shape);
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@NotNull String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        return createTextLayout((Matrix) null, content, textStyle);
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@Nullable Matrix renderMatrix, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        TextPaint textPaint = new TextPaint();
        textPaint.setColor(shape.getStrokeColor());
        return createTextLayout(renderMatrix, shape, textPaint);
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@Nullable Matrix renderMatrix, @NotNull Shape shape, @NotNull TextPaint tp) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(tp, "tp");
        ShapeTextStyle textStyle = shape.getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        ShapeTextStyle m72374clone = textStyle.m72374clone();
        String valueOf = String.valueOf(shape.getText());
        updateTextStyle(renderMatrix, m72374clone);
        buildShapeTextPaint(tp, m72374clone, valueOf);
        if (ShapeOptions.INSTANCE.isTransparent(shape)) {
            tp.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        } else {
            tp.setXfermode(null);
        }
        return m34074c(m34072a(m72374clone, valueOf), tp, m72374clone.getTextWidth(), m72374clone.getAlignment(), m72374clone.getTextSpacing(), 0.0f, false, m72374clone.getOrientation());
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@Nullable Matrix renderMatrix, @NotNull String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        return createTextLayout(renderMatrix, new TextPaint(), content, textStyle);
    }

    @NotNull
    public final StaticLayoutWrapper createTextLayout(@Nullable Matrix renderMatrix, @NotNull TextPaint tp, @NotNull String content, @NotNull ShapeTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(tp, "tp");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        updateTextStyle(renderMatrix, textStyle);
        buildShapeTextPaint(tp, textStyle, content);
        return m34074c(m34072a(textStyle, content), tp, textStyle.getTextWidth(), textStyle.getAlignment(), textStyle.getTextSpacing(), 0.0f, false, textStyle.getOrientation());
    }
}
