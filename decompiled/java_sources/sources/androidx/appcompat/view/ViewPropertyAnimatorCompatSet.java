package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ViewPropertyAnimatorCompatSet {

    /* renamed from: c */
    public Interpolator f1047c;

    /* renamed from: d */
    public ViewPropertyAnimatorListener f1048d;

    /* renamed from: e */
    public boolean f1049e;

    /* renamed from: b */
    public long f1046b = -1;

    /* renamed from: f */
    public final ViewPropertyAnimatorListenerAdapter f1050f = new C0184a();

    /* renamed from: a */
    public final ArrayList<ViewPropertyAnimatorCompat> f1045a = new ArrayList<>();

    /* renamed from: androidx.appcompat.view.ViewPropertyAnimatorCompatSet$a */
    /* loaded from: classes3.dex */
    public class C0184a extends ViewPropertyAnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f1051a = false;

        /* renamed from: b */
        public int f1052b = 0;

        public C0184a() {
        }

        /* renamed from: a */
        public void m566a() {
            this.f1052b = 0;
            this.f1051a = false;
            ViewPropertyAnimatorCompatSet.this.m565a();
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i = this.f1052b + 1;
            this.f1052b = i;
            if (i == ViewPropertyAnimatorCompatSet.this.f1045a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f1048d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(null);
                }
                m566a();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (this.f1051a) {
                return;
            }
            this.f1051a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f1048d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(null);
            }
        }
    }

    /* renamed from: a */
    public void m565a() {
        this.f1049e = false;
    }

    public void cancel() {
        if (this.f1049e) {
            Iterator<ViewPropertyAnimatorCompat> it2 = this.f1045a.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
            this.f1049e = false;
        }
    }

    public ViewPropertyAnimatorCompatSet play(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f1049e) {
            this.f1045a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet playSequentially(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f1045a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f1045a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public ViewPropertyAnimatorCompatSet setDuration(long j) {
        if (!this.f1049e) {
            this.f1046b = j;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator interpolator) {
        if (!this.f1049e) {
            this.f1047c = interpolator;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f1049e) {
            this.f1048d = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void start() {
        if (this.f1049e) {
            return;
        }
        Iterator<ViewPropertyAnimatorCompat> it2 = this.f1045a.iterator();
        while (it2.hasNext()) {
            ViewPropertyAnimatorCompat next = it2.next();
            long j = this.f1046b;
            if (j >= 0) {
                next.setDuration(j);
            }
            Interpolator interpolator = this.f1047c;
            if (interpolator != null) {
                next.setInterpolator(interpolator);
            }
            if (this.f1048d != null) {
                next.setListener(this.f1050f);
            }
            next.start();
        }
        this.f1049e = true;
    }
}
