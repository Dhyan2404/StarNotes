package androidx.navigation.p003ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.p003ui.AppBarConfiguration;
import androidx.navigation.p003ui.NavigationUI;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.navigation.NavigationView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b)\u0010*J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0007J\"\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007J\"\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\fH\u0007J\"\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007J\"\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\fH\u0007J*\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007J*\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\fH\u0007J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0016\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0007J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\u0014\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u001d\u0010$\u001a\u00020\u0006*\u00020\u001f2\b\b\u0001\u0010!\u001a\u00020 H\u0001¢\u0006\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, m61528d2 = {"Landroidx/navigation/ui/NavigationUI;", "", "Landroid/view/MenuItem;", "item", "Landroidx/navigation/NavController;", "navController", "", "onNavDestinationSelected", "saveState", "Landroidx/customview/widget/Openable;", "openableLayout", "navigateUp", "Landroidx/navigation/ui/AppBarConfiguration;", "configuration", "Landroidx/appcompat/app/AppCompatActivity;", ActivityChooserModel.f1429r, "", "setupActionBarWithNavController", "Landroidx/appcompat/widget/Toolbar;", "toolbar", "setupWithNavController", "Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "collapsingToolbarLayout", "Lcom/google/android/material/navigation/NavigationView;", "navigationView", "Landroid/view/View;", "view", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "findBottomSheetBehavior", "Lcom/google/android/material/navigation/NavigationBarView;", "navigationBarView", "Landroidx/navigation/NavDestination;", "", "destId", "matchDestination$navigation_ui_release", "(Landroidx/navigation/NavDestination;I)Z", "matchDestination", "", "a", Constants.STRING_SIG, "TAG", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "navigation-ui_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavigationUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,728:1\n1229#2,2:729\n*S KotlinDebug\n*F\n+ 1 NavigationUI.kt\nandroidx/navigation/ui/NavigationUI\n*L\n726#1:729,2\n*E\n"})
/* loaded from: classes3.dex */
public final class NavigationUI {

    @NotNull
    public static final NavigationUI INSTANCE = new NavigationUI();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String TAG = "NavigationUI";

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public static final BottomSheetBehavior<?> findBottomSheetBehavior(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            return null;
        }
        Object parent = view.getParent();
        if (parent instanceof View) {
            return findBottomSheetBehavior((View) parent);
        }
        return null;
    }

    /* renamed from: g */
    public static final void m5211g(NavController navController, AppBarConfiguration configuration, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(configuration, "$configuration");
        navigateUp(navController, configuration);
    }

    /* renamed from: h */
    public static final void m5212h(NavController navController, AppBarConfiguration configuration, View view) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(configuration, "$configuration");
        navigateUp(navController, configuration);
    }

    /* renamed from: i */
    public static final boolean m5213i(NavController navController, NavigationView navigationView, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(navigationView, "$navigationView");
        Intrinsics.checkNotNullParameter(item, "item");
        boolean onNavDestinationSelected = onNavDestinationSelected(item, navController);
        if (onNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
            } else {
                BottomSheetBehavior<?> findBottomSheetBehavior = findBottomSheetBehavior(navigationView);
                if (findBottomSheetBehavior != null) {
                    findBottomSheetBehavior.setState(5);
                }
            }
        }
        return onNavDestinationSelected;
    }

    /* renamed from: j */
    public static final boolean m5214j(NavController navController, boolean z, NavigationView navigationView, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(navigationView, "$navigationView");
        Intrinsics.checkNotNullParameter(item, "item");
        boolean onNavDestinationSelected = onNavDestinationSelected(item, navController, z);
        if (onNavDestinationSelected) {
            ViewParent parent = navigationView.getParent();
            if (parent instanceof Openable) {
                ((Openable) parent).close();
            } else {
                BottomSheetBehavior<?> findBottomSheetBehavior = findBottomSheetBehavior(navigationView);
                if (findBottomSheetBehavior != null) {
                    findBottomSheetBehavior.setState(5);
                }
            }
        }
        return onNavDestinationSelected;
    }

    /* renamed from: k */
    public static final boolean m5215k(NavController navController, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(item, "item");
        return onNavDestinationSelected(item, navController);
    }

    /* renamed from: l */
    public static final boolean m5216l(NavController navController, boolean z, MenuItem item) {
        Intrinsics.checkNotNullParameter(navController, "$navController");
        Intrinsics.checkNotNullParameter(item, "item");
        return onNavDestinationSelected(item, navController, z);
    }

    @JvmStatic
    public static final boolean matchDestination$navigation_ui_release(@NotNull NavDestination navDestination, @IdRes int i) {
        boolean z;
        Intrinsics.checkNotNullParameter(navDestination, "<this>");
        Iterator<NavDestination> it2 = NavDestination.INSTANCE.getHierarchy(navDestination).iterator();
        do {
            z = false;
            if (!it2.hasNext()) {
                return false;
            }
            if (it2.next().getId() == i) {
                z = true;
            }
        } while (!z);
        return true;
    }

    @JvmStatic
    public static final boolean navigateUp(@NotNull NavController navController, @Nullable Openable openableLayout) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        return navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0096, code lost:
    
        if (matchDestination$navigation_ui_release(r0, r5.getItemId()) == true) goto L16;
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean onNavDestinationSelected(@org.jetbrains.annotations.NotNull android.view.MenuItem r5, @org.jetbrains.annotations.NotNull androidx.navigation.NavController r6) {
        /*
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "navController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            androidx.navigation.NavOptions$Builder r0 = new androidx.navigation.NavOptions$Builder
            r0.<init>()
            r1 = 1
            androidx.navigation.NavOptions$Builder r0 = r0.setLaunchSingleTop(r1)
            androidx.navigation.NavOptions$Builder r0 = r0.setRestoreState(r1)
            androidx.navigation.NavDestination r2 = r6.getCurrentDestination()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            androidx.navigation.NavGraph r2 = r2.getParent()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r3 = r5.getItemId()
            androidx.navigation.NavDestination r2 = r2.findNode(r3)
            boolean r2 = r2 instanceof androidx.navigation.ActivityNavigator.Destination
            if (r2 == 0) goto L4a
            int r2 = androidx.navigation.p003ui.C1235R.anim.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r0.setEnterAnim(r2)
            int r3 = androidx.navigation.p003ui.C1235R.anim.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setExitAnim(r3)
            int r3 = androidx.navigation.p003ui.C1235R.anim.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setPopEnterAnim(r3)
            int r3 = androidx.navigation.p003ui.C1235R.anim.nav_default_pop_exit_anim
            r2.setPopExitAnim(r3)
            goto L61
        L4a:
            int r2 = androidx.navigation.p003ui.C1235R.animator.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r0.setEnterAnim(r2)
            int r3 = androidx.navigation.p003ui.C1235R.animator.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setExitAnim(r3)
            int r3 = androidx.navigation.p003ui.C1235R.animator.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r2 = r2.setPopEnterAnim(r3)
            int r3 = androidx.navigation.p003ui.C1235R.animator.nav_default_pop_exit_anim
            r2.setPopExitAnim(r3)
        L61:
            int r2 = r5.getOrder()
            r3 = 196608(0x30000, float:2.75506E-40)
            r2 = r2 & r3
            r3 = 0
            if (r2 != 0) goto L7c
            androidx.navigation.NavGraph$Companion r2 = androidx.navigation.NavGraph.INSTANCE
            androidx.navigation.NavGraph r4 = r6.getGraph()
            androidx.navigation.NavDestination r2 = r2.findStartDestination(r4)
            int r2 = r2.getId()
            r0.setPopUpTo(r2, r3, r1)
        L7c:
            androidx.navigation.NavOptions r0 = r0.build()
            int r2 = r5.getItemId()     // Catch: java.lang.IllegalArgumentException -> L9c
            r4 = 0
            r6.navigate(r2, r4, r0)     // Catch: java.lang.IllegalArgumentException -> L9c
            androidx.navigation.NavDestination r0 = r6.getCurrentDestination()     // Catch: java.lang.IllegalArgumentException -> L9c
            if (r0 == 0) goto L99
            int r2 = r5.getItemId()     // Catch: java.lang.IllegalArgumentException -> L9c
            boolean r5 = matchDestination$navigation_ui_release(r0, r2)     // Catch: java.lang.IllegalArgumentException -> L9c
            if (r5 != r1) goto L99
            goto L9a
        L99:
            r1 = r3
        L9a:
            r3 = r1
            goto Lcd
        L9c:
            r0 = move-exception
            androidx.navigation.NavDestination$Companion r1 = androidx.navigation.NavDestination.INSTANCE
            android.content.Context r2 = r6.getContext()
            int r5 = r5.getItemId()
            java.lang.String r5 = r1.getDisplayName(r2, r5)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Ignoring onNavDestinationSelected for MenuItem "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = " as it cannot be found from the current destination "
            r1.append(r5)
            androidx.navigation.NavDestination r5 = r6.getCurrentDestination()
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            java.lang.String r6 = "NavigationUI"
            android.util.Log.i(r6, r5, r0)
        Lcd:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.p003ui.NavigationUI.onNavDestinationSelected(android.view.MenuItem, androidx.navigation.NavController):boolean");
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupActionBarWithNavController(@NotNull AppCompatActivity activity, @NotNull NavController navController) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupActionBarWithNavController$default(activity, navController, null, 4, null);
    }

    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(@NotNull Toolbar toolbar, @NotNull NavController navController) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController$default(toolbar, navController, null, 4, null);
    }

    public static /* synthetic */ void setupWithNavController$default(Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 4) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(toolbar, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final void setupActionBarWithNavController(@NotNull AppCompatActivity activity, @NotNull NavController navController, @Nullable Openable openableLayout) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupActionBarWithNavController(activity, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(@NotNull CollapsingToolbarLayout collapsingToolbarLayout, @NotNull Toolbar toolbar, @NotNull NavController navController) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController$default(collapsingToolbarLayout, toolbar, navController, null, 8, null);
    }

    @JvmStatic
    public static final void setupWithNavController(@NotNull Toolbar toolbar, @NotNull NavController navController, @Nullable Openable openableLayout) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    public static /* synthetic */ void setupWithNavController$default(CollapsingToolbarLayout collapsingToolbarLayout, Toolbar toolbar, NavController navController, AppBarConfiguration appBarConfiguration, int i, Object obj) {
        if ((i & 8) != 0) {
            appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
        }
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, appBarConfiguration);
    }

    @JvmStatic
    public static final boolean navigateUp(@NotNull NavController navController, @NotNull AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Openable openableLayout = configuration.getOpenableLayout();
        NavDestination currentDestination = navController.getCurrentDestination();
        if (openableLayout != null && currentDestination != null && configuration.isTopLevelDestination(currentDestination)) {
            openableLayout.open();
            return true;
        }
        if (navController.navigateUp()) {
            return true;
        }
        AppBarConfiguration.OnNavigateUpListener fallbackOnNavigateUpListener = configuration.getFallbackOnNavigateUpListener();
        if (fallbackOnNavigateUpListener != null) {
            return fallbackOnNavigateUpListener.onNavigateUp();
        }
        return false;
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupActionBarWithNavController(@NotNull AppCompatActivity activity, @NotNull NavController navController, @NotNull AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new ActionBarOnDestinationChangedListener(activity, configuration));
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(@NotNull Toolbar toolbar, @NotNull final NavController navController, @NotNull final AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new ToolbarOnDestinationChangedListener(toolbar, configuration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.etj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationUI.m5211g(NavController.this, configuration, view);
            }
        });
    }

    @JvmStatic
    public static final void setupWithNavController(@NotNull CollapsingToolbarLayout collapsingToolbarLayout, @NotNull Toolbar toolbar, @NotNull NavController navController, @Nullable Openable openableLayout) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openableLayout).build());
    }

    @JvmStatic
    @JvmOverloads
    public static final void setupWithNavController(@NotNull CollapsingToolbarLayout collapsingToolbarLayout, @NotNull Toolbar toolbar, @NotNull final NavController navController, @NotNull final AppBarConfiguration configuration) {
        Intrinsics.checkNotNullParameter(collapsingToolbarLayout, "collapsingToolbarLayout");
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        navController.addOnDestinationChangedListener(new CollapsingToolbarOnDestinationChangedListener(collapsingToolbarLayout, toolbar, configuration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.btj
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavigationUI.m5212h(NavController.this, configuration, view);
            }
        });
    }

    @JvmStatic
    public static final void setupWithNavController(@NotNull final NavigationView navigationView, @NotNull final NavController navController) {
        Intrinsics.checkNotNullParameter(navigationView, "navigationView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: com.sunia.HTREnginev2.dtj
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean m5213i;
                m5213i = NavigationUI.m5213i(NavController.this, navigationView, menuItem);
                return m5213i;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$4
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationView navigationView2 = weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    item.setChecked(NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId()));
                }
            }
        });
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(@NotNull final NavigationView navigationView, @NotNull final NavController navController, final boolean saveState) {
        Intrinsics.checkNotNullParameter(navigationView, "navigationView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        if (!saveState) {
            navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: com.sunia.HTREnginev2.atj
                @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
                public final boolean onNavigationItemSelected(MenuItem menuItem) {
                    boolean m5214j;
                    m5214j = NavigationUI.m5214j(NavController.this, saveState, navigationView, menuItem);
                    return m5214j;
                }
            });
            final WeakReference weakReference = new WeakReference(navigationView);
            navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$7
                @Override // androidx.navigation.NavController.OnDestinationChangedListener
                public void onDestinationChanged(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle arguments) {
                    Intrinsics.checkNotNullParameter(controller, "controller");
                    Intrinsics.checkNotNullParameter(destination, "destination");
                    NavigationView navigationView2 = weakReference.get();
                    if (navigationView2 == null) {
                        navController.removeOnDestinationChangedListener(this);
                        return;
                    }
                    if (destination instanceof FloatingWindow) {
                        return;
                    }
                    Menu menu = navigationView2.getMenu();
                    Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                    int size = menu.size();
                    for (int i = 0; i < size; i++) {
                        MenuItem item = menu.getItem(i);
                        Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                        item.setChecked(NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId()));
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x009a, code lost:
    
        if (matchDestination$navigation_ui_release(r9, r7.getItemId()) == true) goto L18;
     */
    @androidx.navigation.p003ui.NavigationUiSaveStateControl
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean onNavDestinationSelected(@org.jetbrains.annotations.NotNull android.view.MenuItem r7, @org.jetbrains.annotations.NotNull androidx.navigation.NavController r8, boolean r9) {
        /*
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "navController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            r0 = 1
            r9 = r9 ^ r0
            if (r9 == 0) goto Ld2
            androidx.navigation.NavOptions$Builder r9 = new androidx.navigation.NavOptions$Builder
            r9.<init>()
            androidx.navigation.NavOptions$Builder r9 = r9.setLaunchSingleTop(r0)
            androidx.navigation.NavDestination r1 = r8.getCurrentDestination()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            androidx.navigation.NavGraph r1 = r1.getParent()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            int r2 = r7.getItemId()
            androidx.navigation.NavDestination r1 = r1.findNode(r2)
            boolean r1 = r1 instanceof androidx.navigation.ActivityNavigator.Destination
            if (r1 == 0) goto L49
            int r1 = androidx.navigation.p003ui.C1235R.anim.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r9.setEnterAnim(r1)
            int r2 = androidx.navigation.p003ui.C1235R.anim.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setExitAnim(r2)
            int r2 = androidx.navigation.p003ui.C1235R.anim.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setPopEnterAnim(r2)
            int r2 = androidx.navigation.p003ui.C1235R.anim.nav_default_pop_exit_anim
            r1.setPopExitAnim(r2)
            goto L60
        L49:
            int r1 = androidx.navigation.p003ui.C1235R.animator.nav_default_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r9.setEnterAnim(r1)
            int r2 = androidx.navigation.p003ui.C1235R.animator.nav_default_exit_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setExitAnim(r2)
            int r2 = androidx.navigation.p003ui.C1235R.animator.nav_default_pop_enter_anim
            androidx.navigation.NavOptions$Builder r1 = r1.setPopEnterAnim(r2)
            int r2 = androidx.navigation.p003ui.C1235R.animator.nav_default_pop_exit_anim
            r1.setPopExitAnim(r2)
        L60:
            int r1 = r7.getOrder()
            r2 = 196608(0x30000, float:2.75506E-40)
            r1 = r1 & r2
            if (r1 != 0) goto L7f
            androidx.navigation.NavGraph$Companion r1 = androidx.navigation.NavGraph.INSTANCE
            androidx.navigation.NavGraph r2 = r8.getGraph()
            androidx.navigation.NavDestination r1 = r1.findStartDestination(r2)
            int r2 = r1.getId()
            r3 = 0
            r4 = 0
            r5 = 4
            r6 = 0
            r1 = r9
            androidx.navigation.NavOptions.Builder.setPopUpTo$default(r1, r2, r3, r4, r5, r6)
        L7f:
            androidx.navigation.NavOptions r9 = r9.build()
            r1 = 0
            int r2 = r7.getItemId()     // Catch: java.lang.IllegalArgumentException -> La0
            r3 = 0
            r8.navigate(r2, r3, r9)     // Catch: java.lang.IllegalArgumentException -> La0
            androidx.navigation.NavDestination r9 = r8.getCurrentDestination()     // Catch: java.lang.IllegalArgumentException -> La0
            if (r9 == 0) goto L9d
            int r2 = r7.getItemId()     // Catch: java.lang.IllegalArgumentException -> La0
            boolean r7 = matchDestination$navigation_ui_release(r9, r2)     // Catch: java.lang.IllegalArgumentException -> La0
            if (r7 != r0) goto L9d
            goto L9e
        L9d:
            r0 = r1
        L9e:
            r1 = r0
            goto Ld1
        La0:
            r9 = move-exception
            androidx.navigation.NavDestination$Companion r0 = androidx.navigation.NavDestination.INSTANCE
            android.content.Context r2 = r8.getContext()
            int r7 = r7.getItemId()
            java.lang.String r7 = r0.getDisplayName(r2, r7)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Ignoring onNavDestinationSelected for MenuItem "
            r0.append(r2)
            r0.append(r7)
            java.lang.String r7 = " as it cannot be found from the current destination "
            r0.append(r7)
            androidx.navigation.NavDestination r7 = r8.getCurrentDestination()
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            java.lang.String r8 = "NavigationUI"
            android.util.Log.i(r8, r7, r9)
        Ld1:
            return r1
        Ld2:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default"
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.p003ui.NavigationUI.onNavDestinationSelected(android.view.MenuItem, androidx.navigation.NavController, boolean):boolean");
    }

    @JvmStatic
    public static final void setupWithNavController(@NotNull NavigationBarView navigationBarView, @NotNull final NavController navController) {
        Intrinsics.checkNotNullParameter(navigationBarView, "navigationBarView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        navigationBarView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: com.sunia.HTREnginev2.ctj
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public final boolean onNavigationItemSelected(MenuItem menuItem) {
                boolean m5215k;
                m5215k = NavigationUI.m5215k(NavController.this, menuItem);
                return m5215k;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationBarView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$9
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle arguments) {
                Intrinsics.checkNotNullParameter(controller, "controller");
                Intrinsics.checkNotNullParameter(destination, "destination");
                NavigationBarView navigationBarView2 = weakReference.get();
                if (navigationBarView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                if (destination instanceof FloatingWindow) {
                    return;
                }
                Menu menu = navigationBarView2.getMenu();
                Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                int size = menu.size();
                for (int i = 0; i < size; i++) {
                    MenuItem item = menu.getItem(i);
                    Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                    if (NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId())) {
                        item.setChecked(true);
                    }
                }
            }
        });
    }

    @NavigationUiSaveStateControl
    @JvmStatic
    public static final void setupWithNavController(@NotNull NavigationBarView navigationBarView, @NotNull final NavController navController, final boolean saveState) {
        Intrinsics.checkNotNullParameter(navigationBarView, "navigationBarView");
        Intrinsics.checkNotNullParameter(navController, "navController");
        if (!saveState) {
            navigationBarView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() { // from class: com.sunia.HTREnginev2.ftj
                @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
                public final boolean onNavigationItemSelected(MenuItem menuItem) {
                    boolean m5216l;
                    m5216l = NavigationUI.m5216l(NavController.this, saveState, menuItem);
                    return m5216l;
                }
            });
            final WeakReference weakReference = new WeakReference(navigationBarView);
            navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI$setupWithNavController$12
                @Override // androidx.navigation.NavController.OnDestinationChangedListener
                public void onDestinationChanged(@NotNull NavController controller, @NotNull NavDestination destination, @Nullable Bundle arguments) {
                    Intrinsics.checkNotNullParameter(controller, "controller");
                    Intrinsics.checkNotNullParameter(destination, "destination");
                    NavigationBarView navigationBarView2 = weakReference.get();
                    if (navigationBarView2 == null) {
                        navController.removeOnDestinationChangedListener(this);
                        return;
                    }
                    if (destination instanceof FloatingWindow) {
                        return;
                    }
                    Menu menu = navigationBarView2.getMenu();
                    Intrinsics.checkNotNullExpressionValue(menu, "view.menu");
                    int size = menu.size();
                    for (int i = 0; i < size; i++) {
                        MenuItem item = menu.getItem(i);
                        Intrinsics.checkExpressionValueIsNotNull(item, "getItem(index)");
                        if (NavigationUI.matchDestination$navigation_ui_release(destination, item.getItemId())) {
                            item.setChecked(true);
                        }
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Leave the saveState parameter out entirely to use the non-experimental version of this API, which saves the state by default".toString());
    }
}
