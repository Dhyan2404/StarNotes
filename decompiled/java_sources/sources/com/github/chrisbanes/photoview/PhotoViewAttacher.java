package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.core.view.MotionEventCompat;
import com.sunia.HTREnginev2.ezn;
import com.sunia.HTREnginev2.ggk;
import com.sunia.HTREnginev2.koe;
import com.sunia.HTREnginev2.x5e;

/* loaded from: classes4.dex */
public class PhotoViewAttacher implements View.OnTouchListener, ggk, View.OnLayoutChangeListener {

    /* renamed from: A0 */
    public static int f21388A0 = 1;

    /* renamed from: q0 */
    public static float f21389q0 = 3.0f;

    /* renamed from: t0 */
    public static float f21390t0 = 1.75f;

    /* renamed from: u0 */
    public static float f21391u0 = 1.0f;

    /* renamed from: v0 */
    public static int f21392v0 = 200;

    /* renamed from: w0 */
    public static final int f21393w0 = -1;

    /* renamed from: x0 */
    public static final int f21394x0 = 0;

    /* renamed from: y0 */
    public static final int f21395y0 = 1;

    /* renamed from: z0 */
    public static final int f21396z0 = 2;

    /* renamed from: J */
    public RunnableC4582e f21397J;

    /* renamed from: Q */
    public float f21399Q;

    /* renamed from: l */
    public ImageView f21409l;

    /* renamed from: m */
    public GestureDetector f21410m;

    /* renamed from: n */
    public koe f21411n;

    /* renamed from: t */
    public OnMatrixChangedListener f21417t;

    /* renamed from: u */
    public OnPhotoTapListener f21418u;

    /* renamed from: v */
    public OnOutsidePhotoTapListener f21419v;

    /* renamed from: w */
    public View.OnClickListener f21420w;

    /* renamed from: x */
    public View.OnLongClickListener f21421x;

    /* renamed from: y */
    public OnScaleChangedListener f21422y;

    /* renamed from: z */
    public OnSingleFlingListener f21423z;

    /* renamed from: e */
    public Interpolator f21401e = new AccelerateDecelerateInterpolator();

    /* renamed from: f */
    public int f21402f = f21392v0;

    /* renamed from: g */
    public float f21403g = f21391u0;

    /* renamed from: h */
    public float f21404h = f21390t0;

    /* renamed from: i */
    public float f21405i = f21389q0;

    /* renamed from: j */
    public boolean f21406j = true;

    /* renamed from: k */
    public boolean f21407k = false;

    /* renamed from: o */
    public final Matrix f21412o = new Matrix();

    /* renamed from: p */
    public final Matrix f21413p = new Matrix();

    /* renamed from: q */
    public final Matrix f21414q = new Matrix();

    /* renamed from: r */
    public final RectF f21415r = new RectF();

    /* renamed from: s */
    public final float[] f21416s = new float[9];

    /* renamed from: O */
    public int f21398O = 2;

    /* renamed from: Z */
    public boolean f21400Z = true;

    /* renamed from: k0 */
    public ImageView.ScaleType f21408k0 = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: com.github.chrisbanes.photoview.PhotoViewAttacher$a */
    /* loaded from: classes4.dex */
    public class C4578a extends GestureDetector.SimpleOnGestureListener {
        public C4578a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (PhotoViewAttacher.this.f21423z == null || PhotoViewAttacher.this.getScale() > PhotoViewAttacher.f21391u0 || MotionEventCompat.getPointerCount(motionEvent) > PhotoViewAttacher.f21388A0 || MotionEventCompat.getPointerCount(motionEvent2) > PhotoViewAttacher.f21388A0) {
                return false;
            }
            return PhotoViewAttacher.this.f21423z.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (PhotoViewAttacher.this.f21421x != null) {
                PhotoViewAttacher.this.f21421x.onLongClick(PhotoViewAttacher.this.f21409l);
            }
        }
    }

    /* renamed from: com.github.chrisbanes.photoview.PhotoViewAttacher$b */
    /* loaded from: classes4.dex */
    public class GestureDetectorOnDoubleTapListenerC4579b implements GestureDetector.OnDoubleTapListener {
        public GestureDetectorOnDoubleTapListenerC4579b() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float scale = PhotoViewAttacher.this.getScale();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (scale < PhotoViewAttacher.this.getMediumScale()) {
                    PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
                    photoViewAttacher.setScale(photoViewAttacher.getMediumScale(), x, y, true);
                } else if (scale < PhotoViewAttacher.this.getMediumScale() || scale >= PhotoViewAttacher.this.getMaximumScale()) {
                    PhotoViewAttacher photoViewAttacher2 = PhotoViewAttacher.this;
                    photoViewAttacher2.setScale(photoViewAttacher2.getMinimumScale(), x, y, true);
                } else {
                    PhotoViewAttacher photoViewAttacher3 = PhotoViewAttacher.this;
                    photoViewAttacher3.setScale(photoViewAttacher3.getMaximumScale(), x, y, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (PhotoViewAttacher.this.f21420w != null) {
                PhotoViewAttacher.this.f21420w.onClick(PhotoViewAttacher.this.f21409l);
            }
            RectF displayRect = PhotoViewAttacher.this.getDisplayRect();
            if (displayRect == null) {
                return false;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (!displayRect.contains(x, y)) {
                if (PhotoViewAttacher.this.f21419v == null) {
                    return false;
                }
                PhotoViewAttacher.this.f21419v.onOutsidePhotoTap(PhotoViewAttacher.this.f21409l);
                return false;
            }
            float width = (x - displayRect.left) / displayRect.width();
            float height = (y - displayRect.top) / displayRect.height();
            if (PhotoViewAttacher.this.f21418u == null) {
                return true;
            }
            PhotoViewAttacher.this.f21418u.onPhotoTap(PhotoViewAttacher.this.f21409l, width, height);
            return true;
        }
    }

    /* renamed from: com.github.chrisbanes.photoview.PhotoViewAttacher$c */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4580c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21426a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f21426a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21426a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21426a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21426a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.github.chrisbanes.photoview.PhotoViewAttacher$d */
    /* loaded from: classes4.dex */
    public class RunnableC4581d implements Runnable {

        /* renamed from: e */
        public final float f21427e;

        /* renamed from: f */
        public final float f21428f;

        /* renamed from: g */
        public final long f21429g = System.currentTimeMillis();

        /* renamed from: h */
        public final float f21430h;

        /* renamed from: i */
        public final float f21431i;

        public RunnableC4581d(float f, float f2, float f3, float f4) {
            this.f21427e = f3;
            this.f21428f = f4;
            this.f21430h = f;
            this.f21431i = f2;
        }

        /* renamed from: a */
        public final float m17350a() {
            return PhotoViewAttacher.this.f21401e.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f21429g)) * 1.0f) / PhotoViewAttacher.this.f21402f));
        }

        @Override // java.lang.Runnable
        public void run() {
            float m17350a = m17350a();
            float f = this.f21430h;
            PhotoViewAttacher.this.onScale((f + ((this.f21431i - f) * m17350a)) / PhotoViewAttacher.this.getScale(), this.f21427e, this.f21428f);
            if (m17350a < 1.0f) {
                x5e.m58157a(PhotoViewAttacher.this.f21409l, this);
            }
        }
    }

    /* renamed from: com.github.chrisbanes.photoview.PhotoViewAttacher$e */
    /* loaded from: classes4.dex */
    public class RunnableC4582e implements Runnable {

        /* renamed from: e */
        public final OverScroller f21433e;

        /* renamed from: f */
        public int f21434f;

        /* renamed from: g */
        public int f21435g;

        public RunnableC4582e(Context context) {
            this.f21433e = new OverScroller(context);
        }

        /* renamed from: a */
        public void m17351a() {
            this.f21433e.forceFinished(true);
        }

        /* renamed from: b */
        public void m17352b(int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            int i7;
            int i8;
            RectF displayRect = PhotoViewAttacher.this.getDisplayRect();
            if (displayRect == null) {
                return;
            }
            int round = Math.round(-displayRect.left);
            float f = i;
            if (f < displayRect.width()) {
                i6 = Math.round(displayRect.width() - f);
                i5 = 0;
            } else {
                i5 = round;
                i6 = i5;
            }
            int round2 = Math.round(-displayRect.top);
            float f2 = i2;
            if (f2 < displayRect.height()) {
                i8 = Math.round(displayRect.height() - f2);
                i7 = 0;
            } else {
                i7 = round2;
                i8 = i7;
            }
            this.f21434f = round;
            this.f21435g = round2;
            if (round == i6 && round2 == i8) {
                return;
            }
            this.f21433e.fling(round, round2, i3, i4, i5, i6, i7, i8, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f21433e.isFinished() && this.f21433e.computeScrollOffset()) {
                int currX = this.f21433e.getCurrX();
                int currY = this.f21433e.getCurrY();
                PhotoViewAttacher.this.f21414q.postTranslate(this.f21434f - currX, this.f21435g - currY);
                PhotoViewAttacher photoViewAttacher = PhotoViewAttacher.this;
                photoViewAttacher.m17348w(photoViewAttacher.m17343r());
                this.f21434f = currX;
                this.f21435g = currY;
                x5e.m58157a(PhotoViewAttacher.this.f21409l, this);
            }
        }
    }

    public PhotoViewAttacher(ImageView imageView) {
        this.f21409l = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f21399Q = 0.0f;
        this.f21411n = new koe(imageView.getContext(), this);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new C4578a());
        this.f21410m = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new GestureDetectorOnDoubleTapListenerC4579b());
    }

    public void getDisplayMatrix(Matrix matrix) {
        matrix.set(m17343r());
    }

    public RectF getDisplayRect() {
        m17341p();
        return m17342q(m17343r());
    }

    public Matrix getImageMatrix() {
        return this.f21413p;
    }

    public float getMaximumScale() {
        return this.f21405i;
    }

    public float getMediumScale() {
        return this.f21404h;
    }

    public float getMinimumScale() {
        return this.f21403g;
    }

    public float getScale() {
        return (float) Math.sqrt(((float) Math.pow(m17346u(this.f21414q, 0), 2.0d)) + ((float) Math.pow(m17346u(this.f21414q, 3), 2.0d)));
    }

    public ImageView.ScaleType getScaleType() {
        return this.f21408k0;
    }

    public void getSuppMatrix(Matrix matrix) {
        matrix.set(this.f21414q);
    }

    public boolean isZoomEnabled() {
        return this.f21400Z;
    }

    /* renamed from: n */
    public final void m17339n() {
        RunnableC4582e runnableC4582e = this.f21397J;
        if (runnableC4582e != null) {
            runnableC4582e.m17351a();
            this.f21397J = null;
        }
    }

    /* renamed from: o */
    public final void m17340o() {
        if (m17341p()) {
            m17348w(m17343r());
        }
    }

    @Override // com.sunia.HTREnginev2.ggk
    public void onDrag(float f, float f2) {
        if (this.f21411n.m55285e()) {
            return;
        }
        this.f21414q.postTranslate(f, f2);
        m17340o();
        ViewParent parent = this.f21409l.getParent();
        if (!this.f21406j || this.f21411n.m55285e() || this.f21407k) {
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
                return;
            }
            return;
        }
        int i = this.f21398O;
        if ((i == 2 || ((i == 0 && f >= 1.0f) || (i == 1 && f <= -1.0f))) && parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    @Override // com.sunia.HTREnginev2.ggk
    public void onFling(float f, float f2, float f3, float f4) {
        RunnableC4582e runnableC4582e = new RunnableC4582e(this.f21409l.getContext());
        this.f21397J = runnableC4582e;
        runnableC4582e.m17352b(m17345t(this.f21409l), m17344s(this.f21409l), (int) f3, (int) f4);
        this.f21409l.post(this.f21397J);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        m17349x(this.f21409l.getDrawable());
    }

    @Override // com.sunia.HTREnginev2.ggk
    public void onScale(float f, float f2, float f3) {
        if (getScale() < this.f21405i || f < 1.0f) {
            if (getScale() > this.f21403g || f > 1.0f) {
                OnScaleChangedListener onScaleChangedListener = this.f21422y;
                if (onScaleChangedListener != null) {
                    onScaleChangedListener.onScaleChange(f, f2, f3);
                }
                this.f21414q.postScale(f, f, f2, f3);
                m17340o();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0089  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            boolean r0 = r10.f21400Z
            r1 = 0
            if (r0 == 0) goto L95
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            boolean r0 = com.sunia.HTREnginev2.ezn.m54051c(r0)
            if (r0 == 0) goto L95
            int r0 = r12.getAction()
            r2 = 1
            if (r0 == 0) goto L45
            if (r0 == r2) goto L1b
            r3 = 3
            if (r0 == r3) goto L1b
            goto L51
        L1b:
            float r0 = r10.getScale()
            float r3 = r10.f21403g
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L51
            android.graphics.RectF r0 = r10.getDisplayRect()
            if (r0 == 0) goto L51
            com.github.chrisbanes.photoview.PhotoViewAttacher$d r9 = new com.github.chrisbanes.photoview.PhotoViewAttacher$d
            float r5 = r10.getScale()
            float r6 = r10.f21403g
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            r11 = r2
            goto L52
        L45:
            android.view.ViewParent r11 = r11.getParent()
            if (r11 == 0) goto L4e
            r11.requestDisallowInterceptTouchEvent(r2)
        L4e:
            r10.m17339n()
        L51:
            r11 = r1
        L52:
            com.sunia.HTREnginev2.koe r0 = r10.f21411n
            if (r0 == 0) goto L89
            boolean r11 = r0.m55285e()
            com.sunia.HTREnginev2.koe r0 = r10.f21411n
            boolean r0 = r0.m55284d()
            com.sunia.HTREnginev2.koe r3 = r10.f21411n
            boolean r3 = r3.m55286f(r12)
            if (r11 != 0) goto L72
            com.sunia.HTREnginev2.koe r11 = r10.f21411n
            boolean r11 = r11.m55285e()
            if (r11 != 0) goto L72
            r11 = r2
            goto L73
        L72:
            r11 = r1
        L73:
            if (r0 != 0) goto L7f
            com.sunia.HTREnginev2.koe r0 = r10.f21411n
            boolean r0 = r0.m55284d()
            if (r0 != 0) goto L7f
            r0 = r2
            goto L80
        L7f:
            r0 = r1
        L80:
            if (r11 == 0) goto L85
            if (r0 == 0) goto L85
            r1 = r2
        L85:
            r10.f21407k = r1
            r1 = r3
            goto L8a
        L89:
            r1 = r11
        L8a:
            android.view.GestureDetector r10 = r10.f21410m
            if (r10 == 0) goto L95
            boolean r10 = r10.onTouchEvent(r12)
            if (r10 == 0) goto L95
            r1 = r2
        L95:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.chrisbanes.photoview.PhotoViewAttacher.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final boolean m17341p() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF m17342q = m17342q(m17343r());
        if (m17342q == null) {
            return false;
        }
        float height = m17342q.height();
        float width = m17342q.width();
        float m17344s = m17344s(this.f21409l);
        float f6 = 0.0f;
        if (height <= m17344s) {
            int i = C4580c.f21426a[this.f21408k0.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    m17344s = (m17344s - height) / 2.0f;
                    f2 = m17342q.top;
                } else {
                    m17344s -= height;
                    f2 = m17342q.top;
                }
                f3 = m17344s - f2;
            } else {
                f = m17342q.top;
                f3 = -f;
            }
        } else {
            f = m17342q.top;
            if (f <= 0.0f) {
                f2 = m17342q.bottom;
                if (f2 >= m17344s) {
                    f3 = 0.0f;
                }
                f3 = m17344s - f2;
            }
            f3 = -f;
        }
        float m17345t = m17345t(this.f21409l);
        if (width <= m17345t) {
            int i2 = C4580c.f21426a[this.f21408k0.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f4 = (m17345t - width) / 2.0f;
                    f5 = m17342q.left;
                } else {
                    f4 = m17345t - width;
                    f5 = m17342q.left;
                }
                f6 = f4 - f5;
            } else {
                f6 = -m17342q.left;
            }
            this.f21398O = 2;
        } else {
            float f7 = m17342q.left;
            if (f7 > 0.0f) {
                this.f21398O = 0;
                f6 = -f7;
            } else {
                float f8 = m17342q.right;
                if (f8 < m17345t) {
                    f6 = m17345t - f8;
                    this.f21398O = 1;
                } else {
                    this.f21398O = -1;
                }
            }
        }
        this.f21414q.postTranslate(f6, f3);
        return true;
    }

    /* renamed from: q */
    public final RectF m17342q(Matrix matrix) {
        if (this.f21409l.getDrawable() == null) {
            return null;
        }
        this.f21415r.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        matrix.mapRect(this.f21415r);
        return this.f21415r;
    }

    /* renamed from: r */
    public final Matrix m17343r() {
        this.f21413p.set(this.f21412o);
        this.f21413p.postConcat(this.f21414q);
        return this.f21413p;
    }

    /* renamed from: s */
    public final int m17344s(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f21406j = z;
    }

    public void setBaseRotation(float f) {
        this.f21399Q = f % 360.0f;
        update();
        setRotationBy(this.f21399Q);
        m17340o();
    }

    public boolean setDisplayMatrix(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        if (this.f21409l.getDrawable() == null) {
            return false;
        }
        this.f21414q.set(matrix);
        m17348w(m17343r());
        m17341p();
        return true;
    }

    public void setMaximumScale(float f) {
        ezn.m54049a(this.f21403g, this.f21404h, f);
        this.f21405i = f;
    }

    public void setMediumScale(float f) {
        ezn.m54049a(this.f21403g, f, this.f21405i);
        this.f21404h = f;
    }

    public void setMinimumScale(float f) {
        ezn.m54049a(f, this.f21404h, this.f21405i);
        this.f21403g = f;
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f21420w = onClickListener;
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f21410m.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f21421x = onLongClickListener;
    }

    public void setOnMatrixChangeListener(OnMatrixChangedListener onMatrixChangedListener) {
        this.f21417t = onMatrixChangedListener;
    }

    public void setOnOutsidePhotoTapListener(OnOutsidePhotoTapListener onOutsidePhotoTapListener) {
        this.f21419v = onOutsidePhotoTapListener;
    }

    public void setOnPhotoTapListener(OnPhotoTapListener onPhotoTapListener) {
        this.f21418u = onPhotoTapListener;
    }

    public void setOnScaleChangeListener(OnScaleChangedListener onScaleChangedListener) {
        this.f21422y = onScaleChangedListener;
    }

    public void setOnSingleFlingListener(OnSingleFlingListener onSingleFlingListener) {
        this.f21423z = onSingleFlingListener;
    }

    public void setRotationBy(float f) {
        this.f21414q.postRotate(f % 360.0f);
        m17340o();
    }

    public void setRotationTo(float f) {
        this.f21414q.setRotate(f % 360.0f);
        m17340o();
    }

    public void setScale(float f) {
        setScale(f, false);
    }

    public void setScaleLevels(float f, float f2, float f3) {
        ezn.m54049a(f, f2, f3);
        this.f21403g = f;
        this.f21404h = f2;
        this.f21405i = f3;
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!ezn.m54052d(scaleType) || scaleType == this.f21408k0) {
            return;
        }
        this.f21408k0 = scaleType;
        update();
    }

    public void setZoomInterpolator(Interpolator interpolator) {
        this.f21401e = interpolator;
    }

    public void setZoomTransitionDuration(int i) {
        this.f21402f = i;
    }

    public void setZoomable(boolean z) {
        this.f21400Z = z;
        update();
    }

    /* renamed from: t */
    public final int m17345t(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* renamed from: u */
    public final float m17346u(Matrix matrix, int i) {
        matrix.getValues(this.f21416s);
        return this.f21416s[i];
    }

    public void update() {
        if (this.f21400Z) {
            m17349x(this.f21409l.getDrawable());
        } else {
            m17347v();
        }
    }

    /* renamed from: v */
    public final void m17347v() {
        this.f21414q.reset();
        setRotationBy(this.f21399Q);
        m17348w(m17343r());
        m17341p();
    }

    /* renamed from: w */
    public final void m17348w(Matrix matrix) {
        RectF m17342q;
        this.f21409l.setImageMatrix(matrix);
        if (this.f21417t == null || (m17342q = m17342q(matrix)) == null) {
            return;
        }
        this.f21417t.onMatrixChanged(m17342q);
    }

    /* renamed from: x */
    public final void m17349x(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float m17345t = m17345t(this.f21409l);
        float m17344s = m17344s(this.f21409l);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f21412o.reset();
        float f = intrinsicWidth;
        float f2 = m17345t / f;
        float f3 = intrinsicHeight;
        float f4 = m17344s / f3;
        ImageView.ScaleType scaleType = this.f21408k0;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f21412o.postTranslate((m17345t - f) / 2.0f, (m17344s - f3) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f2, f4);
            this.f21412o.postScale(max, max);
            this.f21412o.postTranslate((m17345t - (f * max)) / 2.0f, (m17344s - (f3 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f2, f4));
            this.f21412o.postScale(min, min);
            this.f21412o.postTranslate((m17345t - (f * min)) / 2.0f, (m17344s - (f3 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f, f3);
            RectF rectF2 = new RectF(0.0f, 0.0f, m17345t, m17344s);
            if (((int) this.f21399Q) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f3, f);
            }
            int i = C4580c.f21426a[this.f21408k0.ordinal()];
            if (i == 1) {
                this.f21412o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i == 2) {
                this.f21412o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i == 3) {
                this.f21412o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i == 4) {
                this.f21412o.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        m17347v();
    }

    public void setScale(float f, boolean z) {
        setScale(f, this.f21409l.getRight() / 2, this.f21409l.getBottom() / 2, z);
    }

    public void setScale(float f, float f2, float f3, boolean z) {
        if (f < this.f21403g || f > this.f21405i) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z) {
            this.f21409l.post(new RunnableC4581d(getScale(), f, f2, f3));
        } else {
            this.f21414q.setScale(f, f, f2, f3);
            m17340o();
        }
    }
}
