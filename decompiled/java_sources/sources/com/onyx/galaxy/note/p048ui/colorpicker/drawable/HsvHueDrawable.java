package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "()V", "drawBorder", "", "drawContent", "", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Canvas;", "getCornerRadius", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class HsvHueDrawable extends HsvBaseDrawable {
    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public boolean drawBorder() {
        return true;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public void drawContent(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        float f = 500;
        float width = this.bounds.width() / f;
        for (int i = 0; i < 500; i++) {
            float f2 = i;
            int HSVToColor = Color.HSVToColor(new float[]{(360.0f * f2) / f, 1.0f, 1.0f});
            float f3 = this.bounds.left + (f2 * width);
            getPaint().setColor(HSVToColor);
            RectF rectF = this.bounds;
            canvas.drawRect(f3, rectF.top, f3 + width + 1, rectF.bottom, getPaint());
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public float getCornerRadius() {
        return this.bounds.height() / 2;
    }
}
