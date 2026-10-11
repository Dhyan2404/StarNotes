package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GifDrawable extends Drawable implements GifFrameLoader.FrameCallback, Animatable, Animatable2Compat {
    public static final int LOOP_FOREVER = -1;
    public static final int LOOP_INTRINSIC = 0;

    /* renamed from: p */
    public static final int f15140p = 119;

    /* renamed from: e */
    public final C2013a f15141e;

    /* renamed from: f */
    public boolean f15142f;

    /* renamed from: g */
    public boolean f15143g;

    /* renamed from: h */
    public boolean f15144h;

    /* renamed from: i */
    public boolean f15145i;

    /* renamed from: j */
    public int f15146j;

    /* renamed from: k */
    public int f15147k;

    /* renamed from: l */
    public boolean f15148l;

    /* renamed from: m */
    public Paint f15149m;

    /* renamed from: n */
    public Rect f15150n;

    /* renamed from: o */
    public List<Animatable2Compat.AnimationCallback> f15151o;

    /* renamed from: com.bumptech.glide.load.resource.gif.GifDrawable$a */
    /* loaded from: classes3.dex */
    public static final class C2013a extends Drawable.ConstantState {

        /* renamed from: a */
        @VisibleForTesting
        public final GifFrameLoader f15152a;

        public C2013a(GifFrameLoader gifFrameLoader) {
            this.f15152a = gifFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    @Deprecated
    public GifDrawable(Context context, GifDecoder gifDecoder, BitmapPool bitmapPool, Transformation<Bitmap> transformation, int i, int i2, Bitmap bitmap) {
        this(context, gifDecoder, transformation, i, i2, bitmap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final Drawable.Callback m9005a() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    /* renamed from: b */
    public final Rect m9006b() {
        if (this.f15150n == null) {
            this.f15150n = new Rect();
        }
        return this.f15150n;
    }

    /* renamed from: c */
    public final Paint m9007c() {
        if (this.f15149m == null) {
            this.f15149m = new Paint(2);
        }
        return this.f15149m;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f15151o;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: d */
    public boolean m9008d() {
        return this.f15144h;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f15144h) {
            return;
        }
        if (this.f15148l) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), m9006b());
            this.f15148l = false;
        }
        canvas.drawBitmap(this.f15141e.f15152a.m9018c(), (Rect) null, m9006b(), m9007c());
    }

    /* renamed from: e */
    public final void m9009e() {
        List<Animatable2Compat.AnimationCallback> list = this.f15151o;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                this.f15151o.get(i).onAnimationEnd(this);
            }
        }
    }

    /* renamed from: f */
    public final void m9010f() {
        this.f15146j = 0;
    }

    /* renamed from: g */
    public void m9011g(boolean z) {
        this.f15142f = z;
    }

    public ByteBuffer getBuffer() {
        return this.f15141e.f15152a.m9017b();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f15141e;
    }

    public Bitmap getFirstFrame() {
        return this.f15141e.f15152a.m9020e();
    }

    public int getFrameCount() {
        return this.f15141e.f15152a.m9021f();
    }

    public int getFrameIndex() {
        return this.f15141e.f15152a.m9019d();
    }

    public Transformation<Bitmap> getFrameTransformation() {
        return this.f15141e.f15152a.m9022h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f15141e.f15152a.m9023i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f15141e.f15152a.m9026m();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public int getSize() {
        return this.f15141e.f15152a.m9025l();
    }

    /* renamed from: h */
    public final void m9012h() {
        Preconditions.checkArgument(!this.f15144h, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f15141e.f15152a.m9021f() == 1) {
            invalidateSelf();
        } else {
            if (this.f15142f) {
                return;
            }
            this.f15142f = true;
            this.f15141e.f15152a.m9035v(this);
            invalidateSelf();
        }
    }

    /* renamed from: i */
    public final void m9013i() {
        this.f15142f = false;
        this.f15141e.f15152a.m9036w(this);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f15142f;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f15148l = true;
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
    public void onFrameReady() {
        if (m9005a() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (getFrameIndex() == getFrameCount() - 1) {
            this.f15146j++;
        }
        int i = this.f15147k;
        if (i == -1 || this.f15146j < i) {
            return;
        }
        m9009e();
        stop();
    }

    public void recycle() {
        this.f15144h = true;
        this.f15141e.f15152a.m9016a();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f15151o == null) {
            this.f15151o = new ArrayList();
        }
        this.f15151o.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        m9007c().setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        m9007c().setColorFilter(colorFilter);
    }

    public void setFrameTransformation(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f15141e.f15152a.m9030q(transformation, bitmap);
    }

    public void setLoopCount(int i) {
        if (i <= 0 && i != -1 && i != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i != 0) {
            this.f15147k = i;
        } else {
            int m9024j = this.f15141e.f15152a.m9024j();
            this.f15147k = m9024j != 0 ? m9024j : -1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Preconditions.checkArgument(!this.f15144h, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f15145i = z;
        if (!z) {
            m9013i();
        } else if (this.f15143g) {
            m9012h();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f15143g = true;
        m9010f();
        if (this.f15145i) {
            m9012h();
        }
    }

    public void startFromFirstFrame() {
        Preconditions.checkArgument(!this.f15142f, "You cannot restart a currently running animation.");
        this.f15141e.f15152a.m9031r();
        start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f15143g = false;
        m9013i();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f15151o;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public GifDrawable(Context context, GifDecoder gifDecoder, Transformation<Bitmap> transformation, int i, int i2, Bitmap bitmap) {
        this(new C2013a(new GifFrameLoader(Glide.get(context), gifDecoder, i, i2, transformation, bitmap)));
    }

    public GifDrawable(C2013a c2013a) {
        this.f15145i = true;
        this.f15147k = -1;
        this.f15141e = (C2013a) Preconditions.checkNotNull(c2013a);
    }

    @VisibleForTesting
    public GifDrawable(GifFrameLoader gifFrameLoader, Paint paint) {
        this(new C2013a(gifFrameLoader));
        this.f15149m = paint;
    }
}
