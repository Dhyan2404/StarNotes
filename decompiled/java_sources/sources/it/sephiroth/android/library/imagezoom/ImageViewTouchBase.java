package it.sephiroth.android.library.imagezoom;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import it.sephiroth.android.library.easing.Cubic;
import it.sephiroth.android.library.easing.Easing;
import it.sephiroth.android.library.imagezoom.graphics.FastBitmapDrawable;
import it.sephiroth.android.library.imagezoom.utils.IDisposable;

/* loaded from: classes4.dex */
public abstract class ImageViewTouchBase extends ImageView implements IDisposable {
    protected static final boolean LOG_ENABLED = false;
    public static final String LOG_TAG = "ImageViewTouchBase";
    public static final String VERSION = "1.0.4";
    public static final float ZOOM_INVALID = -1.0f;
    protected final int DEFAULT_ANIMATION_DURATION;

    /* renamed from: e */
    public float f97688e;

    /* renamed from: f */
    public float f97689f;

    /* renamed from: g */
    public boolean f97690g;

    /* renamed from: h */
    public boolean f97691h;

    /* renamed from: i */
    public int f97692i;

    /* renamed from: j */
    public int f97693j;

    /* renamed from: k */
    public PointF f97694k;

    /* renamed from: l */
    public boolean f97695l;

    /* renamed from: m */
    public boolean f97696m;
    protected Matrix mBaseMatrix;
    protected RectF mBitmapRect;
    protected RectF mCenterRect;
    protected final Matrix mDisplayMatrix;
    protected Easing mEasing;
    protected Handler mHandler;
    protected Runnable mLayoutRunnable;
    protected final float[] mMatrixValues;
    protected Matrix mNextMatrix;
    protected DisplayType mScaleType;
    protected RectF mScrollRect;
    protected Matrix mSuppMatrix;
    protected boolean mUserScaled;

    /* renamed from: n */
    public OnDrawableChangeListener f97697n;

    /* renamed from: o */
    public OnLayoutChangeListener f97698o;

    /* loaded from: classes4.dex */
    public enum DisplayType {
        NONE,
        FIT_TO_SCREEN,
        FIT_IF_BIGGER
    }

    /* loaded from: classes4.dex */
    public interface OnDrawableChangeListener {
        void onDrawableChanged(Drawable drawable);
    }

    /* loaded from: classes4.dex */
    public interface OnLayoutChangeListener {
        void onLayoutChanged(boolean z, int i, int i2, int i3, int i4);
    }

    /* renamed from: it.sephiroth.android.library.imagezoom.ImageViewTouchBase$a */
    /* loaded from: classes4.dex */
    public class RunnableC17652a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Drawable f97699e;

        /* renamed from: f */
        public final /* synthetic */ Matrix f97700f;

        /* renamed from: g */
        public final /* synthetic */ float f97701g;

        /* renamed from: h */
        public final /* synthetic */ float f97702h;

        public RunnableC17652a(Drawable drawable, Matrix matrix, float f, float f2) {
            this.f97699e = drawable;
            this.f97700f = matrix;
            this.f97701g = f;
            this.f97702h = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageViewTouchBase.this.setImageDrawable(this.f97699e, this.f97700f, this.f97701g, this.f97702h);
        }
    }

    /* renamed from: it.sephiroth.android.library.imagezoom.ImageViewTouchBase$b */
    /* loaded from: classes4.dex */
    public class RunnableC17653b implements Runnable {

        /* renamed from: e */
        public double f97704e = 0.0d;

        /* renamed from: f */
        public double f97705f = 0.0d;

        /* renamed from: g */
        public final /* synthetic */ double f97706g;

        /* renamed from: h */
        public final /* synthetic */ long f97707h;

        /* renamed from: i */
        public final /* synthetic */ double f97708i;

        /* renamed from: j */
        public final /* synthetic */ double f97709j;

        public RunnableC17653b(double d, long j, double d2, double d3) {
            this.f97706g = d;
            this.f97707h = j;
            this.f97708i = d2;
            this.f97709j = d3;
        }

        @Override // java.lang.Runnable
        public void run() {
            double min = Math.min(this.f97706g, System.currentTimeMillis() - this.f97707h);
            double easeOut = ImageViewTouchBase.this.mEasing.easeOut(min, 0.0d, this.f97708i, this.f97706g);
            double easeOut2 = ImageViewTouchBase.this.mEasing.easeOut(min, 0.0d, this.f97709j, this.f97706g);
            ImageViewTouchBase.this.panBy(easeOut - this.f97704e, easeOut2 - this.f97705f);
            this.f97704e = easeOut;
            this.f97705f = easeOut2;
            if (min < this.f97706g) {
                ImageViewTouchBase.this.mHandler.post(this);
                return;
            }
            ImageViewTouchBase imageViewTouchBase = ImageViewTouchBase.this;
            RectF center = imageViewTouchBase.getCenter(imageViewTouchBase.mSuppMatrix, true, true);
            float f = center.left;
            if (f == 0.0f && center.top == 0.0f) {
                return;
            }
            ImageViewTouchBase.this.scrollBy(f, center.top);
        }
    }

    /* renamed from: it.sephiroth.android.library.imagezoom.ImageViewTouchBase$c */
    /* loaded from: classes4.dex */
    public class RunnableC17654c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ float f97711e;

        /* renamed from: f */
        public final /* synthetic */ long f97712f;

        /* renamed from: g */
        public final /* synthetic */ float f97713g;

        /* renamed from: h */
        public final /* synthetic */ float f97714h;

        /* renamed from: i */
        public final /* synthetic */ float f97715i;

        /* renamed from: j */
        public final /* synthetic */ float f97716j;

        public RunnableC17654c(float f, long j, float f2, float f3, float f4, float f5) {
            this.f97711e = f;
            this.f97712f = j;
            this.f97713g = f2;
            this.f97714h = f3;
            this.f97715i = f4;
            this.f97716j = f5;
        }

        @Override // java.lang.Runnable
        public void run() {
            float min = Math.min(this.f97711e, (float) (System.currentTimeMillis() - this.f97712f));
            ImageViewTouchBase.this.zoomTo(this.f97714h + ((float) ImageViewTouchBase.this.mEasing.easeInOut(min, 0.0d, this.f97713g, this.f97711e)), this.f97715i, this.f97716j);
            if (min < this.f97711e) {
                ImageViewTouchBase.this.mHandler.post(this);
                return;
            }
            ImageViewTouchBase imageViewTouchBase = ImageViewTouchBase.this;
            imageViewTouchBase.onZoomAnimationCompleted(imageViewTouchBase.getScale());
            ImageViewTouchBase.this.center(true, true);
        }
    }

    public ImageViewTouchBase(Context context) {
        this(context, null);
    }

    public void _setImageDrawable(Drawable drawable, Matrix matrix, float f, float f2) {
        if (drawable != null) {
            super.setImageDrawable(drawable);
        } else {
            this.mBaseMatrix.reset();
            super.setImageDrawable(null);
        }
        if (f == -1.0f || f2 == -1.0f) {
            this.f97689f = -1.0f;
            this.f97688e = -1.0f;
            this.f97691h = false;
            this.f97690g = false;
        } else {
            float min = Math.min(f, f2);
            float max = Math.max(min, f2);
            this.f97689f = min;
            this.f97688e = max;
            this.f97691h = true;
            this.f97690g = true;
            DisplayType displayType = this.mScaleType;
            if (displayType == DisplayType.FIT_TO_SCREEN || displayType == DisplayType.FIT_IF_BIGGER) {
                if (min >= 1.0f) {
                    this.f97691h = false;
                    this.f97689f = -1.0f;
                }
                if (max <= 1.0f) {
                    this.f97690g = true;
                    this.f97688e = -1.0f;
                }
            }
        }
        if (matrix != null) {
            this.mNextMatrix = new Matrix(matrix);
        }
        this.f97696m = true;
        requestLayout();
    }

    public void center(boolean z, boolean z2) {
        if (getDrawable() == null) {
            return;
        }
        RectF center = getCenter(this.mSuppMatrix, z, z2);
        float f = center.left;
        if (f == 0.0f && center.top == 0.0f) {
            return;
        }
        postTranslate(f, center.top);
    }

    public void clear() {
        setImageBitmap(null);
    }

    public float computeMaxZoom() {
        if (getDrawable() == null) {
            return 1.0f;
        }
        return Math.max(r0.getIntrinsicWidth() / this.f97692i, r0.getIntrinsicHeight() / this.f97693j) * 8.0f;
    }

    public float computeMinZoom() {
        if (getDrawable() == null) {
            return 1.0f;
        }
        return Math.min(1.0f, 1.0f / getScale(this.mBaseMatrix));
    }

    @Override // it.sephiroth.android.library.imagezoom.utils.IDisposable
    public void dispose() {
        clear();
    }

    public void fireOnDrawableChangeListener(Drawable drawable) {
        OnDrawableChangeListener onDrawableChangeListener = this.f97697n;
        if (onDrawableChangeListener != null) {
            onDrawableChangeListener.onDrawableChanged(drawable);
        }
    }

    public void fireOnLayoutChangeListener(int i, int i2, int i3, int i4) {
        OnLayoutChangeListener onLayoutChangeListener = this.f97698o;
        if (onLayoutChangeListener != null) {
            onLayoutChangeListener.onLayoutChanged(true, i, i2, i3, i4);
        }
    }

    public float getBaseScale() {
        return getScale(this.mBaseMatrix);
    }

    public RectF getBitmapRect() {
        return getBitmapRect(this.mSuppMatrix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
    
        if (r7 < r8) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.RectF getCenter(android.graphics.Matrix r7, boolean r8, boolean r9) {
        /*
            r6 = this;
            android.graphics.drawable.Drawable r0 = r6.getDrawable()
            r1 = 0
            if (r0 != 0) goto Ld
            android.graphics.RectF r6 = new android.graphics.RectF
            r6.<init>(r1, r1, r1, r1)
            return r6
        Ld:
            android.graphics.RectF r0 = r6.mCenterRect
            r0.set(r1, r1, r1, r1)
            android.graphics.RectF r7 = r6.getBitmapRect(r7)
            float r0 = r7.height()
            float r2 = r7.width()
            r3 = 1073741824(0x40000000, float:2.0)
            if (r9 == 0) goto L41
            int r9 = r6.f97693j
            float r4 = (float) r9
            int r5 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r5 >= 0) goto L2f
            float r4 = r4 - r0
            float r4 = r4 / r3
            float r9 = r7.top
            float r4 = r4 - r9
            goto L42
        L2f:
            float r0 = r7.top
            int r5 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r5 <= 0) goto L37
            float r4 = -r0
            goto L42
        L37:
            float r0 = r7.bottom
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L41
            float r9 = (float) r9
            float r4 = r9 - r0
            goto L42
        L41:
            r4 = r1
        L42:
            if (r8 == 0) goto L60
            int r8 = r6.f97692i
            float r8 = (float) r8
            int r9 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r9 >= 0) goto L51
            float r8 = r8 - r2
            float r8 = r8 / r3
            float r7 = r7.left
        L4f:
            float r8 = r8 - r7
            goto L61
        L51:
            float r9 = r7.left
            int r0 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r0 <= 0) goto L59
            float r8 = -r9
            goto L61
        L59:
            float r7 = r7.right
            int r9 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r9 >= 0) goto L60
            goto L4f
        L60:
            r8 = r1
        L61:
            android.graphics.RectF r7 = r6.mCenterRect
            r7.set(r8, r4, r1, r1)
            android.graphics.RectF r6 = r6.mCenterRect
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: it.sephiroth.android.library.imagezoom.ImageViewTouchBase.getCenter(android.graphics.Matrix, boolean, boolean):android.graphics.RectF");
    }

    public float getDefaultScale(DisplayType displayType) {
        if (displayType == DisplayType.FIT_TO_SCREEN) {
            return 1.0f;
        }
        return displayType == DisplayType.FIT_IF_BIGGER ? Math.min(1.0f, 1.0f / getScale(this.mBaseMatrix)) : 1.0f / getScale(this.mBaseMatrix);
    }

    public Matrix getDisplayMatrix() {
        return new Matrix(this.mSuppMatrix);
    }

    public DisplayType getDisplayType() {
        return this.mScaleType;
    }

    public Matrix getImageViewMatrix() {
        return getImageViewMatrix(this.mSuppMatrix);
    }

    public float getMaxScale() {
        if (this.f97688e == -1.0f) {
            this.f97688e = computeMaxZoom();
        }
        return this.f97688e;
    }

    public float getMinScale() {
        if (this.f97689f == -1.0f) {
            this.f97689f = computeMinZoom();
        }
        return this.f97689f;
    }

    public void getProperBaseMatrix(Drawable drawable, Matrix matrix) {
        float f = this.f97692i;
        float f2 = this.f97693j;
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        matrix.reset();
        if (intrinsicWidth > f || intrinsicHeight > f2) {
            float min = Math.min(f / intrinsicWidth, f2 / intrinsicHeight);
            matrix.postScale(min, min);
            matrix.postTranslate((f - (intrinsicWidth * min)) / 2.0f, (f2 - (intrinsicHeight * min)) / 2.0f);
        } else {
            float min2 = Math.min(f / intrinsicWidth, f2 / intrinsicHeight);
            matrix.postScale(min2, min2);
            matrix.postTranslate((f - (intrinsicWidth * min2)) / 2.0f, (f2 - (intrinsicHeight * min2)) / 2.0f);
        }
    }

    public void getProperBaseMatrix2(Drawable drawable, Matrix matrix) {
        float f = this.f97692i;
        float f2 = this.f97693j;
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        matrix.reset();
        float min = Math.min(f / intrinsicWidth, f2 / intrinsicHeight);
        matrix.postScale(min, min);
        matrix.postTranslate((f - (intrinsicWidth * min)) / 2.0f, (f2 - (intrinsicHeight * min)) / 2.0f);
    }

    @Override // android.view.View
    @SuppressLint({"Override"})
    public float getRotation() {
        return 0.0f;
    }

    public float getScale(Matrix matrix) {
        return getValue(matrix, 0);
    }

    public float getValue(Matrix matrix, int i) {
        matrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[i];
    }

    public void init(Context context, AttributeSet attributeSet, int i) {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public void onDrawableChanged(Drawable drawable) {
        fireOnDrawableChangeListener(drawable);
    }

    public void onImageMatrixChanged() {
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        float defaultScale;
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            int i7 = this.f97692i;
            int i8 = this.f97693j;
            int i9 = i3 - i;
            this.f97692i = i9;
            int i10 = i4 - i2;
            this.f97693j = i10;
            i5 = i9 - i7;
            i6 = i10 - i8;
            PointF pointF = this.f97694k;
            pointF.x = i9 / 2.0f;
            pointF.y = i10 / 2.0f;
        } else {
            i5 = 0;
            i6 = 0;
        }
        Runnable runnable = this.mLayoutRunnable;
        if (runnable != null) {
            this.mLayoutRunnable = null;
            runnable.run();
        }
        Drawable drawable = getDrawable();
        if (drawable == null) {
            if (this.f97696m) {
                onDrawableChanged(drawable);
            }
            if (z || this.f97696m || this.f97695l) {
                onLayoutChanged(i, i2, i3, i4);
            }
            if (this.f97696m) {
                this.f97696m = false;
            }
            if (this.f97695l) {
                this.f97695l = false;
                return;
            }
            return;
        }
        if (z || this.f97695l || this.f97696m) {
            getDefaultScale(this.mScaleType);
            float scale = getScale(this.mBaseMatrix);
            float scale2 = getScale();
            float min = Math.min(1.0f, 1.0f / scale);
            getProperBaseMatrix(drawable, this.mBaseMatrix);
            float scale3 = getScale(this.mBaseMatrix);
            if (this.f97696m || this.f97695l) {
                Matrix matrix = this.mNextMatrix;
                if (matrix != null) {
                    this.mSuppMatrix.set(matrix);
                    this.mNextMatrix = null;
                    defaultScale = getScale();
                } else {
                    this.mSuppMatrix.reset();
                    defaultScale = getDefaultScale(this.mScaleType);
                }
                r12 = defaultScale;
                setImageMatrix(getImageViewMatrix());
                if (r12 != getScale()) {
                    zoomTo(r12);
                }
            } else if (z) {
                if (!this.f97691h) {
                    this.f97689f = -1.0f;
                }
                if (!this.f97690g) {
                    this.f97688e = -1.0f;
                }
                setImageMatrix(getImageViewMatrix());
                postTranslate(-i5, -i6);
                if (this.mUserScaled) {
                    r12 = ((double) Math.abs(scale2 - min)) > 0.001d ? (scale / scale3) * scale2 : 1.0f;
                    zoomTo(r12);
                } else {
                    r12 = getDefaultScale(this.mScaleType);
                    zoomTo(r12);
                }
            }
            this.mUserScaled = false;
            if (r12 > getMaxScale() || r12 < getMinScale()) {
                zoomTo(r12);
            }
            center(true, true);
            if (this.f97696m) {
                onDrawableChanged(drawable);
            }
            if (z || this.f97696m || this.f97695l) {
                onLayoutChanged(i, i2, i3, i4);
            }
            if (this.f97695l) {
                this.f97695l = false;
            }
            if (this.f97696m) {
                this.f97696m = false;
            }
        }
    }

    public void onLayoutChanged(int i, int i2, int i3, int i4) {
        fireOnLayoutChangeListener(i, i2, i3, i4);
    }

    public void onZoom(float f) {
    }

    public void onZoomAnimationCompleted(float f) {
    }

    public void panBy(double d, double d2) {
        RectF bitmapRect = getBitmapRect();
        this.mScrollRect.set((float) d, (float) d2, 0.0f, 0.0f);
        updateRect(bitmapRect, this.mScrollRect);
        RectF rectF = this.mScrollRect;
        postTranslate(rectF.left, rectF.top);
        center(true, true);
    }

    public void postScale(float f, float f2, float f3) {
        this.mSuppMatrix.postScale(f, f, f2, f3);
        setImageMatrix(getImageViewMatrix());
    }

    public void postTranslate(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        this.mSuppMatrix.postTranslate(f, f2);
        setImageMatrix(getImageViewMatrix());
    }

    public void printMatrix(Matrix matrix) {
        float value = getValue(matrix, 0);
        float value2 = getValue(matrix, 4);
        Log.d("ImageViewTouchBase", "matrix: { x: " + getValue(matrix, 2) + ", y: " + getValue(matrix, 5) + ", scalex: " + value + ", scaley: " + value2 + " }");
    }

    public void resetDisplay() {
        this.f97696m = true;
        requestLayout();
    }

    public void resetMatrix() {
        this.mSuppMatrix = new Matrix();
        float defaultScale = getDefaultScale(this.mScaleType);
        setImageMatrix(getImageViewMatrix());
        if (defaultScale != getScale()) {
            zoomTo(defaultScale);
        }
        postInvalidate();
    }

    public void scrollBy(float f, float f2) {
        panBy(f, f2);
    }

    public void setDisplayType(DisplayType displayType) {
        if (displayType != this.mScaleType) {
            this.mUserScaled = false;
            this.mScaleType = displayType;
            this.f97695l = true;
            requestLayout();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        setImageBitmap(bitmap, null, -1.0f, -1.0f);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        setImageDrawable(drawable, null, -1.0f, -1.0f);
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        Matrix imageMatrix = getImageMatrix();
        boolean z = (matrix == null && !imageMatrix.isIdentity()) || !(matrix == null || imageMatrix.equals(matrix));
        super.setImageMatrix(matrix);
        if (z) {
            onImageMatrixChanged();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        setImageDrawable(getContext().getResources().getDrawable(i));
    }

    public void setMaxScale(float f) {
        this.f97688e = f;
    }

    public void setMinScale(float f) {
        this.f97689f = f;
    }

    public void setOnDrawableChangedListener(OnDrawableChangeListener onDrawableChangeListener) {
        this.f97697n = onDrawableChangeListener;
    }

    public void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
        this.f97698o = onLayoutChangeListener;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == ImageView.ScaleType.MATRIX) {
            super.setScaleType(scaleType);
        } else {
            Log.w("ImageViewTouchBase", "Unsupported scaletype. Only MATRIX can be used");
        }
    }

    public void updateRect(RectF rectF, RectF rectF2) {
        if (rectF == null) {
            return;
        }
        if (rectF.top >= 0.0f && rectF.bottom <= this.f97693j) {
            rectF2.top = 0.0f;
        }
        if (rectF.left >= 0.0f && rectF.right <= this.f97692i) {
            rectF2.left = 0.0f;
        }
        if (rectF2.top + rectF.top >= 0.0f && rectF.bottom > this.f97693j) {
            rectF2.top = (int) (0.0f - r0);
        }
        float f = rectF2.top + rectF.bottom;
        int i = this.f97693j;
        if (f <= i + 0 && rectF.top < 0.0f) {
            rectF2.top = (int) ((i + 0) - r0);
        }
        if (rectF2.left + rectF.left >= 0.0f) {
            rectF2.left = (int) (0.0f - r0);
        }
        float f2 = rectF2.left + rectF.right;
        int i2 = this.f97692i;
        if (f2 <= i2 + 0) {
            rectF2.left = (int) ((i2 + 0) - r6);
        }
    }

    public void zoomTo(float f) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        if (f < getMinScale()) {
            f = getMinScale();
        }
        PointF center = getCenter();
        zoomTo(f, center.x, center.y);
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectF getBitmapRect(Matrix matrix) {
        if (getDrawable() == null) {
            return null;
        }
        Matrix imageViewMatrix = getImageViewMatrix(matrix);
        this.mBitmapRect.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        imageViewMatrix.mapRect(this.mBitmapRect);
        return this.mBitmapRect;
    }

    public Matrix getImageViewMatrix(Matrix matrix) {
        this.mDisplayMatrix.set(this.mBaseMatrix);
        this.mDisplayMatrix.postConcat(matrix);
        return this.mDisplayMatrix;
    }

    public float getScale() {
        return getScale(this.mSuppMatrix);
    }

    public void scrollBy(float f, float f2, double d) {
        this.mHandler.post(new RunnableC17653b(d, System.currentTimeMillis(), f, f2));
    }

    public void setImageBitmap(Bitmap bitmap, Matrix matrix, float f, float f2) {
        if (bitmap != null) {
            setImageDrawable(new FastBitmapDrawable(bitmap), matrix, f, f2);
        } else {
            setImageDrawable(null, matrix, f, f2);
        }
    }

    public void setImageDrawable(Drawable drawable, Matrix matrix, float f, float f2) {
        if (getWidth() <= 0) {
            this.mLayoutRunnable = new RunnableC17652a(drawable, matrix, f, f2);
        } else {
            _setImageDrawable(drawable, matrix, f, f2);
        }
    }

    public ImageViewTouchBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mEasing = new Cubic();
        this.mBaseMatrix = new Matrix();
        this.mSuppMatrix = new Matrix();
        this.mHandler = new Handler();
        this.mLayoutRunnable = null;
        this.mUserScaled = false;
        this.f97688e = -1.0f;
        this.f97689f = -1.0f;
        this.mDisplayMatrix = new Matrix();
        this.mMatrixValues = new float[9];
        this.f97692i = -1;
        this.f97693j = -1;
        this.f97694k = new PointF();
        this.mScaleType = DisplayType.NONE;
        this.DEFAULT_ANIMATION_DURATION = 200;
        this.mBitmapRect = new RectF();
        this.mCenterRect = new RectF();
        this.mScrollRect = new RectF();
        init(context, attributeSet, i);
    }

    public void zoomTo(float f, float f2) {
        PointF center = getCenter();
        zoomTo(f, center.x, center.y, f2);
    }

    public void zoomTo(float f, float f2, float f3) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        postScale(f / getScale(), f2, f3);
        onZoom(getScale());
        center(true, true);
    }

    public void zoomTo(float f, float f2, float f3, float f4) {
        if (f > getMaxScale()) {
            f = getMaxScale();
        }
        long currentTimeMillis = System.currentTimeMillis();
        float scale = getScale();
        Matrix matrix = new Matrix(this.mSuppMatrix);
        matrix.postScale(f, f, f2, f3);
        RectF center = getCenter(matrix, true, true);
        this.mHandler.post(new RunnableC17654c(f4, currentTimeMillis, f - scale, scale, f2 + (center.left * f), f3 + (center.top * f)));
    }

    public PointF getCenter() {
        return this.f97694k;
    }
}
