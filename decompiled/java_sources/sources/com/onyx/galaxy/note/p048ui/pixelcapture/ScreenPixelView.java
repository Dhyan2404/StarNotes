package com.onyx.galaxy.note.p048ui.pixelcapture;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b3\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001a\u0012\u0006\u0010\u001f\u001a\u00020\u001d\u0012\u0006\u0010%\u001a\u00020 ¢\u0006\u0004\b}\u0010~J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0002J \u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010+\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010(R\u0014\u0010-\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010(R\u0014\u0010/\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010(R\u0014\u00101\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010(R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00107\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00104R\u0014\u00109\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00104R\u0016\u0010<\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010@\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010;R\u0016\u0010B\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010;R\u0016\u0010E\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010DR\u0016\u0010G\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010;R\u0016\u0010I\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010;R\u0016\u0010K\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010;R\u0016\u0010N\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010MR\u0016\u0010O\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010;R\u0016\u0010Q\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010DR\u0016\u0010S\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010MR\u0016\u0010U\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010;R\u0016\u0010W\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010;R\u0016\u0010Y\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010;R\u0016\u0010[\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010;R\u0016\u0010]\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010;R\u0016\u0010_\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010MR\u0016\u0010a\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010MR\u0016\u0010c\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010;R\u0016\u0010e\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010;R\u0016\u0010g\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010MR\u0016\u0010i\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010;R\u0016\u0010k\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010;R\u0016\u0010m\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010MR\u0016\u0010o\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010;R\u0014\u0010q\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010;R\u0016\u0010t\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010v\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010;R\u0016\u0010x\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010;R\u0016\u0010z\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010RR\u0016\u0010|\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010s¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;", "Landroid/view/View;", "", "getReversedColor", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "e", C6997f.f39671c, "b", "", "x", "y", "", "t", "a", "c", "d", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap;", "Landroid/graphics/Bitmap;", "bitmap", "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;", C6998g.f39679a, "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;", "getCallback", "()Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;", "callback", "Landroid/graphics/Paint;", C6999h.f39688c, "Landroid/graphics/Paint;", "paint", "i", "ringPaint", "j", "crossPaint", C4921e.f26537n, "panelPaint", "l", "splitPaint", "Landroid/graphics/drawable/Drawable;", "m", "Landroid/graphics/drawable/Drawable;", "cancelDrawable", GoogleApiAvailabilityLight.f29016b, "confirmDrawable", C4921e.f26528e, "shadowDrawable", "p", "F", "viewWidth", "q", "viewHeight", "r", "centerX", "s", "centerY", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "fullRect", "u", "ringRadius", "v", "ringWidth", "w", "ringShadowOffset", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "ringRect", "magnifierRadius", "z", "magnifiedRect", "J", "magnifierRect", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "crossRadius", "Q", "buttonGroupWidth", "k0", "buttonGroupHeight", "q0", "buttonGroupRadius", "t0", "buttonGroupShadowOffset", "u0", "buttonGroupRect", "v0", "buttonGroupShadowRect", "w0", "cancelX", "x0", "cancelY", "y0", "cancelRect", "z0", "confirmX", "A0", "confirmY", "B0", "confirmRect", "C0", "buttonSize", "D0", "edgePadding", "E0", "I", "actionMode", "F0", "previousEventX", "G0", "previousEventY", "H0", "previousEventT", "I0", "color", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelCaptureCallback;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nScreenPixelView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenPixelView.kt\ncom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,317:1\n344#2,3:318\n344#2,3:321\n344#2,3:324\n344#2,3:327\n*S KotlinDebug\n*F\n+ 1 ScreenPixelView.kt\ncom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView\n*L\n141#1:318,3\n229#1:321,3\n242#1:324,3\n244#1:327,3\n*E\n"})
/* loaded from: classes9.dex */
public final class ScreenPixelView extends View {

    /* renamed from: A0, reason: from kotlin metadata */
    public float confirmY;

    /* renamed from: B0, reason: from kotlin metadata */
    @NotNull
    public RectF confirmRect;

    /* renamed from: C0, reason: from kotlin metadata */
    public float buttonSize;

    /* renamed from: D0, reason: from kotlin metadata */
    public final float edgePadding;

    /* renamed from: E0, reason: from kotlin metadata */
    public int actionMode;

    /* renamed from: F0, reason: from kotlin metadata */
    public float previousEventX;

    /* renamed from: G0, reason: from kotlin metadata */
    public float previousEventY;

    /* renamed from: H0, reason: from kotlin metadata */
    public long previousEventT;

    /* renamed from: I0, reason: from kotlin metadata */
    public int color;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public RectF magnifierRect;

    /* renamed from: O, reason: from kotlin metadata */
    public float crossRadius;

    /* renamed from: Q, reason: from kotlin metadata */
    public float buttonGroupWidth;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Bitmap bitmap;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final ScreenPixelCaptureCallback callback;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Paint ringPaint;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Paint crossPaint;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Paint panelPaint;

    /* renamed from: k0, reason: from kotlin metadata */
    public float buttonGroupHeight;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Paint splitPaint;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Drawable cancelDrawable;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Drawable confirmDrawable;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Drawable shadowDrawable;

    /* renamed from: p, reason: from kotlin metadata */
    public float viewWidth;

    /* renamed from: q, reason: from kotlin metadata */
    public float viewHeight;

    /* renamed from: q0, reason: from kotlin metadata */
    public float buttonGroupRadius;

    /* renamed from: r, reason: from kotlin metadata */
    public float centerX;

    /* renamed from: s, reason: from kotlin metadata */
    public float centerY;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public Rect fullRect;

    /* renamed from: t0, reason: from kotlin metadata */
    public float buttonGroupShadowOffset;

    /* renamed from: u, reason: from kotlin metadata */
    public float ringRadius;

    /* renamed from: u0, reason: from kotlin metadata */
    @NotNull
    public RectF buttonGroupRect;

    /* renamed from: v, reason: from kotlin metadata */
    public float ringWidth;

    /* renamed from: v0, reason: from kotlin metadata */
    @NotNull
    public RectF buttonGroupShadowRect;

    /* renamed from: w, reason: from kotlin metadata */
    public float ringShadowOffset;

    /* renamed from: w0, reason: from kotlin metadata */
    public float cancelX;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public RectF ringRect;

    /* renamed from: x0, reason: from kotlin metadata */
    public float cancelY;

    /* renamed from: y, reason: from kotlin metadata */
    public float magnifierRadius;

    /* renamed from: y0, reason: from kotlin metadata */
    @NotNull
    public RectF cancelRect;

    /* renamed from: z, reason: from kotlin metadata */
    @NotNull
    public Rect magnifiedRect;

    /* renamed from: z0, reason: from kotlin metadata */
    public float confirmX;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenPixelView(@NotNull Context context, @NotNull Bitmap bitmap, @NotNull ScreenPixelCaptureCallback callback) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.paint = new Paint();
        this.ringPaint = new Paint();
        this.crossPaint = new Paint();
        this.panelPaint = new Paint();
        this.splitPaint = new Paint();
        ResManager resManager = ResManager.INSTANCE;
        Drawable drawable = resManager.getDrawable(C10651R.drawable.icon_capture_cancel);
        Intrinsics.checkNotNull(drawable);
        this.cancelDrawable = drawable;
        Drawable drawable2 = resManager.getDrawable(C10651R.drawable.icon_capture_ok);
        Intrinsics.checkNotNull(drawable2);
        this.confirmDrawable = drawable2;
        Drawable drawable3 = resManager.getDrawable(C10651R.drawable.bg_panel);
        Intrinsics.checkNotNull(drawable3);
        this.shadowDrawable = drawable3;
        this.fullRect = new Rect();
        this.ringRadius = resManager.getDimension(C10651R.dimen.screen_pixel_ring_radius);
        this.ringWidth = resManager.getDimension(C10651R.dimen.screen_pixel_ring_width);
        this.ringShadowOffset = resManager.getDimension(C7384R.dimen.dp_20);
        this.ringRect = new RectF();
        this.magnifiedRect = new Rect();
        this.magnifierRect = new RectF();
        this.crossRadius = resManager.getDimension(C10651R.dimen.screen_pixel_cross_radius);
        this.buttonGroupWidth = resManager.getDimension(C10651R.dimen.screen_panel_width);
        this.buttonGroupHeight = resManager.getDimension(C10651R.dimen.screen_panel_height);
        this.buttonGroupRadius = resManager.getDimension(C10651R.dimen.screen_panel_radius);
        this.buttonGroupShadowOffset = resManager.getDimension(C10651R.dimen.screen_shadow_offset);
        this.buttonGroupRect = new RectF();
        this.buttonGroupShadowRect = new RectF();
        this.cancelRect = new RectF();
        this.confirmRect = new RectF();
        this.buttonSize = resManager.getDimension(C10651R.dimen.screen_button_size);
        this.edgePadding = resManager.getDimension(C10651R.dimen.screen_edge_padding);
        this.color = -1;
        this.context = context;
        this.bitmap = bitmap;
        this.callback = callback;
        m51352e();
        setBackgroundColor(resManager.getColor(C10651R.color.black_20));
    }

    private final int getReversedColor() {
        float[] fArr = {0.0f, 0.0f, 0.0f};
        Color.colorToHSV(this.color, fArr);
        return (fArr[2] > 0.5f ? 1 : (fArr[2] == 0.5f ? 0 : -1)) < 0 ? -1 : -16777216;
    }

    /* renamed from: a */
    public final int m51348a(float x, float y, long t) {
        if (this.cancelRect.contains(x, y)) {
            return 2;
        }
        if (this.confirmRect.contains(x, y)) {
            return 3;
        }
        return this.buttonGroupRect.contains(x, y) ? 0 : 1;
    }

    /* renamed from: b */
    public final void m51349b() {
        RectF rectF = this.buttonGroupRect;
        float f = rectF.left;
        float f2 = this.edgePadding;
        if (f < f2) {
            float f3 = this.ringRect.right + this.ringShadowOffset;
            rectF.left = f3;
            rectF.right = f3 + this.buttonGroupWidth;
            float f4 = this.centerY;
            float f5 = this.buttonGroupHeight;
            float f6 = 2;
            rectF.top = f4 - (f5 / f6);
            rectF.bottom = f4 + (f5 / f6);
        }
        if (rectF.right > this.viewWidth - f2) {
            float f7 = this.ringRect.left - this.ringShadowOffset;
            rectF.right = f7;
            rectF.left = f7 - this.buttonGroupWidth;
            float f8 = this.centerY;
            float f9 = this.buttonGroupHeight;
            float f10 = 2;
            rectF.top = f8 - (f9 / f10);
            rectF.bottom = f8 + (f9 / f10);
        }
        if (rectF.bottom > this.viewHeight - f2) {
            float f11 = this.ringRect.top - this.ringShadowOffset;
            rectF.bottom = f11;
            rectF.top = f11 - this.buttonGroupHeight;
        }
        RectF rectF2 = this.buttonGroupRect;
        float f12 = rectF2.left;
        float f13 = this.buttonGroupShadowOffset;
        this.buttonGroupShadowRect = new RectF(f12 - f13, rectF2.top - f13, rectF2.right + f13, rectF2.bottom + f13);
    }

    /* renamed from: c */
    public final void m51350c(float x, float y, long t) {
        if (this.actionMode == 1) {
            this.centerX = x;
            this.centerY = y;
            this.centerX = Math.max(0.0f, x);
            float f = 1;
            this.centerX = Math.min(this.fullRect.width() - f, this.centerX);
            this.centerY = Math.max(0.0f, this.centerY);
            this.centerY = Math.min(this.fullRect.height() - f, this.centerY);
            m51353f();
        }
    }

    /* renamed from: d */
    public final void m51351d(float x, float y, long t) {
        int i = this.actionMode;
        if (i == 2) {
            if (this.cancelRect.contains(x, y)) {
                this.callback.onCaptureCanceled();
            }
        } else if (i == 3 && this.confirmRect.contains(x, y)) {
            this.callback.onPixelCaptured(this.color);
        }
    }

    /* renamed from: e */
    public final void m51352e() {
        this.paint.setColor(-1);
        this.ringPaint.setStyle(Paint.Style.STROKE);
        this.ringPaint.setColor(-1);
        this.ringPaint.setStrokeWidth(this.ringWidth);
        this.crossPaint.setStyle(Paint.Style.STROKE);
        this.crossPaint.setColor(-16777216);
        Paint paint = this.crossPaint;
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        paint.setStrokeWidth(dimenUtils.dp2PxFloat(2.0f));
        this.panelPaint.setStyle(Paint.Style.FILL);
        this.panelPaint.setColor(-1);
        this.splitPaint.setStyle(Paint.Style.STROKE);
        this.splitPaint.setColor(ResManager.INSTANCE.getColor(C10651R.color.black_10));
        this.splitPaint.setStrokeWidth(dimenUtils.dp2PxFloat(0.5f));
    }

    /* renamed from: f */
    public final void m51353f() {
        float width = this.bitmap.getWidth() / getMeasuredWidth();
        float height = this.bitmap.getHeight() / getMeasuredHeight();
        this.color = this.bitmap.getPixel((int) (this.centerX * width), (int) (this.centerY * height));
        this.fullRect = new Rect(0, 0, getMeasuredWidth(), getMeasuredHeight());
        float f = this.centerX;
        float f2 = this.ringRadius;
        float f3 = this.centerY;
        this.ringRect = new RectF(f - f2, f3 - f2, f + f2, f3 + f2);
        this.magnifierRadius = this.ringRadius - this.ringWidth;
        float f4 = this.centerX;
        float f5 = this.magnifierRadius;
        float f6 = 2;
        float f7 = this.centerY;
        RectF rectF = new RectF((f4 - (f5 / f6)) * width, (f7 - (f5 / f6)) * height, (f4 + (f5 / f6)) * width, (f7 + (f5 / f6)) * height);
        Rect rect = new Rect();
        rectF.roundOut(rect);
        this.magnifiedRect = rect;
        float f8 = this.centerX;
        float f9 = this.magnifierRadius;
        float f10 = this.centerY;
        this.magnifierRect = new RectF(f8 - f9, f10 - f9, f8 + f9, f10 + f9);
        float centerX = this.ringRect.centerX() - (this.buttonGroupWidth / f6);
        RectF rectF2 = this.ringRect;
        this.buttonGroupRect = new RectF(centerX, rectF2.bottom + this.ringShadowOffset, rectF2.centerX() + (this.buttonGroupWidth / f6), this.ringRect.bottom + this.ringShadowOffset + this.buttonGroupHeight);
        m51349b();
        int reversedColor = getReversedColor();
        int colorWithAlpha = ColorUtils.INSTANCE.getColorWithAlpha(reversedColor, 0.2f, false);
        this.ringPaint.setColor(this.color);
        this.crossPaint.setColor(reversedColor);
        this.ringPaint.setShadowLayer(this.ringShadowOffset, 0.0f, 0.0f, colorWithAlpha);
        RectF rectF3 = this.buttonGroupRect;
        float f11 = 4;
        this.cancelX = (rectF3.left + (rectF3.width() / f11)) - (this.buttonSize / f6);
        RectF rectF4 = this.buttonGroupRect;
        this.cancelY = (rectF4.top + (rectF4.height() / f6)) - (this.buttonSize / f6);
        float f12 = this.cancelX;
        float f13 = this.cancelY;
        float f14 = this.buttonSize;
        this.cancelRect = new RectF(f12, f13, f12 + f14, f14 + f13);
        RectF rectF5 = this.buttonGroupRect;
        this.confirmX = (rectF5.right - (rectF5.width() / f11)) - (this.buttonSize / f6);
        RectF rectF6 = this.buttonGroupRect;
        this.confirmY = (rectF6.top + (rectF6.height() / f6)) - (this.buttonSize / f6);
        float f15 = this.confirmX;
        float f16 = this.confirmY;
        float f17 = this.buttonSize;
        this.confirmRect = new RectF(f15, f16, f15 + f17, f17 + f16);
        invalidate();
    }

    @NotNull
    public final ScreenPixelCaptureCallback getCallback() {
        return this.callback;
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawBitmap(this.bitmap, (Rect) null, this.fullRect, this.paint);
        canvas.saveLayer(this.ringRect, this.paint);
        canvas.drawCircle(this.centerX, this.centerY, this.magnifierRadius, this.paint);
        this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.bitmap, this.magnifiedRect, this.magnifierRect, this.paint);
        this.paint.setXfermode(null);
        canvas.restore();
        canvas.drawCircle(this.centerX, this.centerY, this.ringRadius - (this.ringWidth / 2), this.ringPaint);
        float f = this.centerX;
        float f2 = this.crossRadius;
        float f3 = this.centerY;
        float f4 = 3;
        canvas.drawLine(f - f2, f3, f - (f2 / f4), f3, this.crossPaint);
        float f5 = this.centerX;
        float f6 = this.crossRadius;
        float f7 = this.centerY;
        canvas.drawLine((f6 / f4) + f5, f7, f5 + f6, f7, this.crossPaint);
        float f8 = this.centerX;
        float f9 = this.centerY;
        float f10 = this.crossRadius;
        canvas.drawLine(f8, f9 - f10, f8, f9 - (f10 / f4), this.crossPaint);
        float f11 = this.centerX;
        float f12 = this.centerY;
        float f13 = this.crossRadius;
        canvas.drawLine(f11, (f13 / f4) + f12, f11, f12 + f13, this.crossPaint);
        Drawable drawable = this.shadowDrawable;
        RectF rectF = this.buttonGroupShadowRect;
        Rect rect = new Rect();
        rectF.roundOut(rect);
        drawable.setBounds(rect);
        this.shadowDrawable.draw(canvas);
        RectF rectF2 = this.buttonGroupRect;
        float f14 = this.buttonGroupRadius;
        canvas.drawRoundRect(rectF2, f14, f14, this.panelPaint);
        float centerX = this.buttonGroupRect.centerX();
        RectF rectF3 = this.buttonGroupRect;
        float f15 = 4;
        float height = rectF3.top + (rectF3.height() / f15);
        float centerX2 = this.buttonGroupRect.centerX();
        RectF rectF4 = this.buttonGroupRect;
        canvas.drawLine(centerX, height, centerX2, rectF4.bottom - (rectF4.height() / f15), this.splitPaint);
        Drawable drawable2 = this.cancelDrawable;
        RectF rectF5 = this.cancelRect;
        Rect rect2 = new Rect();
        rectF5.roundOut(rect2);
        drawable2.setBounds(rect2);
        this.cancelDrawable.draw(canvas);
        Drawable drawable3 = this.confirmDrawable;
        RectF rectF6 = this.confirmRect;
        Rect rect3 = new Rect();
        rectF6.roundOut(rect3);
        drawable3.setBounds(rect3);
        this.confirmDrawable.draw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.viewWidth = getMeasuredWidth();
        float measuredHeight = getMeasuredHeight();
        this.viewHeight = measuredHeight;
        float f = 2;
        this.centerX = this.viewWidth / f;
        this.centerY = measuredHeight / f;
        m51353f();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        float x = event.getX();
        float y = event.getY();
        long eventTime = event.getEventTime();
        int action = event.getAction();
        if (action == 0) {
            this.previousEventX = x;
            this.previousEventY = y;
            this.previousEventT = eventTime;
            this.actionMode = m51348a(x, y, eventTime);
        } else if (action == 1) {
            m51351d(x, y, eventTime);
            this.actionMode = 0;
        } else if (action == 2) {
            m51350c(x, y, eventTime);
        } else if (action == 3) {
            this.actionMode = 0;
        }
        return true;
    }
}
