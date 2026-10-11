package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.RectF;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.neohwr.layout.FontPathLoadResult;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b.\u0010/J&\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002JÀ\u0001\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u008f\u0001\u0010\u001e\u001a\u008a\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0018\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u001c0\u0013j\u0002`\u001dJ.\u0010 \u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eJ.\u0010!\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eJ,\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040$2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\fH\u0002R\u0014\u0010'\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b(\u0010&R\u0014\u0010+\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010&R\u0014\u0010-\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b,\u0010&¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeLayout;", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "shape", "", "startX", "baseline", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", "layoutShape", "measureShapeBaseline", "measureShapeGlyphLeft", "Landroid/graphics/RectF;", "currentRect", "", "currentText", "prevRect", "prevText", "typeface", "Lkotlin/Function6;", "Lkotlin/ParameterName;", "name", "currentBaseline", "prevBaseline", "currentTextSize", "prevTextSize", "minLineHeight", "maxLineHeight", "", "Lcom/onyx/android/sdk/note/common/shape/object/BaselineComparator;", "comparator", "compareBaseline", "isSameLine", "isUpperLine", "text", "rect", "Lkotlin/Pair;", "a", "F", "newLineRange", "b", "upperLineMinRange", "c", "upperLineMaxRange", "d", "tryTextSize", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HWRTextShapeLayout {

    @NotNull
    public static final HWRTextShapeLayout INSTANCE = new HWRTextShapeLayout();

    /* renamed from: a, reason: from kotlin metadata */
    public static final float newLineRange = 0.5f;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float upperLineMinRange = 0.5f;

    /* renamed from: c, reason: from kotlin metadata */
    public static final float upperLineMaxRange = 2.0f;

    /* renamed from: d, reason: from kotlin metadata */
    public static final float tryTextSize = 24.0f;

    /* renamed from: a */
    public final Pair<Float, Float> m33860a(String text, String typeface, RectF rect) {
        int codePointAt = text.codePointAt(0);
        TextLayout textLayout = TextLayout.INSTANCE;
        float sqrt = tryTextSize * ((float) Math.sqrt(RectKt.area(rect) / textLayout.loadCharFontPath(typeface, codePointAt, r0).getGlyphRectArea()));
        return new Pair<>(Float.valueOf(sqrt), Float.valueOf(rect.top + textLayout.loadCharFontPath(typeface, codePointAt, sqrt).getGlyphRect().top));
    }

    public final boolean compareBaseline(@NotNull RectF currentRect, @NotNull String currentText, @NotNull RectF prevRect, @NotNull String prevText, @NotNull String typeface, @NotNull Function6<? super Float, ? super Float, ? super Float, ? super Float, ? super Float, ? super Float, Boolean> comparator) {
        Intrinsics.checkNotNullParameter(currentRect, "currentRect");
        Intrinsics.checkNotNullParameter(currentText, "currentText");
        Intrinsics.checkNotNullParameter(prevRect, "prevRect");
        Intrinsics.checkNotNullParameter(prevText, "prevText");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!(currentText.length() == 0)) {
            if (!(prevText.length() == 0)) {
                Pair<Float, Float> m33860a = m33860a(currentText, typeface, currentRect);
                float floatValue = m33860a.component1().floatValue();
                float floatValue2 = m33860a.component2().floatValue();
                Pair<Float, Float> m33860a2 = m33860a(prevText, typeface, prevRect);
                float floatValue3 = m33860a2.component1().floatValue();
                float floatValue4 = m33860a2.component2().floatValue();
                float min = Math.min(floatValue, floatValue3);
                ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
                shapeTypesetArgs.setTypeface(typeface);
                shapeTypesetArgs.setFontSize(Float.valueOf(min));
                TextLayout textLayout = TextLayout.INSTANCE;
                float measureLineHeight = textLayout.measureLineHeight(shapeTypesetArgs);
                shapeTypesetArgs.setFontSize(Float.valueOf(Math.max(floatValue, floatValue3)));
                return comparator.invoke(Float.valueOf(floatValue2), Float.valueOf(floatValue4), Float.valueOf(floatValue), Float.valueOf(floatValue3), Float.valueOf(measureLineHeight), Float.valueOf(textLayout.measureLineHeight(shapeTypesetArgs))).booleanValue();
            }
        }
        return false;
    }

    public final boolean isSameLine(@NotNull RectF currentRect, @NotNull String currentText, @NotNull RectF prevRect, @NotNull String prevText, @NotNull String typeface) {
        Intrinsics.checkNotNullParameter(currentRect, "currentRect");
        Intrinsics.checkNotNullParameter(currentText, "currentText");
        Intrinsics.checkNotNullParameter(prevRect, "prevRect");
        Intrinsics.checkNotNullParameter(prevText, "prevText");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        return compareBaseline(currentRect, currentText, prevRect, prevText, typeface, new Function6<Float, Float, Float, Float, Float, Float, Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.object.HWRTextShapeLayout$isSameLine$1
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Boolean invoke(Float f, Float f2, Float f3, Float f4, Float f5, Float f6) {
                return invoke(f.floatValue(), f2.floatValue(), f3.floatValue(), f4.floatValue(), f5.floatValue(), f6.floatValue());
            }

            @NotNull
            public final Boolean invoke(float f, float f2, float f3, float f4, float f5, float f6) {
                float f7;
                float abs = Math.abs(f - f2);
                f7 = HWRTextShapeLayout.newLineRange;
                return Boolean.valueOf(abs < f5 * f7);
            }
        });
    }

    public final boolean isUpperLine(@NotNull RectF currentRect, @NotNull String currentText, @NotNull RectF prevRect, @NotNull String prevText, @NotNull String typeface) {
        Intrinsics.checkNotNullParameter(currentRect, "currentRect");
        Intrinsics.checkNotNullParameter(currentText, "currentText");
        Intrinsics.checkNotNullParameter(prevRect, "prevRect");
        Intrinsics.checkNotNullParameter(prevText, "prevText");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        return compareBaseline(currentRect, currentText, prevRect, prevText, typeface, new Function6<Float, Float, Float, Float, Float, Float, Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.object.HWRTextShapeLayout$isUpperLine$1
            @Override // kotlin.jvm.functions.Function6
            public /* bridge */ /* synthetic */ Boolean invoke(Float f, Float f2, Float f3, Float f4, Float f5, Float f6) {
                return invoke(f.floatValue(), f2.floatValue(), f3.floatValue(), f4.floatValue(), f5.floatValue(), f6.floatValue());
            }

            @NotNull
            public final Boolean invoke(float f, float f2, float f3, float f4, float f5, float f6) {
                float f7;
                float f8;
                float f9 = f - f2;
                f7 = HWRTextShapeLayout.upperLineMinRange;
                float f10 = f7 * f6;
                f8 = HWRTextShapeLayout.upperLineMaxRange;
                boolean z = false;
                if (f9 <= f6 * f8 && f10 <= f9) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    @NotNull
    public final HWRTextShape layoutShape(@NotNull HWRTextShape shape, float startX, float baseline, @NotNull ShapeTypesetArgs typesetArgs) {
        Float fontSize;
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        HWRTextShape clone = shape.clone(typesetArgs);
        String text = shape.getText();
        if (text != null) {
            int codePointAt = text.codePointAt(0);
            String typeface = typesetArgs.getTypeface();
            if (typeface != null && (fontSize = typesetArgs.getFontSize()) != null) {
                FontPathLoadResult loadCharFontPath = TextLayout.INSTANCE.loadCharFontPath(typeface, codePointAt, fontSize.floatValue());
                float f = startX - loadCharFontPath.getGlyphRect().left;
                float f2 = baseline - loadCharFontPath.getGlyphRect().top;
                clone.updateShapeRect(new TouchPoint(f, f2), new TouchPoint(clone.getBoundingRect().width() + f, clone.getBoundingRect().height() + f2));
            }
        }
        return clone;
    }

    public final float measureShapeBaseline(@NotNull HWRTextShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String text = shape.getText();
        if (text == null) {
            text = "";
        }
        float textSize = shape.getTextSize();
        ShapeTextStyle textStyle = shape.getTextStyle();
        String fontFace = textStyle != null ? textStyle.getFontFace() : null;
        String str = fontFace != null ? fontFace : "";
        ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
        shapeTypesetArgs.setTypeface(str);
        shapeTypesetArgs.setFontSize(Float.valueOf(textSize));
        return shape.getBoundingRect().top + TextLayout.INSTANCE.loadFontPath(shapeTypesetArgs, text).getGlyphRect().top;
    }

    public final float measureShapeGlyphLeft(@NotNull HWRTextShape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        String text = shape.getText();
        if (text == null) {
            text = "";
        }
        ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
        shapeTypesetArgs.setFontSize(Float.valueOf(shape.getTextSize()));
        ShapeTextStyle textStyle = shape.getTextStyle();
        String fontFace = textStyle != null ? textStyle.getFontFace() : null;
        shapeTypesetArgs.setTypeface(fontFace != null ? fontFace : "");
        return shape.getBoundingRect().left + TextLayout.INSTANCE.loadGlyphRect(shapeTypesetArgs, text).left;
    }
}
