package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "()V", "drawContent", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "getCornerRadius", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class HsvAlphaMarkDrawable extends HsvBaseDrawable {
    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public void drawContent(@NotNull Canvas canvas) {
        IntRange until;
        IntProgression step;
        IntRange until2;
        IntProgression step2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        float height = this.bounds.height() / 2;
        float width = this.bounds.width() / height;
        getPaint().setColor(Color.argb(8, 0, 0, 0));
        int i = (int) width;
        until = RangesKt___RangesKt.until(0, i);
        step = RangesKt___RangesKt.step(until, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step3 = step.getStep();
        if ((step3 > 0 && first <= last) || (step3 < 0 && last <= first)) {
            int i2 = first;
            while (true) {
                RectF rectF = this.bounds;
                float f = rectF.left + (i2 * height);
                canvas.drawRect(f, rectF.top, f + height, rectF.centerY(), getPaint());
                if (i2 == last) {
                    break;
                } else {
                    i2 += step3;
                }
            }
        }
        until2 = RangesKt___RangesKt.until(1, i);
        step2 = RangesKt___RangesKt.step(until2, 2);
        int first2 = step2.getFirst();
        int last2 = step2.getLast();
        int step4 = step2.getStep();
        if ((step4 <= 0 || first2 > last2) && (step4 >= 0 || last2 > first2)) {
            return;
        }
        int i3 = first2;
        while (true) {
            RectF rectF2 = this.bounds;
            float f2 = rectF2.left + (i3 * height);
            canvas.drawRect(f2, rectF2.centerY(), f2 + height, this.bounds.bottom, getPaint());
            if (i3 == last2) {
                return;
            } else {
                i3 += step4;
            }
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public float getCornerRadius() {
        return this.bounds.height() / 2;
    }
}
