package androidx.navigation;

import androidx.annotation.IdRes;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002\u001a\u0017\u0010\u0007\u001a\u00020\b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0086\n\u001a\u0015\u0010\f\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0086\n\u001a\u0015\u0010\f\u001a\u00020\n*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0086\n¨\u0006\u000e"}, m61528d2 = {Keywords.FUNC_CONTAINS_STRING, "", "Landroidx/navigation/NavGraph;", "id", "", "route", "", "get", "Landroidx/navigation/NavDestination;", "minusAssign", "", "node", "plusAssign", Constants.ATTRVAL_OTHER, "navigation-common_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class NavGraphKt {
    public static final boolean contains(@NotNull NavGraph navGraph, @IdRes int i) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        return navGraph.findNode(i) != null;
    }

    @NotNull
    public static final NavDestination get(@NotNull NavGraph navGraph, @IdRes int i) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        NavDestination findNode = navGraph.findNode(i);
        if (findNode != null) {
            return findNode;
        }
        throw new IllegalArgumentException("No destination for " + i + " was found in " + navGraph);
    }

    public static final void minusAssign(@NotNull NavGraph navGraph, @NotNull NavDestination node) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(node, "node");
        navGraph.remove(node);
    }

    public static final void plusAssign(@NotNull NavGraph navGraph, @NotNull NavDestination node) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(node, "node");
        navGraph.addDestination(node);
    }

    public static final boolean contains(@NotNull NavGraph navGraph, @NotNull String route) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        return navGraph.findNode(route) != null;
    }

    @NotNull
    public static final NavDestination get(@NotNull NavGraph navGraph, @NotNull String route) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        NavDestination findNode = navGraph.findNode(route);
        if (findNode != null) {
            return findNode;
        }
        throw new IllegalArgumentException("No destination for " + route + " was found in " + navGraph);
    }

    public static final void plusAssign(@NotNull NavGraph navGraph, @NotNull NavGraph other) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        navGraph.addAll(other);
    }
}
