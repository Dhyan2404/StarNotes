package androidx.vectordrawable.graphics.drawable;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public interface Animatable2Compat extends Animatable {

    /* loaded from: classes3.dex */
    public static abstract class AnimationCallback {

        /* renamed from: a */
        public Animatable2.AnimationCallback f10804a;

        /* renamed from: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback$a */
        /* loaded from: classes3.dex */
        public class C1518a extends Animatable2.AnimationCallback {
            public C1518a() {
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                AnimationCallback.this.onAnimationEnd(drawable);
            }

            @Override // android.graphics.drawable.Animatable2.AnimationCallback
            public void onAnimationStart(Drawable drawable) {
                AnimationCallback.this.onAnimationStart(drawable);
            }
        }

        @RequiresApi(23)
        /* renamed from: a */
        public Animatable2.AnimationCallback m6671a() {
            if (this.f10804a == null) {
                this.f10804a = new C1518a();
            }
            return this.f10804a;
        }

        public void onAnimationEnd(Drawable drawable) {
        }

        public void onAnimationStart(Drawable drawable) {
        }
    }

    void clearAnimationCallbacks();

    void registerAnimationCallback(@NonNull AnimationCallback animationCallback);

    boolean unregisterAnimationCallback(@NonNull AnimationCallback animationCallback);
}
