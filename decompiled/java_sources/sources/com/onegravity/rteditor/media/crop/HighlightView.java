package com.onegravity.rteditor.media.crop;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.onegravity.rteditor.C7028R;

/* loaded from: classes7.dex */
public class HighlightView {

    /* renamed from: r */
    public static final String f40455r = "HighlightView";

    /* renamed from: s */
    public static final int f40456s = 1;

    /* renamed from: t */
    public static final int f40457t = 2;

    /* renamed from: u */
    public static final int f40458u = 4;

    /* renamed from: v */
    public static final int f40459v = 8;

    /* renamed from: w */
    public static final int f40460w = 16;

    /* renamed from: x */
    public static final int f40461x = 32;

    /* renamed from: a */
    public View f40462a;

    /* renamed from: b */
    public boolean f40463b;

    /* renamed from: c */
    public boolean f40464c;

    /* renamed from: e */
    public Rect f40466e;

    /* renamed from: f */
    public RectF f40467f;

    /* renamed from: g */
    public RectF f40468g;

    /* renamed from: h */
    public Matrix f40469h;

    /* renamed from: j */
    public float f40471j;

    /* renamed from: l */
    public Drawable f40473l;

    /* renamed from: m */
    public Drawable f40474m;

    /* renamed from: n */
    public Drawable f40475n;

    /* renamed from: d */
    public ModifyMode f40465d = ModifyMode.None;

    /* renamed from: i */
    public boolean f40470i = false;

    /* renamed from: k */
    public boolean f40472k = false;

    /* renamed from: o */
    public final Paint f40476o = new Paint();

    /* renamed from: p */
    public final Paint f40477p = new Paint();

    /* renamed from: q */
    public final Paint f40478q = new Paint();

    /* loaded from: classes7.dex */
    public enum ModifyMode {
        None,
        Move,
        Grow
    }

    public HighlightView(View view) {
        this.f40462a = view;
    }

    /* renamed from: a */
    public final Rect m31734a() {
        RectF rectF = this.f40468g;
        RectF rectF2 = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
        this.f40469h.mapRect(rectF2);
        return new Rect(Math.round(rectF2.left), Math.round(rectF2.top), Math.round(rectF2.right), Math.round(rectF2.bottom));
    }

    /* renamed from: b */
    public void m31735b(Canvas canvas) {
        if (this.f40464c) {
            return;
        }
        Path path = new Path();
        if (!m31741h()) {
            this.f40478q.setColor(-16777216);
            canvas.drawRect(this.f40466e, this.f40478q);
            return;
        }
        Rect rect = new Rect();
        this.f40462a.getDrawingRect(rect);
        if (this.f40472k) {
            canvas.save();
            float width = this.f40466e.width();
            float height = this.f40466e.height();
            Rect rect2 = this.f40466e;
            float f = width / 2.0f;
            path.addCircle(rect2.left + f, rect2.top + (height / 2.0f), f, Path.Direction.CW);
            this.f40478q.setColor(-1112874);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawRect(rect, m31741h() ? this.f40476o : this.f40477p);
            canvas.restore();
        } else {
            Rect rect3 = new Rect(rect.left, rect.top, rect.right, this.f40466e.top);
            if (rect3.width() > 0 && rect3.height() > 0) {
                canvas.drawRect(rect3, m31741h() ? this.f40476o : this.f40477p);
            }
            Rect rect4 = new Rect(rect.left, this.f40466e.bottom, rect.right, rect.bottom);
            if (rect4.width() > 0 && rect4.height() > 0) {
                canvas.drawRect(rect4, m31741h() ? this.f40476o : this.f40477p);
            }
            Rect rect5 = new Rect(rect.left, rect3.bottom, this.f40466e.left, rect4.top);
            if (rect5.width() > 0 && rect5.height() > 0) {
                canvas.drawRect(rect5, m31741h() ? this.f40476o : this.f40477p);
            }
            Rect rect6 = new Rect(this.f40466e.right, rect3.bottom, rect.right, rect4.top);
            if (rect6.width() > 0 && rect6.height() > 0) {
                canvas.drawRect(rect6, m31741h() ? this.f40476o : this.f40477p);
            }
            path.addRect(new RectF(this.f40466e), Path.Direction.CW);
            this.f40478q.setColor(-30208);
        }
        canvas.drawPath(path, this.f40478q);
        if (this.f40465d == ModifyMode.Grow) {
            if (this.f40472k) {
                int intrinsicWidth = this.f40475n.getIntrinsicWidth();
                int intrinsicHeight = this.f40475n.getIntrinsicHeight();
                int round = (int) Math.round(Math.cos(0.7853981633974483d) * (this.f40466e.width() / 2.0d));
                Rect rect7 = this.f40466e;
                int width2 = ((rect7.left + (rect7.width() / 2)) + round) - (intrinsicWidth / 2);
                Rect rect8 = this.f40466e;
                int height2 = ((rect8.top + (rect8.height() / 2)) - round) - (intrinsicHeight / 2);
                Drawable drawable = this.f40475n;
                drawable.setBounds(width2, height2, drawable.getIntrinsicWidth() + width2, this.f40475n.getIntrinsicHeight() + height2);
                this.f40475n.draw(canvas);
                return;
            }
            Rect rect9 = this.f40466e;
            int i = rect9.left + 1;
            int i2 = rect9.right + 1;
            int i3 = rect9.top + 4;
            int i4 = rect9.bottom + 3;
            int intrinsicWidth2 = this.f40473l.getIntrinsicWidth() / 2;
            int intrinsicHeight2 = this.f40473l.getIntrinsicHeight() / 2;
            int intrinsicHeight3 = this.f40474m.getIntrinsicHeight() / 2;
            int intrinsicWidth3 = this.f40474m.getIntrinsicWidth() / 2;
            Rect rect10 = this.f40466e;
            int i5 = rect10.left;
            int i6 = i5 + ((rect10.right - i5) / 2);
            int i7 = rect10.top;
            int i8 = i7 + ((rect10.bottom - i7) / 2);
            int i9 = i8 - intrinsicHeight2;
            int i10 = i8 + intrinsicHeight2;
            this.f40473l.setBounds(i - intrinsicWidth2, i9, i + intrinsicWidth2, i10);
            this.f40473l.draw(canvas);
            this.f40473l.setBounds(i2 - intrinsicWidth2, i9, i2 + intrinsicWidth2, i10);
            this.f40473l.draw(canvas);
            int i11 = i6 - intrinsicWidth3;
            int i12 = i6 + intrinsicWidth3;
            this.f40474m.setBounds(i11, i3 - intrinsicHeight3, i12, i3 + intrinsicHeight3);
            this.f40474m.draw(canvas);
            this.f40474m.setBounds(i11, i4 - intrinsicHeight3, i12, i4 + intrinsicHeight3);
            this.f40474m.draw(canvas);
        }
    }

    /* renamed from: c */
    public Rect m31736c() {
        RectF rectF = this.f40468g;
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    /* renamed from: d */
    public int m31737d(float f, float f2) {
        Rect m31734a = m31734a();
        if (this.f40472k) {
            float centerX = f - m31734a.centerX();
            float centerY = f2 - m31734a.centerY();
            int sqrt = (int) Math.sqrt((centerX * centerX) + (centerY * centerY));
            int width = this.f40466e.width() / 2;
            return ((float) Math.abs(sqrt - width)) <= 20.0f ? Math.abs(centerY) > Math.abs(centerX) ? centerY < 0.0f ? 8 : 16 : centerX < 0.0f ? 2 : 4 : sqrt < width ? 32 : 1;
        }
        boolean z = false;
        boolean z2 = f2 >= ((float) m31734a.top) - 20.0f && f2 < ((float) m31734a.bottom) + 20.0f;
        int i = m31734a.left;
        if (f >= i - 20.0f && f < m31734a.right + 20.0f) {
            z = true;
        }
        int i2 = (Math.abs(((float) i) - f) >= 20.0f || !z2) ? 1 : 3;
        if (Math.abs(m31734a.right - f) < 20.0f && z2) {
            i2 |= 4;
        }
        if (Math.abs(m31734a.top - f2) < 20.0f && z) {
            i2 |= 8;
        }
        if (Math.abs(m31734a.bottom - f2) < 20.0f && z) {
            i2 |= 16;
        }
        if (i2 == 1 && m31734a.contains((int) f, (int) f2)) {
            return 32;
        }
        return i2;
    }

    /* renamed from: e */
    public ModifyMode m31738e() {
        return this.f40465d;
    }

    /* renamed from: f */
    public void m31739f(float f, float f2) {
        if (this.f40470i) {
            if (f != 0.0f) {
                f2 = f / this.f40471j;
            } else if (f2 != 0.0f) {
                f = this.f40471j * f2;
            }
        }
        RectF rectF = new RectF(this.f40468g);
        if (f > 0.0f && rectF.width() + (f * 2.0f) > this.f40467f.width()) {
            f = (this.f40467f.width() - rectF.width()) / 2.0f;
            if (this.f40470i) {
                f2 = f / this.f40471j;
            }
        }
        if (f2 > 0.0f && rectF.height() + (f2 * 2.0f) > this.f40467f.height()) {
            f2 = (this.f40467f.height() - rectF.height()) / 2.0f;
            if (this.f40470i) {
                f = this.f40471j * f2;
            }
        }
        rectF.inset(-f, -f2);
        if (rectF.width() < 25.0f) {
            rectF.inset((-(25.0f - rectF.width())) / 2.0f, 0.0f);
        }
        float f3 = this.f40470i ? 25.0f / this.f40471j : 25.0f;
        if (rectF.height() < f3) {
            rectF.inset(0.0f, (-(f3 - rectF.height())) / 2.0f);
        }
        float f4 = rectF.left;
        RectF rectF2 = this.f40467f;
        float f5 = rectF2.left;
        if (f4 < f5) {
            rectF.offset(f5 - f4, 0.0f);
        } else {
            float f6 = rectF.right;
            float f7 = rectF2.right;
            if (f6 > f7) {
                rectF.offset(-(f6 - f7), 0.0f);
            }
        }
        float f8 = rectF.top;
        RectF rectF3 = this.f40467f;
        float f9 = rectF3.top;
        if (f8 < f9) {
            rectF.offset(0.0f, f9 - f8);
        } else {
            float f10 = rectF.bottom;
            float f11 = rectF3.bottom;
            if (f10 > f11) {
                rectF.offset(0.0f, -(f10 - f11));
            }
        }
        this.f40468g.set(rectF);
        this.f40466e = m31734a();
        this.f40462a.invalidate();
    }

    /* renamed from: g */
    public void m31740g(int i, float f, float f2) {
        Rect m31734a = m31734a();
        if (i == 1) {
            return;
        }
        if (i == 32) {
            m31744k(f * (this.f40468g.width() / m31734a.width()), f2 * (this.f40468g.height() / m31734a.height()));
            return;
        }
        if ((i & 6) == 0) {
            f = 0.0f;
        }
        if ((i & 24) == 0) {
            f2 = 0.0f;
        }
        m31739f(((i & 2) != 0 ? -1 : 1) * f * (this.f40468g.width() / m31734a.width()), ((i & 8) != 0 ? -1 : 1) * f2 * (this.f40468g.height() / m31734a.height()));
    }

    /* renamed from: h */
    public boolean m31741h() {
        return this.f40463b;
    }

    /* renamed from: i */
    public final void m31742i() {
        Resources resources = this.f40462a.getResources();
        this.f40473l = resources.getDrawable(C7028R.drawable.camera_crop_width);
        this.f40474m = resources.getDrawable(C7028R.drawable.camera_crop_height);
        this.f40475n = resources.getDrawable(C7028R.drawable.indicator_autocrop);
    }

    /* renamed from: j */
    public void m31743j() {
        this.f40466e = m31734a();
    }

    /* renamed from: k */
    public void m31744k(float f, float f2) {
        Rect rect = new Rect(this.f40466e);
        this.f40468g.offset(f, f2);
        RectF rectF = this.f40468g;
        rectF.offset(Math.max(0.0f, this.f40467f.left - rectF.left), Math.max(0.0f, this.f40467f.top - this.f40468g.top));
        RectF rectF2 = this.f40468g;
        rectF2.offset(Math.min(0.0f, this.f40467f.right - rectF2.right), Math.min(0.0f, this.f40467f.bottom - this.f40468g.bottom));
        Rect m31734a = m31734a();
        this.f40466e = m31734a;
        rect.union(m31734a);
        rect.inset(-10, -10);
        this.f40462a.invalidate(rect);
    }

    /* renamed from: l */
    public void m31745l(boolean z) {
        this.f40463b = z;
    }

    /* renamed from: m */
    public void m31746m(boolean z) {
        this.f40464c = z;
    }

    /* renamed from: n */
    public void m31747n(ModifyMode modifyMode) {
        if (modifyMode != this.f40465d) {
            this.f40465d = modifyMode;
            this.f40462a.invalidate();
        }
    }

    /* renamed from: o */
    public void m31748o(Matrix matrix, Rect rect, RectF rectF, boolean z, boolean z2) {
        if (z) {
            z2 = true;
        }
        this.f40469h = new Matrix(matrix);
        this.f40468g = rectF;
        this.f40467f = new RectF(rect);
        this.f40470i = z2;
        this.f40472k = z;
        this.f40471j = this.f40468g.width() / this.f40468g.height();
        this.f40466e = m31734a();
        this.f40476o.setARGB(125, 50, 50, 50);
        this.f40477p.setARGB(125, 50, 50, 50);
        this.f40478q.setStrokeWidth(3.0f);
        this.f40478q.setStyle(Paint.Style.STROKE);
        this.f40478q.setAntiAlias(true);
        this.f40465d = ModifyMode.None;
        m31742i();
    }
}
