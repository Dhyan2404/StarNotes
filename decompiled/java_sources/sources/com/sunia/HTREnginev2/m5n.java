package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p008ui.CaptionStyleCompat;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class m5n {

    /* renamed from: K */
    public static final String f77213K = "SubtitlePainter";

    /* renamed from: L */
    public static final float f77214L = 0.125f;

    /* renamed from: A */
    public int f77215A;

    /* renamed from: B */
    public int f77216B;

    /* renamed from: C */
    public int f77217C;

    /* renamed from: D */
    public int f77218D;

    /* renamed from: E */
    public StaticLayout f77219E;

    /* renamed from: F */
    public StaticLayout f77220F;

    /* renamed from: G */
    public int f77221G;

    /* renamed from: H */
    public int f77222H;

    /* renamed from: I */
    public int f77223I;

    /* renamed from: J */
    public Rect f77224J;

    /* renamed from: a */
    public final float f77225a;

    /* renamed from: b */
    public final float f77226b;

    /* renamed from: c */
    public final float f77227c;

    /* renamed from: d */
    public final float f77228d;

    /* renamed from: e */
    public final float f77229e;

    /* renamed from: f */
    public final TextPaint f77230f;

    /* renamed from: g */
    public final Paint f77231g;

    /* renamed from: h */
    public final Paint f77232h;

    /* renamed from: i */
    @Nullable
    public CharSequence f77233i;

    /* renamed from: j */
    @Nullable
    public Layout.Alignment f77234j;

    /* renamed from: k */
    @Nullable
    public Bitmap f77235k;

    /* renamed from: l */
    public float f77236l;

    /* renamed from: m */
    public int f77237m;

    /* renamed from: n */
    public int f77238n;

    /* renamed from: o */
    public float f77239o;

    /* renamed from: p */
    public int f77240p;

    /* renamed from: q */
    public float f77241q;

    /* renamed from: r */
    public float f77242r;

    /* renamed from: s */
    public int f77243s;

    /* renamed from: t */
    public int f77244t;

    /* renamed from: u */
    public int f77245u;

    /* renamed from: v */
    public int f77246v;

    /* renamed from: w */
    public int f77247w;

    /* renamed from: x */
    public float f77248x;

    /* renamed from: y */
    public float f77249y;

    /* renamed from: z */
    public float f77250z;

    public m5n(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f77229e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f77228d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f77225a = round;
        this.f77226b = round;
        this.f77227c = round;
        TextPaint textPaint = new TextPaint();
        this.f77230f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f77231g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f77232h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    /* renamed from: a */
    public static boolean m55549a(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    /* renamed from: b */
    public void m55550b(Cue cue, CaptionStyleCompat captionStyleCompat, float f, float f2, float f3, Canvas canvas, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = cue.bitmap == null;
        if (!z) {
            i5 = -16777216;
        } else if (TextUtils.isEmpty(cue.text)) {
            return;
        } else {
            i5 = cue.windowColorSet ? cue.windowColor : captionStyleCompat.windowColor;
        }
        if (m55549a(this.f77233i, cue.text) && Util.areEqual(this.f77234j, cue.textAlignment) && this.f77235k == cue.bitmap && this.f77236l == cue.line && this.f77237m == cue.lineType && Util.areEqual(Integer.valueOf(this.f77238n), Integer.valueOf(cue.lineAnchor)) && this.f77239o == cue.position && Util.areEqual(Integer.valueOf(this.f77240p), Integer.valueOf(cue.positionAnchor)) && this.f77241q == cue.size && this.f77242r == cue.bitmapHeight && this.f77243s == captionStyleCompat.foregroundColor && this.f77244t == captionStyleCompat.backgroundColor && this.f77245u == i5 && this.f77247w == captionStyleCompat.edgeType && this.f77246v == captionStyleCompat.edgeColor && Util.areEqual(this.f77230f.getTypeface(), captionStyleCompat.typeface) && this.f77248x == f && this.f77249y == f2 && this.f77250z == f3 && this.f77215A == i && this.f77216B == i2 && this.f77217C == i3 && this.f77218D == i4) {
            m55552d(canvas, z);
            return;
        }
        this.f77233i = cue.text;
        this.f77234j = cue.textAlignment;
        this.f77235k = cue.bitmap;
        this.f77236l = cue.line;
        this.f77237m = cue.lineType;
        this.f77238n = cue.lineAnchor;
        this.f77239o = cue.position;
        this.f77240p = cue.positionAnchor;
        this.f77241q = cue.size;
        this.f77242r = cue.bitmapHeight;
        this.f77243s = captionStyleCompat.foregroundColor;
        this.f77244t = captionStyleCompat.backgroundColor;
        this.f77245u = i5;
        this.f77247w = captionStyleCompat.edgeType;
        this.f77246v = captionStyleCompat.edgeColor;
        this.f77230f.setTypeface(captionStyleCompat.typeface);
        this.f77248x = f;
        this.f77249y = f2;
        this.f77250z = f3;
        this.f77215A = i;
        this.f77216B = i2;
        this.f77217C = i3;
        this.f77218D = i4;
        if (z) {
            Assertions.checkNotNull(this.f77233i);
            m55555g();
        } else {
            Assertions.checkNotNull(this.f77235k);
            m55554f();
        }
        m55552d(canvas, z);
    }

    @RequiresNonNull({"cueBitmap", "bitmapRect"})
    /* renamed from: c */
    public final void m55551c(Canvas canvas) {
        canvas.drawBitmap(this.f77235k, (Rect) null, this.f77224J, this.f77232h);
    }

    /* renamed from: d */
    public final void m55552d(Canvas canvas, boolean z) {
        if (z) {
            m55553e(canvas);
            return;
        }
        Assertions.checkNotNull(this.f77224J);
        Assertions.checkNotNull(this.f77235k);
        m55551c(canvas);
    }

    /* renamed from: e */
    public final void m55553e(Canvas canvas) {
        StaticLayout staticLayout = this.f77219E;
        StaticLayout staticLayout2 = this.f77220F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.f77221G, this.f77222H);
        if (Color.alpha(this.f77245u) > 0) {
            this.f77231g.setColor(this.f77245u);
            canvas.drawRect(-this.f77223I, 0.0f, staticLayout.getWidth() + this.f77223I, staticLayout.getHeight(), this.f77231g);
        }
        int i = this.f77247w;
        if (i == 1) {
            this.f77230f.setStrokeJoin(Paint.Join.ROUND);
            this.f77230f.setStrokeWidth(this.f77225a);
            this.f77230f.setColor(this.f77246v);
            this.f77230f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.f77230f;
            float f = this.f77226b;
            float f2 = this.f77227c;
            textPaint.setShadowLayer(f, f2, f2, this.f77246v);
        } else if (i == 3 || i == 4) {
            boolean z = i == 3;
            int i2 = z ? -1 : this.f77246v;
            int i3 = z ? this.f77246v : -1;
            float f3 = this.f77226b / 2.0f;
            this.f77230f.setColor(this.f77243s);
            this.f77230f.setStyle(Paint.Style.FILL);
            float f4 = -f3;
            this.f77230f.setShadowLayer(this.f77226b, f4, f4, i2);
            staticLayout2.draw(canvas);
            this.f77230f.setShadowLayer(this.f77226b, f3, f3, i3);
        }
        this.f77230f.setColor(this.f77243s);
        this.f77230f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f77230f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueBitmap"})
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m55554f() {
        /*
            r7 = this;
            android.graphics.Bitmap r0 = r7.f77235k
            int r1 = r7.f77217C
            int r2 = r7.f77215A
            int r1 = r1 - r2
            int r3 = r7.f77218D
            int r4 = r7.f77216B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.f77239o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.f77236l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.f77241q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.f77242r
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L2e
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
            goto L3f
        L2e:
            float r3 = (float) r1
            int r5 = r0.getHeight()
            float r5 = (float) r5
            int r0 = r0.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
        L3f:
            int r3 = r7.f77240p
            r5 = 1
            r6 = 2
            if (r3 != r6) goto L48
            float r3 = (float) r1
        L46:
            float r2 = r2 - r3
            goto L4e
        L48:
            if (r3 != r5) goto L4e
            int r3 = r1 / 2
            float r3 = (float) r3
            goto L46
        L4e:
            int r2 = java.lang.Math.round(r2)
            int r3 = r7.f77238n
            if (r3 != r6) goto L59
            float r3 = (float) r0
        L57:
            float r4 = r4 - r3
            goto L5f
        L59:
            if (r3 != r5) goto L5f
            int r3 = r0 / 2
            float r3 = (float) r3
            goto L57
        L5f:
            int r3 = java.lang.Math.round(r4)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r1 = r1 + r2
            int r0 = r0 + r3
            r4.<init>(r2, r3, r1, r0)
            r7.f77224J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.m5n.m55554f():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a2  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"cueText"})
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m55555g() {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.m5n.m55555g():void");
    }
}
