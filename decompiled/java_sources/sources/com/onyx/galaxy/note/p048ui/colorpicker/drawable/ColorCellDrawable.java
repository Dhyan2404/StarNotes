package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\b\u0007*\u0002\u0013\u0017\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002R\u0014\u0010\f\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable;", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "drawContent", "b", "a", "", "c", "e", "I", "argb", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "selected", C6998g.f39679a, "isAddButton", "com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1", C6999h.f39688c, "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$rects$1;", "rects", "com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1", "i", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1;", "paints", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorCellDrawable extends HsvBaseDrawable {

    /* renamed from: e, reason: from kotlin metadata */
    public final int argb;

    /* renamed from: f, reason: from kotlin metadata */
    public final boolean selected;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean isAddButton;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ColorCellDrawable$rects$1 rects = new ColorCellDrawable$rects$1();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ColorCellDrawable$paints$1 paints = new ColorCellDrawable$paints$1(this);

    public ColorCellDrawable(int i, boolean z, boolean z2) {
        this.argb = i;
        this.selected = z;
        this.isAddButton = z2;
    }

    /* renamed from: a */
    public final void m51255a(Canvas canvas) {
        float f = 3;
        canvas.drawLine(this.rects.getColorFill().centerX(), this.rects.getColorFill().top + (this.rects.getColorFill().height() / f), this.rects.getColorFill().centerX(), this.rects.getColorFill().bottom - (this.rects.getColorFill().height() / f), this.paints.getAddButtonIcon());
        canvas.drawLine(this.rects.getColorFill().left + (this.rects.getColorFill().width() / f), this.rects.getColorFill().centerY(), this.rects.getColorFill().right - (this.rects.getColorFill().width() / f), this.rects.getColorFill().centerY(), this.paints.getAddButtonIcon());
    }

    /* renamed from: b */
    public final void m51256b(Canvas canvas) {
        if (this.isAddButton || !ColorKt.hasTransparent(this.argb)) {
            return;
        }
        float width = this.rects.getColorFill().width() / 3;
        Path path = new Path();
        path.addRoundRect(this.rects.getColorFill(), width, width, Path.Direction.CW);
        Path path2 = new Path();
        path2.addRect(this.rects.getOpaquePreview(), Path.Direction.CW);
        path.op(path2, Path.Op.INTERSECT);
        canvas.save();
        canvas.clipPath(path);
        canvas.drawRoundRect(this.rects.getColorFill(), width, width, this.paints.getOpaqueFill());
        canvas.restore();
    }

    /* renamed from: c */
    public final int m51257c() {
        return this.isAddButton ? ResManager.INSTANCE.getColor(C10651R.color.gray02) : this.argb;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public void drawContent(@NotNull Canvas canvas) {
        IntRange until;
        IntProgression step;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        ResManager resManager = ResManager.INSTANCE;
        float dimens = resManager.getDimens(C7384R.dimen.dp_1);
        float width = this.bounds.width() / 20;
        int dimens2 = resManager.getDimens(C7384R.dimen.dp_1);
        ColorCellDrawable$rects$1 colorCellDrawable$rects$1 = this.rects;
        RectF rectF = this.bounds;
        float f = dimens2;
        colorCellDrawable$rects$1.setColorFill(new RectF(rectF.left + width + f, rectF.top + width + f, (rectF.right - width) - f, (rectF.bottom - width) - f));
        float f2 = 2;
        float f3 = dimens / f2;
        this.rects.setSlimBorder(new RectF(this.rects.getColorFill().left - f3, this.rects.getColorFill().top - f3, this.rects.getColorFill().right + f3, this.rects.getColorFill().bottom + f3));
        float f4 = width / f2;
        this.rects.setThickBorder(new RectF((this.rects.getColorFill().left - f4) - f, (this.rects.getColorFill().top - f4) - f, this.rects.getColorFill().right + f4 + f, this.rects.getColorFill().bottom + f4 + f));
        this.rects.setOpaquePreview(new RectF(this.rects.getColorFill().left, this.rects.getColorFill().top, this.rects.getColorFill().left + (this.rects.getColorFill().width() / f2), this.rects.getColorFill().bottom));
        float f5 = 3;
        float width2 = this.rects.getColorFill().width() / f5;
        float width3 = this.rects.getThickBorder().width() / f5;
        this.paints.getSlimBorder().setStrokeWidth(dimens);
        this.paints.getThickBorder().setStrokeWidth(width);
        this.paints.getAddButtonBorder().setStrokeWidth(width);
        this.paints.getAddButtonBorderBg().setStrokeWidth(width);
        this.paints.getAddButtonIcon().setStrokeWidth(width);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        Path path = new Path();
        path.addRoundRect(this.rects.getColorFill(), width2, width2, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(path);
        canvas.drawRoundRect(this.rects.getColorFill(), width2, width2, this.paints.getBgFill());
        float width4 = this.rects.getColorFill().width() / 5;
        for (int i = 0; i < 5; i++) {
            until = RangesKt___RangesKt.until(i % 2 == 0 ? 0 : 1, 5);
            step = RangesKt___RangesKt.step(until, 2);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                while (true) {
                    RectF rectF2 = new RectF();
                    rectF2.left = this.rects.getColorFill().left + (first * width4);
                    float f6 = this.rects.getColorFill().top + (i * width4);
                    rectF2.top = f6;
                    rectF2.right = rectF2.left + width4;
                    rectF2.bottom = f6 + width4;
                    canvas.drawRect(rectF2, this.paints.getAlphaFill());
                    if (first != last) {
                        first += step2;
                    }
                }
            }
        }
        canvas.restore();
        canvas.drawRoundRect(this.rects.getColorFill(), width2, width2, this.paints.getColorFill());
        m51256b(canvas);
        if (this.selected) {
            canvas.drawRoundRect(this.rects.getThickBorder(), width3, width3, this.paints.getThickBorder());
        } else if (!this.isAddButton) {
            canvas.drawRoundRect(this.rects.getSlimBorder(), width2, width2, this.paints.getSlimBorder());
        } else {
            canvas.drawRoundRect(this.rects.getSlimBorder(), width2, width2, this.paints.getAddButtonBorderBg());
            canvas.drawRoundRect(this.rects.getSlimBorder(), width2, width2, this.paints.getAddButtonBorder());
        }
    }
}
