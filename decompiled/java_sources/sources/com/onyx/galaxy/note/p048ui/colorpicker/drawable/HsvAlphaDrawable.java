package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "", "getCornerRadius", "", "drawBorder", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "drawContent", "", "e", "[F", "hsv", Constants.CONSTRUCTOR_NAME, "([F)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HsvAlphaDrawable extends HsvBaseDrawable {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final float[] hsv;

    public HsvAlphaDrawable(@NotNull float[] hsv) {
        Intrinsics.checkNotNullParameter(hsv, "hsv");
        this.hsv = hsv;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public boolean drawBorder() {
        return true;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public void drawContent(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int HSVToColor = Color.HSVToColor(0, this.hsv);
        int HSVToColor2 = Color.HSVToColor(255, this.hsv);
        RectF rectF = this.bounds;
        float f = rectF.left;
        float f2 = rectF.top;
        getPaint().setShader(new LinearGradient(f, f2, rectF.right, f2, HSVToColor, HSVToColor2, Shader.TileMode.CLAMP));
        RectF rectF2 = this.bounds;
        canvas.drawRect(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, getPaint());
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public float getCornerRadius() {
        return this.bounds.height() / 2;
    }
}
