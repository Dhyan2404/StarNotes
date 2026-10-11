package com.onyx.android.sdk.textbox.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextPaint;
import android.view.View;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.pdf.PdfTextRunCreateArgs;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J.\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0010J\u001e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 J\u000e\u0010\"\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u001eJ\u000e\u0010#\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010$\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020\u0010J(\u0010$\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\u0010J\u0018\u0010(\u001a\u00020\f2\b\u0010)\u001a\u0004\u0018\u00010\f2\u0006\u0010%\u001a\u00020\u0010J\u001e\u0010*\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 ¨\u0006+"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;", "", "()V", "drawTextRun", "", "context", "Landroid/content/Context;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "textStyle", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "rect", "Landroid/graphics/RectF;", "args", "Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;", "getEditorMinWidth", "", "getLocationInParent", "", "view", "Landroid/view/View;", "getOffsetXYOnFirstSave", "Landroid/graphics/PointF;", "shapeTextStyle", "width", "height", "layoutWidth", "layoutHeight", "getTextBoxOffset", "textBoxView", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "lastPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "getTextBoxRect", "normalizeRotation", "rotatePoint", "angle", "cx", "cy", "rotateRect", "rectF", "updateTextBoxPosition", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class TextBoxUtils {

    @NotNull
    public static final TextBoxUtils INSTANCE = new TextBoxUtils();

    public final void drawTextRun(@NotNull Context context, @NotNull Canvas canvas, @NotNull ShapeTextStyle textStyle, @NotNull RectF rect, @NotNull PdfTextRunCreateArgs args) {
        float f;
        int dip2px;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(args, "args");
        canvas.save();
        TextPaint textPaint = new TextPaint();
        textPaint.setAntiAlias(true);
        textPaint.setDither(true);
        textPaint.setTypeface(null);
        RichTextRun richTextRun = args.getRichTextRun();
        if (richTextRun == null) {
            return;
        }
        for (RichTextRun.TextRunChar textRunChar : richTextRun.getItems()) {
            char c = textRunChar.getChar();
            boolean isVertical = textStyle.isVertical();
            int i = 0;
            if (isVertical && !StringKt.isCJK(c)) {
                i = 90;
            }
            textPaint.underlineColor = textRunChar.getStyle().getColor();
            textPaint.underlineThickness = 20.0f;
            textPaint.setTextSize(textRunChar.getStyle().getFontSize(textStyle.getTextSize()) * args.getScaleX());
            textPaint.setColor(textRunChar.getStyle().getColor());
            textPaint.setUnderlineText(textRunChar.getStyle().isUnderline());
            textPaint.setFakeBoldText(textRunChar.getStyle().isBold());
            textPaint.setTextSkewX(textRunChar.getStyle().isItalic() ? -0.2f : 0.0f);
            DimenUtils dimenUtils = DimenUtils.INSTANCE;
            float dip2px2 = dimenUtils.dip2px(context, textRunChar.getX() * args.getScaleX()) + rect.left;
            if (isVertical && i == 90) {
                f = rect.top;
                dip2px = dimenUtils.dip2px(context, textRunChar.getY() * args.getScaleY());
            } else {
                f = rect.top;
                dip2px = dimenUtils.dip2px(context, textRunChar.getBaseline() * args.getScaleY());
            }
            float f2 = f + dip2px;
            float f3 = i;
            canvas.rotate(f3, dip2px2, f2);
            canvas.drawText(String.valueOf(textRunChar.getText()), dip2px2, f2, textPaint);
            canvas.rotate(-f3, dip2px2, f2);
        }
        canvas.restore();
    }

    public final float getEditorMinWidth() {
        ResManager resManager = ResManager.INSTANCE;
        return resManager.getDimension(C8002R.dimen.move_selection_handler_icon_width) + resManager.getDimension(C8002R.dimen.textbox_selection_handler_icon_size);
    }

    @NotNull
    public final int[] getLocationInParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.getLocationOnScreen(r5);
        int i = r5[0];
        int i2 = r5[1];
        Object parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        ((View) parent).getLocationOnScreen(r5);
        int[] iArr = {i - iArr[0], i2 - iArr[1]};
        return iArr;
    }

    @NotNull
    public final PointF getOffsetXYOnFirstSave(@NotNull ShapeTextStyle shapeTextStyle, float width, float height, float layoutWidth, float layoutHeight) {
        Intrinsics.checkNotNullParameter(shapeTextStyle, "shapeTextStyle");
        PointF pointF = new PointF(0.0f, 0.0f);
        if (shapeTextStyle.isVertical()) {
            int alignType = shapeTextStyle.getAlignType();
            if (alignType == 1) {
                pointF.y += height - layoutHeight;
            } else if (alignType == 2) {
                pointF.y += (height - layoutHeight) / 2.0f;
            }
        } else {
            int alignType2 = shapeTextStyle.getAlignType();
            if (alignType2 == 1) {
                pointF.x += width - layoutWidth;
            } else if (alignType2 == 2) {
                pointF.x += (width - layoutWidth) / 2.0f;
            }
        }
        return pointF;
    }

    @NotNull
    public final PointF getTextBoxOffset(@NotNull TextBoxView textBoxView, @NotNull TouchPoint lastPoint, @NotNull TouchPoint point) {
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        Intrinsics.checkNotNullParameter(point, "point");
        int editorScaleWidthInt = textBoxView.getEditorScaleWidthInt();
        int editorScaleHeightInt = textBoxView.getEditorScaleHeightInt();
        float x = point.getX() - lastPoint.getX();
        float y = point.getY() - lastPoint.getY();
        RectF rotateRect = rotateRect(new RectF(0.0f, 0.0f, editorScaleWidthInt, editorScaleHeightInt), textBoxView.getRotation());
        roundToInt = MathKt__MathJVMKt.roundToInt(rotateRect.width());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(rotateRect.height());
        RectF textBoxRect = getTextBoxRect(textBoxView);
        RectUtils.INSTANCE.translate(textBoxRect, textBoxView.getTouchLimitRect().left, textBoxView.getTouchLimitRect().top);
        return textBoxView.adjustTranslateOffsetValue(textBoxRect.left, textBoxRect.top, roundToInt, roundToInt2, new PointF(x, y));
    }

    @NotNull
    public final RectF getTextBoxRect(@NotNull TextBoxView view) {
        float f;
        float width;
        float width2;
        float height;
        double cos;
        Intrinsics.checkNotNullParameter(view, "view");
        int[] locationInParent = getLocationInParent(view);
        float normalizeRotation = normalizeRotation(view);
        if (normalizeRotation < 90.0f) {
            f = locationInParent[0] - (view.getHeight() * ((float) Math.cos(Math.toRadians(90 - normalizeRotation))));
            width = locationInParent[1];
        } else {
            if (normalizeRotation < 180.0f) {
                double d = normalizeRotation - 90;
                f = (locationInParent[0] - (view.getWidth() * ((float) Math.cos(Math.toRadians(180 - normalizeRotation))))) - (view.getHeight() * ((float) Math.cos(Math.toRadians(d))));
                width2 = locationInParent[1];
                height = view.getHeight();
                cos = Math.sin(Math.toRadians(d));
            } else if (normalizeRotation < 270.0f) {
                double d2 = normalizeRotation - 180;
                f = locationInParent[0] - (view.getWidth() * ((float) Math.cos(Math.toRadians(d2))));
                width2 = locationInParent[1] - (view.getWidth() * ((float) Math.sin(Math.toRadians(d2))));
                height = view.getHeight();
                cos = Math.cos(Math.toRadians(d2));
            } else {
                f = locationInParent[0];
                width = locationInParent[1] - (view.getWidth() * ((float) Math.sin(Math.toRadians(360 - normalizeRotation))));
            }
            width = width2 - (height * ((float) cos));
        }
        RectF rectF = new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        Matrix matrix = new Matrix();
        matrix.setRotate(view.getRotation());
        matrix.mapRect(rectF);
        return new RectF(f, width, rectF.width() + f, rectF.height() + width);
    }

    public final float normalizeRotation(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        float rotation = view.getRotation();
        float f = 360;
        return (rotation + f) % f;
    }

    @NotNull
    public final TouchPoint rotatePoint(@Nullable TouchPoint point, float angle) {
        Matrix matrix = new Matrix();
        matrix.setRotate(angle);
        Intrinsics.checkNotNull(point);
        TouchPoint touchPoint = new TouchPoint(point);
        touchPoint.applyMatrix(matrix);
        return touchPoint;
    }

    @NotNull
    public final RectF rotateRect(@Nullable RectF rectF, float angle) {
        RectF rectF2 = new RectF(rectF);
        Matrix matrix = new Matrix();
        matrix.setRotate(angle);
        matrix.mapRect(rectF2);
        return rectF2;
    }

    public final void updateTextBoxPosition(@NotNull TextBoxView textBoxView, @NotNull TouchPoint lastPoint, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(textBoxView, "textBoxView");
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        Intrinsics.checkNotNullParameter(point, "point");
        PointF textBoxOffset = getTextBoxOffset(textBoxView, lastPoint, point);
        textBoxView.updatePosition(textBoxOffset.x, textBoxOffset.y);
    }

    @NotNull
    public final TouchPoint rotatePoint(@Nullable TouchPoint point, float angle, float cx, float cy) {
        Intrinsics.checkNotNull(point);
        TouchPoint touchPoint = new TouchPoint(point);
        Matrix matrix = new Matrix();
        matrix.setRotate(angle, cx, cy);
        touchPoint.applyMatrix(matrix);
        return touchPoint;
    }
}
