package com.onegravity.rteditor.media.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes7.dex */
public abstract class ImageViewTouchBase extends AppCompatImageView {

    /* renamed from: w */
    public static final String f40479w = "ImageViewTouchBase";

    /* renamed from: x */
    public static final float f40480x = 1.25f;

    /* renamed from: h */
    public Matrix f40481h;

    /* renamed from: i */
    public Matrix f40482i;

    /* renamed from: j */
    public final Matrix f40483j;

    /* renamed from: k */
    public final float[] f40484k;

    /* renamed from: l */
    public final RotateBitmap f40485l;

    /* renamed from: m */
    public int f40486m;

    /* renamed from: n */
    public int f40487n;

    /* renamed from: o */
    public float f40488o;

    /* renamed from: p */
    public int f40489p;

    /* renamed from: q */
    public int f40490q;

    /* renamed from: r */
    public int f40491r;

    /* renamed from: s */
    public int f40492s;

    /* renamed from: t */
    public Recycler f40493t;

    /* renamed from: u */
    public Handler f40494u;

    /* renamed from: v */
    public Runnable f40495v;

    /* loaded from: classes7.dex */
    public interface Recycler {
        void recycle(Bitmap bitmap);
    }

    /* renamed from: com.onegravity.rteditor.media.crop.ImageViewTouchBase$a */
    /* loaded from: classes7.dex */
    public class RunnableC7070a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ RotateBitmap f40496e;

        /* renamed from: f */
        public final /* synthetic */ boolean f40497f;

        public RunnableC7070a(RotateBitmap rotateBitmap, boolean z) {
            this.f40496e = rotateBitmap;
            this.f40497f = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageViewTouchBase.this.m31761n(this.f40496e, this.f40497f);
        }
    }

    /* renamed from: com.onegravity.rteditor.media.crop.ImageViewTouchBase$b */
    /* loaded from: classes7.dex */
    public class RunnableC7071b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ float f40499e;

        /* renamed from: f */
        public final /* synthetic */ long f40500f;

        /* renamed from: g */
        public final /* synthetic */ float f40501g;

        /* renamed from: h */
        public final /* synthetic */ float f40502h;

        /* renamed from: i */
        public final /* synthetic */ float f40503i;

        /* renamed from: j */
        public final /* synthetic */ float f40504j;

        public RunnableC7071b(float f, long j, float f2, float f3, float f4, float f5) {
            this.f40499e = f;
            this.f40500f = j;
            this.f40501g = f2;
            this.f40502h = f3;
            this.f40503i = f4;
            this.f40504j = f5;
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(this.f40499e, (float) (System.currentTimeMillis() - this.f40500f));
            ImageViewTouchBase.this.mo31729u(this.f40501g + (this.f40502h * min), this.f40503i, this.f40504j);
            if (min < this.f40499e) {
                ImageViewTouchBase.this.f40494u.post(this);
            }
        }
    }

    public ImageViewTouchBase(Context context) {
        super(context);
        this.f40481h = new Matrix();
        this.f40482i = new Matrix();
        this.f40483j = new Matrix();
        this.f40484k = new float[9];
        this.f40485l = new RotateBitmap(null);
        this.f40486m = -1;
        this.f40487n = -1;
        this.f40494u = new Handler();
        this.f40495v = null;
        m31756h();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
    
        if (r0 < r7) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31749a(boolean r7, boolean r8) {
        /*
            r6 = this;
            com.onegravity.rteditor.media.crop.RotateBitmap r0 = r6.f40485l
            android.graphics.Bitmap r0 = r0.getBitmap()
            if (r0 != 0) goto L9
            return
        L9:
            android.graphics.Matrix r0 = r6.m31751c()
            android.graphics.RectF r1 = new android.graphics.RectF
            com.onegravity.rteditor.media.crop.RotateBitmap r2 = r6.f40485l
            android.graphics.Bitmap r2 = r2.getBitmap()
            int r2 = r2.getWidth()
            float r2 = (float) r2
            com.onegravity.rteditor.media.crop.RotateBitmap r3 = r6.f40485l
            android.graphics.Bitmap r3 = r3.getBitmap()
            int r3 = r3.getHeight()
            float r3 = (float) r3
            r4 = 0
            r1.<init>(r4, r4, r2, r3)
            r0.mapRect(r1)
            float r0 = r1.height()
            float r2 = r1.width()
            r3 = 1073741824(0x40000000, float:2.0)
            if (r8 == 0) goto L5d
            int r8 = r6.getHeight()
            float r8 = (float) r8
            int r5 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r5 >= 0) goto L47
            float r8 = r8 - r0
            float r8 = r8 / r3
            float r0 = r1.top
        L45:
            float r8 = r8 - r0
            goto L5e
        L47:
            float r0 = r1.top
            int r5 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r5 <= 0) goto L4f
            float r8 = -r0
            goto L5e
        L4f:
            float r0 = r1.bottom
            int r8 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r8 >= 0) goto L5d
            int r8 = r6.getHeight()
            float r8 = (float) r8
            float r0 = r1.bottom
            goto L45
        L5d:
            r8 = r4
        L5e:
            if (r7 == 0) goto L7f
            int r7 = r6.getWidth()
            float r7 = (float) r7
            int r0 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r0 >= 0) goto L70
            float r7 = r7 - r2
            float r7 = r7 / r3
            float r0 = r1.left
        L6d:
            float r4 = r7 - r0
            goto L7f
        L70:
            float r0 = r1.left
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 <= 0) goto L78
            float r4 = -r0
            goto L7f
        L78:
            float r0 = r1.right
            int r1 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r1 >= 0) goto L7f
            goto L6d
        L7f:
            r6.mo31726k(r4, r8)
            android.graphics.Matrix r7 = r6.m31751c()
            r6.setImageMatrix(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onegravity.rteditor.media.crop.ImageViewTouchBase.m31749a(boolean, boolean):void");
    }

    /* renamed from: b */
    public void m31750b() {
        m31760m(null, true);
    }

    /* renamed from: c */
    public Matrix m31751c() {
        this.f40483j.set(this.f40481h);
        this.f40483j.postConcat(this.f40482i);
        return this.f40483j;
    }

    /* renamed from: d */
    public final void m31752d(RotateBitmap rotateBitmap, Matrix matrix) {
        float width = getWidth();
        float height = getHeight();
        float width2 = rotateBitmap.getWidth();
        float height2 = rotateBitmap.getHeight();
        matrix.reset();
        float min = Math.min(Math.min(width / width2, 2.0f), Math.min(height / height2, 2.0f));
        matrix.postConcat(rotateBitmap.getRotateMatrix());
        matrix.postScale(min, min);
        matrix.postTranslate((width - (width2 * min)) / 2.0f, (height - (height2 * min)) / 2.0f);
    }

    /* renamed from: e */
    public float m31753e() {
        return m31754f(this.f40482i);
    }

    /* renamed from: f */
    public float m31754f(Matrix matrix) {
        return m31755g(matrix, 0);
    }

    /* renamed from: g */
    public float m31755g(Matrix matrix, int i) {
        matrix.getValues(this.f40484k);
        return this.f40484k[i];
    }

    /* renamed from: h */
    public final void m31756h() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* renamed from: i */
    public float m31757i() {
        if (this.f40485l.getBitmap() == null) {
            return 1.0f;
        }
        return Math.max(this.f40485l.getWidth() / this.f40486m, this.f40485l.getHeight() / this.f40487n) * 4.0f;
    }

    /* renamed from: j */
    public void m31758j(float f, float f2) {
        mo31726k(f, f2);
        setImageMatrix(m31751c());
    }

    /* renamed from: k */
    public void mo31726k(float f, float f2) {
        this.f40482i.postTranslate(f, f2);
    }

    /* renamed from: l */
    public final void m31759l(Bitmap bitmap, int i) {
        Recycler recycler;
        super.setImageBitmap(bitmap);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.setDither(true);
        }
        Bitmap bitmap2 = this.f40485l.getBitmap();
        this.f40485l.setBitmap(bitmap);
        this.f40485l.setRotation(i);
        if (bitmap2 == null || bitmap2 == bitmap || (recycler = this.f40493t) == null) {
            return;
        }
        recycler.recycle(bitmap2);
    }

    /* renamed from: m */
    public void m31760m(Bitmap bitmap, boolean z) {
        m31761n(new RotateBitmap(bitmap), z);
    }

    /* renamed from: n */
    public void m31761n(RotateBitmap rotateBitmap, boolean z) {
        if (getWidth() <= 0) {
            this.f40495v = new RunnableC7070a(rotateBitmap, z);
            return;
        }
        if (rotateBitmap.getBitmap() != null) {
            m31752d(rotateBitmap, this.f40481h);
            m31759l(rotateBitmap.getBitmap(), rotateBitmap.getRotation());
        } else {
            this.f40481h.reset();
            setImageBitmap(null);
        }
        if (z) {
            this.f40482i.reset();
        }
        setImageMatrix(m31751c());
        this.f40488o = m31757i();
    }

    /* renamed from: o */
    public void m31762o(Recycler recycler) {
        this.f40493t = recycler;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || m31753e() <= 1.0f) {
            return super.onKeyDown(i, keyEvent);
        }
        m31765t(1.0f);
        return true;
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f40489p = i;
        this.f40490q = i3;
        this.f40491r = i2;
        this.f40492s = i4;
        this.f40486m = i3 - i;
        this.f40487n = i4 - i2;
        Runnable runnable = this.f40495v;
        if (runnable != null) {
            this.f40495v = null;
            runnable.run();
        }
        if (this.f40485l.getBitmap() != null) {
            m31752d(this.f40485l, this.f40481h);
            setImageMatrix(m31751c());
        }
    }

    /* renamed from: p */
    public void mo31727p() {
        m31763q(1.25f);
    }

    /* renamed from: q */
    public void m31763q(float f) {
        if (m31753e() < this.f40488o && this.f40485l.getBitmap() != null) {
            this.f40482i.postScale(f, f, getWidth() / 2.0f, getHeight() / 2.0f);
            setImageMatrix(m31751c());
        }
    }

    /* renamed from: r */
    public void mo31728r() {
        m31764s(1.25f);
    }

    /* renamed from: s */
    public void m31764s(float f) {
        if (this.f40485l.getBitmap() == null) {
            return;
        }
        float width = getWidth() / 2.0f;
        float height = getHeight() / 2.0f;
        Matrix matrix = new Matrix(this.f40482i);
        float f2 = 1.0f / f;
        matrix.postScale(f2, f2, width, height);
        if (m31754f(matrix) < 1.0f) {
            this.f40482i.setScale(1.0f, 1.0f, width, height);
        } else {
            this.f40482i.postScale(f2, f2, width, height);
        }
        setImageMatrix(m31751c());
        m31749a(true, true);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        m31759l(bitmap, 0);
    }

    /* renamed from: t */
    public void m31765t(float f) {
        mo31729u(f, getWidth() / 2.0f, getHeight() / 2.0f);
    }

    /* renamed from: u */
    public void mo31729u(float f, float f2, float f3) {
        float f4 = this.f40488o;
        if (f > f4) {
            f = f4;
        }
        float m31753e = f / m31753e();
        this.f40482i.postScale(m31753e, m31753e, f2, f3);
        setImageMatrix(m31751c());
        m31749a(true, true);
    }

    /* renamed from: v */
    public void m31766v(float f, float f2, float f3, float f4) {
        float m31753e = (f - m31753e()) / f4;
        float m31753e2 = m31753e();
        this.f40494u.post(new RunnableC7071b(f4, System.currentTimeMillis(), m31753e2, m31753e, f2, f3));
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f40481h = new Matrix();
        this.f40482i = new Matrix();
        this.f40483j = new Matrix();
        this.f40484k = new float[9];
        this.f40485l = new RotateBitmap(null);
        this.f40486m = -1;
        this.f40487n = -1;
        this.f40494u = new Handler();
        this.f40495v = null;
        m31756h();
    }
}
