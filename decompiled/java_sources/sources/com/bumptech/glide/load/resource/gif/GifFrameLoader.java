package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GifFrameLoader {

    /* renamed from: a */
    public final GifDecoder f15155a;

    /* renamed from: b */
    public final Handler f15156b;

    /* renamed from: c */
    public final List<FrameCallback> f15157c;

    /* renamed from: d */
    public final RequestManager f15158d;

    /* renamed from: e */
    public final BitmapPool f15159e;

    /* renamed from: f */
    public boolean f15160f;

    /* renamed from: g */
    public boolean f15161g;

    /* renamed from: h */
    public boolean f15162h;

    /* renamed from: i */
    public RequestBuilder<Bitmap> f15163i;

    /* renamed from: j */
    public C2014a f15164j;

    /* renamed from: k */
    public boolean f15165k;

    /* renamed from: l */
    public C2014a f15166l;

    /* renamed from: m */
    public Bitmap f15167m;

    /* renamed from: n */
    public Transformation<Bitmap> f15168n;

    /* renamed from: o */
    public C2014a f15169o;

    /* renamed from: p */
    @Nullable
    public InterfaceC2016c f15170p;

    /* renamed from: q */
    public int f15171q;

    /* renamed from: r */
    public int f15172r;

    /* renamed from: s */
    public int f15173s;

    /* loaded from: classes3.dex */
    public interface FrameCallback {
        void onFrameReady();
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.GifFrameLoader$a */
    /* loaded from: classes3.dex */
    public static class C2014a extends CustomTarget<Bitmap> {

        /* renamed from: h */
        public final Handler f15174h;

        /* renamed from: i */
        public final int f15175i;

        /* renamed from: j */
        public final long f15176j;

        /* renamed from: k */
        public Bitmap f15177k;

        public C2014a(Handler handler, int i, long j) {
            this.f15174h = handler;
            this.f15175i = i;
            this.f15176j = j;
        }

        /* renamed from: a */
        public Bitmap m9037a() {
            return this.f15177k;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
            this.f15177k = null;
        }

        @Override // com.bumptech.glide.request.target.Target
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable Transition transition) {
            onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
        }

        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            this.f15177k = bitmap;
            this.f15174h.sendMessageAtTime(this.f15174h.obtainMessage(1, this), this.f15176j);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.gif.GifFrameLoader$b */
    /* loaded from: classes3.dex */
    public class C2015b implements Handler.Callback {

        /* renamed from: f */
        public static final int f15178f = 1;

        /* renamed from: g */
        public static final int f15179g = 2;

        public C2015b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                GifFrameLoader.this.m9028o((C2014a) message.obj);
                return true;
            }
            if (i != 2) {
                return false;
            }
            GifFrameLoader.this.f15158d.clear((C2014a) message.obj);
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.GifFrameLoader$c */
    /* loaded from: classes3.dex */
    public interface InterfaceC2016c {
        void onFrameReady();
    }

    public GifFrameLoader(Glide glide, GifDecoder gifDecoder, int i, int i2, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this(glide.getBitmapPool(), Glide.with(glide.getContext()), gifDecoder, null, m9015k(Glide.with(glide.getContext()), i, i2), transformation, bitmap);
    }

    /* renamed from: g */
    public static Key m9014g() {
        return new ObjectKey(Double.valueOf(Math.random()));
    }

    /* renamed from: k */
    public static RequestBuilder<Bitmap> m9015k(RequestManager requestManager, int i, int i2) {
        return requestManager.asBitmap().apply((BaseRequestOptions<?>) RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.NONE).useAnimationPool(true).skipMemoryCache(true).override(i, i2));
    }

    /* renamed from: a */
    public void m9016a() {
        this.f15157c.clear();
        m9029p();
        m9034u();
        C2014a c2014a = this.f15164j;
        if (c2014a != null) {
            this.f15158d.clear(c2014a);
            this.f15164j = null;
        }
        C2014a c2014a2 = this.f15166l;
        if (c2014a2 != null) {
            this.f15158d.clear(c2014a2);
            this.f15166l = null;
        }
        C2014a c2014a3 = this.f15169o;
        if (c2014a3 != null) {
            this.f15158d.clear(c2014a3);
            this.f15169o = null;
        }
        this.f15155a.clear();
        this.f15165k = true;
    }

    /* renamed from: b */
    public ByteBuffer m9017b() {
        return this.f15155a.getData().asReadOnlyBuffer();
    }

    /* renamed from: c */
    public Bitmap m9018c() {
        C2014a c2014a = this.f15164j;
        return c2014a != null ? c2014a.m9037a() : this.f15167m;
    }

    /* renamed from: d */
    public int m9019d() {
        C2014a c2014a = this.f15164j;
        if (c2014a != null) {
            return c2014a.f15175i;
        }
        return -1;
    }

    /* renamed from: e */
    public Bitmap m9020e() {
        return this.f15167m;
    }

    /* renamed from: f */
    public int m9021f() {
        return this.f15155a.getFrameCount();
    }

    /* renamed from: h */
    public Transformation<Bitmap> m9022h() {
        return this.f15168n;
    }

    /* renamed from: i */
    public int m9023i() {
        return this.f15173s;
    }

    /* renamed from: j */
    public int m9024j() {
        return this.f15155a.getTotalIterationCount();
    }

    /* renamed from: l */
    public int m9025l() {
        return this.f15155a.getByteSize() + this.f15171q;
    }

    /* renamed from: m */
    public int m9026m() {
        return this.f15172r;
    }

    /* renamed from: n */
    public final void m9027n() {
        if (!this.f15160f || this.f15161g) {
            return;
        }
        if (this.f15162h) {
            Preconditions.checkArgument(this.f15169o == null, "Pending target must be null when starting from the first frame");
            this.f15155a.resetFrameIndex();
            this.f15162h = false;
        }
        C2014a c2014a = this.f15169o;
        if (c2014a != null) {
            this.f15169o = null;
            m9028o(c2014a);
            return;
        }
        this.f15161g = true;
        long uptimeMillis = SystemClock.uptimeMillis() + this.f15155a.getNextDelay();
        this.f15155a.advance();
        this.f15166l = new C2014a(this.f15156b, this.f15155a.getCurrentFrameIndex(), uptimeMillis);
        this.f15163i.apply((BaseRequestOptions<?>) RequestOptions.signatureOf(m9014g())).load((Object) this.f15155a).into((RequestBuilder<Bitmap>) this.f15166l);
    }

    @VisibleForTesting
    /* renamed from: o */
    public void m9028o(C2014a c2014a) {
        InterfaceC2016c interfaceC2016c = this.f15170p;
        if (interfaceC2016c != null) {
            interfaceC2016c.onFrameReady();
        }
        this.f15161g = false;
        if (this.f15165k) {
            this.f15156b.obtainMessage(2, c2014a).sendToTarget();
            return;
        }
        if (!this.f15160f) {
            if (this.f15162h) {
                this.f15156b.obtainMessage(2, c2014a).sendToTarget();
                return;
            } else {
                this.f15169o = c2014a;
                return;
            }
        }
        if (c2014a.m9037a() != null) {
            m9029p();
            C2014a c2014a2 = this.f15164j;
            this.f15164j = c2014a;
            for (int size = this.f15157c.size() - 1; size >= 0; size--) {
                this.f15157c.get(size).onFrameReady();
            }
            if (c2014a2 != null) {
                this.f15156b.obtainMessage(2, c2014a2).sendToTarget();
            }
        }
        m9027n();
    }

    /* renamed from: p */
    public final void m9029p() {
        Bitmap bitmap = this.f15167m;
        if (bitmap != null) {
            this.f15159e.put(bitmap);
            this.f15167m = null;
        }
    }

    /* renamed from: q */
    public void m9030q(Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f15168n = (Transformation) Preconditions.checkNotNull(transformation);
        this.f15167m = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.f15163i = this.f15163i.apply((BaseRequestOptions<?>) new RequestOptions().transform(transformation));
        this.f15171q = Util.getBitmapByteSize(bitmap);
        this.f15172r = bitmap.getWidth();
        this.f15173s = bitmap.getHeight();
    }

    /* renamed from: r */
    public void m9031r() {
        Preconditions.checkArgument(!this.f15160f, "Can't restart a running animation");
        this.f15162h = true;
        C2014a c2014a = this.f15169o;
        if (c2014a != null) {
            this.f15158d.clear(c2014a);
            this.f15169o = null;
        }
    }

    @VisibleForTesting
    /* renamed from: s */
    public void m9032s(@Nullable InterfaceC2016c interfaceC2016c) {
        this.f15170p = interfaceC2016c;
    }

    /* renamed from: t */
    public final void m9033t() {
        if (this.f15160f) {
            return;
        }
        this.f15160f = true;
        this.f15165k = false;
        m9027n();
    }

    /* renamed from: u */
    public final void m9034u() {
        this.f15160f = false;
    }

    /* renamed from: v */
    public void m9035v(FrameCallback frameCallback) {
        if (this.f15165k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f15157c.contains(frameCallback)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = this.f15157c.isEmpty();
        this.f15157c.add(frameCallback);
        if (isEmpty) {
            m9033t();
        }
    }

    /* renamed from: w */
    public void m9036w(FrameCallback frameCallback) {
        this.f15157c.remove(frameCallback);
        if (this.f15157c.isEmpty()) {
            m9034u();
        }
    }

    public GifFrameLoader(BitmapPool bitmapPool, RequestManager requestManager, GifDecoder gifDecoder, Handler handler, RequestBuilder<Bitmap> requestBuilder, Transformation<Bitmap> transformation, Bitmap bitmap) {
        this.f15157c = new ArrayList();
        this.f15158d = requestManager;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new C2015b()) : handler;
        this.f15159e = bitmapPool;
        this.f15156b = handler;
        this.f15163i = requestBuilder;
        this.f15155a = gifDecoder;
        m9030q(transformation, bitmap);
    }
}
