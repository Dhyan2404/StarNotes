package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import android.text.Html;
import androidx.annotation.WorkerThread;
import com.onegravity.rteditor.converter.tagsoup.util.StringEscapeUtils;
import com.onegravity.rteditor.utils.LineBreakExt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import com.vdurmont.emoji.EmojiManager;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007J \u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u001c\u0010\u0019\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;", "", "", "text", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "textStyle", "getDisplayText", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "invertTextShapeScale", "", "updateOldTextToHtmlText", "shapeTextStyle", "", "color", "textShape", "", "isNotBlankRichText", "content", "convertToHtmlText", "hasPdfUnrenderableChars", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "a", "Ljava/util/regex/Pattern;", "P_HTML", "b", "UNRENDERABLE_CHARS_PATTERN", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeTextUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTextUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeTextUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeTextUtils {

    @NotNull
    public static final ShapeTextUtils INSTANCE = new ShapeTextUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final Pattern P_HTML = Pattern.compile("<[^>]+>", 2);

    /* renamed from: b, reason: from kotlin metadata */
    public static final Pattern UNRENDERABLE_CHARS_PATTERN = Pattern.compile("[\\p{InArabic}\\p{InDevanagari}\\p{InBengali}\\p{Script=Hebrew}]");

    @NotNull
    public final String convertToHtmlText(@NotNull String content) {
        String replace$default;
        String replace$default2;
        Intrinsics.checkNotNullParameter(content, "content");
        String escapeHtml4 = StringEscapeUtils.escapeHtml4(content);
        LineBreakExt lineBreakExt = LineBreakExt.INSTANCE;
        Intrinsics.checkNotNull(escapeHtml4);
        replace$default = StringsKt__StringsJVMKt.replace$default(new Regex("\r\n").replace(lineBreakExt.replaceToValidNBSP(escapeHtml4), "<br/>"), "\r", "<br/>", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "\n", "<br/>", false, 4, (Object) null);
        return replace$default2;
    }

    @WorkerThread
    @Nullable
    public final String getDisplayText(@Nullable String text, @Nullable ShapeTextStyle textStyle) {
        if (StringUtils.isBlank(text)) {
            return "";
        }
        if (textStyle != null && !textStyle.isTextTraditionalConverted()) {
            textStyle.isTextSimplifiedConverted();
        }
        return text;
    }

    public final boolean hasPdfUnrenderableChars(@Nullable String text) {
        if (text == null) {
            return false;
        }
        return UNRENDERABLE_CHARS_PATTERN.matcher(text).find() || EmojiManager.containsEmoji(text);
    }

    @NotNull
    public final Shape invertTextShapeScale(@NotNull Shape shape) {
        float coerceAtMost;
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (shape.getTextStyle() == null) {
            return shape;
        }
        float[] matrixValue = MatrixKt.getMatrixValue(shape.getShapeMatrix());
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(MatrixKt.getMatrixScaleX(matrixValue), MatrixKt.getMatrixScaleY(matrixValue));
        try {
            String shapeUniqueId = shape.getShapeUniqueId();
            String subPageUniqueId = shape.getSubPageUniqueId();
            String dataUniqueId = shape.getDataUniqueId();
            shape = ShapeCopyUtils.INSTANCE.shapeClone(shape, shape.getType());
            shape.setShapeUniqueId(shapeUniqueId);
            shape.setSubPageUniqueId(subPageUniqueId);
            shape.setDataUniqueId(dataUniqueId);
            ShapeTextStyle textStyle = shape.getTextStyle();
            boolean z = false;
            if (textStyle != null && textStyle.isVertical()) {
                z = true;
            }
            if (z) {
                Matrix shapeMatrix = shape.getShapeMatrix();
                if (shapeMatrix != null) {
                    Float f = NumberUtils.FLOAT_ONE;
                    shapeMatrix.postScale(f.floatValue() / coerceAtMost, f.floatValue() / coerceAtMost, shape.getBoundingRect().right, shape.getBoundingRect().top);
                }
            } else {
                Matrix shapeMatrix2 = shape.getShapeMatrix();
                if (shapeMatrix2 != null) {
                    Float f2 = NumberUtils.FLOAT_ONE;
                    shapeMatrix2.postScale(f2.floatValue() / coerceAtMost, f2.floatValue() / coerceAtMost, shape.getBoundingRect().left, shape.getBoundingRect().top);
                }
            }
            ShapeTextStyle textStyle2 = shape.getTextStyle();
            if (textStyle2 != null) {
                textStyle2.setTextWidth(textStyle2.getTextWidth() * coerceAtMost);
                textStyle2.setTextHeight(textStyle2.getTextHeight() * coerceAtMost);
                textStyle2.setTextSize(textStyle2.getTextSize() * coerceAtMost);
            }
            shape.updateShapeRect();
            return shape;
        } catch (Exception e) {
            Debug.INSTANCE.m32045e(ShapeUtils.class, e);
            return shape;
        }
    }

    public final boolean isNotBlankRichText(@NotNull Shape textShape) {
        boolean isBlank;
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        String richText = textShape.getRichText();
        if (richText == null) {
            richText = "";
        }
        isBlank = StringsKt__StringsJVMKt.isBlank(new Regex("\u200b").replace(new Regex(org.apache.poi.convert.htmlgen.Constants.UNICODECHAR_NO_BREAK_SPACE).replace(Html.fromHtml(richText).toString(), ""), ""));
        return !isBlank;
    }

    public final void updateOldTextToHtmlText(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (ShapeTypes.INSTANCE.isTextShape(shape)) {
            shape.setRichText(updateOldTextToHtmlText(String.valueOf(shape.getText()), shape.getTextStyle(), shape.getStrokeColor()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        if (r4 != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String updateOldTextToHtmlText(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.Nullable com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle r6, int r7) {
        /*
            r4 = this;
            java.lang.String r4 = "text"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
            boolean r4 = org.apache.commons.lang3.StringUtils.isEmpty(r5)
            if (r4 != 0) goto Le6
            if (r6 != 0) goto Lf
            goto Le6
        Lf:
            boolean r4 = r6.getTextBold()
            java.lang.String r0 = "\n"
            r1 = 0
            if (r4 != 0) goto L30
            boolean r4 = r6.getTextUnderline()
            if (r4 != 0) goto L30
            boolean r4 = r6.getTextItalic()
            if (r4 != 0) goto L30
            r4 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            if (r7 != r4) goto L30
            r4 = 2
            r2 = 0
            boolean r4 = kotlin.text.StringsKt.contains$default(r5, r0, r1, r4, r2)
            if (r4 == 0) goto L3e
        L30:
            java.util.regex.Pattern r4 = com.onyx.android.sdk.note.common.utils.ShapeTextUtils.P_HTML
            java.util.regex.Matcher r4 = r4.matcher(r5)
            boolean r4 = r4.find()
            if (r4 != 0) goto L3e
            r4 = 1
            goto L3f
        L3e:
            r4 = r1
        L3f:
            if (r4 != 0) goto L42
            return r5
        L42:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            boolean r2 = r6.getTextBold()
            if (r2 == 0) goto L52
            java.lang.String r2 = "<b>"
            r4.append(r2)
        L52:
            boolean r2 = r6.getTextUnderline()
            if (r2 == 0) goto L5d
            java.lang.String r2 = "<u>"
            r4.append(r2)
        L5d:
            boolean r2 = r6.getTextItalic()
            if (r2 == 0) goto L68
            java.lang.String r2 = "<i>"
            r4.append(r2)
        L68:
            java.lang.String r2 = "<span style=\"color:"
            r4.append(r2)
            com.onyx.android.sdk.base.utils.ColorUtils r2 = com.onyx.android.sdk.base.utils.ColorUtils.INSTANCE
            java.lang.String r7 = r2.toCSSHexColor(r7)
            r4.append(r7)
            java.lang.String r7 = "\">"
            r4.append(r7)
            kotlin.text.Regex r7 = new kotlin.text.Regex
            java.lang.String r2 = "\r\n"
            r7.<init>(r2)
            java.lang.String r2 = "<br />"
            java.lang.String r7 = r7.replace(r5, r2)
            kotlin.text.Regex r3 = new kotlin.text.Regex
            r3.<init>(r0)
            java.lang.String r7 = r3.replace(r7, r2)
            r4.append(r7)
            java.lang.String r7 = "</span>"
            r4.append(r7)
            boolean r7 = r6.getTextItalic()
            if (r7 == 0) goto La4
            java.lang.String r7 = "</i>"
            r4.append(r7)
        La4:
            boolean r7 = r6.getTextUnderline()
            if (r7 == 0) goto Laf
            java.lang.String r7 = "</u>"
            r4.append(r7)
        Laf:
            boolean r6 = r6.getTextBold()
            if (r6 == 0) goto Lba
            java.lang.String r6 = "</b>"
            r4.append(r6)
        Lba:
            com.onyx.android.sdk.base.utils.Debug r6 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "updateOldTextToHtmlText, origin text: "
            r7.append(r0)
            r7.append(r5)
            java.lang.String r5 = ", new text: "
            r7.append(r5)
            r7.append(r4)
            java.lang.String r5 = r7.toString()
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.Class<com.onyx.android.sdk.note.common.utils.ShapeUtils> r0 = com.onyx.android.sdk.note.common.utils.ShapeUtils.class
            r6.m32052i(r0, r5, r7)
            java.lang.String r4 = r4.toString()
            java.lang.String r5 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            return r4
        Le6:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.ShapeTextUtils.updateOldTextToHtmlText(java.lang.String, com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle, int):java.lang.String");
    }
}
