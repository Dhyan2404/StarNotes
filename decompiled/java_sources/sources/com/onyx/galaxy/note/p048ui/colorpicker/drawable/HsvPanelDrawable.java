package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;", "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvBaseDrawable;", "", "getCornerRadius", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "drawContent", "", "e", "[F", "hsv", Constants.CONSTRUCTOR_NAME, "([F)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class HsvPanelDrawable extends HsvBaseDrawable {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final float[] hsv;

    public HsvPanelDrawable(@NotNull float[] hsv) {
        Intrinsics.checkNotNullParameter(hsv, "hsv");
        this.hsv = hsv;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public void drawContent(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        float f = 500;
        float height = this.bounds.height() / f;
        for (int i = 0; i < 500; i++) {
            float f2 = this.hsv[0];
            float f3 = 1;
            float f4 = i;
            float f5 = f3 - (f4 / f);
            int HSVToColor = Color.HSVToColor(new float[]{f2, 0.0f, f5});
            int HSVToColor2 = Color.HSVToColor(new float[]{f2, 1.0f, f5});
            float f6 = f4 * height;
            RectF rectF = this.bounds;
            getPaint().setShader(new LinearGradient(rectF.left, f6, rectF.right, f6, HSVToColor, HSVToColor2, Shader.TileMode.CLAMP));
            RectF rectF2 = this.bounds;
            canvas.drawRect(rectF2.left, f6, rectF2.right, f6 + height + f3, getPaint());
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.drawable.HsvBaseDrawable
    public float getCornerRadius() {
        return ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8);
    }
}
