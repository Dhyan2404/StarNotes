package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.core.app.C0619b;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.C1126e;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.common.C1225R;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 m2\u00020\u0001:\u0003nmoB\u000f\u0012\u0006\u0010;\u001a\u00020\u0007¢\u0006\u0004\bi\u0010dB\u0019\b\u0016\u0012\u000e\u0010k\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000j¢\u0006\u0004\bi\u0010lJ.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0018\u001a\u00020\u0007H\u0007J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001b\u001a\u00020\u0013H\u0017J\u0014\u0010\u001e\u001a\u00020\u001d2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0000H\u0007J\u001a\u0010 \u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u001fH\u0007J\b\u0010!\u001a\u00020\nH\u0017J\u0012\u0010%\u001a\u0004\u0018\u00010$2\b\b\u0001\u0010#\u001a\u00020\"J\u001a\u0010(\u001a\u00020\u00102\b\b\u0001\u0010&\u001a\u00020\"2\b\b\u0001\u0010'\u001a\u00020\"J\u0018\u0010(\u001a\u00020\u00102\b\b\u0001\u0010&\u001a\u00020\"2\u0006\u0010)\u001a\u00020$J\u0010\u0010*\u001a\u00020\u00102\b\b\u0001\u0010&\u001a\u00020\"J\u0016\u0010-\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\bJ\u000e\u0010.\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u0007J\u0014\u00100\u001a\u0004\u0018\u00010\u001f2\b\u0010/\u001a\u0004\u0018\u00010\u001fH\u0007J\u001a\u00102\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\f2\b\u00101\u001a\u0004\u0018\u00010\u001fJ\b\u00103\u001a\u00020\u0007H\u0016J\u0013\u00105\u001a\u00020\n2\b\u00104\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u00106\u001a\u00020\"H\u0016R\u0017\u0010;\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R.\u0010D\u001a\u0004\u0018\u00010<2\b\u0010=\u001a\u0004\u0018\u00010<8\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0018\u0010F\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00108R$\u0010N\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00020$0S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\"\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR,\u0010#\u001a\u00020\"2\b\b\u0001\u0010#\u001a\u00020\"8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R.\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\ba\u00108\u001a\u0004\bb\u0010:\"\u0004\bc\u0010dR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068F¢\u0006\u0006\u001a\u0004\be\u0010fR\u0014\u0010h\u001a\u00020\u00078WX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010:¨\u0006p"}, m61528d2 = {"Landroidx/navigation/NavDestination;", "", "Landroidx/navigation/NavDeepLink;", NavInflater.f8492d, "Landroid/net/Uri;", "uri", "", "", "Landroidx/navigation/NavArgument;", C1126e.f7698m, "", "a", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "onInflate", "hasDeepLink", "Landroidx/navigation/NavDeepLinkRequest;", "deepLinkRequest", "uriPattern", "addDeepLink", "navDeepLink", "route", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "matchDeepLink", "navDeepLinkRequest", "previousDestination", "", "buildDeepLinkIds", "Landroid/os/Bundle;", "hasRoute", "supportsActions", "", "id", "Landroidx/navigation/NavAction;", "getAction", "actionId", "destId", "putAction", "action", "removeAction", "argumentName", NavInflater.f8491c, "addArgument", "removeArgument", "args", "addInDefaultArgs", "bundle", "fillInLabel", "toString", Constants.ATTRVAL_OTHER, "equals", "hashCode", "e", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getNavigatorName", "()Ljava/lang/String;", "navigatorName", "Landroidx/navigation/NavGraph;", "<set-?>", C6997f.f39671c, "Landroidx/navigation/NavGraph;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_PARENT, "()Landroidx/navigation/NavGraph;", "setParent", "(Landroidx/navigation/NavGraph;)V", "parent", C6998g.f39679a, "idName", "", C6999h.f39688c, "Ljava/lang/CharSequence;", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", C0619b.f5199k, "", "i", "Ljava/util/List;", "deepLinks", "Landroidx/collection/SparseArrayCompat;", "j", "Landroidx/collection/SparseArrayCompat;", NotificationCompat.WearableExtender.f5050p, "", C4921e.f26537n, "Ljava/util/Map;", "_arguments", "l", "I", "getId", "()I", "setId", "(I)V", "m", "getRoute", "setRoute", "(Ljava/lang/String;)V", "getArguments", "()Ljava/util/Map;", "getDisplayName", FileProvider.f5230t, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Landroidx/navigation/Navigator;", "navigator", "(Landroidx/navigation/Navigator;)V", "Companion", "ClassType", "DeepLinkMatch", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Uri.kt\nandroidx/core/net/UriKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,819:1\n232#2,3:820\n1#3:823\n288#4,2:824\n1549#4:827\n1620#4,3:828\n1855#4,2:835\n1855#4,2:838\n1855#4,2:841\n29#5:826\n1206#6,2:831\n1206#6,2:833\n32#7:837\n33#7:840\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n*L\n192#1:820,3\n232#1:824,2\n465#1:827\n465#1:828,3\n704#1:835,2\n712#1:838,2\n716#1:841,2\n371#1:826\n685#1:831,2\n688#1:833,2\n709#1:837\n709#1:840\n*E\n"})
/* loaded from: classes3.dex */
public class NavDestination {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: n */
    @NotNull
    public static final Map<String, Class<?>> f8456n = new LinkedHashMap();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String navigatorName;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public NavGraph parent;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String idName;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public CharSequence label;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<NavDeepLink> deepLinks;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final SparseArrayCompat<NavAction> actions;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Map<String, NavArgument> _arguments;

    /* renamed from: l, reason: from kotlin metadata */
    public int id;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String route;

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\f\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003R\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, m61528d2 = {"Landroidx/navigation/NavDestination$ClassType;", "", "value", "Lkotlin/reflect/KClass;", "()Ljava/lang/Class;", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS, AnnotationTarget.CLASS})
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes3.dex */
    public @interface ClassType {
        Class<?> value();
    }

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007J\u0018\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J:\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0005J:\u0010\u0019\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, m61528d2 = {"Landroidx/navigation/NavDestination$Companion;", "", "()V", "classes", "", "", "Ljava/lang/Class;", "hierarchy", "Lkotlin/sequences/Sequence;", "Landroidx/navigation/NavDestination;", "getHierarchy$annotations", "(Landroidx/navigation/NavDestination;)V", "getHierarchy", "(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;", "createRoute", "route", "getDisplayName", "context", "Landroid/content/Context;", "id", "", "parseClassFromName", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "name", "expectedClassType", "parseClassFromNameInternal", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getHierarchy$annotations(NavDestination navDestination) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final String createRoute(@Nullable String route) {
            if (route == null) {
                return "";
            }
            return "android-app://androidx.navigation/" + route;
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final String getDisplayName(@NotNull Context context, int id) {
            String valueOf;
            Intrinsics.checkNotNullParameter(context, "context");
            if (id <= 16777215) {
                return String.valueOf(id);
            }
            try {
                valueOf = context.getResources().getResourceName(id);
            } catch (Resources.NotFoundException unused) {
                valueOf = String.valueOf(id);
            }
            Intrinsics.checkNotNullExpressionValue(valueOf, "try {\n                co….toString()\n            }");
            return valueOf;
        }

        @NotNull
        public final Sequence<NavDestination> getHierarchy(@NotNull NavDestination navDestination) {
            Intrinsics.checkNotNullParameter(navDestination, "<this>");
            return SequencesKt.generateSequence(navDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavDestination$Companion$hierarchy$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final NavDestination invoke(@NotNull NavDestination it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2.getParent();
                }
            });
        }

        @JvmStatic
        @NotNull
        public final <C> Class<? extends C> parseClassFromName(@NotNull Context context, @NotNull String name, @NotNull Class<? extends C> expectedClassType) {
            String str;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            if (name.charAt(0) == '.') {
                str = context.getPackageName() + name;
            } else {
                str = name;
            }
            Class<? extends C> cls = (Class) NavDestination.f8456n.get(str);
            if (cls == null) {
                try {
                    cls = (Class<? extends C>) Class.forName(str, true, context.getClassLoader());
                    NavDestination.f8456n.put(name, cls);
                } catch (ClassNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            }
            Intrinsics.checkNotNull(cls);
            if (expectedClassType.isAssignableFrom(cls)) {
                return cls;
            }
            throw new IllegalArgumentException((str + " must be a subclass of " + expectedClassType).toString());
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        @NotNull
        public final <C> Class<? extends C> parseClassFromNameInternal(@NotNull Context context, @NotNull String name, @NotNull Class<? extends C> expectedClassType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            return NavDestination.parseClassFromName(context, name, expectedClassType);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B9\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018¨\u0006 "}, m61528d2 = {"Landroidx/navigation/NavDestination$DeepLinkMatch;", "", Constants.ATTRVAL_OTHER, "", "compareTo", "Landroid/os/Bundle;", C1126e.f7698m, "", "hasMatchingArgs", "Landroidx/navigation/NavDestination;", "e", "Landroidx/navigation/NavDestination;", "getDestination", "()Landroidx/navigation/NavDestination;", FirebaseAnalytics.Param.DESTINATION, C6997f.f39671c, "Landroid/os/Bundle;", "getMatchingArgs", "()Landroid/os/Bundle;", "matchingArgs", C6998g.f39679a, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isExactDeepLink", C6999h.f39688c, "I", "matchingPathSegments", "i", "hasMatchingAction", "j", "mimeTypeMatchLevel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @SourceDebugExtension({"SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,819:1\n1855#2,2:820\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n*L\n128#1:820,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final NavDestination destination;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public final Bundle matchingArgs;

        /* renamed from: g, reason: from kotlin metadata */
        public final boolean isExactDeepLink;

        /* renamed from: h, reason: from kotlin metadata */
        public final int matchingPathSegments;

        /* renamed from: i, reason: from kotlin metadata */
        public final boolean hasMatchingAction;

        /* renamed from: j, reason: from kotlin metadata */
        public final int mimeTypeMatchLevel;

        public DeepLinkMatch(@NotNull NavDestination destination, @Nullable Bundle bundle, boolean z, int i, boolean z2, int i2) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            this.destination = destination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.matchingPathSegments = i;
            this.hasMatchingAction = z2;
            this.mimeTypeMatchLevel = i2;
        }

        @NotNull
        public final NavDestination getDestination() {
            return this.destination;
        }

        @Nullable
        public final Bundle getMatchingArgs() {
            return this.matchingArgs;
        }

        public final boolean hasMatchingArgs(@Nullable Bundle arguments) {
            Bundle bundle;
            Object obj;
            if (arguments == null || (bundle = this.matchingArgs) == null) {
                return false;
            }
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "matchingArgs.keySet()");
            for (String key : keySet) {
                if (!arguments.containsKey(key)) {
                    return false;
                }
                NavArgument navArgument = (NavArgument) this.destination._arguments.get(key);
                Object obj2 = null;
                NavType<Object> type = navArgument != null ? navArgument.getType() : null;
                if (type != null) {
                    Bundle bundle2 = this.matchingArgs;
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    obj = type.get(bundle2, key);
                } else {
                    obj = null;
                }
                if (type != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    obj2 = type.get(arguments, key);
                }
                if (!Intrinsics.areEqual(obj, obj2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NotNull DeepLinkMatch other) {
            Intrinsics.checkNotNullParameter(other, "other");
            boolean z = this.isExactDeepLink;
            if (z && !other.isExactDeepLink) {
                return 1;
            }
            if (!z && other.isExactDeepLink) {
                return -1;
            }
            int i = this.matchingPathSegments - other.matchingPathSegments;
            if (i > 0) {
                return 1;
            }
            if (i < 0) {
                return -1;
            }
            Bundle bundle = this.matchingArgs;
            if (bundle != null && other.matchingArgs == null) {
                return 1;
            }
            if (bundle == null && other.matchingArgs != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size();
                Bundle bundle2 = other.matchingArgs;
                Intrinsics.checkNotNull(bundle2);
                int size2 = size - bundle2.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z2 = this.hasMatchingAction;
            if (z2 && !other.hasMatchingAction) {
                return 1;
            }
            if (z2 || !other.hasMatchingAction) {
                return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
            }
            return -1;
        }
    }

    public NavDestination(@NotNull String navigatorName) {
        Intrinsics.checkNotNullParameter(navigatorName, "navigatorName");
        this.navigatorName = navigatorName;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>();
        this._arguments = new LinkedHashMap();
    }

    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
        }
        if ((i & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.buildDeepLinkIds(navDestination2);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String getDisplayName(@NotNull Context context, int i) {
        return INSTANCE.getDisplayName(context, i);
    }

    @NotNull
    public static final Sequence<NavDestination> getHierarchy(@NotNull NavDestination navDestination) {
        return INSTANCE.getHierarchy(navDestination);
    }

    @JvmStatic
    @NotNull
    public static final <C> Class<? extends C> parseClassFromName(@NotNull Context context, @NotNull String str, @NotNull Class<? extends C> cls) {
        return INSTANCE.parseClassFromName(context, str, cls);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final <C> Class<? extends C> parseClassFromNameInternal(@NotNull Context context, @NotNull String str, @NotNull Class<? extends C> cls) {
        return INSTANCE.parseClassFromNameInternal(context, str, cls);
    }

    /* renamed from: a */
    public final boolean m5165a(NavDeepLink deepLink, Uri uri, Map<String, NavArgument> arguments) {
        final Bundle matchingPathAndQueryArgs$navigation_common_release = deepLink.getMatchingPathAndQueryArgs$navigation_common_release(uri, arguments);
        return NavArgumentKt.missingRequiredArguments(arguments, new Function1<String, Boolean>() { // from class: androidx.navigation.NavDestination$hasRequiredArguments$missingRequiredArguments$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String key) {
                Intrinsics.checkNotNullParameter(key, "key");
                return Boolean.valueOf(!matchingPathAndQueryArgs$navigation_common_release.containsKey(key));
            }
        }).isEmpty();
    }

    public final void addArgument(@NotNull String argumentName, @NotNull NavArgument argument) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        Intrinsics.checkNotNullParameter(argument, "argument");
        this._arguments.put(argumentName, argument);
    }

    public final void addDeepLink(@NotNull String uriPattern) {
        Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
        addDeepLink(new NavDeepLink.Builder().setUriPattern(uriPattern).build());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final Bundle addInDefaultArgs(@Nullable Bundle args) {
        if (args == null) {
            Map<String, NavArgument> map = this._arguments;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry<String, NavArgument> entry : this._arguments.entrySet()) {
            entry.getValue().putDefaultValue(entry.getKey(), bundle);
        }
        if (args != null) {
            bundle.putAll(args);
            for (Map.Entry<String, NavArgument> entry2 : this._arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.verify(key, bundle)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + key + "' in argument bundle. " + value.getType().getName() + " expected.").toString());
                }
            }
        }
        return bundle;
    }

    @JvmOverloads
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final int[] buildDeepLinkIds() {
        return buildDeepLinkIds$default(this, null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 1
            if (r8 != r9) goto L4
            return r0
        L4:
            r1 = 0
            if (r9 == 0) goto Lc7
            boolean r2 = r9 instanceof androidx.navigation.NavDestination
            if (r2 != 0) goto Ld
            goto Lc7
        Ld:
            java.util.List<androidx.navigation.NavDeepLink> r2 = r8.deepLinks
            androidx.navigation.NavDestination r9 = (androidx.navigation.NavDestination) r9
            java.util.List<androidx.navigation.NavDeepLink> r3 = r9.deepLinks
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            androidx.collection.SparseArrayCompat<androidx.navigation.NavAction> r3 = r8.actions
            int r3 = r3.size()
            androidx.collection.SparseArrayCompat<androidx.navigation.NavAction> r4 = r9.actions
            int r4 = r4.size()
            if (r3 != r4) goto L5c
            androidx.collection.SparseArrayCompat<androidx.navigation.NavAction> r3 = r8.actions
            kotlin.collections.IntIterator r3 = androidx.collection.SparseArrayKt.keyIterator(r3)
            kotlin.sequences.Sequence r3 = kotlin.sequences.SequencesKt.asSequence(r3)
            java.util.Iterator r3 = r3.iterator()
        L33:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L57
            java.lang.Object r4 = r3.next()
            java.lang.Number r4 = (java.lang.Number) r4
            int r4 = r4.intValue()
            androidx.collection.SparseArrayCompat<androidx.navigation.NavAction> r5 = r8.actions
            java.lang.Object r5 = r5.get(r4)
            androidx.collection.SparseArrayCompat<androidx.navigation.NavAction> r6 = r9.actions
            java.lang.Object r4 = r6.get(r4)
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r4)
            if (r4 != 0) goto L33
            r3 = r1
            goto L58
        L57:
            r3 = r0
        L58:
            if (r3 == 0) goto L5c
            r3 = r0
            goto L5d
        L5c:
            r3 = r1
        L5d:
            java.util.Map<java.lang.String, androidx.navigation.NavArgument> r4 = r8._arguments
            int r4 = r4.size()
            java.util.Map<java.lang.String, androidx.navigation.NavArgument> r5 = r9._arguments
            int r5 = r5.size()
            if (r4 != r5) goto Lad
            java.util.Map<java.lang.String, androidx.navigation.NavArgument> r4 = r8._arguments
            kotlin.sequences.Sequence r4 = kotlin.collections.MapsKt.asSequence(r4)
            java.util.Iterator r4 = r4.iterator()
        L75:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto La8
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.util.Map<java.lang.String, androidx.navigation.NavArgument> r6 = r9._arguments
            java.lang.Object r7 = r5.getKey()
            boolean r6 = r6.containsKey(r7)
            if (r6 == 0) goto La3
            java.util.Map<java.lang.String, androidx.navigation.NavArgument> r6 = r9._arguments
            java.lang.Object r7 = r5.getKey()
            java.lang.Object r6 = r6.get(r7)
            java.lang.Object r5 = r5.getValue()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r5)
            if (r5 == 0) goto La3
            r5 = r0
            goto La4
        La3:
            r5 = r1
        La4:
            if (r5 != 0) goto L75
            r4 = r1
            goto La9
        La8:
            r4 = r0
        La9:
            if (r4 == 0) goto Lad
            r4 = r0
            goto Lae
        Lad:
            r4 = r1
        Lae:
            int r5 = r8.id
            int r6 = r9.id
            if (r5 != r6) goto Lc5
            java.lang.String r8 = r8.route
            java.lang.String r9 = r9.route
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            if (r8 == 0) goto Lc5
            if (r2 == 0) goto Lc5
            if (r3 == 0) goto Lc5
            if (r4 == 0) goto Lc5
            goto Lc6
        Lc5:
            r0 = r1
        Lc6:
            return r0
        Lc7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.equals(java.lang.Object):boolean");
    }

    @Nullable
    public final String fillInLabel(@NotNull Context context, @Nullable Bundle bundle) {
        NavArgument navArgument;
        Intrinsics.checkNotNullParameter(context, "context");
        CharSequence charSequence = this.label;
        if (charSequence == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (bundle == null || !bundle.containsKey(group)) {
                throw new IllegalArgumentException("Could not find \"" + group + "\" in " + bundle + " to fill label \"" + ((Object) charSequence) + '\"');
            }
            matcher.appendReplacement(stringBuffer, "");
            if (Intrinsics.areEqual((group == null || (navArgument = this._arguments.get(group)) == null) ? null : navArgument.getType(), NavType.ReferenceType)) {
                String string = context.getString(bundle.getInt(group));
                Intrinsics.checkNotNullExpressionValue(string, "context.getString(bundle.getInt(argName))");
                stringBuffer.append(string);
            } else {
                stringBuffer.append(bundle.getString(group));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    @Nullable
    public final NavAction getAction(@IdRes int id) {
        NavAction navAction = this.actions.isEmpty() ? null : this.actions.get(id);
        if (navAction != null) {
            return navAction;
        }
        NavGraph navGraph = this.parent;
        if (navGraph != null) {
            return navGraph.getAction(id);
        }
        return null;
    }

    @NotNull
    public final Map<String, NavArgument> getArguments() {
        return MapsKt.toMap(this._arguments);
    }

    @IdRes
    public final int getId() {
        return this.id;
    }

    @Nullable
    public final CharSequence getLabel() {
        return this.label;
    }

    @NotNull
    public final String getNavigatorName() {
        return this.navigatorName;
    }

    @Nullable
    public final NavGraph getParent() {
        return this.parent;
    }

    @Nullable
    public final String getRoute() {
        return this.route;
    }

    public boolean hasDeepLink(@NotNull Uri deepLink) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        return hasDeepLink(new NavDeepLinkRequest(deepLink, null, null));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean hasRoute(@NotNull String route, @Nullable Bundle arguments) {
        Intrinsics.checkNotNullParameter(route, "route");
        if (Intrinsics.areEqual(this.route, route)) {
            return true;
        }
        DeepLinkMatch matchDeepLink = matchDeepLink(route);
        if (Intrinsics.areEqual(this, matchDeepLink != null ? matchDeepLink.getDestination() : null)) {
            return matchDeepLink.hasMatchingArgs(arguments);
        }
        return false;
    }

    public int hashCode() {
        Set<String> keySet;
        int i = this.id * 31;
        String str = this.route;
        int hashCode = i + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i2 = hashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int hashCode2 = (i2 + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int hashCode3 = (hashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            hashCode = hashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator valueIterator = SparseArrayKt.valueIterator(this.actions);
        while (valueIterator.hasNext()) {
            NavAction navAction = (NavAction) valueIterator.next();
            int destinationId = ((hashCode * 31) + navAction.getDestinationId()) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            hashCode = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            if (defaultArguments != null && (keySet = defaultArguments.keySet()) != null) {
                Intrinsics.checkNotNullExpressionValue(keySet, "keySet()");
                for (String str2 : keySet) {
                    int i3 = hashCode * 31;
                    Bundle defaultArguments2 = navAction.getDefaultArguments();
                    Intrinsics.checkNotNull(defaultArguments2);
                    Object obj = defaultArguments2.get(str2);
                    hashCode = i3 + (obj != null ? obj.hashCode() : 0);
                }
            }
        }
        for (String str3 : this._arguments.keySet()) {
            int hashCode4 = ((hashCode * 31) + str3.hashCode()) * 31;
            NavArgument navArgument = this._arguments.get(str3);
            hashCode = hashCode4 + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return hashCode;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final DeepLinkMatch matchDeepLink(@NotNull String route) {
        Intrinsics.checkNotNullParameter(route, "route");
        NavDeepLinkRequest.Builder.Companion companion = NavDeepLinkRequest.Builder.INSTANCE;
        Uri parse = Uri.parse(INSTANCE.createRoute(route));
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(this)");
        NavDeepLinkRequest build = companion.fromUri(parse).build();
        if (this instanceof NavGraph) {
            return ((NavGraph) this).matchDeepLinkExcludingChildren(build);
        }
        return matchDeepLink(build);
    }

    @CallSuper
    public void onInflate(@NotNull Context context, @NotNull AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, C1225R.styleable.Navigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        setRoute(obtainAttributes.getString(C1225R.styleable.Navigator_route));
        if (obtainAttributes.hasValue(C1225R.styleable.Navigator_android_id)) {
            setId(obtainAttributes.getResourceId(C1225R.styleable.Navigator_android_id, 0));
            this.idName = INSTANCE.getDisplayName(context, this.id);
        }
        this.label = obtainAttributes.getText(C1225R.styleable.Navigator_android_label);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final void putAction(@IdRes int actionId, @IdRes int destId) {
        putAction(actionId, new NavAction(destId, null, null, 6, null));
    }

    public final void removeAction(@IdRes int actionId) {
        this.actions.remove(actionId);
    }

    public final void removeArgument(@NotNull String argumentName) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        this._arguments.remove(argumentName);
    }

    public final void setId(@IdRes int i) {
        this.id = i;
        this.idName = null;
    }

    public final void setLabel(@Nullable CharSequence charSequence) {
        this.label = charSequence;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setParent(@Nullable NavGraph navGraph) {
        this.parent = navGraph;
    }

    public final void setRoute(@Nullable String str) {
        boolean isBlank;
        Object obj;
        if (str == null) {
            setId(0);
        } else {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!(!isBlank)) {
                throw new IllegalArgumentException("Cannot have an empty route".toString());
            }
            String createRoute = INSTANCE.createRoute(str);
            setId(createRoute.hashCode());
            addDeepLink(createRoute);
        }
        List<NavDeepLink> list = this.deepLinks;
        List<NavDeepLink> list2 = list;
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (Intrinsics.areEqual(((NavDeepLink) obj).getUriPattern(), INSTANCE.createRoute(this.route))) {
                    break;
                }
            }
        }
        TypeIntrinsics.asMutableCollection(list2).remove(obj);
        this.route = str;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean supportsActions() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r2.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            java.lang.String r1 = "("
            r0.append(r1)
            java.lang.String r1 = r2.idName
            if (r1 != 0) goto L28
            java.lang.String r1 = "0x"
            r0.append(r1)
            int r1 = r2.id
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            goto L2b
        L28:
            r0.append(r1)
        L2b:
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r1 = r2.route
            if (r1 == 0) goto L3d
            boolean r1 = kotlin.text.StringsKt.isBlank(r1)
            if (r1 == 0) goto L3b
            goto L3d
        L3b:
            r1 = 0
            goto L3e
        L3d:
            r1 = 1
        L3e:
            if (r1 != 0) goto L4a
            java.lang.String r1 = " route="
            r0.append(r1)
            java.lang.String r1 = r2.route
            r0.append(r1)
        L4a:
            java.lang.CharSequence r1 = r2.label
            if (r1 == 0) goto L58
            java.lang.String r1 = " label="
            r0.append(r1)
            java.lang.CharSequence r2 = r2.label
            r0.append(r2)
        L58:
            java.lang.String r2 = r0.toString()
            java.lang.String r0 = "sb.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.toString():java.lang.String");
    }

    public final void addDeepLink(@NotNull final NavDeepLink navDeepLink) {
        Intrinsics.checkNotNullParameter(navDeepLink, "navDeepLink");
        List<String> missingRequiredArguments = NavArgumentKt.missingRequiredArguments(this._arguments, new Function1<String, Boolean>() { // from class: androidx.navigation.NavDestination$addDeepLink$missingRequiredArguments$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String key) {
                Intrinsics.checkNotNullParameter(key, "key");
                return Boolean.valueOf(!NavDeepLink.this.getArgumentsNames$navigation_common_release().contains(key));
            }
        });
        if (missingRequiredArguments.isEmpty()) {
            this.deepLinks.add(navDeepLink);
            return;
        }
        throw new IllegalArgumentException(("Deep link " + navDeepLink.getUriPattern() + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + missingRequiredArguments).toString());
    }

    @JvmOverloads
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final int[] buildDeepLinkIds(@Nullable NavDestination previousDestination) {
        List list;
        int collectionSizeOrDefault;
        int[] intArray;
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            Intrinsics.checkNotNull(this);
            NavGraph navGraph = this.parent;
            if ((previousDestination != null ? previousDestination.parent : null) != null) {
                NavGraph navGraph2 = previousDestination.parent;
                Intrinsics.checkNotNull(navGraph2);
                if (navGraph2.findNode(this.id) == this) {
                    arrayDeque.addFirst(this);
                    break;
                }
            }
            if (navGraph == null || navGraph.getStartDestId() != this.id) {
                arrayDeque.addFirst(this);
            }
            if (Intrinsics.areEqual(navGraph, previousDestination) || navGraph == null) {
                break;
            }
            this = navGraph;
        }
        list = CollectionsKt___CollectionsKt.toList(arrayDeque);
        List list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it2.next()).id));
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        return intArray;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getDisplayName() {
        String str = this.idName;
        return str == null ? String.valueOf(this.id) : str;
    }

    public boolean hasDeepLink(@NotNull NavDeepLinkRequest deepLinkRequest) {
        Intrinsics.checkNotNullParameter(deepLinkRequest, "deepLinkRequest");
        return matchDeepLink(deepLinkRequest) != null;
    }

    public final void putAction(@IdRes int actionId, @NotNull NavAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (supportsActions()) {
            if (actionId != 0) {
                this.actions.put(actionId, action);
                return;
            }
            throw new IllegalArgumentException("Cannot have an action with actionId 0".toString());
        }
        throw new UnsupportedOperationException("Cannot add action " + actionId + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(@NotNull Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.INSTANCE.getNameForNavigator$navigation_common_release(navigator.getClass()));
        Intrinsics.checkNotNullParameter(navigator, "navigator");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public DeepLinkMatch matchDeepLink(@NotNull NavDeepLinkRequest navDeepLinkRequest) {
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, this._arguments) : null;
            int calculateMatchingPathSegments$navigation_common_release = navDeepLink.calculateMatchingPathSegments$navigation_common_release(uri);
            String action = navDeepLinkRequest.getAction();
            boolean z = action != null && Intrinsics.areEqual(action, navDeepLink.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments == null) {
                if (z || mimeTypeMatchRating > -1) {
                    if (m5165a(navDeepLink, uri, this._arguments)) {
                    }
                }
            }
            DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, navDeepLink.getIsExactDeepLink(), calculateMatchingPathSegments$navigation_common_release, z, mimeTypeMatchRating);
            if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                deepLinkMatch = deepLinkMatch2;
            }
        }
        return deepLinkMatch;
    }
}
