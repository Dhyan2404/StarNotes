package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.C1068R;

/* renamed from: androidx.fragment.app.b */
/* loaded from: classes3.dex */
public class C1123b {
    @AnimRes
    /* renamed from: a */
    public static int m4805a(Fragment fragment, boolean z, boolean z2) {
        return z2 ? z ? fragment.m4589p() : fragment.m4590q() : z ? fragment.m4578h() : fragment.m4582j();
    }

    @SuppressLint({"ResourceType"})
    /* renamed from: b */
    public static a m4806b(@NonNull Context context, @NonNull Fragment fragment, boolean z, boolean z2) {
        int m4587n = fragment.m4587n();
        int m4805a = m4805a(fragment, z, z2);
        boolean z3 = false;
        fragment.m4573e0(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.f7427y0;
        if (viewGroup != null && viewGroup.getTag(C1068R.id.visible_removing_fragment_view_tag) != null) {
            fragment.f7427y0.setTag(C1068R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.f7427y0;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        Animation onCreateAnimation = fragment.onCreateAnimation(m4587n, z, m4805a);
        if (onCreateAnimation != null) {
            return new a(onCreateAnimation);
        }
        Animator onCreateAnimator = fragment.onCreateAnimator(m4587n, z, m4805a);
        if (onCreateAnimator != null) {
            return new a(onCreateAnimator);
        }
        if (m4805a == 0 && m4587n != 0) {
            m4805a = m4808d(context, m4587n, z);
        }
        if (m4805a != 0) {
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(m4805a));
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, m4805a);
                    if (loadAnimation != null) {
                        return new a(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    Animator loadAnimator = AnimatorInflater.loadAnimator(context, m4805a);
                    if (loadAnimator != null) {
                        return new a(loadAnimator);
                    }
                } catch (RuntimeException e2) {
                    if (equals) {
                        throw e2;
                    }
                    Animation loadAnimation2 = AnimationUtils.loadAnimation(context, m4805a);
                    if (loadAnimation2 != null) {
                        return new a(loadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    @AnimRes
    /* renamed from: c */
    public static int m4807c(@NonNull Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.style.Animation.Activity, new int[]{i});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @AnimRes
    /* renamed from: d */
    public static int m4808d(@NonNull Context context, int i, boolean z) {
        if (i == 4097) {
            return z ? C1068R.animator.fragment_open_enter : C1068R.animator.fragment_open_exit;
        }
        if (i == 8194) {
            return z ? C1068R.animator.fragment_close_enter : C1068R.animator.fragment_close_exit;
        }
        if (i == 8197) {
            return z ? m4807c(context, R.attr.activityCloseEnterAnimation) : m4807c(context, R.attr.activityCloseExitAnimation);
        }
        if (i == 4099) {
            return z ? C1068R.animator.fragment_fade_enter : C1068R.animator.fragment_fade_exit;
        }
        if (i != 4100) {
            return -1;
        }
        return z ? m4807c(context, R.attr.activityOpenEnterAnimation) : m4807c(context, R.attr.activityOpenExitAnimation);
    }

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a */
        public final Animation f7676a;

        /* renamed from: b */
        public final Animator f7677b;

        public a(Animation animation) {
            this.f7676a = animation;
            this.f7677b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        public a(Animator animator) {
            this.f7676a = null;
            this.f7677b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* renamed from: androidx.fragment.app.b$b */
    /* loaded from: classes3.dex */
    public static class b extends AnimationSet implements Runnable {

        /* renamed from: e */
        public final ViewGroup f7678e;

        /* renamed from: f */
        public final View f7679f;

        /* renamed from: g */
        public boolean f7680g;

        /* renamed from: h */
        public boolean f7681h;

        /* renamed from: i */
        public boolean f7682i;

        public b(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.f7682i = true;
            this.f7678e = viewGroup;
            this.f7679f = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation) {
            this.f7682i = true;
            if (this.f7680g) {
                return !this.f7681h;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f7680g = true;
                OneShotPreDrawListener.add(this.f7678e, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f7680g || !this.f7682i) {
                this.f7678e.endViewTransition(this.f7679f);
                this.f7681h = true;
            } else {
                this.f7682i = false;
                this.f7678e.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, @NonNull Transformation transformation, float f) {
            this.f7682i = true;
            if (this.f7680g) {
                return !this.f7681h;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f7680g = true;
                OneShotPreDrawListener.add(this.f7678e, this);
            }
            return true;
        }
    }
}
