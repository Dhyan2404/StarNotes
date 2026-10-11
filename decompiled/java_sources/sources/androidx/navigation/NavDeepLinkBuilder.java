package androidx.navigation;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.core.app.TaskStackBuilder;
import androidx.navigation.Navigator;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u001e4B\u000f\u0012\u0006\u0010!\u001a\u00020\u001f¢\u0006\u0004\b/\u00100B\u0011\b\u0010\u0012\u0006\u00102\u001a\u000201¢\u0006\u0004\b/\u00103J\u0018\u0010\u0005\u001a\u00020\u00002\u0010\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00030\u0002J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00002\b\b\u0001\u0010\t\u001a\u00020\bJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u001e\u0010\u0010\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u001e\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\r\u001a\u00020\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00112\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u0018J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\b\u0001\u0010\r\u001a\u00020\bH\u0002J\b\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u0010\u001e\u001a\u00020\u001cH\u0002R\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010%R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020(0'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00065"}, m61528d2 = {"Landroidx/navigation/NavDeepLinkBuilder;", "", "Ljava/lang/Class;", "Landroid/app/Activity;", "activityClass", "setComponentName", "Landroid/content/ComponentName;", "componentName", "", "navGraphId", "setGraph", "Landroidx/navigation/NavGraph;", "navGraph", "destId", "Landroid/os/Bundle;", "args", "setDestination", "", "destRoute", "addDestination", "route", "setArguments", "Landroidx/core/app/TaskStackBuilder;", "createTaskStackBuilder", "Landroid/app/PendingIntent;", "createPendingIntent", "Landroidx/navigation/NavDestination;", "b", "", "c", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "Landroid/content/Intent;", v6l.f87196g, "Landroidx/navigation/NavGraph;", "graph", "", "Landroidx/navigation/NavDeepLinkBuilder$a;", "d", "Ljava/util/List;", "destinations", "e", "Landroid/os/Bundle;", "globalArgs", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroidx/navigation/NavController;", "navController", "(Landroidx/navigation/NavController;)V", "PermissiveNavigatorProvider", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NavDeepLinkBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Intent com.sunia.HTREnginev2.v6l.g java.lang.String;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public NavGraph graph;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<C1223a> destinations;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Bundle globalArgs;

    /* loaded from: classes3.dex */
    public static final class PermissiveNavigatorProvider extends NavigatorProvider {

        /* renamed from: c */
        @NotNull
        public final Navigator<NavDestination> f8443c = new Navigator<NavDestination>() { // from class: androidx.navigation.NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1
            @Override // androidx.navigation.Navigator
            @NotNull
            public NavDestination createDestination() {
                return new NavDestination("permissive");
            }

            @Override // androidx.navigation.Navigator
            @Nullable
            public NavDestination navigate(@NotNull NavDestination destination, @Nullable Bundle args, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
                Intrinsics.checkNotNullParameter(destination, "destination");
                throw new IllegalStateException("navigate is not supported");
            }

            @Override // androidx.navigation.Navigator
            public boolean popBackStack() {
                throw new IllegalStateException("popBackStack is not supported");
            }
        };

        public PermissiveNavigatorProvider() {
            addNavigator(new NavGraphNavigator(this));
        }

        @Override // androidx.navigation.NavigatorProvider
        @NotNull
        public <T extends Navigator<? extends NavDestination>> T getNavigator(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            try {
                return (T) super.getNavigator(name);
            } catch (IllegalStateException unused) {
                Navigator<NavDestination> navigator = this.f8443c;
                Intrinsics.checkNotNull(navigator, "null cannot be cast to non-null type T of androidx.navigation.NavDeepLinkBuilder.PermissiveNavigatorProvider.getNavigator");
                return navigator;
            }
        }
    }

    /* renamed from: androidx.navigation.NavDeepLinkBuilder$a */
    /* loaded from: classes3.dex */
    public static final class C1223a {

        /* renamed from: a */
        public final int f8444a;

        /* renamed from: b */
        @Nullable
        public final Bundle f8445b;

        public C1223a(int i, @Nullable Bundle bundle) {
            this.f8444a = i;
            this.f8445b = bundle;
        }

        @Nullable
        /* renamed from: a */
        public final Bundle m5163a() {
            return this.f8445b;
        }

        /* renamed from: b */
        public final int m5164b() {
            return this.f8444a;
        }
    }

    public NavDeepLinkBuilder(@NotNull Context context) {
        Intent launchIntentForPackage;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        if (context instanceof Activity) {
            launchIntentForPackage = new Intent(context, context.getClass());
        } else {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
            }
        }
        launchIntentForPackage.addFlags(268468224);
        this.com.sunia.HTREnginev2.v6l.g java.lang.String = launchIntentForPackage;
        this.destinations = new ArrayList();
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(i, bundle);
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(i, bundle);
    }

    /* renamed from: a */
    public final void m5160a() {
        int[] intArray;
        ArrayList arrayList = new ArrayList();
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        NavDestination navDestination = null;
        for (C1223a c1223a : this.destinations) {
            int m5164b = c1223a.m5164b();
            Bundle m5163a = c1223a.m5163a();
            NavDestination m5161b = m5161b(m5164b);
            if (m5161b == null) {
                throw new IllegalArgumentException("Navigation destination " + NavDestination.INSTANCE.getDisplayName(this.context, m5164b) + " cannot be found in the navigation graph " + this.graph);
            }
            for (int i : m5161b.buildDeepLinkIds(navDestination)) {
                arrayList.add(Integer.valueOf(i));
                arrayList2.add(m5163a);
            }
            navDestination = m5161b;
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        this.com.sunia.HTREnginev2.v6l.g java.lang.String.putExtra(NavController.KEY_DEEP_LINK_IDS, intArray);
        this.com.sunia.HTREnginev2.v6l.g java.lang.String.putParcelableArrayListExtra(NavController.KEY_DEEP_LINK_ARGS, arrayList2);
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder addDestination(@IdRes int i) {
        return addDestination$default(this, i, (Bundle) null, 2, (Object) null);
    }

    /* renamed from: b */
    public final NavDestination m5161b(@IdRes int destId) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this.graph;
        Intrinsics.checkNotNull(navGraph);
        arrayDeque.add(navGraph);
        while (!arrayDeque.isEmpty()) {
            NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
            if (navDestination.getId() == destId) {
                return navDestination;
            }
            if (navDestination instanceof NavGraph) {
                Iterator<NavDestination> it2 = ((NavGraph) navDestination).iterator();
                while (it2.hasNext()) {
                    arrayDeque.add(it2.next());
                }
            }
        }
        return null;
    }

    /* renamed from: c */
    public final void m5162c() {
        Iterator<C1223a> it2 = this.destinations.iterator();
        while (it2.hasNext()) {
            int m5164b = it2.next().m5164b();
            if (m5161b(m5164b) == null) {
                throw new IllegalArgumentException("Navigation destination " + NavDestination.INSTANCE.getDisplayName(this.context, m5164b) + " cannot be found in the navigation graph " + this.graph);
            }
        }
    }

    @NotNull
    public final PendingIntent createPendingIntent() {
        int i;
        Bundle bundle = this.globalArgs;
        if (bundle != null) {
            Iterator<String> it2 = bundle.keySet().iterator();
            i = 0;
            while (it2.hasNext()) {
                Object obj = bundle.get(it2.next());
                i = (i * 31) + (obj != null ? obj.hashCode() : 0);
            }
        } else {
            i = 0;
        }
        for (C1223a c1223a : this.destinations) {
            i = (i * 31) + c1223a.m5164b();
            Bundle m5163a = c1223a.m5163a();
            if (m5163a != null) {
                Iterator<String> it3 = m5163a.keySet().iterator();
                while (it3.hasNext()) {
                    Object obj2 = m5163a.get(it3.next());
                    i = (i * 31) + (obj2 != null ? obj2.hashCode() : 0);
                }
            }
        }
        PendingIntent pendingIntent = createTaskStackBuilder().getPendingIntent(i, 201326592);
        Intrinsics.checkNotNull(pendingIntent);
        return pendingIntent;
    }

    @NotNull
    public final TaskStackBuilder createTaskStackBuilder() {
        if (this.graph == null) {
            throw new IllegalStateException("You must call setGraph() before constructing the deep link".toString());
        }
        if (!(!this.destinations.isEmpty())) {
            throw new IllegalStateException("You must call setDestination() or addDestination() before constructing the deep link".toString());
        }
        m5160a();
        TaskStackBuilder addNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(new Intent(this.com.sunia.HTREnginev2.v6l.g java.lang.String));
        Intrinsics.checkNotNullExpressionValue(addNextIntentWithParentStack, "create(context)\n        …rentStack(Intent(intent))");
        int intentCount = addNextIntentWithParentStack.getIntentCount();
        for (int i = 0; i < intentCount; i++) {
            Intent editIntentAt = addNextIntentWithParentStack.editIntentAt(i);
            if (editIntentAt != null) {
                editIntentAt.putExtra(NavController.KEY_DEEP_LINK_INTENT, this.com.sunia.HTREnginev2.v6l.g java.lang.String);
            }
        }
        return addNextIntentWithParentStack;
    }

    @NotNull
    public final NavDeepLinkBuilder setArguments(@Nullable Bundle args) {
        this.globalArgs = args;
        this.com.sunia.HTREnginev2.v6l.g java.lang.String.putExtra(NavController.KEY_DEEP_LINK_EXTRAS, args);
        return this;
    }

    @NotNull
    public final NavDeepLinkBuilder setComponentName(@NotNull Class<? extends Activity> activityClass) {
        Intrinsics.checkNotNullParameter(activityClass, "activityClass");
        return setComponentName(new ComponentName(this.context, activityClass));
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder setDestination(@IdRes int i) {
        return setDestination$default(this, i, (Bundle) null, 2, (Object) null);
    }

    @NotNull
    public final NavDeepLinkBuilder setGraph(@NavigationRes int navGraphId) {
        return setGraph(new NavInflater(this.context, new PermissiveNavigatorProvider()).inflate(navGraphId));
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i, Object obj) {
        if ((i & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(str, bundle);
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i, Object obj) {
        if ((i & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(str, bundle);
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder addDestination(@NotNull String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return addDestination$default(this, route, (Bundle) null, 2, (Object) null);
    }

    @NotNull
    public final NavDeepLinkBuilder setComponentName(@NotNull ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        this.com.sunia.HTREnginev2.v6l.g java.lang.String.setComponent(componentName);
        return this;
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder setDestination(@NotNull String destRoute) {
        Intrinsics.checkNotNullParameter(destRoute, "destRoute");
        return setDestination$default(this, destRoute, (Bundle) null, 2, (Object) null);
    }

    @NotNull
    public final NavDeepLinkBuilder setGraph(@NotNull NavGraph navGraph) {
        Intrinsics.checkNotNullParameter(navGraph, "navGraph");
        this.graph = navGraph;
        m5162c();
        return this;
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder addDestination(@IdRes int destId, @Nullable Bundle args) {
        this.destinations.add(new C1223a(destId, args));
        if (this.graph != null) {
            m5162c();
        }
        return this;
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder setDestination(@IdRes int destId, @Nullable Bundle args) {
        this.destinations.clear();
        this.destinations.add(new C1223a(destId, args));
        if (this.graph != null) {
            m5162c();
        }
        return this;
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder addDestination(@NotNull String route, @Nullable Bundle args) {
        Intrinsics.checkNotNullParameter(route, "route");
        this.destinations.add(new C1223a(NavDestination.INSTANCE.createRoute(route).hashCode(), args));
        if (this.graph != null) {
            m5162c();
        }
        return this;
    }

    @JvmOverloads
    @NotNull
    public final NavDeepLinkBuilder setDestination(@NotNull String destRoute, @Nullable Bundle args) {
        Intrinsics.checkNotNullParameter(destRoute, "destRoute");
        this.destinations.clear();
        this.destinations.add(new C1223a(NavDestination.INSTANCE.createRoute(destRoute).hashCode(), args));
        if (this.graph != null) {
            m5162c();
        }
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLinkBuilder(@NotNull NavController navController) {
        this(navController.getContext());
        Intrinsics.checkNotNullParameter(navController, "navController");
        this.graph = navController.getGraph();
    }
}
