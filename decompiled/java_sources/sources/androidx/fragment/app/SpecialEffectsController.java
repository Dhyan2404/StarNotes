package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.C1068R;
import androidx.fragment.app.SpecialEffectsController;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.fwm;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.text.AlphabetConverter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import xcrash.TombstoneParser;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u000e\b \u0018\u0000 22\u00020\u0001:\u00032!3B\u000f\u0012\u0006\u0010%\u001a\u00020 ¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\bJ\u0006\u0010\u0011\u001a\u00020\bJ\u0006\u0010\u0012\u001a\u00020\bJ\u0006\u0010\u0013\u001a\u00020\bJ#\u0010\u0018\u001a\u00020\b2\u0011\u0010\u0017\u001a\r\u0012\t\u0012\u00070\u0015¢\u0006\u0002\b\u00160\u00142\u0006\u0010\u000e\u001a\u00020\rH&J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J \u0010\u001e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u001f\u001a\u00020\bH\u0002R\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00150&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00150&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010(R\u0016\u0010-\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,¨\u00064"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController;", "", "Landroidx/fragment/app/e;", "fragmentStateManager", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "getAwaitingCompletionLifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "finalState", "", "enqueueAdd", "enqueueShow", "enqueueHide", "enqueueRemove", "", "isPop", "updateOperationDirection", "markPostponedState", "forcePostponedExecutePendingOperations", "executePendingOperations", "forceCompleteAllOperations", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "Lkotlin/jvm/JvmSuppressWildcards;", "operations", "executeOperations", "Landroidx/fragment/app/Fragment;", "fragment", C6997f.f39671c, C6998g.f39679a, "lifecycleImpact", "c", C6999h.f39688c, "Landroid/view/ViewGroup;", "a", "Landroid/view/ViewGroup;", "getContainer", "()Landroid/view/ViewGroup;", gon.f71270W, "", "b", "Ljava/util/List;", "pendingOperations", "runningOperations", "d", Constants.HASIDCALL_INDEX_SIG, "operationDirectionIsPop", "e", "isContainerPostponed", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;)V", "Companion", "Operation", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n288#2,2:711\n288#2,2:713\n533#2,6:715\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n*L\n69#1:711,2\n75#1:713,2\n166#1:715,6\n*E\n"})
/* loaded from: classes3.dex */
public abstract class SpecialEffectsController {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ViewGroup container;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Operation> pendingOperations;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<Operation> runningOperations;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean operationDirectionIsPop;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isContainerPostponed;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0007¨\u0006\f"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController$Companion;", "", "Landroid/view/ViewGroup;", gon.f71270W, "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/fragment/app/SpecialEffectsController;", "getOrCreateController", "Lcom/sunia/HTREnginev2/fwm;", "factory", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final SpecialEffectsController getOrCreateController(@NotNull ViewGroup container, @NotNull FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            fwm m4738u0 = fragmentManager.m4738u0();
            Intrinsics.checkNotNullExpressionValue(m4738u0, "fragmentManager.specialEffectsControllerFactory");
            return getOrCreateController(container, m4738u0);
        }

        public Companion() {
        }

        @JvmStatic
        @NotNull
        public final SpecialEffectsController getOrCreateController(@NotNull ViewGroup container, @NotNull fwm factory) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Object tag = container.getTag(C1068R.id.special_effects_controller_view_tag);
            if (tag instanceof SpecialEffectsController) {
                return (SpecialEffectsController) tag;
            }
            SpecialEffectsController mo4751a = factory.mo4751a(container);
            Intrinsics.checkNotNullExpressionValue(mo4751a, "factory.createController(container)");
            container.setTag(C1068R.id.special_effects_controller_view_tag, mo4751a);
            return mo4751a;
        }
    }

    @Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0010\u0018\u00002\u00020\u0001:\u00029:B'\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010%\u001a\u00020 \u0012\u0006\u00106\u001a\u00020\u000f¢\u0006\u0004\b7\u00108J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\b\u0010\u0013\u001a\u00020\u0004H\u0017R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000b0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000f0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R$\u00102\u001a\u00020.2\u0006\u0010/\u001a\u00020.8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R$\u00105\u001a\u00020.2\u0006\u0010/\u001a\u00020.8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b4\u00101\u001a\u0004\b5\u00103¨\u0006;"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation;", "", "", "toString", "", "cancel", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "lifecycleImpact", "mergeWith", "Ljava/lang/Runnable;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addCompletionListener", "onStart", "Landroidx/core/os/CancellationSignal;", TombstoneParser.keySignal, "markStartedSpecialEffect", "completeSpecialEffect", "complete", "a", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "getFinalState", "()Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "setFinalState", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;)V", "b", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "getLifecycleImpact", "()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "setLifecycleImpact", "(Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V", "Landroidx/fragment/app/Fragment;", "c", "Landroidx/fragment/app/Fragment;", "getFragment", "()Landroidx/fragment/app/Fragment;", "fragment", "", "d", "Ljava/util/List;", "completionListeners", "", "e", "Ljava/util/Set;", "specialEffectsSignals", "", "<set-?>", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isCanceled", Constants.BOOLEAN_VALUE_SIG, C6998g.f39679a, "isComplete", "cancellationSignal", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V", "LifecycleImpact", "State", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,710:1\n1855#2,2:711\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n*L\n607#1:711,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Operation {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public State finalState;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public LifecycleImpact lifecycleImpact;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final Fragment fragment;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final List<Runnable> completionListeners;

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final Set<CancellationSignal> specialEffectsSignals;

        /* renamed from: f, reason: from kotlin metadata */
        public boolean isCanceled;

        /* renamed from: g, reason: from kotlin metadata */
        public boolean isComplete;

        @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "", "(Ljava/lang/String;I)V", "NONE", "ADDING", "REMOVING", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0001\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "", "(Ljava/lang/String;I)V", "applyState", "", "view", "Landroid/view/View;", "REMOVED", "VISIBLE", "GONE", "INVISIBLE", "Companion", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;


            /* renamed from: Companion, reason: from kotlin metadata */
            @NotNull
            public static final Companion INSTANCE = new Companion(null);

            @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u00020\u0004*\u00020\b¨\u0006\t"}, m61528d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;", "", "()V", "from", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "visibility", "", "asOperationState", "Landroid/view/View;", "fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
            /* loaded from: classes3.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @NotNull
                public final State asOperationState(@NotNull View view) {
                    Intrinsics.checkNotNullParameter(view, "<this>");
                    return (((view.getAlpha() > 0.0f ? 1 : (view.getAlpha() == 0.0f ? 0 : -1)) == 0) && view.getVisibility() == 0) ? State.INVISIBLE : from(view.getVisibility());
                }

                @JvmStatic
                @NotNull
                public final State from(int visibility) {
                    if (visibility == 0) {
                        return State.VISIBLE;
                    }
                    if (visibility == 4) {
                        return State.INVISIBLE;
                    }
                    if (visibility == 8) {
                        return State.GONE;
                    }
                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                }

                public Companion() {
                }
            }

            @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @JvmStatic
            @NotNull
            public static final State from(int i) {
                return INSTANCE.from(i);
            }

            public final void applyState(@NotNull View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
                if (i == 1) {
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                    return;
                }
                if (i == 3) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                    return;
                }
                if (i != 4) {
                    return;
                }
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                }
                view.setVisibility(4);
            }
        }

        @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LifecycleImpact.values().length];
                try {
                    iArr[LifecycleImpact.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LifecycleImpact.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[LifecycleImpact.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public Operation(@NotNull State finalState, @NotNull LifecycleImpact lifecycleImpact, @NotNull Fragment fragment, @NotNull CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
            this.finalState = finalState;
            this.lifecycleImpact = lifecycleImpact;
            this.fragment = fragment;
            this.completionListeners = new ArrayList();
            this.specialEffectsSignals = new LinkedHashSet();
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.sunia.HTREnginev2.ewm
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    SpecialEffectsController.Operation.m4794b(SpecialEffectsController.Operation.this);
                }
            });
        }

        /* renamed from: b */
        public static final void m4794b(Operation this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.cancel();
        }

        public final void addCompletionListener(@NotNull Runnable listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.completionListeners.add(listener);
        }

        public final void cancel() {
            Set mutableSet;
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            if (this.specialEffectsSignals.isEmpty()) {
                complete();
                return;
            }
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(this.specialEffectsSignals);
            Iterator it2 = mutableSet.iterator();
            while (it2.hasNext()) {
                ((CancellationSignal) it2.next()).cancel();
            }
        }

        @CallSuper
        public void complete() {
            if (this.isComplete) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.isComplete = true;
            Iterator<T> it2 = this.completionListeners.iterator();
            while (it2.hasNext()) {
                ((Runnable) it2.next()).run();
            }
        }

        public final void completeSpecialEffect(@NotNull CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(signal, "signal");
            if (this.specialEffectsSignals.remove(signal) && this.specialEffectsSignals.isEmpty()) {
                complete();
            }
        }

        @NotNull
        public final State getFinalState() {
            return this.finalState;
        }

        @NotNull
        public final Fragment getFragment() {
            return this.fragment;
        }

        @NotNull
        public final LifecycleImpact getLifecycleImpact() {
            return this.lifecycleImpact;
        }

        /* renamed from: isCanceled, reason: from getter */
        public final boolean getIsCanceled() {
            return this.isCanceled;
        }

        /* renamed from: isComplete, reason: from getter */
        public final boolean getIsComplete() {
            return this.isComplete;
        }

        public final void markStartedSpecialEffect(@NotNull CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(signal, "signal");
            onStart();
            this.specialEffectsSignals.add(signal);
        }

        public final void mergeWith(@NotNull State finalState, @NotNull LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            int i = WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
            if (i == 1) {
                if (this.finalState == State.REMOVED) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.lifecycleImpact + " to ADDING.");
                    }
                    this.finalState = State.VISIBLE;
                    this.lifecycleImpact = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + " -> REMOVED. mLifecycleImpact  = " + this.lifecycleImpact + " to REMOVING.");
                }
                this.finalState = State.REMOVED;
                this.lifecycleImpact = LifecycleImpact.REMOVING;
                return;
            }
            if (i == 3 && this.finalState != State.REMOVED) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + AlphabetConverter.f109940d + finalState + '.');
                }
                this.finalState = finalState;
            }
        }

        public void onStart() {
        }

        public final void setFinalState(@NotNull State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.finalState = state;
        }

        public final void setLifecycleImpact(@NotNull LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(lifecycleImpact, "<set-?>");
            this.lifecycleImpact = lifecycleImpact;
        }

        @NotNull
        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {finalState = " + this.finalState + " lifecycleImpact = " + this.lifecycleImpact + " fragment = " + this.fragment + '}';
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            try {
                iArr[Operation.LifecycleImpact.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: androidx.fragment.app.SpecialEffectsController$a */
    /* loaded from: classes3.dex */
    public static final class C1121a extends Operation {

        /* renamed from: h */
        @NotNull
        public final C1126e f7670h;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1121a(@org.jetbrains.annotations.NotNull androidx.fragment.app.SpecialEffectsController.Operation.State r3, @org.jetbrains.annotations.NotNull androidx.fragment.app.SpecialEffectsController.Operation.LifecycleImpact r4, @org.jetbrains.annotations.NotNull androidx.fragment.app.C1126e r5, @org.jetbrains.annotations.NotNull androidx.core.os.CancellationSignal r6) {
            /*
                r2 = this;
                java.lang.String r0 = "finalState"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "lifecycleImpact"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "fragmentStateManager"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "cancellationSignal"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                androidx.fragment.app.Fragment r0 = r5.m4835k()
                java.lang.String r1 = "fragmentStateManager.fragment"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r2.<init>(r3, r4, r0, r6)
                r2.f7670h = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.SpecialEffectsController.C1121a.<init>(androidx.fragment.app.SpecialEffectsController$Operation$State, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact, androidx.fragment.app.e, androidx.core.os.CancellationSignal):void");
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete() {
            super.complete();
            this.f7670h.m4837m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void onStart() {
            if (getLifecycleImpact() != Operation.LifecycleImpact.ADDING) {
                if (getLifecycleImpact() == Operation.LifecycleImpact.REMOVING) {
                    Fragment m4835k = this.f7670h.m4835k();
                    Intrinsics.checkNotNullExpressionValue(m4835k, "fragmentStateManager.fragment");
                    View requireView = m4835k.requireView();
                    Intrinsics.checkNotNullExpressionValue(requireView, "fragment.requireView()");
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Clearing focus " + requireView.findFocus() + " on view " + requireView + " for Fragment " + m4835k);
                    }
                    requireView.clearFocus();
                    return;
                }
                return;
            }
            Fragment m4835k2 = this.f7670h.m4835k();
            Intrinsics.checkNotNullExpressionValue(m4835k2, "fragmentStateManager.fragment");
            View findFocus = m4835k2.f7429z0.findFocus();
            if (findFocus != null) {
                m4835k2.m4575f0(findFocus);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + m4835k2);
                }
            }
            View requireView2 = getFragment().requireView();
            Intrinsics.checkNotNullExpressionValue(requireView2, "this.fragment.requireView()");
            if (requireView2.getParent() == null) {
                this.f7670h.m4826b();
                requireView2.setAlpha(0.0f);
            }
            if ((requireView2.getAlpha() == 0.0f) && requireView2.getVisibility() == 0) {
                requireView2.setVisibility(4);
            }
            requireView2.setAlpha(m4835k2.m4591r());
        }
    }

    public SpecialEffectsController(@NotNull ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.container = container;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    /* renamed from: d */
    public static final void m4787d(SpecialEffectsController this$0, C1121a operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        if (this$0.pendingOperations.contains(operation)) {
            Operation.State finalState = operation.getFinalState();
            View view = operation.getFragment().f7429z0;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            finalState.applyState(view);
        }
    }

    /* renamed from: e */
    public static final void m4788e(SpecialEffectsController this$0, C1121a operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        this$0.pendingOperations.remove(operation);
        this$0.runningOperations.remove(operation);
    }

    @JvmStatic
    @NotNull
    public static final SpecialEffectsController getOrCreateController(@NotNull ViewGroup viewGroup, @NotNull FragmentManager fragmentManager) {
        return INSTANCE.getOrCreateController(viewGroup, fragmentManager);
    }

    /* renamed from: c */
    public final void m4789c(Operation.State finalState, Operation.LifecycleImpact lifecycleImpact, C1126e fragmentStateManager) {
        synchronized (this.pendingOperations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Fragment m4835k = fragmentStateManager.m4835k();
            Intrinsics.checkNotNullExpressionValue(m4835k, "fragmentStateManager.fragment");
            Operation m4790f = m4790f(m4835k);
            if (m4790f != null) {
                m4790f.mergeWith(finalState, lifecycleImpact);
                return;
            }
            final C1121a c1121a = new C1121a(finalState, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.pendingOperations.add(c1121a);
            c1121a.addCompletionListener(new Runnable() { // from class: com.sunia.HTREnginev2.cwm
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.m4787d(SpecialEffectsController.this, c1121a);
                }
            });
            c1121a.addCompletionListener(new Runnable() { // from class: com.sunia.HTREnginev2.dwm
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.m4788e(SpecialEffectsController.this, c1121a);
                }
            });
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void enqueueAdd(@NotNull Operation.State finalState, @NotNull C1126e fragmentStateManager) {
        Intrinsics.checkNotNullParameter(finalState, "finalState");
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.m4835k());
        }
        m4789c(finalState, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    public final void enqueueHide(@NotNull C1126e fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.m4835k());
        }
        m4789c(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void enqueueRemove(@NotNull C1126e fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.m4835k());
        }
        m4789c(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    public final void enqueueShow(@NotNull C1126e fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.m4835k());
        }
        m4789c(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public abstract void executeOperations(@NotNull List<Operation> operations, boolean isPop);

    public final void executePendingOperations() {
        List<Operation> mutableList;
        List<Operation> mutableList2;
        if (this.isContainerPostponed) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.container)) {
            forceCompleteAllOperations();
            this.operationDirectionIsPop = false;
            return;
        }
        synchronized (this.pendingOperations) {
            if (!this.pendingOperations.isEmpty()) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.runningOperations);
                this.runningOperations.clear();
                for (Operation operation : mutableList) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + operation);
                    }
                    operation.cancel();
                    if (!operation.getIsComplete()) {
                        this.runningOperations.add(operation);
                    }
                }
                m4792h();
                mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.pendingOperations);
                this.pendingOperations.clear();
                this.runningOperations.addAll(mutableList2);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                }
                Iterator<Operation> it2 = mutableList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onStart();
                }
                executeOperations(mutableList2, this.operationDirectionIsPop);
                this.operationDirectionIsPop = false;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* renamed from: f */
    public final Operation m4790f(Fragment fragment) {
        Object obj;
        Iterator<T> it2 = this.pendingOperations.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            Operation operation = (Operation) obj;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                break;
            }
        }
        return (Operation) obj;
    }

    public final void forceCompleteAllOperations() {
        List<Operation> mutableList;
        List<Operation> mutableList2;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = ViewCompat.isAttachedToWindow(this.container);
        synchronized (this.pendingOperations) {
            m4792h();
            Iterator<Operation> it2 = this.pendingOperations.iterator();
            while (it2.hasNext()) {
                it2.next().onStart();
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.runningOperations);
            for (Operation operation : mutableList) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: " + (isAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling running operation " + operation);
                }
                operation.cancel();
            }
            mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) this.pendingOperations);
            for (Operation operation2 : mutableList2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: " + (isAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling pending operation " + operation2);
                }
                operation2.cancel();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void forcePostponedExecutePendingOperations() {
        if (this.isContainerPostponed) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.isContainerPostponed = false;
            executePendingOperations();
        }
    }

    /* renamed from: g */
    public final Operation m4791g(Fragment fragment) {
        Object obj;
        Iterator<T> it2 = this.runningOperations.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            Operation operation = (Operation) obj;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                break;
            }
        }
        return (Operation) obj;
    }

    @Nullable
    public final Operation.LifecycleImpact getAwaitingCompletionLifecycleImpact(@NotNull C1126e fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        Fragment m4835k = fragmentStateManager.m4835k();
        Intrinsics.checkNotNullExpressionValue(m4835k, "fragmentStateManager.fragment");
        Operation m4790f = m4790f(m4835k);
        Operation.LifecycleImpact lifecycleImpact = m4790f != null ? m4790f.getLifecycleImpact() : null;
        Operation m4791g = m4791g(m4835k);
        Operation.LifecycleImpact lifecycleImpact2 = m4791g != null ? m4791g.getLifecycleImpact() : null;
        int i = lifecycleImpact == null ? -1 : WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
        return (i == -1 || i == 1) ? lifecycleImpact2 : lifecycleImpact;
    }

    @NotNull
    public final ViewGroup getContainer() {
        return this.container;
    }

    /* renamed from: h */
    public final void m4792h() {
        for (Operation operation : this.pendingOperations) {
            if (operation.getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                View requireView = operation.getFragment().requireView();
                Intrinsics.checkNotNullExpressionValue(requireView, "fragment.requireView()");
                operation.mergeWith(Operation.State.INSTANCE.from(requireView.getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    public final void markPostponedState() {
        Operation operation;
        synchronized (this.pendingOperations) {
            m4792h();
            List<Operation> list = this.pendingOperations;
            ListIterator<Operation> listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    operation = null;
                    break;
                }
                operation = listIterator.previous();
                Operation operation2 = operation;
                Operation.State.Companion companion = Operation.State.INSTANCE;
                View view = operation2.getFragment().f7429z0;
                Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
                Operation.State asOperationState = companion.asOperationState(view);
                Operation.State finalState = operation2.getFinalState();
                Operation.State state = Operation.State.VISIBLE;
                if (finalState == state && asOperationState != state) {
                    break;
                }
            }
            Operation operation3 = operation;
            Fragment fragment = operation3 != null ? operation3.getFragment() : null;
            this.isContainerPostponed = fragment != null ? fragment.m4598y() : false;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void updateOperationDirection(boolean isPop) {
        this.operationDirectionIsPop = isPop;
    }

    @JvmStatic
    @NotNull
    public static final SpecialEffectsController getOrCreateController(@NotNull ViewGroup viewGroup, @NotNull fwm fwmVar) {
        return INSTANCE.getOrCreateController(viewGroup, fwmVar);
    }
}
