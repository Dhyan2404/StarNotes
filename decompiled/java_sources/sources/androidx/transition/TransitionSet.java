package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import com.bumptech.glide.load.engine.GlideException;
import com.sunia.HTREnginev2.lnn;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class TransitionSet extends Transition {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;

    /* renamed from: V0 */
    public static final int f10708V0 = 1;

    /* renamed from: W0 */
    public static final int f10709W0 = 2;

    /* renamed from: X0 */
    public static final int f10710X0 = 4;

    /* renamed from: Y0 */
    public static final int f10711Y0 = 8;

    /* renamed from: Q0 */
    public ArrayList<Transition> f10712Q0;

    /* renamed from: R0 */
    public boolean f10713R0;

    /* renamed from: S0 */
    public int f10714S0;

    /* renamed from: T0 */
    public boolean f10715T0;

    /* renamed from: U0 */
    public int f10716U0;

    /* renamed from: androidx.transition.TransitionSet$a */
    /* loaded from: classes3.dex */
    public class C1505a extends TransitionListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ Transition f10717e;

        public C1505a(Transition transition) {
            this.f10717e = transition;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            this.f10717e.runAnimators();
            transition.removeListener(this);
        }
    }

    /* renamed from: androidx.transition.TransitionSet$b */
    /* loaded from: classes3.dex */
    public class C1506b extends TransitionListenerAdapter {
        public C1506b() {
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
            TransitionSet.this.f10712Q0.remove(transition);
            if (TransitionSet.this.mo6604t()) {
                return;
            }
            TransitionSet.this.m6584D(Transition.InterfaceC1503h.f10692c, false);
            TransitionSet transitionSet = TransitionSet.this;
            transitionSet.f10658t0 = true;
            transitionSet.m6584D(Transition.InterfaceC1503h.f10691b, false);
        }
    }

    /* renamed from: androidx.transition.TransitionSet$c */
    /* loaded from: classes3.dex */
    public static class C1507c extends TransitionListenerAdapter {

        /* renamed from: e */
        public TransitionSet f10720e;

        public C1507c(TransitionSet transitionSet) {
            this.f10720e = transitionSet;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f10720e;
            int i = transitionSet.f10714S0 - 1;
            transitionSet.f10714S0 = i;
            if (i == 0) {
                transitionSet.f10715T0 = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            TransitionSet transitionSet = this.f10720e;
            if (transitionSet.f10715T0) {
                return;
            }
            transitionSet.start();
            this.f10720e.f10715T0 = true;
        }
    }

    public TransitionSet() {
        this.f10712Q0 = new ArrayList<>();
        this.f10713R0 = true;
        this.f10715T0 = false;
        this.f10716U0 = 0;
    }

    @Override // androidx.transition.Transition
    @RequiresApi(34)
    /* renamed from: G */
    public void mo6586G() {
        this.f10634B0 = 0L;
        C1506b c1506b = new C1506b();
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            Transition transition = this.f10712Q0.get(i);
            transition.addListener(c1506b);
            transition.mo6586G();
            long m6603s = transition.m6603s();
            if (this.f10713R0) {
                this.f10634B0 = Math.max(this.f10634B0, m6603s);
            } else {
                long j = this.f10634B0;
                transition.f10636D0 = j;
                this.f10634B0 = j + m6603s;
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: I */
    public void mo6588I(boolean z) {
        super.mo6588I(z);
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).mo6588I(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    @androidx.annotation.RequiresApi(34)
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6589J(long r19, long r21) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r3 = r21
            long r5 = r18.m6603s()
            androidx.transition.TransitionSet r7 = r0.f10661v
            r8 = 0
            if (r7 == 0) goto L21
            int r7 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r7 >= 0) goto L18
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 < 0) goto L20
        L18:
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 <= 0) goto L21
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L21
        L20:
            return
        L21:
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r10 = 0
            if (r7 >= 0) goto L28
            r12 = 1
            goto L29
        L28:
            r12 = r10
        L29:
            int r13 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r13 < 0) goto L31
            int r14 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r14 < 0) goto L39
        L31:
            int r14 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r14 > 0) goto L40
            int r14 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r14 <= 0) goto L40
        L39:
            r0.f10658t0 = r10
            androidx.transition.Transition$h r14 = androidx.transition.Transition.InterfaceC1503h.f10690a
            r0.m6584D(r14, r12)
        L40:
            boolean r14 = r0.f10713R0
            if (r14 == 0) goto L5d
        L44:
            java.util.ArrayList<androidx.transition.Transition> r7 = r0.f10712Q0
            int r7 = r7.size()
            if (r10 >= r7) goto L5a
            java.util.ArrayList<androidx.transition.Transition> r7 = r0.f10712Q0
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.Transition r7 = (androidx.transition.Transition) r7
            r7.mo6589J(r1, r3)
            int r10 = r10 + 1
            goto L44
        L5a:
            r16 = r12
            goto La5
        L5d:
            int r10 = r0.m6640M(r3)
            if (r7 < 0) goto L88
        L63:
            java.util.ArrayList<androidx.transition.Transition> r7 = r0.f10712Q0
            int r7 = r7.size()
            if (r10 >= r7) goto L5a
            java.util.ArrayList<androidx.transition.Transition> r7 = r0.f10712Q0
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.Transition r7 = (androidx.transition.Transition) r7
            long r14 = r7.f10636D0
            r16 = r12
            long r11 = r1 - r14
            int r17 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
            if (r17 >= 0) goto L7e
            goto La5
        L7e:
            long r14 = r3 - r14
            r7.mo6589J(r11, r14)
            int r10 = r10 + 1
            r12 = r16
            goto L63
        L88:
            r16 = r12
        L8a:
            if (r10 < 0) goto La5
            java.util.ArrayList<androidx.transition.Transition> r7 = r0.f10712Q0
            java.lang.Object r7 = r7.get(r10)
            androidx.transition.Transition r7 = (androidx.transition.Transition) r7
            long r11 = r7.f10636D0
            long r14 = r1 - r11
            long r11 = r3 - r11
            r7.mo6589J(r14, r11)
            int r7 = (r14 > r8 ? 1 : (r14 == r8 ? 0 : -1))
            if (r7 < 0) goto La2
            goto La5
        La2:
            int r10 = r10 + (-1)
            goto L8a
        La5:
            androidx.transition.TransitionSet r7 = r0.f10661v
            if (r7 == 0) goto Lc3
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 <= 0) goto Lb1
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 <= 0) goto Lb7
        Lb1:
            if (r13 >= 0) goto Lc3
            int r2 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r2 < 0) goto Lc3
        Lb7:
            if (r1 <= 0) goto Lbc
            r1 = 1
            r0.f10658t0 = r1
        Lbc:
            androidx.transition.Transition$h r1 = androidx.transition.Transition.InterfaceC1503h.f10691b
            r11 = r16
            r0.m6584D(r1, r11)
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionSet.mo6589J(long, long):void");
    }

    @Override // androidx.transition.Transition
    /* renamed from: K */
    public String mo6590K(String str) {
        String mo6590K = super.mo6590K(str);
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(mo6590K);
            sb.append("\n");
            sb.append(this.f10712Q0.get(i).mo6590K(str + GlideException.C1935a.f14609h));
            mo6590K = sb.toString();
        }
        return mo6590K;
    }

    /* renamed from: L */
    public final void m6639L(@NonNull Transition transition) {
        this.f10712Q0.add(transition);
        transition.f10661v = this;
    }

    /* renamed from: M */
    public final int m6640M(long j) {
        for (int i = 1; i < this.f10712Q0.size(); i++) {
            if (this.f10712Q0.get(i).f10636D0 > j) {
                return i - 1;
            }
        }
        return this.f10712Q0.size() - 1;
    }

    /* renamed from: N */
    public final void m6641N() {
        C1507c c1507c = new C1507c(this);
        Iterator<Transition> it2 = this.f10712Q0.iterator();
        while (it2.hasNext()) {
            it2.next().addListener(c1507c);
        }
        this.f10714S0 = this.f10712Q0.size();
    }

    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        m6639L(transition);
        long j = this.f10642g;
        if (j >= 0) {
            transition.setDuration(j);
        }
        if ((this.f10716U0 & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.f10716U0 & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.f10716U0 & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.f10716U0 & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        super.cancel();
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        if (m6605v(transitionValues.view)) {
            Iterator<Transition> it2 = this.f10712Q0.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.m6605v(transitionValues.view)) {
                    next.captureEndValues(transitionValues);
                    transitionValues.f10721a.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        if (m6605v(transitionValues.view)) {
            Iterator<Transition> it2 = this.f10712Q0.iterator();
            while (it2.hasNext()) {
                Transition next = it2.next();
                if (next.m6605v(transitionValues.view)) {
                    next.captureStartValues(transitionValues);
                    transitionValues.f10721a.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).excludeTarget(view, z);
        }
        return super.excludeTarget(view, z);
    }

    @Override // androidx.transition.Transition
    /* renamed from: g */
    public void mo6593g(TransitionValues transitionValues) {
        super.mo6593g(transitionValues);
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).mo6593g(transitionValues);
        }
    }

    public int getOrdering() {
        return !this.f10713R0 ? 1 : 0;
    }

    @Nullable
    public Transition getTransitionAt(int i) {
        if (i < 0 || i >= this.f10712Q0.size()) {
            return null;
        }
        return this.f10712Q0.get(i);
    }

    public int getTransitionCount() {
        return this.f10712Q0.size();
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            if (!this.f10712Q0.get(i).isSeekingSupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.transition.Transition
    /* renamed from: j */
    public void mo6596j(@NonNull ViewGroup viewGroup, @NonNull lnn lnnVar, @NonNull lnn lnnVar2, @NonNull ArrayList<TransitionValues> arrayList, @NonNull ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            Transition transition = this.f10712Q0.get(i);
            if (startDelay > 0 && (this.f10713R0 || i == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.mo6596j(viewGroup, lnnVar, lnnVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: p */
    public void mo6601p(ViewGroup viewGroup) {
        super.mo6601p(viewGroup);
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).mo6601p(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(@Nullable View view) {
        super.pause(view);
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).pause(view);
        }
    }

    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        this.f10712Q0.remove(transition);
        transition.f10661v = null;
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(@Nullable View view) {
        super.resume(view);
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).resume(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        if (this.f10712Q0.isEmpty()) {
            start();
            end();
            return;
        }
        m6641N();
        if (this.f10713R0) {
            Iterator<Transition> it2 = this.f10712Q0.iterator();
            while (it2.hasNext()) {
                it2.next().runAnimators();
            }
            return;
        }
        for (int i = 1; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i - 1).addListener(new C1505a(this.f10712Q0.get(i)));
        }
        Transition transition = this.f10712Q0.get(0);
        if (transition != null) {
            transition.runAnimators();
        }
    }

    @Override // androidx.transition.Transition
    public void setEpicenterCallback(@Nullable Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.f10716U0 |= 8;
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).setEpicenterCallback(epicenterCallback);
        }
    }

    @NonNull
    public TransitionSet setOrdering(int i) {
        if (i == 0) {
            this.f10713R0 = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
            }
            this.f10713R0 = false;
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.f10716U0 |= 4;
        if (this.f10712Q0 != null) {
            for (int i = 0; i < this.f10712Q0.size(); i++) {
                this.f10712Q0.get(i).setPathMotion(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.f10716U0 |= 2;
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            this.f10712Q0.get(i).setPropagation(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: t */
    public boolean mo6604t() {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            if (this.f10712Q0.get(i).mo6604t()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    /* renamed from: clone */
    public Transition mo72145clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo72145clone();
        transitionSet.f10712Q0 = new ArrayList<>();
        int size = this.f10712Q0.size();
        for (int i = 0; i < size; i++) {
            transitionSet.m6639L(this.f10712Q0.get(i).mo72145clone());
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setDuration(long j) {
        ArrayList<Transition> arrayList;
        super.setDuration(j);
        if (this.f10642g >= 0 && (arrayList = this.f10712Q0) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10712Q0.get(i).setDuration(j);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f10716U0 |= 1;
        ArrayList<Transition> arrayList = this.f10712Q0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10712Q0.get(i).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setStartDelay(long j) {
        return (TransitionSet) super.setStartDelay(j);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull Class cls) {
        return removeTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).excludeTarget(str, z);
        }
        return super.excludeTarget(str, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull View view) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@IdRes int i) {
        for (int i2 = 0; i2 < this.f10712Q0.size(); i2++) {
            this.f10712Q0.get(i2).removeTarget(i);
        }
        return (TransitionSet) super.removeTarget(i);
    }

    public TransitionSet(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10712Q0 = new ArrayList<>();
        this.f10713R0 = true;
        this.f10715T0 = false;
        this.f10716U0 = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1513c.f10764i);
        setOrdering(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(int i, boolean z) {
        for (int i2 = 0; i2 < this.f10712Q0.size(); i2++) {
            this.f10712Q0.get(i2).excludeTarget(i, z);
        }
        return super.excludeTarget(i, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@IdRes int i) {
        for (int i2 = 0; i2 < this.f10712Q0.size(); i2++) {
            this.f10712Q0.get(i2).addTarget(i);
        }
        return (TransitionSet) super.addTarget(i);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull View view) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).excludeTarget(cls, z);
        }
        return super.excludeTarget(cls, z);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull String str) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull Class<?> cls) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull Class<?> cls) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull String str) {
        for (int i = 0; i < this.f10712Q0.size(); i++) {
            this.f10712Q0.get(i).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }
}
