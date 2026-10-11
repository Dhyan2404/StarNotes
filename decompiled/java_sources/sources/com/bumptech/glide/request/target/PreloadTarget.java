package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.transition.Transition;

/* loaded from: classes3.dex */
public final class PreloadTarget<Z> extends CustomTarget<Z> {

    /* renamed from: i */
    public static final int f15412i = 1;

    /* renamed from: j */
    public static final Handler f15413j = new Handler(Looper.getMainLooper(), new C2029a());

    /* renamed from: h */
    public final RequestManager f15414h;

    /* renamed from: com.bumptech.glide.request.target.PreloadTarget$a */
    /* loaded from: classes3.dex */
    public class C2029a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((PreloadTarget) message.obj).m9149a();
            return true;
        }
    }

    public PreloadTarget(RequestManager requestManager, int i, int i2) {
        super(i, i2);
        this.f15414h = requestManager;
    }

    public static <Z> PreloadTarget<Z> obtain(RequestManager requestManager, int i, int i2) {
        return new PreloadTarget<>(requestManager, i, i2);
    }

    /* renamed from: a */
    public void m9149a() {
        this.f15414h.clear(this);
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onResourceReady(@NonNull Z z, @Nullable Transition<? super Z> transition) {
        f15413j.obtainMessage(1, this).sendToTarget();
    }
}
