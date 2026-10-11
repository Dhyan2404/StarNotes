package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {

    /* renamed from: u */
    public static final boolean f9231u = false;

    /* renamed from: v */
    public static TimeInterpolator f9232v;

    /* renamed from: j */
    public ArrayList<RecyclerView.ViewHolder> f9233j = new ArrayList<>();

    /* renamed from: k */
    public ArrayList<RecyclerView.ViewHolder> f9234k = new ArrayList<>();

    /* renamed from: l */
    public ArrayList<C1322j> f9235l = new ArrayList<>();

    /* renamed from: m */
    public ArrayList<C1321i> f9236m = new ArrayList<>();

    /* renamed from: n */
    public ArrayList<ArrayList<RecyclerView.ViewHolder>> f9237n = new ArrayList<>();

    /* renamed from: o */
    public ArrayList<ArrayList<C1322j>> f9238o = new ArrayList<>();

    /* renamed from: p */
    public ArrayList<ArrayList<C1321i>> f9239p = new ArrayList<>();

    /* renamed from: q */
    public ArrayList<RecyclerView.ViewHolder> f9240q = new ArrayList<>();

    /* renamed from: r */
    public ArrayList<RecyclerView.ViewHolder> f9241r = new ArrayList<>();

    /* renamed from: s */
    public ArrayList<RecyclerView.ViewHolder> f9242s = new ArrayList<>();

    /* renamed from: t */
    public ArrayList<RecyclerView.ViewHolder> f9243t = new ArrayList<>();

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$a */
    /* loaded from: classes3.dex */
    public class RunnableC1313a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ArrayList f9244e;

        public RunnableC1313a(ArrayList arrayList) {
            this.f9244e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f9244e.iterator();
            while (it2.hasNext()) {
                C1322j c1322j = (C1322j) it2.next();
                DefaultItemAnimator.this.m5515e(c1322j.f9278a, c1322j.f9279b, c1322j.f9280c, c1322j.f9281d, c1322j.f9282e);
            }
            this.f9244e.clear();
            DefaultItemAnimator.this.f9238o.remove(this.f9244e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$b */
    /* loaded from: classes3.dex */
    public class RunnableC1314b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ArrayList f9246e;

        public RunnableC1314b(ArrayList arrayList) {
            this.f9246e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f9246e.iterator();
            while (it2.hasNext()) {
                DefaultItemAnimator.this.m5514d((C1321i) it2.next());
            }
            this.f9246e.clear();
            DefaultItemAnimator.this.f9239p.remove(this.f9246e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$c */
    /* loaded from: classes3.dex */
    public class RunnableC1315c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ArrayList f9248e;

        public RunnableC1315c(ArrayList arrayList) {
            this.f9248e = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it2 = this.f9248e.iterator();
            while (it2.hasNext()) {
                DefaultItemAnimator.this.m5513c((RecyclerView.ViewHolder) it2.next());
            }
            this.f9248e.clear();
            DefaultItemAnimator.this.f9237n.remove(this.f9248e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$d */
    /* loaded from: classes3.dex */
    public class C1316d extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ RecyclerView.ViewHolder f9250e;

        /* renamed from: f */
        public final /* synthetic */ ViewPropertyAnimator f9251f;

        /* renamed from: g */
        public final /* synthetic */ View f9252g;

        public C1316d(RecyclerView.ViewHolder viewHolder, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f9250e = viewHolder;
            this.f9251f = viewPropertyAnimator;
            this.f9252g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9251f.setListener(null);
            this.f9252g.setAlpha(1.0f);
            DefaultItemAnimator.this.dispatchRemoveFinished(this.f9250e);
            DefaultItemAnimator.this.f9242s.remove(this.f9250e);
            DefaultItemAnimator.this.m5518h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchRemoveStarting(this.f9250e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$e */
    /* loaded from: classes3.dex */
    public class C1317e extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ RecyclerView.ViewHolder f9254e;

        /* renamed from: f */
        public final /* synthetic */ View f9255f;

        /* renamed from: g */
        public final /* synthetic */ ViewPropertyAnimator f9256g;

        public C1317e(RecyclerView.ViewHolder viewHolder, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f9254e = viewHolder;
            this.f9255f = view;
            this.f9256g = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f9255f.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9256g.setListener(null);
            DefaultItemAnimator.this.dispatchAddFinished(this.f9254e);
            DefaultItemAnimator.this.f9240q.remove(this.f9254e);
            DefaultItemAnimator.this.m5518h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchAddStarting(this.f9254e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$f */
    /* loaded from: classes3.dex */
    public class C1318f extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ RecyclerView.ViewHolder f9258e;

        /* renamed from: f */
        public final /* synthetic */ int f9259f;

        /* renamed from: g */
        public final /* synthetic */ View f9260g;

        /* renamed from: h */
        public final /* synthetic */ int f9261h;

        /* renamed from: i */
        public final /* synthetic */ ViewPropertyAnimator f9262i;

        public C1318f(RecyclerView.ViewHolder viewHolder, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
            this.f9258e = viewHolder;
            this.f9259f = i;
            this.f9260g = view;
            this.f9261h = i2;
            this.f9262i = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f9259f != 0) {
                this.f9260g.setTranslationX(0.0f);
            }
            if (this.f9261h != 0) {
                this.f9260g.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9262i.setListener(null);
            DefaultItemAnimator.this.dispatchMoveFinished(this.f9258e);
            DefaultItemAnimator.this.f9241r.remove(this.f9258e);
            DefaultItemAnimator.this.m5518h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchMoveStarting(this.f9258e);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$g */
    /* loaded from: classes3.dex */
    public class C1319g extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ C1321i f9264e;

        /* renamed from: f */
        public final /* synthetic */ ViewPropertyAnimator f9265f;

        /* renamed from: g */
        public final /* synthetic */ View f9266g;

        public C1319g(C1321i c1321i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f9264e = c1321i;
            this.f9265f = viewPropertyAnimator;
            this.f9266g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9265f.setListener(null);
            this.f9266g.setAlpha(1.0f);
            this.f9266g.setTranslationX(0.0f);
            this.f9266g.setTranslationY(0.0f);
            DefaultItemAnimator.this.dispatchChangeFinished(this.f9264e.f9272a, true);
            DefaultItemAnimator.this.f9243t.remove(this.f9264e.f9272a);
            DefaultItemAnimator.this.m5518h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchChangeStarting(this.f9264e.f9272a, true);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$h */
    /* loaded from: classes3.dex */
    public class C1320h extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ C1321i f9268e;

        /* renamed from: f */
        public final /* synthetic */ ViewPropertyAnimator f9269f;

        /* renamed from: g */
        public final /* synthetic */ View f9270g;

        public C1320h(C1321i c1321i, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f9268e = c1321i;
            this.f9269f = viewPropertyAnimator;
            this.f9270g = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f9269f.setListener(null);
            this.f9270g.setAlpha(1.0f);
            this.f9270g.setTranslationX(0.0f);
            this.f9270g.setTranslationY(0.0f);
            DefaultItemAnimator.this.dispatchChangeFinished(this.f9268e.f9273b, false);
            DefaultItemAnimator.this.f9243t.remove(this.f9268e.f9273b);
            DefaultItemAnimator.this.m5518h();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            DefaultItemAnimator.this.dispatchChangeStarting(this.f9268e.f9273b, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$j */
    /* loaded from: classes3.dex */
    public static class C1322j {

        /* renamed from: a */
        public RecyclerView.ViewHolder f9278a;

        /* renamed from: b */
        public int f9279b;

        /* renamed from: c */
        public int f9280c;

        /* renamed from: d */
        public int f9281d;

        /* renamed from: e */
        public int f9282e;

        public C1322j(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            this.f9278a = viewHolder;
            this.f9279b = i;
            this.f9280c = i2;
            this.f9281d = i3;
            this.f9282e = i4;
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        m5522l(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.f9234k.add(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i, i2, i3, i4);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        m5522l(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            m5522l(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i5);
            viewHolder2.itemView.setTranslationY(-i6);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        this.f9236m.add(new C1321i(viewHolder, viewHolder2, i, i2, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.itemView.getTranslationY());
        m5522l(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.f9235l.add(new C1322j(viewHolder, translationX, translationY, i3, i4));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    @SuppressLint({"UnknownNullness"})
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        m5522l(viewHolder);
        this.f9233j.add(viewHolder);
        return true;
    }

    /* renamed from: c */
    public void m5513c(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f9240q.add(viewHolder);
        animate.alpha(1.0f).setDuration(getAddDuration()).setListener(new C1317e(viewHolder, view, animate)).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }

    /* renamed from: d */
    public void m5514d(C1321i c1321i) {
        RecyclerView.ViewHolder viewHolder = c1321i.f9272a;
        View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = c1321i.f9273b;
        View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.f9243t.add(c1321i.f9272a);
            duration.translationX(c1321i.f9276e - c1321i.f9274c);
            duration.translationY(c1321i.f9277f - c1321i.f9275d);
            duration.alpha(0.0f).setListener(new C1319g(c1321i, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator animate = view2.animate();
            this.f9243t.add(c1321i.f9273b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new C1320h(c1321i, animate, view2)).start();
        }
    }

    /* renamed from: e */
    public void m5515e(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f9241r.add(viewHolder);
        animate.setDuration(getMoveDuration()).setListener(new C1318f(viewHolder, i5, view, i6, animate)).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    @SuppressLint({"UnknownNullness"})
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        int size = this.f9235l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f9235l.get(size).f9278a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(viewHolder);
                this.f9235l.remove(size);
            }
        }
        m5519i(this.f9236m, viewHolder);
        if (this.f9233j.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.f9234k.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.f9239p.size() - 1; size2 >= 0; size2--) {
            ArrayList<C1321i> arrayList = this.f9239p.get(size2);
            m5519i(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.f9239p.remove(size2);
            }
        }
        for (int size3 = this.f9238o.size() - 1; size3 >= 0; size3--) {
            ArrayList<C1322j> arrayList2 = this.f9238o.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f9278a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f9238o.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f9237n.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.ViewHolder> arrayList3 = this.f9237n.get(size5);
            if (arrayList3.remove(viewHolder)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.f9237n.remove(size5);
                }
            }
        }
        this.f9242s.remove(viewHolder);
        this.f9240q.remove(viewHolder);
        this.f9243t.remove(viewHolder);
        this.f9241r.remove(viewHolder);
        m5518h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        int size = this.f9235l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C1322j c1322j = this.f9235l.get(size);
            View view = c1322j.f9278a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(c1322j.f9278a);
            this.f9235l.remove(size);
        }
        for (int size2 = this.f9233j.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.f9233j.get(size2));
            this.f9233j.remove(size2);
        }
        int size3 = this.f9234k.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = this.f9234k.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
            this.f9234k.remove(size3);
        }
        for (int size4 = this.f9236m.size() - 1; size4 >= 0; size4--) {
            m5520j(this.f9236m.get(size4));
        }
        this.f9236m.clear();
        if (isRunning()) {
            for (int size5 = this.f9238o.size() - 1; size5 >= 0; size5--) {
                ArrayList<C1322j> arrayList = this.f9238o.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C1322j c1322j2 = arrayList.get(size6);
                    View view2 = c1322j2.f9278a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(c1322j2.f9278a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f9238o.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f9237n.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.ViewHolder> arrayList2 = this.f9237n.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = arrayList2.get(size8);
                    viewHolder2.itemView.setAlpha(1.0f);
                    dispatchAddFinished(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f9237n.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f9239p.size() - 1; size9 >= 0; size9--) {
                ArrayList<C1321i> arrayList3 = this.f9239p.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m5520j(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f9239p.remove(arrayList3);
                    }
                }
            }
            m5517g(this.f9242s);
            m5517g(this.f9241r);
            m5517g(this.f9240q);
            m5517g(this.f9243t);
            dispatchAnimationsFinished();
        }
    }

    /* renamed from: f */
    public final void m5516f(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f9242s.add(viewHolder);
        animate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new C1316d(viewHolder, animate, view)).start();
    }

    /* renamed from: g */
    public void m5517g(List<RecyclerView.ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    /* renamed from: h */
    public void m5518h() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    /* renamed from: i */
    public final void m5519i(List<C1321i> list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C1321i c1321i = list.get(size);
            if (m5521k(c1321i, viewHolder) && c1321i.f9272a == null && c1321i.f9273b == null) {
                list.remove(c1321i);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.f9234k.isEmpty() && this.f9236m.isEmpty() && this.f9235l.isEmpty() && this.f9233j.isEmpty() && this.f9241r.isEmpty() && this.f9242s.isEmpty() && this.f9240q.isEmpty() && this.f9243t.isEmpty() && this.f9238o.isEmpty() && this.f9237n.isEmpty() && this.f9239p.isEmpty()) ? false : true;
    }

    /* renamed from: j */
    public final void m5520j(C1321i c1321i) {
        RecyclerView.ViewHolder viewHolder = c1321i.f9272a;
        if (viewHolder != null) {
            m5521k(c1321i, viewHolder);
        }
        RecyclerView.ViewHolder viewHolder2 = c1321i.f9273b;
        if (viewHolder2 != null) {
            m5521k(c1321i, viewHolder2);
        }
    }

    /* renamed from: k */
    public final boolean m5521k(C1321i c1321i, RecyclerView.ViewHolder viewHolder) {
        boolean z = false;
        if (c1321i.f9273b == viewHolder) {
            c1321i.f9273b = null;
        } else {
            if (c1321i.f9272a != viewHolder) {
                return false;
            }
            c1321i.f9272a = null;
            z = true;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    /* renamed from: l */
    public final void m5522l(RecyclerView.ViewHolder viewHolder) {
        if (f9232v == null) {
            f9232v = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(f9232v);
        endAnimation(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        boolean z = !this.f9233j.isEmpty();
        boolean z2 = !this.f9235l.isEmpty();
        boolean z3 = !this.f9236m.isEmpty();
        boolean z4 = !this.f9234k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.ViewHolder> it2 = this.f9233j.iterator();
            while (it2.hasNext()) {
                m5516f(it2.next());
            }
            this.f9233j.clear();
            if (z2) {
                ArrayList<C1322j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f9235l);
                this.f9238o.add(arrayList);
                this.f9235l.clear();
                RunnableC1313a runnableC1313a = new RunnableC1313a(arrayList);
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList.get(0).f9278a.itemView, runnableC1313a, getRemoveDuration());
                } else {
                    runnableC1313a.run();
                }
            }
            if (z3) {
                ArrayList<C1321i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f9236m);
                this.f9239p.add(arrayList2);
                this.f9236m.clear();
                RunnableC1314b runnableC1314b = new RunnableC1314b(arrayList2);
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).f9272a.itemView, runnableC1314b, getRemoveDuration());
                } else {
                    runnableC1314b.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.ViewHolder> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f9234k);
                this.f9237n.add(arrayList3);
                this.f9234k.clear();
                RunnableC1315c runnableC1315c = new RunnableC1315c(arrayList3);
                if (z || z2 || z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, runnableC1315c, (z ? getRemoveDuration() : 0L) + Math.max(z2 ? getMoveDuration() : 0L, z3 ? getChangeDuration() : 0L));
                } else {
                    runnableC1315c.run();
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.DefaultItemAnimator$i */
    /* loaded from: classes3.dex */
    public static class C1321i {

        /* renamed from: a */
        public RecyclerView.ViewHolder f9272a;

        /* renamed from: b */
        public RecyclerView.ViewHolder f9273b;

        /* renamed from: c */
        public int f9274c;

        /* renamed from: d */
        public int f9275d;

        /* renamed from: e */
        public int f9276e;

        /* renamed from: f */
        public int f9277f;

        public C1321i(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.f9272a = viewHolder;
            this.f9273b = viewHolder2;
        }

        @SuppressLint({"UnknownNullness"})
        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f9272a + ", newHolder=" + this.f9273b + ", fromX=" + this.f9274c + ", fromY=" + this.f9275d + ", toX=" + this.f9276e + ", toY=" + this.f9277f + '}';
        }

        public C1321i(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            this.f9274c = i;
            this.f9275d = i2;
            this.f9276e = i3;
            this.f9277f = i4;
        }
    }
}
