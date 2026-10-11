package com.onyx.galaxy.note.p048ui.view;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/WechatLoadingDrawable;", "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "", "a", "Landroid/graphics/drawable/Drawable;", "b", "Landroid/graphics/drawable/Drawable;", "bgDrawable", "c", "fgDrawable", "Landroid/graphics/drawable/ColorDrawable;", "d", "Landroid/graphics/drawable/ColorDrawable;", "maskDrawable", "", "e", "J", "startTime", C6997f.f39671c, "cycleTime", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWechatLoadingDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WechatLoadingDrawable.kt\ncom/onyx/galaxy/note/ui/view/WechatLoadingDrawable\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,54:1\n337#2:55\n337#2:56\n337#2:57\n344#2,3:58\n344#2,3:61\n344#2,3:64\n*S KotlinDebug\n*F\n+ 1 WechatLoadingDrawable.kt\ncom/onyx/galaxy/note/ui/view/WechatLoadingDrawable\n*L\n25#1:55\n26#1:56\n29#1:57\n32#1:58,3\n33#1:61,3\n34#1:64,3\n*E\n"})
/* loaded from: classes9.dex */
public final class WechatLoadingDrawable extends BaseDrawable {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Drawable bgDrawable;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Drawable fgDrawable;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ColorDrawable maskDrawable;

    /* renamed from: e, reason: from kotlin metadata */
    public final long startTime;

    /* renamed from: f, reason: from kotlin metadata */
    public final long cycleTime;

    public WechatLoadingDrawable() {
        ResManager resManager = ResManager.INSTANCE;
        Drawable drawable = resManager.getDrawable(C10651R.drawable.ic_wechat_bg);
        Intrinsics.checkNotNull(drawable);
        this.bgDrawable = drawable;
        Drawable drawable2 = resManager.getDrawable(C10651R.drawable.icon_wechat_fg);
        Intrinsics.checkNotNull(drawable2);
        this.fgDrawable = drawable2;
        this.maskDrawable = new ColorDrawable(-1);
        this.startTime = System.currentTimeMillis();
        this.cycleTime = resManager.getLong(C10651R.integer.loading_cycle_time);
    }

    /* renamed from: a */
    public final float m51480a() {
        long currentTimeMillis = System.currentTimeMillis() - this.startTime;
        long j = this.cycleTime;
        return (((float) (currentTimeMillis % j)) / ((float) j)) * 360;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Rect bounds = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
        RectF rectF = new RectF(RectFKt.copy(bounds));
        Rect bounds2 = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds2, "getBounds(...)");
        RectF rectF2 = new RectF(RectFKt.copy(bounds2));
        rectF2.inset(getBounds().width() * 0.45f, getBounds().height() * 0.45f);
        Rect bounds3 = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds3, "getBounds(...)");
        RectF rectF3 = new RectF(RectFKt.copy(bounds3));
        rectF3.inset(getBounds().width() * 0.44f, getBounds().height() * 0.44f);
        Drawable drawable = this.bgDrawable;
        Rect rect = new Rect();
        rectF.roundOut(rect);
        drawable.setBounds(rect);
        Drawable drawable2 = this.fgDrawable;
        Rect rect2 = new Rect();
        rectF2.roundOut(rect2);
        drawable2.setBounds(rect2);
        ColorDrawable colorDrawable = this.maskDrawable;
        Rect rect3 = new Rect();
        rectF3.roundOut(rect3);
        colorDrawable.setBounds(rect3);
        this.bgDrawable.draw(canvas);
        this.maskDrawable.draw(canvas);
        canvas.save();
        canvas.rotate(m51480a(), rectF.centerX(), rectF.centerY());
        this.fgDrawable.draw(canvas);
        canvas.restore();
        invalidateSelf();
    }
}
