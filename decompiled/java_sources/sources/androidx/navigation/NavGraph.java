package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.core.content.FileProvider;
import androidx.navigation.NavDestination;
import androidx.navigation.common.C1225R;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010)\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 H2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u0001HB\u0017\u0012\u000e\u0010E\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000D¢\u0006\u0004\bF\u0010GJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0017J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\tH\u0007J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001J\u0016\u0010\u0013\u001a\u00020\u00072\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011J!\u0010\u0013\u001a\u00020\u00072\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0014\"\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0015J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010\u0017\u001a\u00020\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019J\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u001dH\u0086\u0002J\u000e\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010!\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0001J\u0006\u0010\"\u001a\u00020\u0007J\b\u0010#\u001a\u00020\u0016H\u0007J\u000e\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0016J\u000e\u0010%\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0019J\b\u0010'\u001a\u00020\u0019H\u0016J\u0013\u0010)\u001a\u00020\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010(H\u0096\u0002J\b\u0010*\u001a\u00020\u0016H\u0016R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010+8G¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u0010$\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00104\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R.\u0010:\u001a\u0004\u0018\u00010\u00192\b\u0010&\u001a\u0004\u0018\u00010\u00198\u0006@BX\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00103\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0014\u0010<\u001a\u00020\u00198WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u00107R$\u0010A\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u00168G@BX\u0086\u000e¢\u0006\f\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0011\u0010C\u001a\u00020\u00198G¢\u0006\u0006\u001a\u0004\bB\u00107¨\u0006I"}, m61528d2 = {"Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", "", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "onInflate", "Landroidx/navigation/NavDeepLinkRequest;", "navDeepLinkRequest", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "matchDeepLink", AbstractLogger.REQUEST, "matchDeepLinkExcludingChildren", "node", "addDestination", "", "nodes", "addDestinations", "", "([Landroidx/navigation/NavDestination;)V", "", HWREngineConstant.Constant.RES_ID, "findNode", "", "route", "", "searchParents", "", Constants.ITERATOR_PNAME, com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "addAll", SyncConstant.SYNC_ACTION_REMOVE, Constants.CLEAR_ATTRIBUTES, "getStartDestination", "startDestId", "setStartDestination", "startDestRoute", "toString", "", "equals", "hashCode", "Landroidx/collection/SparseArrayCompat;", C4921e.f26528e, "Landroidx/collection/SparseArrayCompat;", "getNodes", "()Landroidx/collection/SparseArrayCompat;", "p", "I", "q", Constants.STRING_SIG, "startDestIdName", "r", "getStartDestinationRoute", "()Ljava/lang/String;", "c", "(Ljava/lang/String;)V", "startDestinationRoute", "getDisplayName", FileProvider.f5230t, "getStartDestinationId", "()I", "b", "(I)V", "startDestinationId", "getStartDestDisplayName", "startDestDisplayName", "Landroidx/navigation/Navigator;", "navGraphNavigator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/Navigator;)V", "Companion", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,478:1\n232#2,3:479\n1603#3,9:482\n1855#3:491\n1856#3:493\n1612#3:494\n1#4:492\n1#4:495\n179#5,2:496\n1206#5,2:499\n22#6:498\n56#6,4:501\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n*L\n59#1:479,3\n71#1:482,9\n71#1:491\n71#1:493\n71#1:494\n71#1:492\n196#1:496,2\n390#1:499,2\n388#1:498\n395#1:501,4\n*E\n"})
/* loaded from: classes3.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination>, KMappedMarker {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final SparseArrayCompat<NavDestination> nodes;

    /* renamed from: p, reason: from kotlin metadata */
    public int startDestId;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public String startDestIdName;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public String startDestinationRoute;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0007¨\u0006\u0006"}, m61528d2 = {"Landroidx/navigation/NavGraph$Companion;", "", "()V", "findStartDestination", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/NavGraph;", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final NavDestination findStartDestination(@NotNull NavGraph navGraph) {
            Sequence generateSequence;
            Object last;
            Intrinsics.checkNotNullParameter(navGraph, "<this>");
            generateSequence = SequencesKt__SequencesKt.generateSequence(navGraph.findNode(navGraph.getStartDestId()), (Function1<? super NavDestination, ? extends NavDestination>) ((Function1<? super Object, ? extends Object>) new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavGraph$Companion$findStartDestination$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final NavDestination invoke(@NotNull NavDestination it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    if (!(it2 instanceof NavGraph)) {
                        return null;
                    }
                    NavGraph navGraph2 = (NavGraph) it2;
                    return navGraph2.findNode(navGraph2.getStartDestId());
                }
            }));
            last = SequencesKt___SequencesKt.last(generateSequence);
            return (NavDestination) last;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(@NotNull Navigator<? extends NavGraph> navGraphNavigator) {
        super(navGraphNavigator);
        Intrinsics.checkNotNullParameter(navGraphNavigator, "navGraphNavigator");
        this.nodes = new SparseArrayCompat<>();
    }

    @JvmStatic
    @NotNull
    public static final NavDestination findStartDestination(@NotNull NavGraph navGraph) {
        return INSTANCE.findStartDestination(navGraph);
    }

    public final void addAll(@NotNull NavGraph other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Iterator<NavDestination> it2 = other.iterator();
        while (it2.hasNext()) {
            NavDestination next = it2.next();
            it2.remove();
            addDestination(next);
        }
    }

    public final void addDestination(@NotNull NavDestination node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int id = node.getId();
        if (!((id == 0 && node.getRoute() == null) ? false : true)) {
            throw new IllegalArgumentException("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.".toString());
        }
        if (getRoute() != null && !(!Intrinsics.areEqual(r1, getRoute()))) {
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same route as graph " + this).toString());
        }
        if (!(id != getId())) {
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same id as graph " + this).toString());
        }
        NavDestination navDestination = this.nodes.get(id);
        if (navDestination == node) {
            return;
        }
        if (!(node.getParent() == null)) {
            throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.".toString());
        }
        if (navDestination != null) {
            navDestination.setParent(null);
        }
        node.setParent(this);
        this.nodes.put(node.getId(), node);
    }

    public final void addDestinations(@NotNull Collection<? extends NavDestination> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        for (NavDestination navDestination : nodes) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    /* renamed from: b */
    public final void m5166b(int i) {
        if (i != getId()) {
            if (this.startDestinationRoute != null) {
                m5167c(null);
            }
            this.startDestId = i;
            this.startDestIdName = null;
            return;
        }
        throw new IllegalArgumentException(("Start destination " + i + " cannot use the same id as the graph " + this).toString());
    }

    /* renamed from: c */
    public final void m5167c(String str) {
        boolean isBlank;
        int hashCode;
        if (str == null) {
            hashCode = 0;
        } else {
            if (!(!Intrinsics.areEqual(str, getRoute()))) {
                throw new IllegalArgumentException(("Start destination " + str + " cannot use the same route as the graph " + this).toString());
            }
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!(!isBlank)) {
                throw new IllegalArgumentException("Cannot have an empty start destination route".toString());
            }
            hashCode = NavDestination.INSTANCE.createRoute(str).hashCode();
        }
        this.startDestId = hashCode;
        this.startDestinationRoute = str;
    }

    public final void clear() {
        Iterator<NavDestination> it2 = iterator();
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }

    @Override // androidx.navigation.NavDestination
    public boolean equals(@Nullable Object other) {
        Sequence asSequence;
        boolean z;
        if (this == other) {
            return true;
        }
        if (other == null || !(other instanceof NavGraph)) {
            return false;
        }
        if (super.equals(other)) {
            NavGraph navGraph = (NavGraph) other;
            if (this.nodes.size() == navGraph.nodes.size() && getStartDestId() == navGraph.getStartDestId()) {
                asSequence = SequencesKt__SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes));
                Iterator it2 = asSequence.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    NavDestination navDestination = (NavDestination) it2.next();
                    if (!Intrinsics.areEqual(navDestination, this.nodes.get(navDestination.getId()))) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public final NavDestination findNode(@IdRes int resId) {
        return findNode(resId, true);
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getDisplayName() {
        return getId() != 0 ? super.getDisplayName() : "the root navigation";
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final SparseArrayCompat<NavDestination> getNodes() {
        return this.nodes;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final String getStartDestDisplayName() {
        if (this.startDestIdName == null) {
            String str = this.startDestinationRoute;
            if (str == null) {
                str = String.valueOf(this.startDestId);
            }
            this.startDestIdName = str;
        }
        String str2 = this.startDestIdName;
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    @Deprecated(message = "Use getStartDestinationId instead.", replaceWith = @ReplaceWith(expression = "startDestinationId", imports = {}))
    @IdRes
    public final int getStartDestination() {
        return getStartDestId();
    }

    @IdRes
    /* renamed from: getStartDestinationId, reason: from getter */
    public final int getStartDestId() {
        return this.startDestId;
    }

    @Nullable
    public final String getStartDestinationRoute() {
        return this.startDestinationRoute;
    }

    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int startDestId = getStartDestId();
        SparseArrayCompat<NavDestination> sparseArrayCompat = this.nodes;
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            startDestId = (((startDestId * 31) + sparseArrayCompat.keyAt(i)) * 31) + sparseArrayCompat.valueAt(i).hashCode();
        }
        return startDestId;
    }

    @Override // java.lang.Iterable
    @NotNull
    public final Iterator<NavDestination> iterator() {
        return new NavGraph$iterator$1(this);
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public NavDestination.DeepLinkMatch matchDeepLink(@NotNull NavDeepLinkRequest navDeepLinkRequest) {
        Comparable maxOrNull;
        List listOfNotNull;
        Comparable maxOrNull2;
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        NavDestination.DeepLinkMatch matchDeepLink = super.matchDeepLink(navDeepLinkRequest);
        ArrayList arrayList = new ArrayList();
        Iterator<NavDestination> it2 = iterator();
        while (it2.hasNext()) {
            NavDestination.DeepLinkMatch matchDeepLink2 = it2.next().matchDeepLink(navDeepLinkRequest);
            if (matchDeepLink2 != null) {
                arrayList.add(matchDeepLink2);
            }
        }
        maxOrNull = CollectionsKt___CollectionsKt.maxOrNull((Iterable<? extends Comparable>) arrayList);
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new NavDestination.DeepLinkMatch[]{matchDeepLink, (NavDestination.DeepLinkMatch) maxOrNull});
        maxOrNull2 = CollectionsKt___CollectionsKt.maxOrNull((Iterable<? extends Comparable>) listOfNotNull);
        return (NavDestination.DeepLinkMatch) maxOrNull2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final NavDestination.DeepLinkMatch matchDeepLinkExcludingChildren(@NotNull NavDeepLinkRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return super.matchDeepLink(request);
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(@NotNull Context context, @NotNull AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        super.onInflate(context, attrs);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, C1225R.styleable.NavGraphNavigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…vGraphNavigator\n        )");
        m5166b(obtainAttributes.getResourceId(C1225R.styleable.NavGraphNavigator_startDestination, 0));
        this.startDestIdName = NavDestination.INSTANCE.getDisplayName(context, this.startDestId);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final void remove(@NotNull NavDestination node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int indexOfKey = this.nodes.indexOfKey(node.getId());
        if (indexOfKey >= 0) {
            this.nodes.valueAt(indexOfKey).setParent(null);
            this.nodes.removeAt(indexOfKey);
        }
    }

    public final void setStartDestination(int startDestId) {
        m5166b(startDestId);
    }

    @Override // androidx.navigation.NavDestination
    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavDestination findNode = findNode(this.startDestinationRoute);
        if (findNode == null) {
            findNode = findNode(getStartDestId());
        }
        sb.append(" startDestination=");
        if (findNode == null) {
            String str = this.startDestinationRoute;
            if (str != null) {
                sb.append(str);
            } else {
                String str2 = this.startDestIdName;
                if (str2 != null) {
                    sb.append(str2);
                } else {
                    sb.append("0x" + Integer.toHexString(this.startDestId));
                }
            }
        } else {
            sb.append("{");
            sb.append(findNode.toString());
            sb.append("}");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.navigation.NavDestination findNode(@org.jetbrains.annotations.Nullable java.lang.String r3) {
        /*
            r2 = this;
            r0 = 1
            if (r3 == 0) goto Lc
            boolean r1 = kotlin.text.StringsKt.isBlank(r3)
            if (r1 == 0) goto La
            goto Lc
        La:
            r1 = 0
            goto Ld
        Lc:
            r1 = r0
        Ld:
            if (r1 != 0) goto L14
            androidx.navigation.NavDestination r2 = r2.findNode(r3, r0)
            goto L15
        L14:
            r2 = 0
        L15:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavGraph.findNode(java.lang.String):androidx.navigation.NavDestination");
    }

    public final void setStartDestination(@NotNull String startDestRoute) {
        Intrinsics.checkNotNullParameter(startDestRoute, "startDestRoute");
        m5167c(startDestRoute);
    }

    public final void addDestinations(@NotNull NavDestination... nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        for (NavDestination navDestination : nodes) {
            addDestination(navDestination);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final NavDestination findNode(@IdRes int resId, boolean searchParents) {
        NavDestination navDestination = this.nodes.get(resId);
        if (navDestination != null) {
            return navDestination;
        }
        if (!searchParents || getParent() == null) {
            return null;
        }
        NavGraph parent = getParent();
        Intrinsics.checkNotNull(parent);
        return parent.findNode(resId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final NavDestination findNode(@NotNull String route, boolean searchParents) {
        Sequence asSequence;
        NavDestination navDestination;
        Intrinsics.checkNotNullParameter(route, "route");
        NavDestination navDestination2 = this.nodes.get(NavDestination.INSTANCE.createRoute(route).hashCode());
        if (navDestination2 == null) {
            asSequence = SequencesKt__SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes));
            Iterator it2 = asSequence.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    navDestination = 0;
                    break;
                }
                navDestination = it2.next();
                if (((NavDestination) navDestination).matchDeepLink(route) != null) {
                    break;
                }
            }
            navDestination2 = navDestination;
        }
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!searchParents || getParent() == null) {
            return null;
        }
        NavGraph parent = getParent();
        Intrinsics.checkNotNull(parent);
        return parent.findNode(route);
    }
}
