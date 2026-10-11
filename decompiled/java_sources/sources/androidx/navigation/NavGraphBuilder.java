package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\n\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\b\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\b\b\u0001\u0010\u001d\u001a\u00020\u0011\u0012\b\b\u0001\u0010\u001e\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010 B#\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0006\u0010\u001e\u001a\u00020\u0015\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u001f\u0010\"J\u001e\u0010\u0007\u001a\u00020\u0006\"\b\b\u0000\u0010\u0004*\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001J\r\u0010\b\u001a\u00020\u0006*\u00020\u0003H\u0086\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006#"}, m61528d2 = {"Landroidx/navigation/NavGraphBuilder;", "Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "navDestination", "", FirebaseAnalytics.Param.DESTINATION, "unaryPlus", "addDestination", PrivilegedApp.f6529f, "Landroidx/navigation/NavigatorProvider;", C6999h.f39688c, "Landroidx/navigation/NavigatorProvider;", "getProvider", "()Landroidx/navigation/NavigatorProvider;", CouchFieldKey.KEY_PROVIDER, "", "i", "I", "startDestinationId", "", "j", Constants.STRING_SIG, "startDestinationRoute", "", C4921e.f26537n, "Ljava/util/List;", "destinations", "id", "startDestination", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/NavigatorProvider;II)V", "route", "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@NavDestinationDsl
@SourceDebugExtension({"SMAP\nNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilder\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,193:1\n161#2:194\n161#2:195\n*S KotlinDebug\n*F\n+ 1 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilder\n*L\n131#1:194\n149#1:195\n*E\n"})
/* loaded from: classes3.dex */
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NavigatorProvider provider;

    /* renamed from: i, reason: from kotlin metadata */
    @IdRes
    public int startDestinationId;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String startDestinationRoute;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<NavDestination> destinations;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "Use routes to build your NavGraph instead", replaceWith = @ReplaceWith(expression = "NavGraphBuilder(provider, startDestination = startDestination.toString(), route = id.toString())", imports = {}))
    public NavGraphBuilder(@NotNull NavigatorProvider provider, @IdRes int i, @IdRes int i2) {
        super(provider.getNavigator(NavGraphNavigator.class), i);
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.destinations = new ArrayList();
        this.provider = provider;
        this.startDestinationId = i2;
    }

    public final void addDestination(@NotNull NavDestination destination) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        this.destinations.add(destination);
    }

    public final <D extends NavDestination> void destination(@NotNull NavDestinationBuilder<? extends D> navDestination) {
        Intrinsics.checkNotNullParameter(navDestination, "navDestination");
        this.destinations.add(navDestination.build());
    }

    @NotNull
    public final NavigatorProvider getProvider() {
        return this.provider;
    }

    public final void unaryPlus(@NotNull NavDestination navDestination) {
        Intrinsics.checkNotNullParameter(navDestination, "<this>");
        addDestination(navDestination);
    }

    @Override // androidx.navigation.NavDestinationBuilder
    @NotNull
    public NavGraph build() {
        NavGraph navGraph = (NavGraph) super.build();
        navGraph.addDestinations(this.destinations);
        int i = this.startDestinationId;
        if (i == 0 && this.startDestinationRoute == null) {
            if (getRoute() != null) {
                throw new IllegalStateException("You must set a start destination route");
            }
            throw new IllegalStateException("You must set a start destination id");
        }
        String str = this.startDestinationRoute;
        if (str != null) {
            Intrinsics.checkNotNull(str);
            navGraph.setStartDestination(str);
        } else {
            navGraph.setStartDestination(i);
        }
        return navGraph;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(@NotNull NavigatorProvider provider, @NotNull String startDestination, @Nullable String str) {
        super(provider.getNavigator(NavGraphNavigator.class), str);
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(startDestination, "startDestination");
        this.destinations = new ArrayList();
        this.provider = provider;
        this.startDestinationRoute = startDestination;
    }
}
