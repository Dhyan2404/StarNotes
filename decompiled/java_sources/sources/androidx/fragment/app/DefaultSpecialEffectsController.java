package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.C1123b;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.FragmentTransitionImpl;
import androidx.fragment.app.SpecialEffectsController;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0003+,-B\u000f\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u001e\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0016\u0010\t\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J@\u0010\u0011\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\u000e\u001a\u00020\u00052\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u000fH\u0002JL\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u0002J&\u0010\u001c\u001a\u00020\u0007*\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u001aH\u0002J(\u0010!\u001a\u00020\u00072\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u001dj\b\u0012\u0004\u0012\u00020\u0019`\u001e2\u0006\u0010 \u001a\u00020\u0019H\u0002J$\u0010$\u001a\u00020\u00072\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\"2\u0006\u0010 \u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0003H\u0002¨\u0006."}, m61528d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "operations", "", "isPop", "", "executeOperations", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "Landroidx/fragment/app/DefaultSpecialEffectsController$a;", "animationInfos", "", "awaitingContainerChanges", "startedAnyTransition", "", "startedTransitions", "u", "Landroidx/fragment/app/DefaultSpecialEffectsController$c;", "transitionInfos", "firstOut", "lastIn", "x", "Landroidx/collection/ArrayMap;", "", "Landroid/view/View;", "", "names", "t", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "transitioningViews", "view", "q", "", "namedViews", "s", "operation", "p", "Landroid/view/ViewGroup;", gon.f71270W, Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;)V", "a", "b", "c", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,877:1\n288#2,2:878\n533#2,6:880\n819#2:886\n847#2,2:887\n766#2:889\n857#2,2:890\n1789#2,3:892\n819#2:895\n847#2,2:896\n1855#2,2:898\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController\n*L\n47#1:878,2\n53#1:880,6\n312#1:886\n312#1:887,2\n315#1:889\n315#1:890,2\n317#1:892,3\n629#1:895\n629#1:896,2\n632#1:898,2\n*E\n"})
/* loaded from: classes3.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$a */
    /* loaded from: classes3.dex */
    public static final class C1071a extends C1072b {

        /* renamed from: c */
        public final boolean f7321c;

        /* renamed from: d */
        public boolean f7322d;

        /* renamed from: e */
        @Nullable
        public C1123b.a f7323e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1071a(@NotNull SpecialEffectsController.Operation operation, @NotNull CancellationSignal signal, boolean z) {
            super(operation, signal);
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.f7321c = z;
        }

        @Nullable
        /* renamed from: e */
        public final C1123b.a m4516e(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.f7322d) {
                return this.f7323e;
            }
            C1123b.a m4806b = C1123b.m4806b(context, m4518b().getFragment(), m4518b().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.f7321c);
            this.f7323e = m4806b;
            this.f7322d = true;
            return m4806b;
        }
    }

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$b */
    /* loaded from: classes3.dex */
    public static class C1072b {

        /* renamed from: a */
        @NotNull
        public final SpecialEffectsController.Operation f7324a;

        /* renamed from: b */
        @NotNull
        public final CancellationSignal f7325b;

        public C1072b(@NotNull SpecialEffectsController.Operation operation, @NotNull CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.f7324a = operation;
            this.f7325b = signal;
        }

        /* renamed from: a */
        public final void m4517a() {
            this.f7324a.completeSpecialEffect(this.f7325b);
        }

        @NotNull
        /* renamed from: b */
        public final SpecialEffectsController.Operation m4518b() {
            return this.f7324a;
        }

        @NotNull
        /* renamed from: c */
        public final CancellationSignal m4519c() {
            return this.f7325b;
        }

        /* renamed from: d */
        public final boolean m4520d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = this.f7324a.getFragment().f7429z0;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            SpecialEffectsController.Operation.State asOperationState = companion.asOperationState(view);
            SpecialEffectsController.Operation.State finalState = this.f7324a.getFinalState();
            return asOperationState == finalState || !(asOperationState == (state = SpecialEffectsController.Operation.State.VISIBLE) || finalState == state);
        }
    }

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$c */
    /* loaded from: classes3.dex */
    public static final class C1073c extends C1072b {

        /* renamed from: c */
        @Nullable
        public final Object f7326c;

        /* renamed from: d */
        public final boolean f7327d;

        /* renamed from: e */
        @Nullable
        public final Object f7328e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1073c(@NotNull SpecialEffectsController.Operation operation, @NotNull CancellationSignal signal, boolean z, boolean z2) {
            super(operation, signal);
            Object returnTransition;
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            SpecialEffectsController.Operation.State finalState = operation.getFinalState();
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (finalState == state) {
                Fragment fragment = operation.getFragment();
                returnTransition = z ? fragment.getReenterTransition() : fragment.getEnterTransition();
            } else {
                Fragment fragment2 = operation.getFragment();
                returnTransition = z ? fragment2.getReturnTransition() : fragment2.getExitTransition();
            }
            this.f7326c = returnTransition;
            this.f7327d = operation.getFinalState() == state ? z ? operation.getFragment().getAllowReturnTransitionOverlap() : operation.getFragment().getAllowEnterTransitionOverlap() : true;
            this.f7328e = z2 ? z ? operation.getFragment().getSharedElementReturnTransition() : operation.getFragment().getSharedElementEnterTransition() : null;
        }

        @Nullable
        /* renamed from: e */
        public final FragmentTransitionImpl m4521e() {
            FragmentTransitionImpl m4522f = m4522f(this.f7326c);
            FragmentTransitionImpl m4522f2 = m4522f(this.f7328e);
            if (m4522f == null || m4522f2 == null || m4522f == m4522f2) {
                return m4522f == null ? m4522f2 : m4522f;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + m4518b().getFragment() + " returned Transition " + this.f7326c + " which uses a different Transition  type than its shared element transition " + this.f7328e).toString());
        }

        /* renamed from: f */
        public final FragmentTransitionImpl m4522f(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + m4518b().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }

        @Nullable
        /* renamed from: g */
        public final Object m4523g() {
            return this.f7328e;
        }

        @Nullable
        /* renamed from: h */
        public final Object m4524h() {
            return this.f7326c;
        }

        /* renamed from: i */
        public final boolean m4525i() {
            return this.f7328e != null;
        }

        /* renamed from: j */
        public final boolean m4526j() {
            return this.f7327d;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(@NotNull ViewGroup container) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
    }

    /* renamed from: A */
    public static final void m4495A(C1073c transitionInfo, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(transitionInfo, "$transitionInfo");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        transitionInfo.m4517a();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Transition for operation " + operation + " has completed");
        }
    }

    /* renamed from: B */
    public static final void m4496B(SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, boolean z, ArrayMap lastInViews) {
        Intrinsics.checkNotNullParameter(lastInViews, "$lastInViews");
        FragmentTransition.callSharedElementStartEnd(operation.getFragment(), operation2.getFragment(), z, lastInViews, false);
    }

    /* renamed from: r */
    public static final void m4504r(List awaitingContainerChanges, SpecialEffectsController.Operation operation, DefaultSpecialEffectsController this$0) {
        Intrinsics.checkNotNullParameter(awaitingContainerChanges, "$awaitingContainerChanges");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (awaitingContainerChanges.contains(operation)) {
            awaitingContainerChanges.remove(operation);
            this$0.m4510p(operation);
        }
    }

    /* renamed from: v */
    public static final void m4505v(Animator animator, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(operation, "$operation");
        animator.end();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animator from operation " + operation + " has been canceled.");
        }
    }

    /* renamed from: w */
    public static final void m4506w(View view, DefaultSpecialEffectsController this$0, C1071a animationInfo, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animationInfo, "$animationInfo");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        view.clearAnimation();
        this$0.getCom.sunia.HTREnginev2.gon.W java.lang.String().endViewTransition(view);
        animationInfo.m4517a();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Animation from operation " + operation + " has been cancelled.");
        }
    }

    /* renamed from: y */
    public static final void m4507y(FragmentTransitionImpl impl, View view, Rect lastInEpicenterRect) {
        Intrinsics.checkNotNullParameter(impl, "$impl");
        Intrinsics.checkNotNullParameter(lastInEpicenterRect, "$lastInEpicenterRect");
        impl.getBoundsOnScreen(view, lastInEpicenterRect);
    }

    /* renamed from: z */
    public static final void m4508z(ArrayList transitioningViews) {
        Intrinsics.checkNotNullParameter(transitioningViews, "$transitioningViews");
        FragmentTransition.setViewVisibility(transitioningViews, 4);
    }

    /* renamed from: C */
    public final void m4509C(List<? extends SpecialEffectsController.Operation> operations) {
        Object last;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) operations);
        Fragment fragment = ((SpecialEffectsController.Operation) last).getFragment();
        for (SpecialEffectsController.Operation operation : operations) {
            operation.getFragment().f7379C0.f7450c = fragment.f7379C0.f7450c;
            operation.getFragment().f7379C0.f7451d = fragment.f7379C0.f7451d;
            operation.getFragment().f7379C0.f7452e = fragment.f7379C0.f7452e;
            operation.getFragment().f7379C0.f7453f = fragment.f7379C0.f7453f;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    @Override // androidx.fragment.app.SpecialEffectsController
    public void executeOperations(@NotNull List<? extends SpecialEffectsController.Operation> operations, boolean isPop) {
        SpecialEffectsController.Operation operation;
        SpecialEffectsController.Operation operation2;
        final List<SpecialEffectsController.Operation> mutableList;
        Intrinsics.checkNotNullParameter(operations, "operations");
        Iterator it2 = operations.iterator();
        while (true) {
            operation = null;
            if (!it2.hasNext()) {
                operation2 = 0;
                break;
            }
            operation2 = it2.next();
            SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) operation2;
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = operation3.getFragment().f7429z0;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            SpecialEffectsController.Operation.State asOperationState = companion.asOperationState(view);
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (asOperationState == state && operation3.getFinalState() != state) {
                break;
            }
        }
        SpecialEffectsController.Operation operation4 = operation2;
        ListIterator<? extends SpecialEffectsController.Operation> listIterator = operations.listIterator(operations.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            SpecialEffectsController.Operation previous = listIterator.previous();
            SpecialEffectsController.Operation operation5 = previous;
            SpecialEffectsController.Operation.State.Companion companion2 = SpecialEffectsController.Operation.State.INSTANCE;
            View view2 = operation5.getFragment().f7429z0;
            Intrinsics.checkNotNullExpressionValue(view2, "operation.fragment.mView");
            SpecialEffectsController.Operation.State asOperationState2 = companion2.asOperationState(view2);
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            if (asOperationState2 != state2 && operation5.getFinalState() == state2) {
                operation = previous;
                break;
            }
        }
        SpecialEffectsController.Operation operation6 = operation;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Executing operations from " + operation4 + " to " + operation6);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) operations);
        m4509C(operations);
        Iterator<? extends SpecialEffectsController.Operation> it3 = operations.iterator();
        while (it3.hasNext()) {
            final SpecialEffectsController.Operation next = it3.next();
            CancellationSignal cancellationSignal = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new C1071a(next, cancellationSignal, isPop));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal2);
            arrayList2.add(new C1073c(next, cancellationSignal2, isPop, !isPop ? next != operation6 : next != operation4));
            next.addCompletionListener(new Runnable() { // from class: com.sunia.HTREnginev2.j0f
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSpecialEffectsController.m4504r(mutableList, next, this);
                }
            });
        }
        Map<SpecialEffectsController.Operation, Boolean> m4515x = m4515x(arrayList2, mutableList, isPop, operation4, operation6);
        m4514u(arrayList, mutableList, m4515x.containsValue(Boolean.TRUE), m4515x);
        Iterator<SpecialEffectsController.Operation> it4 = mutableList.iterator();
        while (it4.hasNext()) {
            m4510p(it4.next());
        }
        mutableList.clear();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Completed executing operations from " + operation4 + " to " + operation6);
        }
    }

    /* renamed from: p */
    public final void m4510p(SpecialEffectsController.Operation operation) {
        View view = operation.getFragment().f7429z0;
        SpecialEffectsController.Operation.State finalState = operation.getFinalState();
        Intrinsics.checkNotNullExpressionValue(view, "view");
        finalState.applyState(view);
    }

    /* renamed from: q */
    public final void m4511q(ArrayList<View> transitioningViews, View view) {
        if (!(view instanceof ViewGroup)) {
            if (transitioningViews.contains(view)) {
                return;
            }
            transitioningViews.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (transitioningViews.contains(view)) {
                return;
            }
            transitioningViews.add(view);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = viewGroup.getChildAt(i);
            if (child.getVisibility() == 0) {
                Intrinsics.checkNotNullExpressionValue(child, "child");
                m4511q(transitioningViews, child);
            }
        }
    }

    /* renamed from: s */
    public final void m4512s(Map<String, View> namedViews, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            namedViews.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = viewGroup.getChildAt(i);
                if (child.getVisibility() == 0) {
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    m4512s(namedViews, child);
                }
            }
        }
    }

    /* renamed from: t */
    public final void m4513t(ArrayMap<String, View> arrayMap, final Collection<String> collection) {
        Set<Map.Entry<String, View>> entries = arrayMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(entries, "entries");
        CollectionsKt__MutableCollectionsKt.retainAll(entries, new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Map.Entry<String, View> entry) {
                boolean contains;
                Intrinsics.checkNotNullParameter(entry, "entry");
                contains = CollectionsKt___CollectionsKt.contains(collection, ViewCompat.getTransitionName(entry.getValue()));
                return Boolean.valueOf(contains);
            }
        });
    }

    /* renamed from: u */
    public final void m4514u(List<C1071a> animationInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, boolean startedAnyTransition, Map<SpecialEffectsController.Operation, Boolean> startedTransitions) {
        Context context = getCom.sunia.HTREnginev2.gon.W java.lang.String().getContext();
        ArrayList<C1071a> arrayList = new ArrayList();
        boolean z = false;
        for (final C1071a c1071a : animationInfos) {
            if (c1071a.m4520d()) {
                c1071a.m4517a();
            } else {
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1123b.a m4516e = c1071a.m4516e(context);
                if (m4516e == null) {
                    c1071a.m4517a();
                } else {
                    final Animator animator = m4516e.f7677b;
                    if (animator == null) {
                        arrayList.add(c1071a);
                    } else {
                        final SpecialEffectsController.Operation m4518b = c1071a.m4518b();
                        Fragment fragment = m4518b.getFragment();
                        if (Intrinsics.areEqual(startedTransitions.get(m4518b), Boolean.TRUE)) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                            }
                            c1071a.m4517a();
                        } else {
                            final boolean z2 = m4518b.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z2) {
                                awaitingContainerChanges.remove(m4518b);
                            }
                            final View view = fragment.f7429z0;
                            getCom.sunia.HTREnginev2.gon.W java.lang.String().startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$startAnimations$1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(@NotNull Animator anim) {
                                    Intrinsics.checkNotNullParameter(anim, "anim");
                                    DefaultSpecialEffectsController.this.getCom.sunia.HTREnginev2.gon.W java.lang.String().endViewTransition(view);
                                    if (z2) {
                                        SpecialEffectsController.Operation.State finalState = m4518b.getFinalState();
                                        View viewToAnimate = view;
                                        Intrinsics.checkNotNullExpressionValue(viewToAnimate, "viewToAnimate");
                                        finalState.applyState(viewToAnimate);
                                    }
                                    c1071a.m4517a();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v("FragmentManager", "Animator from operation " + m4518b + " has ended.");
                                    }
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v("FragmentManager", "Animator from operation " + m4518b + " has started.");
                            }
                            c1071a.m4519c().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.sunia.HTREnginev2.o0f
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public final void onCancel() {
                                    DefaultSpecialEffectsController.m4505v(animator, m4518b);
                                }
                            });
                            z = true;
                        }
                    }
                }
            }
        }
        for (final C1071a c1071a2 : arrayList) {
            final SpecialEffectsController.Operation m4518b2 = c1071a2.m4518b();
            Fragment fragment2 = m4518b2.getFragment();
            if (startedAnyTransition) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.");
                }
                c1071a2.m4517a();
            } else if (z) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.");
                }
                c1071a2.m4517a();
            } else {
                final View view2 = fragment2.f7429z0;
                Intrinsics.checkNotNullExpressionValue(context, "context");
                C1123b.a m4516e2 = c1071a2.m4516e(context);
                if (m4516e2 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                Animation animation = m4516e2.f7676a;
                if (animation == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                if (m4518b2.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation);
                    c1071a2.m4517a();
                } else {
                    getCom.sunia.HTREnginev2.gon.W java.lang.String().startViewTransition(view2);
                    C1123b.b bVar = new C1123b.b(animation, getCom.sunia.HTREnginev2.gon.W java.lang.String(), view2);
                    bVar.setAnimationListener(new DefaultSpecialEffectsController$startAnimations$3(m4518b2, this, view2, c1071a2));
                    view2.startAnimation(bVar);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Animation from operation " + m4518b2 + " has started.");
                    }
                }
                c1071a2.m4519c().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.sunia.HTREnginev2.p0f
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public final void onCancel() {
                        DefaultSpecialEffectsController.m4506w(view2, this, c1071a2, m4518b2);
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public final Map<SpecialEffectsController.Operation, Boolean> m4515x(List<C1073c> transitionInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, final boolean isPop, final SpecialEffectsController.Operation firstOut, final SpecialEffectsController.Operation lastIn) {
        View view;
        Object obj;
        Object obj2;
        View view2;
        Object obj3;
        LinkedHashMap linkedHashMap;
        Object obj4;
        SpecialEffectsController.Operation operation;
        final ArrayList<View> arrayList;
        Rect rect;
        View view3;
        Collection<?> set;
        Collection<?> set2;
        Rect rect2;
        Object obj5;
        Object obj6;
        View view4;
        final Rect rect3;
        final View view5;
        DefaultSpecialEffectsController defaultSpecialEffectsController = this;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj7 : transitionInfos) {
            if (!((C1073c) obj7).m4520d()) {
                arrayList2.add(obj7);
            }
        }
        ArrayList<C1073c> arrayList3 = new ArrayList();
        for (Object obj8 : arrayList2) {
            if (((C1073c) obj8).m4521e() != null) {
                arrayList3.add(obj8);
            }
        }
        final FragmentTransitionImpl fragmentTransitionImpl = null;
        for (C1073c c1073c : arrayList3) {
            FragmentTransitionImpl m4521e = c1073c.m4521e();
            if (!(fragmentTransitionImpl == null || m4521e == fragmentTransitionImpl)) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c1073c.m4518b().getFragment() + " returned Transition " + c1073c.m4524h() + " which uses a different Transition type than other Fragments.").toString());
            }
            fragmentTransitionImpl = m4521e;
        }
        if (fragmentTransitionImpl == null) {
            for (C1073c c1073c2 : transitionInfos) {
                linkedHashMap2.put(c1073c2.m4518b(), Boolean.FALSE);
                c1073c2.m4517a();
            }
            return linkedHashMap2;
        }
        View view6 = new View(getCom.sunia.HTREnginev2.gon.W java.lang.String().getContext());
        Rect rect4 = new Rect();
        ArrayList<View> arrayList4 = new ArrayList<>();
        ArrayList<View> arrayList5 = new ArrayList<>();
        ArrayMap arrayMap = new ArrayMap();
        View view7 = null;
        Object obj9 = null;
        boolean z = false;
        for (C1073c c1073c3 : transitionInfos) {
            if (!c1073c3.m4525i() || firstOut == null || lastIn == null) {
                rect2 = rect4;
                view6 = view6;
                arrayList5 = arrayList5;
                arrayList4 = arrayList4;
                linkedHashMap2 = linkedHashMap2;
                view7 = view7;
                arrayMap = arrayMap;
            } else {
                Object wrapTransitionInSet = fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(c1073c3.m4523g()));
                ArrayList<String> m4592s = lastIn.getFragment().m4592s();
                Intrinsics.checkNotNullExpressionValue(m4592s, "lastIn.fragment.sharedElementSourceNames");
                ArrayList<String> m4592s2 = firstOut.getFragment().m4592s();
                View view8 = view7;
                Intrinsics.checkNotNullExpressionValue(m4592s2, "firstOut.fragment.sharedElementSourceNames");
                ArrayList<String> m4593t = firstOut.getFragment().m4593t();
                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                Intrinsics.checkNotNullExpressionValue(m4593t, "firstOut.fragment.sharedElementTargetNames");
                int size = m4593t.size();
                View view9 = view6;
                Rect rect5 = rect4;
                int i = 0;
                while (i < size) {
                    int i2 = size;
                    int indexOf = m4592s.indexOf(m4593t.get(i));
                    if (indexOf != -1) {
                        m4592s.set(indexOf, m4592s2.get(i));
                    }
                    i++;
                    size = i2;
                }
                ArrayList<String> m4593t2 = lastIn.getFragment().m4593t();
                Intrinsics.checkNotNullExpressionValue(m4593t2, "lastIn.fragment.sharedElementTargetNames");
                Pair m61535to = !isPop ? TuplesKt.m61535to(firstOut.getFragment().m4584k(), lastIn.getFragment().m4580i()) : TuplesKt.m61535to(firstOut.getFragment().m4580i(), lastIn.getFragment().m4584k());
                SharedElementCallback sharedElementCallback = (SharedElementCallback) m61535to.component1();
                SharedElementCallback sharedElementCallback2 = (SharedElementCallback) m61535to.component2();
                int size2 = m4592s.size();
                int i3 = 0;
                while (i3 < size2) {
                    arrayMap.put(m4592s.get(i3), m4593t2.get(i3));
                    i3++;
                    size2 = size2;
                    fragmentTransitionImpl = fragmentTransitionImpl;
                }
                FragmentTransitionImpl fragmentTransitionImpl2 = fragmentTransitionImpl;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", ">>> entering view names <<<");
                    for (Iterator<String> it2 = m4593t2.iterator(); it2.hasNext(); it2 = it2) {
                        Log.v("FragmentManager", "Name: " + it2.next());
                    }
                    Log.v("FragmentManager", ">>> exiting view names <<<");
                    for (Iterator<String> it3 = m4592s.iterator(); it3.hasNext(); it3 = it3) {
                        Log.v("FragmentManager", "Name: " + it3.next());
                    }
                }
                ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
                View view10 = firstOut.getFragment().f7429z0;
                Intrinsics.checkNotNullExpressionValue(view10, "firstOut.fragment.mView");
                defaultSpecialEffectsController.m4512s(arrayMap2, view10);
                arrayMap2.retainAll(m4592s);
                if (sharedElementCallback != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Executing exit callback for operation " + firstOut);
                    }
                    sharedElementCallback.onMapSharedElements(m4592s, arrayMap2);
                    int size3 = m4592s.size() - 1;
                    if (size3 >= 0) {
                        while (true) {
                            int i4 = size3 - 1;
                            String str = m4592s.get(size3);
                            View view11 = (View) arrayMap2.get(str);
                            if (view11 == null) {
                                arrayMap.remove(str);
                                obj5 = wrapTransitionInSet;
                            } else {
                                obj5 = wrapTransitionInSet;
                                if (!Intrinsics.areEqual(str, ViewCompat.getTransitionName(view11))) {
                                    arrayMap.put(ViewCompat.getTransitionName(view11), (String) arrayMap.remove(str));
                                }
                            }
                            if (i4 < 0) {
                                break;
                            }
                            size3 = i4;
                            wrapTransitionInSet = obj5;
                        }
                    } else {
                        obj5 = wrapTransitionInSet;
                    }
                } else {
                    obj5 = wrapTransitionInSet;
                    arrayMap.retainAll(arrayMap2.keySet());
                }
                final ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                View view12 = lastIn.getFragment().f7429z0;
                Intrinsics.checkNotNullExpressionValue(view12, "lastIn.fragment.mView");
                defaultSpecialEffectsController.m4512s(arrayMap3, view12);
                arrayMap3.retainAll(m4593t2);
                arrayMap3.retainAll(arrayMap.values());
                if (sharedElementCallback2 != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Executing enter callback for operation " + lastIn);
                    }
                    sharedElementCallback2.onMapSharedElements(m4593t2, arrayMap3);
                    int size4 = m4593t2.size() - 1;
                    if (size4 >= 0) {
                        while (true) {
                            int i5 = size4 - 1;
                            String name = m4593t2.get(size4);
                            View view13 = arrayMap3.get(name);
                            if (view13 == null) {
                                Intrinsics.checkNotNullExpressionValue(name, "name");
                                String findKeyForValue = FragmentTransition.findKeyForValue(arrayMap, name);
                                if (findKeyForValue != null) {
                                    arrayMap.remove(findKeyForValue);
                                }
                            } else if (!Intrinsics.areEqual(name, ViewCompat.getTransitionName(view13))) {
                                Intrinsics.checkNotNullExpressionValue(name, "name");
                                String findKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap, name);
                                if (findKeyForValue2 != null) {
                                    arrayMap.put(findKeyForValue2, ViewCompat.getTransitionName(view13));
                                }
                            }
                            if (i5 < 0) {
                                break;
                            }
                            size4 = i5;
                        }
                    }
                } else {
                    FragmentTransition.retainValues(arrayMap, arrayMap3);
                }
                Collection<String> keySet = arrayMap.keySet();
                Intrinsics.checkNotNullExpressionValue(keySet, "sharedElementNameMapping.keys");
                defaultSpecialEffectsController.m4513t(arrayMap2, keySet);
                Collection<String> values = arrayMap.values();
                Intrinsics.checkNotNullExpressionValue(values, "sharedElementNameMapping.values");
                defaultSpecialEffectsController.m4513t(arrayMap3, values);
                if (arrayMap.isEmpty()) {
                    arrayList4.clear();
                    arrayList5.clear();
                    view7 = view8;
                    rect4 = rect5;
                    linkedHashMap2 = linkedHashMap3;
                    view6 = view9;
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                    obj9 = null;
                } else {
                    FragmentTransition.callSharedElementStartEnd(lastIn.getFragment(), firstOut.getFragment(), isPop, arrayMap2, true);
                    OneShotPreDrawListener.add(getCom.sunia.HTREnginev2.gon.W java.lang.String(), new Runnable() { // from class: com.sunia.HTREnginev2.k0f
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.m4496B(SpecialEffectsController.Operation.this, firstOut, isPop, arrayMap3);
                        }
                    });
                    arrayList4.addAll(arrayMap2.values());
                    if (!m4592s.isEmpty()) {
                        view4 = (View) arrayMap2.get(m4592s.get(0));
                        obj6 = obj5;
                        fragmentTransitionImpl = fragmentTransitionImpl2;
                        fragmentTransitionImpl.setEpicenter(obj6, view4);
                    } else {
                        obj6 = obj5;
                        fragmentTransitionImpl = fragmentTransitionImpl2;
                        view4 = view8;
                    }
                    arrayList5.addAll(arrayMap3.values());
                    if (!(!m4593t2.isEmpty()) || (view5 = arrayMap3.get(m4593t2.get(0))) == null) {
                        rect3 = rect5;
                    } else {
                        rect3 = rect5;
                        OneShotPreDrawListener.add(getCom.sunia.HTREnginev2.gon.W java.lang.String(), new Runnable() { // from class: com.sunia.HTREnginev2.l0f
                            @Override // java.lang.Runnable
                            public final void run() {
                                DefaultSpecialEffectsController.m4507y(FragmentTransitionImpl.this, view5, rect3);
                            }
                        });
                        z = true;
                    }
                    fragmentTransitionImpl.setSharedElementTargets(obj6, view9, arrayList4);
                    obj9 = obj6;
                    ArrayList<View> arrayList6 = arrayList5;
                    rect2 = rect3;
                    fragmentTransitionImpl.scheduleRemoveTargets(obj9, null, null, null, null, obj6, arrayList6);
                    Boolean bool = Boolean.TRUE;
                    linkedHashMap3.put(firstOut, bool);
                    linkedHashMap3.put(lastIn, bool);
                    view7 = view4;
                    arrayList5 = arrayList6;
                    arrayList4 = arrayList4;
                    arrayMap = arrayMap;
                    view6 = view9;
                    linkedHashMap2 = linkedHashMap3;
                }
            }
            rect4 = rect2;
        }
        View view14 = view7;
        ArrayMap arrayMap4 = arrayMap;
        ArrayList<View> arrayList7 = arrayList5;
        ArrayList<View> arrayList8 = arrayList4;
        Rect rect6 = rect4;
        LinkedHashMap linkedHashMap4 = linkedHashMap2;
        View view15 = view6;
        ArrayList arrayList9 = new ArrayList();
        Iterator<C1073c> it4 = transitionInfos.iterator();
        Object obj10 = null;
        Object obj11 = null;
        while (it4.hasNext()) {
            C1073c next = it4.next();
            if (next.m4520d()) {
                linkedHashMap4.put(next.m4518b(), Boolean.FALSE);
                next.m4517a();
            } else {
                Object cloneTransition = fragmentTransitionImpl.cloneTransition(next.m4524h());
                SpecialEffectsController.Operation m4518b = next.m4518b();
                boolean z2 = obj9 != null && (m4518b == firstOut || m4518b == lastIn);
                if (cloneTransition != null) {
                    LinkedHashMap linkedHashMap5 = linkedHashMap4;
                    ArrayList<View> arrayList10 = new ArrayList<>();
                    Iterator<C1073c> it5 = it4;
                    View view16 = m4518b.getFragment().f7429z0;
                    Object obj12 = obj9;
                    Intrinsics.checkNotNullExpressionValue(view16, "operation.fragment.mView");
                    defaultSpecialEffectsController.m4511q(arrayList10, view16);
                    if (z2) {
                        if (m4518b == firstOut) {
                            set2 = CollectionsKt___CollectionsKt.toSet(arrayList8);
                            arrayList10.removeAll(set2);
                        } else {
                            set = CollectionsKt___CollectionsKt.toSet(arrayList7);
                            arrayList10.removeAll(set);
                        }
                    }
                    if (arrayList10.isEmpty()) {
                        fragmentTransitionImpl.addTarget(cloneTransition, view15);
                        view2 = view15;
                        operation = m4518b;
                        obj2 = obj10;
                        obj3 = obj11;
                        arrayList = arrayList10;
                        view = view14;
                        linkedHashMap = linkedHashMap5;
                        obj = obj12;
                        obj4 = cloneTransition;
                    } else {
                        fragmentTransitionImpl.addTargets(cloneTransition, arrayList10);
                        view = view14;
                        obj = obj12;
                        obj2 = obj10;
                        view2 = view15;
                        obj3 = obj11;
                        linkedHashMap = linkedHashMap5;
                        fragmentTransitionImpl.scheduleRemoveTargets(cloneTransition, cloneTransition, arrayList10, null, null, null, null);
                        if (m4518b.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation = m4518b;
                            awaitingContainerChanges.remove(operation);
                            arrayList = arrayList10;
                            ArrayList<View> arrayList11 = new ArrayList<>(arrayList);
                            arrayList11.remove(operation.getFragment().f7429z0);
                            obj4 = cloneTransition;
                            fragmentTransitionImpl.scheduleHideFragmentView(obj4, operation.getFragment().f7429z0, arrayList11);
                            OneShotPreDrawListener.add(getCom.sunia.HTREnginev2.gon.W java.lang.String(), new Runnable() { // from class: com.sunia.HTREnginev2.m0f
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DefaultSpecialEffectsController.m4508z(arrayList);
                                }
                            });
                        } else {
                            obj4 = cloneTransition;
                            operation = m4518b;
                            arrayList = arrayList10;
                        }
                    }
                    if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList9.addAll(arrayList);
                        rect = rect6;
                        if (z) {
                            fragmentTransitionImpl.setEpicenter(obj4, rect);
                        }
                        view3 = view;
                    } else {
                        rect = rect6;
                        view3 = view;
                        fragmentTransitionImpl.setEpicenter(obj4, view3);
                    }
                    linkedHashMap.put(operation, Boolean.TRUE);
                    if (next.m4526j()) {
                        obj11 = fragmentTransitionImpl.mergeTransitionsTogether(obj3, obj4, null);
                    } else {
                        obj2 = fragmentTransitionImpl.mergeTransitionsTogether(obj2, obj4, null);
                        obj11 = obj3;
                    }
                    linkedHashMap4 = linkedHashMap;
                    rect6 = rect;
                    view14 = view3;
                    obj9 = obj;
                    view15 = view2;
                    it4 = it5;
                    obj10 = obj2;
                    defaultSpecialEffectsController = this;
                } else if (!z2) {
                    linkedHashMap4.put(m4518b, Boolean.FALSE);
                    next.m4517a();
                }
            }
        }
        Object obj13 = obj11;
        LinkedHashMap linkedHashMap6 = linkedHashMap4;
        Object obj14 = obj9;
        Object mergeTransitionsInSequence = fragmentTransitionImpl.mergeTransitionsInSequence(obj13, obj10, obj14);
        if (mergeTransitionsInSequence == null) {
            return linkedHashMap6;
        }
        ArrayList<C1073c> arrayList12 = new ArrayList();
        for (Object obj15 : transitionInfos) {
            if (!((C1073c) obj15).m4520d()) {
                arrayList12.add(obj15);
            }
        }
        for (final C1073c c1073c4 : arrayList12) {
            Object m4524h = c1073c4.m4524h();
            final SpecialEffectsController.Operation m4518b2 = c1073c4.m4518b();
            boolean z3 = obj14 != null && (m4518b2 == firstOut || m4518b2 == lastIn);
            if (m4524h != null || z3) {
                if (ViewCompat.isLaidOut(getCom.sunia.HTREnginev2.gon.W java.lang.String())) {
                    fragmentTransitionImpl.setListenerForTransitionEnd(c1073c4.m4518b().getFragment(), mergeTransitionsInSequence, c1073c4.m4519c(), new Runnable() { // from class: com.sunia.HTREnginev2.n0f
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.m4495A(DefaultSpecialEffectsController.C1073c.this, m4518b2);
                        }
                    });
                } else {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Container " + getCom.sunia.HTREnginev2.gon.W java.lang.String() + " has not been laid out. Completing operation " + m4518b2);
                    }
                    c1073c4.m4517a();
                }
            }
        }
        if (!ViewCompat.isLaidOut(getCom.sunia.HTREnginev2.gon.W java.lang.String())) {
            return linkedHashMap6;
        }
        FragmentTransition.setViewVisibility(arrayList9, 4);
        ArrayList<String> m4779b = fragmentTransitionImpl.m4779b(arrayList7);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", ">>>>> Beginning transition <<<<<");
            Log.v("FragmentManager", ">>>>> SharedElementFirstOutViews <<<<<");
            Iterator<View> it6 = arrayList8.iterator();
            while (it6.hasNext()) {
                View sharedElementFirstOutViews = it6.next();
                Intrinsics.checkNotNullExpressionValue(sharedElementFirstOutViews, "sharedElementFirstOutViews");
                View view17 = sharedElementFirstOutViews;
                Log.v("FragmentManager", "View: " + view17 + " Name: " + ViewCompat.getTransitionName(view17));
            }
            Log.v("FragmentManager", ">>>>> SharedElementLastInViews <<<<<");
            Iterator<View> it7 = arrayList7.iterator();
            while (it7.hasNext()) {
                View sharedElementLastInViews = it7.next();
                Intrinsics.checkNotNullExpressionValue(sharedElementLastInViews, "sharedElementLastInViews");
                View view18 = sharedElementLastInViews;
                Log.v("FragmentManager", "View: " + view18 + " Name: " + ViewCompat.getTransitionName(view18));
            }
        }
        fragmentTransitionImpl.beginDelayedTransition(getCom.sunia.HTREnginev2.gon.W java.lang.String(), mergeTransitionsInSequence);
        fragmentTransitionImpl.m4780c(getCom.sunia.HTREnginev2.gon.W java.lang.String(), arrayList8, arrayList7, m4779b, arrayMap4);
        FragmentTransition.setViewVisibility(arrayList9, 0);
        fragmentTransitionImpl.swapSharedElementTargets(obj14, arrayList8, arrayList7);
        return linkedHashMap6;
    }
}
