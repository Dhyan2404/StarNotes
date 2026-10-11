package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012*\u0001\u0000\b\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006¨\u0006\u0014"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$paints$1", "", "Landroid/graphics/Paint;", "a", "Landroid/graphics/Paint;", "getScreenPickerBorder", "()Landroid/graphics/Paint;", "screenPickerBorder", "b", "getSelectionBlockStroke", "selectionBlockStroke", "c", "getPickBlockStroke", "pickBlockStroke", "d", "getHueBlockFill", "hueBlockFill", "e", "getAlphaBlockFill", "alphaBlockFill", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorPanelView$paints$1 {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint screenPickerBorder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Paint selectionBlockStroke;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Paint pickBlockStroke;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Paint hueBlockFill;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Paint alphaBlockFill;

    public ColorPanelView$paints$1() {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(ResManager.INSTANCE.getColor(C10651R.color.black_90));
        paint.setPathEffect(new DashPathEffect(new float[]{5.0f, 5.0f}, 0.0f));
        this.screenPickerBorder = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(-1);
        this.selectionBlockStroke = paint2;
        Paint paint3 = new Paint();
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(-1);
        this.pickBlockStroke = paint3;
        Paint paint4 = new Paint();
        paint4.setStyle(Paint.Style.FILL);
        this.hueBlockFill = paint4;
        Paint paint5 = new Paint();
        paint5.setStyle(Paint.Style.FILL);
        this.alphaBlockFill = paint5;
    }

    @NotNull
    public final Paint getAlphaBlockFill() {
        return this.alphaBlockFill;
    }

    @NotNull
    public final Paint getHueBlockFill() {
        return this.hueBlockFill;
    }

    @NotNull
    public final Paint getPickBlockStroke() {
        return this.pickBlockStroke;
    }

    @NotNull
    public final Paint getScreenPickerBorder() {
        return this.screenPickerBorder;
    }

    @NotNull
    public final Paint getSelectionBlockStroke() {
        return this.selectionBlockStroke;
    }
}
