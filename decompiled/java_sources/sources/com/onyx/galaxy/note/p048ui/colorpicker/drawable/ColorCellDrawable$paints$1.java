package com.onyx.galaxy.note.p048ui.colorpicker.drawable;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006R\u0017\u0010\u0016\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0004\u001a\u0004\b\u0015\u0010\u0006R\u0017\u0010\u0019\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006R\u0017\u0010\u001c\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0004\u001a\u0004\b\u001b\u0010\u0006R\u0017\u0010\u001f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0004\u001a\u0004\b\u001e\u0010\u0006¨\u0006 "}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/drawable/ColorCellDrawable$paints$1", "", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "getBgFill", "()Landroid/graphics/Paint;", "bgFill", "b", "getColorFill", "colorFill", "c", "getAlphaFill", "alphaFill", "d", "getSlimBorder", "slimBorder", "e", "getThickBorder", "thickBorder", C6997f.f39671c, "getAddButtonIcon", "addButtonIcon", C6998g.f39679a, "getAddButtonBorder", "addButtonBorder", C6999h.f39688c, "getAddButtonBorderBg", "addButtonBorderBg", "i", "getOpaqueFill", "opaqueFill", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorCellDrawable$paints$1 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint bgFill;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Paint colorFill;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Paint alphaFill;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Paint slimBorder;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Paint thickBorder;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Paint addButtonIcon;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Paint addButtonBorder;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint addButtonBorderBg;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Paint opaqueFill;

    public ColorCellDrawable$paints$1(ColorCellDrawable colorCellDrawable) {
        int m51257c;
        int i;
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        this.bgFill = paint;
        Paint paint2 = new Paint();
        m51257c = colorCellDrawable.m51257c();
        paint2.setColor(m51257c);
        paint2.setStyle(Paint.Style.FILL);
        this.colorFill = paint2;
        Paint paint3 = new Paint();
        ResManager resManager = ResManager.INSTANCE;
        paint3.setColor(resManager.getColor(C10651R.color.black_10));
        paint3.setStyle(Paint.Style.FILL);
        this.alphaFill = paint3;
        Paint paint4 = new Paint();
        paint4.setColor(ThemeUtils.getColorById(C7996R.color.theme_divider_color_01));
        paint4.setStyle(Paint.Style.STROKE);
        this.slimBorder = paint4;
        Paint paint5 = new Paint();
        paint5.setColor(ThemeUtils.getColorById(C7996R.color.theme_primary_color_01));
        paint5.setStyle(Paint.Style.STROKE);
        this.thickBorder = paint5;
        Paint paint6 = new Paint();
        paint6.setColor(resManager.getColor(C10651R.color.black_20));
        paint6.setStyle(Paint.Style.FILL_AND_STROKE);
        this.addButtonIcon = paint6;
        Paint paint7 = new Paint();
        paint7.setColor(ThemeUtils.getColorById(C7996R.color.theme_divider_color_03));
        paint7.setStyle(Paint.Style.STROKE);
        paint7.setPathEffect(new DashPathEffect(new float[]{6.0f, 5.0f}, 1.0f));
        this.addButtonBorder = paint7;
        Paint paint8 = new Paint();
        paint8.setColor(ThemeUtils.getColorById(C7996R.color.theme_background_color_03));
        paint8.setStyle(Paint.Style.STROKE);
        this.addButtonBorderBg = paint8;
        Paint paint9 = new Paint();
        i = colorCellDrawable.argb;
        paint9.setColor(ColorKt.removeAlpha(i));
        paint9.setStyle(Paint.Style.FILL);
        this.opaqueFill = paint9;
    }

    @NotNull
    public final Paint getAddButtonBorder() {
        return this.addButtonBorder;
    }

    @NotNull
    public final Paint getAddButtonBorderBg() {
        return this.addButtonBorderBg;
    }

    @NotNull
    public final Paint getAddButtonIcon() {
        return this.addButtonIcon;
    }

    @NotNull
    public final Paint getAlphaFill() {
        return this.alphaFill;
    }

    @NotNull
    public final Paint getBgFill() {
        return this.bgFill;
    }

    @NotNull
    public final Paint getColorFill() {
        return this.colorFill;
    }

    @NotNull
    public final Paint getOpaqueFill() {
        return this.opaqueFill;
    }

    @NotNull
    public final Paint getSlimBorder() {
        return this.slimBorder;
    }

    @NotNull
    public final Paint getThickBorder() {
        return this.thickBorder;
    }
}
