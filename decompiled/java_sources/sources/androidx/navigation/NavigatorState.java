package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.C1126e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH&J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0002H\u0017R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R \u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR \u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001f0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001dR*\u0010%\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\r8G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R#\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001b0)8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R#\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u001f0)8\u0006¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u0010-¨\u00064"}, m61528d2 = {"Landroidx/navigation/NavigatorState;", "", "Landroidx/navigation/NavBackStackEntry;", "backStackEntry", "", "push", "pushWithTransition", "Landroidx/navigation/NavDestination;", FirebaseAnalytics.Param.DESTINATION, "Landroid/os/Bundle;", C1126e.f7698m, "createBackStackEntry", "popUpTo", "", "saveState", "pop", "popWithTransition", "onLaunchSingleTop", "onLaunchSingleTopWithTransition", "entry", "markTransitionComplete", "prepareForTransition", "Ljava/util/concurrent/locks/ReentrantLock;", "a", "Ljava/util/concurrent/locks/ReentrantLock;", "backStackLock", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "b", "Lkotlinx/coroutines/flow/MutableStateFlow;", "_backStack", "", "c", "_transitionsInProgress", "<set-?>", "d", Constants.HASIDCALL_INDEX_SIG, "isNavigating", Constants.BOOLEAN_VALUE_SIG, "setNavigating", "(Z)V", "Lkotlinx/coroutines/flow/StateFlow;", "e", "Lkotlinx/coroutines/flow/StateFlow;", "getBackStack", "()Lkotlinx/coroutines/flow/StateFlow;", "backStack", C6997f.f39671c, "getTransitionsInProgress", "transitionsInProgress", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavigatorState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigatorState.kt\nandroidx/navigation/NavigatorState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1747#2,3:229\n1747#2,3:232\n959#2,7:235\n1747#2,3:242\n2624#2,3:245\n533#2,6:248\n378#2,7:254\n451#2,6:261\n*S KotlinDebug\n*F\n+ 1 NavigatorState.kt\nandroidx/navigation/NavigatorState\n*L\n83#1:229,3\n84#1:232,3\n112#1:235,7\n134#1:242,3\n135#1:245,3\n140#1:248,6\n167#1:254,7\n192#1:261,6\n*E\n"})
/* loaded from: classes3.dex */
public abstract class NavigatorState {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ReentrantLock backStackLock = new ReentrantLock(true);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final MutableStateFlow<List<NavBackStackEntry>> _backStack;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final MutableStateFlow<Set<NavBackStackEntry>> _transitionsInProgress;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isNavigating;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StateFlow<List<NavBackStackEntry>> backStack;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StateFlow<Set<NavBackStackEntry>> transitionsInProgress;

    public NavigatorState() {
        List emptyList;
        Set emptySet;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableStateFlow<List<NavBackStackEntry>> MutableStateFlow = StateFlowKt.MutableStateFlow(emptyList);
        this._backStack = MutableStateFlow;
        emptySet = SetsKt__SetsKt.emptySet();
        MutableStateFlow<Set<NavBackStackEntry>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(emptySet);
        this._transitionsInProgress = MutableStateFlow2;
        this.backStack = FlowKt.asStateFlow(MutableStateFlow);
        this.transitionsInProgress = FlowKt.asStateFlow(MutableStateFlow2);
    }

    @NotNull
    public abstract NavBackStackEntry createBackStackEntry(@NotNull NavDestination destination, @Nullable Bundle arguments);

    @NotNull
    public final StateFlow<List<NavBackStackEntry>> getBackStack() {
        return this.backStack;
    }

    @NotNull
    public final StateFlow<Set<NavBackStackEntry>> getTransitionsInProgress() {
        return this.transitionsInProgress;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: isNavigating, reason: from getter */
    public final boolean getIsNavigating() {
        return this.isNavigating;
    }

    public void markTransitionComplete(@NotNull NavBackStackEntry entry) {
        Set<NavBackStackEntry> minus;
        Intrinsics.checkNotNullParameter(entry, "entry");
        MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
        minus = SetsKt___SetsKt.minus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow.getValue()), entry);
        mutableStateFlow.setValue(minus);
    }

    @CallSuper
    public void onLaunchSingleTop(@NotNull NavBackStackEntry backStackEntry) {
        List<NavBackStackEntry> mutableList;
        int i;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.backStack.getValue());
            ListIterator<NavBackStackEntry> listIterator = mutableList.listIterator(mutableList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    i = -1;
                    break;
                } else if (Intrinsics.areEqual(listIterator.previous().getId(), backStackEntry.getId())) {
                    i = listIterator.nextIndex();
                    break;
                }
            }
            mutableList.set(i, backStackEntry);
            this._backStack.setValue(mutableList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    @CallSuper
    public void onLaunchSingleTopWithTransition(@NotNull NavBackStackEntry backStackEntry) {
        Set plus;
        Set<NavBackStackEntry> plus2;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        List<NavBackStackEntry> value = this.backStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        while (listIterator.hasPrevious()) {
            NavBackStackEntry previous = listIterator.previous();
            if (Intrinsics.areEqual(previous.getId(), backStackEntry.getId())) {
                MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
                plus = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow.getValue()), previous);
                plus2 = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) plus), backStackEntry);
                mutableStateFlow.setValue(plus2);
                onLaunchSingleTop(backStackEntry);
                return;
            }
        }
        throw new NoSuchElementException("List contains no element matching the predicate.");
    }

    public void pop(@NotNull NavBackStackEntry popUpTo, boolean saveState) {
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._backStack;
            List<NavBackStackEntry> value = mutableStateFlow.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : value) {
                if (!(!Intrinsics.areEqual((NavBackStackEntry) obj, popUpTo))) {
                    break;
                } else {
                    arrayList.add(obj);
                }
            }
            mutableStateFlow.setValue(arrayList);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void popWithTransition(@NotNull NavBackStackEntry popUpTo, boolean saveState) {
        boolean z;
        Set<NavBackStackEntry> plus;
        NavBackStackEntry navBackStackEntry;
        Set<NavBackStackEntry> plus2;
        boolean z2;
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        Set<NavBackStackEntry> value = this._transitionsInProgress.getValue();
        if (!(value instanceof Collection) || !value.isEmpty()) {
            Iterator<T> it2 = value.iterator();
            while (it2.hasNext()) {
                if (((NavBackStackEntry) it2.next()) == popUpTo) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            List<NavBackStackEntry> value2 = this.backStack.getValue();
            if (!(value2 instanceof Collection) || !value2.isEmpty()) {
                Iterator<T> it3 = value2.iterator();
                while (it3.hasNext()) {
                    if (((NavBackStackEntry) it3.next()) == popUpTo) {
                        z2 = false;
                        break;
                    }
                }
            }
            z2 = true;
            if (z2) {
                return;
            }
        }
        MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
        plus = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow.getValue()), popUpTo);
        mutableStateFlow.setValue(plus);
        List<NavBackStackEntry> value3 = this.backStack.getValue();
        ListIterator<NavBackStackEntry> listIterator = value3.listIterator(value3.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            }
            navBackStackEntry = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
            if (!Intrinsics.areEqual(navBackStackEntry2, popUpTo) && this.backStack.getValue().lastIndexOf(navBackStackEntry2) < this.backStack.getValue().lastIndexOf(popUpTo)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = navBackStackEntry;
        if (navBackStackEntry3 != null) {
            MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow2 = this._transitionsInProgress;
            plus2 = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow2.getValue()), navBackStackEntry3);
            mutableStateFlow2.setValue(plus2);
        }
        pop(popUpTo, saveState);
    }

    @CallSuper
    public void prepareForTransition(@NotNull NavBackStackEntry entry) {
        Set<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(entry, "entry");
        MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
        plus = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow.getValue()), entry);
        mutableStateFlow.setValue(plus);
    }

    public void push(@NotNull NavBackStackEntry backStackEntry) {
        List<NavBackStackEntry> plus;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            MutableStateFlow<List<NavBackStackEntry>> mutableStateFlow = this._backStack;
            plus = CollectionsKt___CollectionsKt.plus((Collection<? extends NavBackStackEntry>) ((Collection<? extends Object>) mutableStateFlow.getValue()), backStackEntry);
            mutableStateFlow.setValue(plus);
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void pushWithTransition(@NotNull NavBackStackEntry backStackEntry) {
        boolean z;
        Object lastOrNull;
        Set<NavBackStackEntry> plus;
        Set<NavBackStackEntry> plus2;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        Set<NavBackStackEntry> value = this._transitionsInProgress.getValue();
        boolean z2 = true;
        if (!(value instanceof Collection) || !value.isEmpty()) {
            Iterator<T> it2 = value.iterator();
            while (it2.hasNext()) {
                if (((NavBackStackEntry) it2.next()) == backStackEntry) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            List<NavBackStackEntry> value2 = this.backStack.getValue();
            if (!(value2 instanceof Collection) || !value2.isEmpty()) {
                Iterator<T> it3 = value2.iterator();
                while (it3.hasNext()) {
                    if (((NavBackStackEntry) it3.next()) == backStackEntry) {
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return;
            }
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.backStack.getValue());
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) lastOrNull;
        if (navBackStackEntry != null) {
            MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow = this._transitionsInProgress;
            plus2 = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow.getValue()), navBackStackEntry);
            mutableStateFlow.setValue(plus2);
        }
        MutableStateFlow<Set<NavBackStackEntry>> mutableStateFlow2 = this._transitionsInProgress;
        plus = SetsKt___SetsKt.plus((Set<? extends NavBackStackEntry>) ((Set<? extends Object>) mutableStateFlow2.getValue()), backStackEntry);
        mutableStateFlow2.setValue(plus);
        push(backStackEntry);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setNavigating(boolean z) {
        this.isNavigating = z;
    }
}
