package com.onyx.galaxy.note.p048ui.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\b\u0007*\u0001\u0019\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\t0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/LoadingDrawable;", "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;", "Landroid/graphics/Rect;", "bounds", "", "onBoundsChange", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "draw", "", "indicatorIndex", "a", "b", "I", "frameCount", "", "c", "J", "frameTime", "d", "startTime", "", "e", "Ljava/util/List;", "colorList", "com/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1", C6997f.f39671c, "Lcom/onyx/galaxy/note/ui/view/LoadingDrawable$drawArgs$1;", "drawArgs", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadingDrawable extends BaseDrawable {

    /* renamed from: b, reason: from kotlin metadata */
    public final int frameCount = 8;

    /* renamed from: c, reason: from kotlin metadata */
    public final long frameTime = 200;

    /* renamed from: d, reason: from kotlin metadata */
    public final long startTime = System.currentTimeMillis();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> colorList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final LoadingDrawable$drawArgs$1 drawArgs;

    public LoadingDrawable() {
        List<Integer> listOf;
        ResManager resManager = ResManager.INSTANCE;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_01)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_02)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_03)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_04)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_05)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_06)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_07)), Integer.valueOf(resManager.getColor(C10651R.color.loading_anim_color_08))});
        this.colorList = listOf;
        this.drawArgs = new LoadingDrawable$drawArgs$1();
        getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
        getPaint().setAntiAlias(true);
    }

    /* renamed from: a */
    public final void m51440a(int indicatorIndex) {
        float min = Math.min(getBounds().width(), getBounds().height()) / 2.0f;
        LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$1 = this.drawArgs;
        loadingDrawable$drawArgs$1.setColorIndex((loadingDrawable$drawArgs$1.getFrameIndex() + indicatorIndex) % this.frameCount);
        this.drawArgs.setLongIndicator(indicatorIndex % 2 == 0);
        this.drawArgs.setRadius(min);
        this.drawArgs.setCx(getBounds().centerX());
        this.drawArgs.setCy(getBounds().centerY());
        LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$12 = this.drawArgs;
        loadingDrawable$drawArgs$12.setStartX(loadingDrawable$drawArgs$12.getCx() + (0.44444445f * min));
        if (this.drawArgs.getIsLongIndicator()) {
            LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$13 = this.drawArgs;
            loadingDrawable$drawArgs$13.setEndX(loadingDrawable$drawArgs$13.getCx() + (1.0f * min));
        } else {
            LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$14 = this.drawArgs;
            loadingDrawable$drawArgs$14.setEndX(loadingDrawable$drawArgs$14.getCx() + (0.7777778f * min));
        }
        LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$15 = this.drawArgs;
        float f = min * 0.055555556f;
        loadingDrawable$drawArgs$15.setStartY(loadingDrawable$drawArgs$15.getCy() - f);
        LoadingDrawable$drawArgs$1 loadingDrawable$drawArgs$16 = this.drawArgs;
        loadingDrawable$drawArgs$16.setEndY(loadingDrawable$drawArgs$16.getCy() + f);
        this.drawArgs.setCornerRadius(f);
        this.drawArgs.setRotation(indicatorIndex * 45.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.drawArgs.setFrameIndex((int) ((((Number) MathUtils.INSTANCE.atLeast(Long.valueOf(System.currentTimeMillis() - this.startTime), 0L)).longValue() / this.frameTime) % this.frameCount));
        for (int i = 0; i < 8; i++) {
            m51440a(i);
            getPaint().setColor(this.colorList.get(this.drawArgs.getColorIndex()).intValue());
            canvas.save();
            canvas.rotate(-this.drawArgs.getRotation(), this.drawArgs.getCx(), this.drawArgs.getCy());
            canvas.drawRoundRect(this.drawArgs.getStartX(), this.drawArgs.getStartY(), this.drawArgs.getEndX(), this.drawArgs.getEndY(), this.drawArgs.getRadius(), this.drawArgs.getRadius(), getPaint());
            canvas.restore();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        super.onBoundsChange(bounds);
        invalidateSelf();
    }
}
