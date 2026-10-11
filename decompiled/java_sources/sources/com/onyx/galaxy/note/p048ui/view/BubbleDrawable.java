package com.onyx.galaxy.note.p048ui.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001b\u0010\u000b\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0012R\u0014\u0010\u001b\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u000eR\u0014\u0010\u001d\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u000eR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/BubbleDrawable;", "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "draw", "Landroid/graphics/RectF;", "b", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "a", "()Landroid/graphics/RectF;", "boundRect", "", "c", "F", "radius", "", "d", "I", CouchFieldKey.KEY_FILL_COLOR, "e", "borderColor", C6997f.f39671c, "borderWidth", C6998g.f39679a, "shadowColor", C6999h.f39688c, "shadowBlurRadius", "i", "arrowSize", "Landroid/graphics/Paint;", "j", "Landroid/graphics/Paint;", "fillPaint", C4921e.f26537n, "borderPaint", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBubbleDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleDrawable.kt\ncom/onyx/galaxy/note/ui/view/BubbleDrawable\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,57:1\n97#2:58\n*S KotlinDebug\n*F\n+ 1 BubbleDrawable.kt\ncom/onyx/galaxy/note/ui/view/BubbleDrawable\n*L\n16#1:58\n*E\n"})
/* loaded from: classes9.dex */
public final class BubbleDrawable extends BaseDrawable {

    /* renamed from: l */
    public static final /* synthetic */ KProperty<Object>[] f62139l = {Reflection.property1(new PropertyReference1Impl(BubbleDrawable.class, "boundRect", "getBoundRect()Landroid/graphics/RectF;", 0))};

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final DelegatedValueProvider boundRect = new DelegatedValueProvider() { // from class: com.onyx.galaxy.note.ui.view.BubbleDrawable$special$$inlined$delegate$1
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
            return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
        public final RectF provideValue(CONTEXT context) {
            Rect bounds = ((BubbleDrawable) context).getBounds();
            Intrinsics.checkNotNullExpressionValue(bounds, "getBounds(...)");
            return new RectF(bounds);
        }
    };

    /* renamed from: c, reason: from kotlin metadata */
    public final float radius;

    /* renamed from: d, reason: from kotlin metadata */
    public final int fillColor;

    /* renamed from: e, reason: from kotlin metadata */
    public final int borderColor;

    /* renamed from: f, reason: from kotlin metadata */
    public final float borderWidth;

    /* renamed from: g, reason: from kotlin metadata */
    public final int shadowColor;

    /* renamed from: h, reason: from kotlin metadata */
    public final float shadowBlurRadius;

    /* renamed from: i, reason: from kotlin metadata */
    public final float arrowSize;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Paint fillPaint;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Paint borderPaint;

    public BubbleDrawable() {
        ResManager resManager = ResManager.INSTANCE;
        this.radius = resManager.getDimension(C7384R.dimen.dp_12);
        int colorById = ThemeUtils.getColorById(C7996R.color.theme_background_popup_color_01);
        this.fillColor = colorById;
        int colorById2 = ThemeUtils.getColorById(C7996R.color.theme_divider_color_01);
        this.borderColor = colorById2;
        float dimension = resManager.getDimension(C7384R.dimen.dp_0_5);
        this.borderWidth = dimension;
        int colorById3 = ThemeUtils.getColorById(C7996R.color.theme_background_color_10);
        this.shadowColor = colorById3;
        float dimension2 = resManager.getDimension(C7384R.dimen.dp_8);
        this.shadowBlurRadius = dimension2;
        this.arrowSize = resManager.getDimension(C7384R.dimen.dp_6);
        Paint paint = new Paint();
        this.fillPaint = paint;
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        paint.setColor(colorById);
        paint.setStyle(Paint.Style.FILL);
        paint.setShadowLayer(dimension2, 0.0f, 0.0f, colorById3);
        paint2.setColor(colorById2);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(dimension);
    }

    /* renamed from: a */
    public final RectF m51418a() {
        return (RectF) this.boundRect.getValue(this, f62139l[0]);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Path path = new Path();
        RectF rectF = new RectF(m51418a().left + this.shadowBlurRadius, m51418a().top + this.shadowBlurRadius, m51418a().right - this.shadowBlurRadius, (m51418a().bottom - this.shadowBlurRadius) - this.arrowSize);
        float f = this.radius;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        Path path2 = new Path();
        path2.moveTo(rectF.centerX(), rectF.bottom + this.arrowSize);
        path2.lineTo(rectF.centerX() - this.arrowSize, rectF.bottom);
        path2.lineTo(rectF.centerX() + this.arrowSize, rectF.bottom);
        path2.lineTo(rectF.centerX(), rectF.bottom + this.arrowSize);
        path2.close();
        Path path3 = new Path();
        path3.op(path, path2, Path.Op.UNION);
        canvas.drawPath(path3, this.fillPaint);
        canvas.drawPath(path3, this.borderPaint);
    }
}
