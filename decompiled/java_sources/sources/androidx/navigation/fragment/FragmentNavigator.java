package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.core.os.BundleKt;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.NavigatorState;
import androidx.navigation.fragment.FragmentNavigator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.StateFlow;
import org.apache.http.HttpHeaders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Navigator.Name("fragment")
@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u0000 L2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004MNOPB\u001f\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u00104\u001a\u000202¢\u0006\u0004\bJ\u0010KJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J'\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J*\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0017J*\u0010\"\u001a\u00020\u00052\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\tH\u0016J\n\u0010%\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0019H\u0016J\u0018\u0010'\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J$\u0010(\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0002J\u001a\u0010*\u001a\u00020)2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002J$\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u00172\b\b\u0002\u0010,\u001a\u00020\u000f2\b\b\u0002\u0010-\u001a\u00020\u000fH\u0002R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00104\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00103R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\u0017058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u00106R,\u0010>\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f09088\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010A\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010@R \u0010E\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020?0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR \u0010I\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u001c0F8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bG\u0010H¨\u0006Q"}, m61528d2 = {"Landroidx/navigation/fragment/FragmentNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/FragmentNavigator$Destination;", "Landroidx/navigation/NavigatorState;", "state", "", "onAttach", "Landroidx/fragment/app/Fragment;", "fragment", "Landroidx/navigation/NavBackStackEntry;", "entry", "attachClearViewModel$navigation_fragment_release", "(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavigatorState;)V", "attachClearViewModel", "popUpTo", "", "savedState", "popBackStack", "createDestination", "Landroid/content/Context;", "context", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "className", "Landroid/os/Bundle;", "args", "instantiateFragment", "", "entries", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "navigate", "backStackEntry", "onLaunchSingleTop", "onSaveState", "onRestoreState", "e", C6999h.f39688c, "Landroidx/fragment/app/FragmentTransaction;", C6997f.f39671c, "id", "isPop", "deduplicate", "c", "Landroid/content/Context;", "d", "Landroidx/fragment/app/FragmentManager;", "", "I", "containerId", "", "Ljava/util/Set;", "savedIds", "", "Lkotlin/Pair;", C6998g.f39679a, "Ljava/util/List;", "getPendingOps$navigation_fragment_release", "()Ljava/util/List;", "pendingOps", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/lifecycle/LifecycleEventObserver;", "fragmentObserver", "Lkotlin/Function1;", "i", "Lkotlin/jvm/functions/Function1;", "fragmentViewObserver", "Lkotlinx/coroutines/flow/StateFlow;", "getBackStack$navigation_fragment_release", "()Lkotlinx/coroutines/flow/StateFlow;", "backStack", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V", "j", "ClearEntryStateViewModel", "a", HttpHeaders.DESTINATION, "Extras", "navigation-fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator\n+ 2 InitializerViewModelFactory.kt\nandroidx/lifecycle/viewmodel/InitializerViewModelFactoryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,712:1\n31#2:713\n63#2,2:714\n766#3:716\n857#3,2:717\n1855#3,2:719\n518#3,7:721\n533#3,6:728\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator\n*L\n253#1:713\n253#1:714,2\n333#1:716\n333#1:717,2\n333#1:719,2\n90#1:721,7\n141#1:728,6\n*E\n"})
/* loaded from: classes3.dex */
public class FragmentNavigator extends Navigator<Destination> {

    /* renamed from: k */
    @NotNull
    public static final String f8561k = "FragmentNavigator";

    /* renamed from: l */
    @NotNull
    public static final String f8562l = "androidx-nav-fragment:navigator:savedIds";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final FragmentManager fragmentManager;

    /* renamed from: e, reason: from kotlin metadata */
    public final int containerId;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Set<String> savedIds;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<Pair<String, Boolean>> pendingOps;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final LifecycleEventObserver fragmentObserver;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Function1<NavBackStackEntry, LifecycleEventObserver> fragmentViewObserver;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0014R&\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, m61528d2 = {"Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "completeTransition", "Ljava/lang/ref/WeakReference;", "Lkotlin/Function0;", "", "getCompleteTransition", "()Ljava/lang/ref/WeakReference;", "setCompleteTransition", "(Ljava/lang/ref/WeakReference;)V", "onCleared", "navigation-fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class ClearEntryStateViewModel extends ViewModel {
        public WeakReference<Function0<Unit>> completeTransition;

        @NotNull
        public final WeakReference<Function0<Unit>> getCompleteTransition() {
            WeakReference<Function0<Unit>> weakReference = this.completeTransition;
            if (weakReference != null) {
                return weakReference;
            }
            Intrinsics.throwUninitializedPropertyAccessException("completeTransition");
            return null;
        }

        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            Function0<Unit> function0 = getCompleteTransition().get();
            if (function0 != null) {
                function0.invoke();
            }
        }

        public final void setCompleteTransition(@NotNull WeakReference<Function0<Unit>> weakReference) {
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            this.completeTransition = weakReference;
        }
    }

    @Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0018\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0017¢\u0006\u0004\b\u0019\u0010\u001aB\u0011\b\u0016\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u0019\u0010\u001dJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0017J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\b\u0010\u000b\u001a\u00020\bH\u0016J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, m61528d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "onInflate", "", "className", "setClassName", "toString", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", C4921e.f26528e, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "_className", "getClassName", "()Ljava/lang/String;", "Landroidx/navigation/Navigator;", "fragmentNavigator", Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/Navigator;)V", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "navigation-fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @NavDestination.ClassType(Fragment.class)
    @SourceDebugExtension({"SMAP\nFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$Destination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,712:1\n232#2,3:713\n1#3:716\n*S KotlinDebug\n*F\n+ 1 FragmentNavigator.kt\nandroidx/navigation/fragment/FragmentNavigator$Destination\n*L\n568#1:713,3\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Destination extends NavDestination {

        /* renamed from: o, reason: from kotlin metadata */
        @Nullable
        public String _className;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull Navigator<? extends Destination> fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.checkNotNullParameter(fragmentNavigator, "fragmentNavigator");
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !(other instanceof Destination)) {
                return false;
            }
            return super.equals(other) && Intrinsics.areEqual(this._className, ((Destination) other)._className);
        }

        @NotNull
        public final String getClassName() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("Fragment class was not set".toString());
            }
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            return str;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this._className;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void onInflate(@NotNull Context context, @NotNull AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, C1230R.styleable.FragmentNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…leable.FragmentNavigator)");
            String string = obtainAttributes.getString(C1230R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                setClassName(string);
            }
            Unit unit = Unit.INSTANCE;
            obtainAttributes.recycle();
        }

        @NotNull
        public final Destination setClassName(@NotNull String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this._className = className;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.getNavigator(FragmentNavigator.class));
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001d\b\u0000\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\t¢\u0006\u0004\b\r\u0010\u000eR0\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004`\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m61528d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Extras;", "Landroidx/navigation/Navigator$Extras;", "Ljava/util/LinkedHashMap;", "Landroid/view/View;", "", "Lkotlin/collections/LinkedHashMap;", "a", "Ljava/util/LinkedHashMap;", "_sharedElements", "", "getSharedElements", "()Ljava/util/Map;", "sharedElements", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;)V", "Builder", "navigation-fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Extras implements Navigator.Extras {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final LinkedHashMap<View, String> _sharedElements;

        @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0016\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\nR0\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\fj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004`\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Landroidx/navigation/fragment/FragmentNavigator$Extras$Builder;", "", "", "Landroid/view/View;", "", "sharedElements", "addSharedElements", "sharedElement", "name", "addSharedElement", "Landroidx/navigation/fragment/FragmentNavigator$Extras;", PrivilegedApp.f6529f, "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "a", "Ljava/util/LinkedHashMap;", "_sharedElements", Constants.CONSTRUCTOR_NAME, "()V", "navigation-fragment_release"}, m61529k = 1, m61530mv = {1, 8, 0})
        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public final LinkedHashMap<View, String> _sharedElements = new LinkedHashMap<>();

            @NotNull
            public final Builder addSharedElement(@NotNull View sharedElement, @NotNull String name) {
                Intrinsics.checkNotNullParameter(sharedElement, "sharedElement");
                Intrinsics.checkNotNullParameter(name, "name");
                this._sharedElements.put(sharedElement, name);
                return this;
            }

            @NotNull
            public final Builder addSharedElements(@NotNull Map<View, String> sharedElements) {
                Intrinsics.checkNotNullParameter(sharedElements, "sharedElements");
                for (Map.Entry<View, String> entry : sharedElements.entrySet()) {
                    addSharedElement(entry.getKey(), entry.getValue());
                }
                return this;
            }

            @NotNull
            public final Extras build() {
                return new Extras(this._sharedElements);
            }
        }

        public Extras(@NotNull Map<View, String> sharedElements) {
            Intrinsics.checkNotNullParameter(sharedElements, "sharedElements");
            LinkedHashMap<View, String> linkedHashMap = new LinkedHashMap<>();
            this._sharedElements = linkedHashMap;
            linkedHashMap.putAll(sharedElements);
        }

        @NotNull
        public final Map<View, String> getSharedElements() {
            Map<View, String> map;
            map = MapsKt__MapsKt.toMap(this._sharedElements);
            return map;
        }
    }

    /* renamed from: androidx.navigation.fragment.FragmentNavigator$b */
    /* loaded from: classes3.dex */
    public static final class C1229b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f8573a;

        public C1229b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f8573a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f8573a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f8573a.invoke(obj);
        }
    }

    public FragmentNavigator(@NotNull Context context, @NotNull FragmentManager fragmentManager, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i;
        this.savedIds = new LinkedHashSet();
        this.pendingOps = new ArrayList();
        this.fragmentObserver = new LifecycleEventObserver() { // from class: com.sunia.HTREnginev2.wug
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                FragmentNavigator.m5194g(FragmentNavigator.this, lifecycleOwner, event);
            }
        };
        this.fragmentViewObserver = new FragmentNavigator$fragmentViewObserver$1(this);
    }

    /* renamed from: d */
    public static /* synthetic */ void m5193d(FragmentNavigator fragmentNavigator, String str, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addPendingOps");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        fragmentNavigator.m5196c(str, z, z2);
    }

    /* renamed from: g */
    public static final void m5194g(FragmentNavigator this$0, LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            Fragment fragment = (Fragment) source;
            Object obj = null;
            for (Object obj2 : this$0.getState().getTransitionsInProgress().getValue()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) obj2).getId(), fragment.getTag())) {
                    obj = obj2;
                }
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            if (navBackStackEntry != null) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(f8561k, "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + source + " lifecycle reaching DESTROYED");
                }
                this$0.getState().markTransitionComplete(navBackStackEntry);
            }
        }
    }

    /* renamed from: i */
    public static final void m5195i(NavigatorState state, FragmentNavigator this$0, FragmentManager fragmentManager, Fragment fragment) {
        NavBackStackEntry navBackStackEntry;
        Intrinsics.checkNotNullParameter(state, "$state");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragmentManager, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        List<NavBackStackEntry> value = state.getBackStack().getValue();
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                navBackStackEntry = null;
                break;
            } else {
                navBackStackEntry = listIterator.previous();
                if (Intrinsics.areEqual(navBackStackEntry.getId(), fragment.getTag())) {
                    break;
                }
            }
        }
        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(f8561k, "Attaching fragment " + fragment + " associated with entry " + navBackStackEntry2 + " to FragmentManager " + this$0.fragmentManager);
        }
        if (navBackStackEntry2 != null) {
            this$0.m5197e(navBackStackEntry2, fragment);
            this$0.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry2, state);
        }
    }

    public final void attachClearViewModel$navigation_fragment_release(@NotNull final Fragment fragment, @NotNull final NavBackStackEntry entry, @NotNull final NavigatorState state) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(entry, "entry");
        Intrinsics.checkNotNullParameter(state, "state");
        ViewModelStore viewModelStore = fragment.getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "fragment.viewModelStore");
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        initializerViewModelFactoryBuilder.addInitializer(Reflection.getOrCreateKotlinClass(ClearEntryStateViewModel.class), new Function1<CreationExtras, ClearEntryStateViewModel>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachClearViewModel$viewModel$1$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final FragmentNavigator.ClearEntryStateViewModel invoke(@NotNull CreationExtras initializer) {
                Intrinsics.checkNotNullParameter(initializer, "$this$initializer");
                return new FragmentNavigator.ClearEntryStateViewModel();
            }
        });
        ((ClearEntryStateViewModel) new ViewModelProvider(viewModelStore, initializerViewModelFactoryBuilder.build(), CreationExtras.Empty.INSTANCE).get(ClearEntryStateViewModel.class)).setCompleteTransition(new WeakReference<>(new Function0<Unit>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachClearViewModel$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NavigatorState navigatorState = state;
                Fragment fragment2 = fragment;
                for (NavBackStackEntry navBackStackEntry : navigatorState.getTransitionsInProgress().getValue()) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentNavigator.f8561k, "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + fragment2 + " viewmodel being cleared");
                    }
                    navigatorState.markTransitionComplete(navBackStackEntry);
                }
            }
        }));
    }

    /* renamed from: c */
    public final void m5196c(final String id, boolean isPop, boolean deduplicate) {
        if (deduplicate) {
            CollectionsKt__MutableCollectionsKt.removeAll((List) this.pendingOps, (Function1) new Function1<Pair<? extends String, ? extends Boolean>, Boolean>() { // from class: androidx.navigation.fragment.FragmentNavigator$addPendingOps$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Boolean invoke2(@NotNull Pair<String, Boolean> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(Intrinsics.areEqual(it2.getFirst(), id));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Pair<? extends String, ? extends Boolean> pair) {
                    return invoke2((Pair<String, Boolean>) pair);
                }
            });
        }
        this.pendingOps.add(TuplesKt.m61535to(id, Boolean.valueOf(isPop)));
    }

    /* renamed from: e */
    public final void m5197e(final NavBackStackEntry entry, final Fragment fragment) {
        fragment.getViewLifecycleOwnerLiveData().observe(fragment, new C1229b(new Function1<LifecycleOwner, Unit>() { // from class: androidx.navigation.fragment.FragmentNavigator$attachObservers$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LifecycleOwner lifecycleOwner) {
                invoke2(lifecycleOwner);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LifecycleOwner lifecycleOwner) {
                Function1 function1;
                List<Pair<String, Boolean>> pendingOps$navigation_fragment_release = FragmentNavigator.this.getPendingOps$navigation_fragment_release();
                Fragment fragment2 = fragment;
                boolean z = false;
                if (!(pendingOps$navigation_fragment_release instanceof Collection) || !pendingOps$navigation_fragment_release.isEmpty()) {
                    Iterator<T> it2 = pendingOps$navigation_fragment_release.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        } else if (Intrinsics.areEqual(((Pair) it2.next()).getFirst(), fragment2.getTag())) {
                            z = true;
                            break;
                        }
                    }
                }
                if (lifecycleOwner == null || z) {
                    return;
                }
                Lifecycle lifecycle = fragment.getViewLifecycleOwner().getLifecycle();
                if (lifecycle.getState().isAtLeast(Lifecycle.State.CREATED)) {
                    function1 = FragmentNavigator.this.fragmentViewObserver;
                    lifecycle.addObserver((LifecycleObserver) function1.invoke(entry));
                }
            }
        }));
        fragment.getLifecycle().addObserver(this.fragmentObserver);
    }

    /* renamed from: f */
    public final FragmentTransaction m5198f(NavBackStackEntry entry, NavOptions navOptions) {
        NavDestination destination = entry.getDestination();
        Intrinsics.checkNotNull(destination, "null cannot be cast to non-null type androidx.navigation.fragment.FragmentNavigator.Destination");
        Bundle arguments = entry.getArguments();
        String className = ((Destination) destination).getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment instantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…t.classLoader, className)");
        instantiate.setArguments(arguments);
        FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(beginTransaction, "fragmentManager.beginTransaction()");
        int enterAnim = navOptions != null ? navOptions.getEnterAnim() : -1;
        int exitAnim = navOptions != null ? navOptions.getExitAnim() : -1;
        int popEnterAnim = navOptions != null ? navOptions.getPopEnterAnim() : -1;
        int popExitAnim = navOptions != null ? navOptions.getPopExitAnim() : -1;
        if (enterAnim != -1 || exitAnim != -1 || popEnterAnim != -1 || popExitAnim != -1) {
            if (enterAnim == -1) {
                enterAnim = 0;
            }
            if (exitAnim == -1) {
                exitAnim = 0;
            }
            if (popEnterAnim == -1) {
                popEnterAnim = 0;
            }
            beginTransaction.setCustomAnimations(enterAnim, exitAnim, popEnterAnim, popExitAnim != -1 ? popExitAnim : 0);
        }
        beginTransaction.replace(this.containerId, instantiate, entry.getId());
        beginTransaction.setPrimaryNavigationFragment(instantiate);
        beginTransaction.setReorderingAllowed(true);
        return beginTransaction;
    }

    @NotNull
    public final StateFlow<List<NavBackStackEntry>> getBackStack$navigation_fragment_release() {
        return getState().getBackStack();
    }

    @NotNull
    public final List<Pair<String, Boolean>> getPendingOps$navigation_fragment_release() {
        return this.pendingOps;
    }

    /* renamed from: h */
    public final void m5199h(NavBackStackEntry entry, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        Object lastOrNull;
        boolean isEmpty = getState().getBackStack().getValue().isEmpty();
        if (navOptions != null && !isEmpty && navOptions.getRestoreState() && this.savedIds.remove(entry.getId())) {
            this.fragmentManager.restoreBackStack(entry.getId());
            getState().pushWithTransition(entry);
            return;
        }
        FragmentTransaction m5198f = m5198f(entry, navOptions);
        if (!isEmpty) {
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) getState().getBackStack().getValue());
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) lastOrNull;
            if (navBackStackEntry != null) {
                m5193d(this, navBackStackEntry.getId(), false, false, 6, null);
            }
            m5193d(this, entry.getId(), false, false, 6, null);
            m5198f.addToBackStack(entry.getId());
        }
        if (navigatorExtras instanceof Extras) {
            for (Map.Entry<View, String> entry2 : ((Extras) navigatorExtras).getSharedElements().entrySet()) {
                m5198f.addSharedElement(entry2.getKey(), entry2.getValue());
            }
        }
        m5198f.commit();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(f8561k, "Calling pushWithTransition via navigate() on entry " + entry);
        }
        getState().pushWithTransition(entry);
    }

    @Deprecated(message = "Set a custom {@link androidx.fragment.app.FragmentFactory} via\n      {@link FragmentManager#setFragmentFactory(FragmentFactory)} to control\n      instantiation of Fragments.")
    @NotNull
    public Fragment instantiateFragment(@NotNull Context context, @NotNull FragmentManager fragmentManager, @NotNull String className, @Nullable Bundle args) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(className, "className");
        Fragment instantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), className);
        Intrinsics.checkNotNullExpressionValue(instantiate, "fragmentManager.fragment…t.classLoader, className)");
        return instantiate;
    }

    @Override // androidx.navigation.Navigator
    public void navigate(@NotNull List<NavBackStackEntry> entries, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(f8561k, "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator<NavBackStackEntry> it2 = entries.iterator();
        while (it2.hasNext()) {
            m5199h(it2.next(), navOptions, navigatorExtras);
        }
    }

    @Override // androidx.navigation.Navigator
    public void onAttach(@NotNull final NavigatorState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        super.onAttach(state);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(f8561k, "onAttach");
        }
        this.fragmentManager.addFragmentOnAttachListener(new FragmentOnAttachListener() { // from class: com.sunia.HTREnginev2.xug
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
                FragmentNavigator.m5195i(NavigatorState.this, this, fragmentManager, fragment);
            }
        });
        this.fragmentManager.addOnBackStackChangedListener(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.navigation.fragment.FragmentNavigator$onAttach$2
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeCommitted(@NotNull Fragment fragment, boolean pop) {
                List plus;
                Object obj;
                Object obj2;
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                plus = CollectionsKt___CollectionsKt.plus((Collection) NavigatorState.this.getBackStack().getValue(), (Iterable) NavigatorState.this.getTransitionsInProgress().getValue());
                ListIterator listIterator = plus.listIterator(plus.size());
                while (true) {
                    obj = null;
                    if (!listIterator.hasPrevious()) {
                        obj2 = null;
                        break;
                    } else {
                        obj2 = listIterator.previous();
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj2).getId(), fragment.getTag())) {
                            break;
                        }
                    }
                }
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                boolean z = pop && this.getPendingOps$navigation_fragment_release().isEmpty() && fragment.isRemoving();
                Iterator<T> it2 = this.getPendingOps$navigation_fragment_release().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (Intrinsics.areEqual(((Pair) next).getFirst(), fragment.getTag())) {
                        obj = next;
                        break;
                    }
                }
                Pair pair = (Pair) obj;
                if (pair != null) {
                    this.getPendingOps$navigation_fragment_release().remove(pair);
                }
                if (!z && FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentNavigator.f8561k, "OnBackStackChangedCommitted for fragment " + fragment + " associated with entry " + navBackStackEntry);
                }
                boolean z2 = pair != null && ((Boolean) pair.getSecond()).booleanValue();
                if (!pop && !z2 && navBackStackEntry == null) {
                    throw new IllegalArgumentException(("The fragment " + fragment + " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager.").toString());
                }
                if (navBackStackEntry != null) {
                    this.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, NavigatorState.this);
                    if (z) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentNavigator.f8561k, "OnBackStackChangedCommitted for fragment " + fragment + " popping associated entry " + navBackStackEntry + " via system back");
                        }
                        NavigatorState.this.popWithTransition(navBackStackEntry, false);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChangeStarted(@NotNull Fragment fragment, boolean pop) {
                NavBackStackEntry navBackStackEntry;
                Intrinsics.checkNotNullParameter(fragment, "fragment");
                if (pop) {
                    List<NavBackStackEntry> value = NavigatorState.this.getBackStack().getValue();
                    ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntry = null;
                            break;
                        } else {
                            navBackStackEntry = listIterator.previous();
                            if (Intrinsics.areEqual(navBackStackEntry.getId(), fragment.getTag())) {
                                break;
                            }
                        }
                    }
                    NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentNavigator.f8561k, "OnBackStackChangedStarted for fragment " + fragment + " associated with entry " + navBackStackEntry2);
                    }
                    if (navBackStackEntry2 != null) {
                        NavigatorState.this.prepareForTransition(navBackStackEntry2);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public void onLaunchSingleTop(@NotNull NavBackStackEntry backStackEntry) {
        int lastIndex;
        Object orNull;
        Intrinsics.checkNotNullParameter(backStackEntry, "backStackEntry");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(f8561k, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        FragmentTransaction m5198f = m5198f(backStackEntry, null);
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (value.size() > 1) {
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(value);
            orNull = CollectionsKt___CollectionsKt.getOrNull(value, lastIndex - 1);
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) orNull;
            if (navBackStackEntry != null) {
                m5193d(this, navBackStackEntry.getId(), false, false, 6, null);
            }
            m5193d(this, backStackEntry.getId(), true, false, 4, null);
            this.fragmentManager.popBackStack(backStackEntry.getId(), 1);
            m5193d(this, backStackEntry.getId(), false, false, 2, null);
            m5198f.addToBackStack(backStackEntry.getId());
        }
        m5198f.commit();
        getState().onLaunchSingleTop(backStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public void onRestoreState(@NotNull Bundle savedState) {
        Intrinsics.checkNotNullParameter(savedState, "savedState");
        ArrayList<String> stringArrayList = savedState.getStringArrayList(f8562l);
        if (stringArrayList != null) {
            this.savedIds.clear();
            CollectionsKt__MutableCollectionsKt.addAll(this.savedIds, stringArrayList);
        }
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public Bundle onSaveState() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return BundleKt.bundleOf(TuplesKt.m61535to(f8562l, new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    public void popBackStack(@NotNull NavBackStackEntry popUpTo, boolean savedState) {
        Object first;
        Object orNull;
        List<NavBackStackEntry> reversed;
        Intrinsics.checkNotNullParameter(popUpTo, "popUpTo");
        if (this.fragmentManager.isStateSaved()) {
            Log.i(f8561k, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        int indexOf = value.indexOf(popUpTo);
        List<NavBackStackEntry> subList = value.subList(indexOf, value.size());
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) value);
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) first;
        if (savedState) {
            reversed = CollectionsKt___CollectionsKt.reversed(subList);
            for (NavBackStackEntry navBackStackEntry2 : reversed) {
                if (Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry)) {
                    Log.i(f8561k, "FragmentManager cannot save the state of the initial destination " + navBackStackEntry2);
                } else {
                    this.fragmentManager.saveBackStack(navBackStackEntry2.getId());
                    this.savedIds.add(navBackStackEntry2.getId());
                }
            }
        } else {
            this.fragmentManager.popBackStack(popUpTo.getId(), 1);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(f8561k, "Calling popWithTransition via popBackStack() on entry " + popUpTo + " with savedState " + savedState);
        }
        orNull = CollectionsKt___CollectionsKt.getOrNull(value, indexOf - 1);
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) orNull;
        if (navBackStackEntry3 != null) {
            m5193d(this, navBackStackEntry3.getId(), false, false, 6, null);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : subList) {
            if (!Intrinsics.areEqual(((NavBackStackEntry) obj).getId(), navBackStackEntry.getId())) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m5193d(this, ((NavBackStackEntry) it2.next()).getId(), true, false, 4, null);
        }
        getState().popWithTransition(popUpTo, savedState);
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    public Destination createDestination() {
        return new Destination(this);
    }
}
