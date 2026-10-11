package androidx.navigation.p003ui;

import android.annotation.SuppressLint;
import android.view.Menu;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.customview.widget.Openable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\u001f B+\b\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u00198G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Landroidx/navigation/ui/AppBarConfiguration;", "", "Landroidx/navigation/NavDestination;", FirebaseAnalytics.Param.DESTINATION, "", "isTopLevelDestination", "", "", "a", "Ljava/util/Set;", "getTopLevelDestinations", "()Ljava/util/Set;", "topLevelDestinations", "Landroidx/customview/widget/Openable;", "b", "Landroidx/customview/widget/Openable;", "getOpenableLayout", "()Landroidx/customview/widget/Openable;", "openableLayout", "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "c", "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "getFallbackOnNavigateUpListener", "()Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "fallbackOnNavigateUpListener", "Landroidx/drawerlayout/widget/DrawerLayout;", "getDrawerLayout", "()Landroidx/drawerlayout/widget/DrawerLayout;", "drawerLayout", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Set;Landroidx/customview/widget/Openable;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)V", "Builder", "OnNavigateUpListener", "navigation-ui_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nAppBarConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBarConfiguration.kt\nandroidx/navigation/ui/AppBarConfiguration\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,307:1\n1229#2,2:308\n*S KotlinDebug\n*F\n+ 1 AppBarConfiguration.kt\nandroidx/navigation/ui/AppBarConfiguration\n*L\n100#1:308,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AppBarConfiguration {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Set<Integer> topLevelDestinations;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final Openable openableLayout;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final OnNavigateUpListener fallbackOnNavigateUpListener;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, m61528d2 = {"Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "", "onNavigateUp", "", "navigation-ui_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public interface OnNavigateUpListener {
        boolean onNavigateUp();
    }

    public /* synthetic */ AppBarConfiguration(Set set, Openable openable, OnNavigateUpListener onNavigateUpListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, openable, onNavigateUpListener);
    }

    @Deprecated(message = "Use {@link #getOpenableLayout()}.")
    @Nullable
    public final DrawerLayout getDrawerLayout() {
        Openable openable = this.openableLayout;
        if (openable instanceof DrawerLayout) {
            return (DrawerLayout) openable;
        }
        return null;
    }

    @Nullable
    public final OnNavigateUpListener getFallbackOnNavigateUpListener() {
        return this.fallbackOnNavigateUpListener;
    }

    @Nullable
    public final Openable getOpenableLayout() {
        return this.openableLayout;
    }

    @NotNull
    public final Set<Integer> getTopLevelDestinations() {
        return this.topLevelDestinations;
    }

    public final boolean isTopLevelDestination(@NotNull NavDestination destination) {
        boolean z;
        Intrinsics.checkNotNullParameter(destination, "destination");
        Iterator<NavDestination> it2 = NavDestination.INSTANCE.getHierarchy(destination).iterator();
        do {
            z = false;
            if (!it2.hasNext()) {
                return false;
            }
            NavDestination next = it2.next();
            if (this.topLevelDestinations.contains(Integer.valueOf(next.getId())) && (!(next instanceof NavGraph) || destination.getId() == NavGraph.INSTANCE.findStartDestination((NavGraph) next).getId())) {
                z = true;
            }
        } while (!z);
        return true;
    }

    public AppBarConfiguration(Set<Integer> set, Openable openable, OnNavigateUpListener onNavigateUpListener) {
        this.topLevelDestinations = set;
        this.openableLayout = openable;
        this.fallbackOnNavigateUpListener = onNavigateUpListener;
    }

    @Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019B\u0011\b\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u0018\u0010\u001cB\u0015\b\u0016\u0012\n\u0010\u001e\u001a\u00020\u001d\"\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u001fB\u0017\b\u0016\u0012\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0 ¢\u0006\u0004\b\u0018\u0010!J\u0012\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\b\u0010\f\u001a\u00020\u000bH\u0007R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\""}, m61528d2 = {"Landroidx/navigation/ui/AppBarConfiguration$Builder;", "", "Landroidx/drawerlayout/widget/DrawerLayout;", "drawerLayout", "setDrawerLayout", "Landroidx/customview/widget/Openable;", "openableLayout", "setOpenableLayout", "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "fallbackOnNavigateUpListener", "setFallbackOnNavigateUpListener", "Landroidx/navigation/ui/AppBarConfiguration;", PrivilegedApp.f6529f, "", "", "a", "Ljava/util/Set;", "topLevelDestinations", "b", "Landroidx/customview/widget/Openable;", "c", "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;", "Landroidx/navigation/NavGraph;", "navGraph", Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/NavGraph;)V", "Landroid/view/Menu;", "topLevelMenu", "(Landroid/view/Menu;)V", "", "topLevelDestinationIds", "([I)V", "", "(Ljava/util/Set;)V", "navigation-ui_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Set<Integer> topLevelDestinations;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public Openable openableLayout;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public OnNavigateUpListener fallbackOnNavigateUpListener;

        public Builder(@NotNull NavGraph navGraph) {
            Intrinsics.checkNotNullParameter(navGraph, "navGraph");
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.add(Integer.valueOf(NavGraph.INSTANCE.findStartDestination(navGraph).getId()));
        }

        @SuppressLint({"SyntheticAccessor"})
        @NotNull
        public final AppBarConfiguration build() {
            return new AppBarConfiguration(this.topLevelDestinations, this.openableLayout, this.fallbackOnNavigateUpListener, null);
        }

        @Deprecated(message = "Use {@link #setOpenableLayout(Openable)}.")
        @NotNull
        public final Builder setDrawerLayout(@Nullable DrawerLayout drawerLayout) {
            this.openableLayout = drawerLayout;
            return this;
        }

        @NotNull
        public final Builder setFallbackOnNavigateUpListener(@Nullable OnNavigateUpListener fallbackOnNavigateUpListener) {
            this.fallbackOnNavigateUpListener = fallbackOnNavigateUpListener;
            return this;
        }

        @NotNull
        public final Builder setOpenableLayout(@Nullable Openable openableLayout) {
            this.openableLayout = openableLayout;
            return this;
        }

        public Builder(@NotNull Menu topLevelMenu) {
            Intrinsics.checkNotNullParameter(topLevelMenu, "topLevelMenu");
            this.topLevelDestinations = new HashSet();
            int size = topLevelMenu.size();
            for (int i = 0; i < size; i++) {
                this.topLevelDestinations.add(Integer.valueOf(topLevelMenu.getItem(i).getItemId()));
            }
        }

        public Builder(@NotNull int... topLevelDestinationIds) {
            Intrinsics.checkNotNullParameter(topLevelDestinationIds, "topLevelDestinationIds");
            this.topLevelDestinations = new HashSet();
            for (int i : topLevelDestinationIds) {
                this.topLevelDestinations.add(Integer.valueOf(i));
            }
        }

        public Builder(@NotNull Set<Integer> topLevelDestinationIds) {
            Intrinsics.checkNotNullParameter(topLevelDestinationIds, "topLevelDestinationIds");
            HashSet hashSet = new HashSet();
            this.topLevelDestinations = hashSet;
            hashSet.addAll(topLevelDestinationIds);
        }
    }
}
