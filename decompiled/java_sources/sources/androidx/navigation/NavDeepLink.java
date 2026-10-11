package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.fragment.app.C1126e;
import androidx.navigation.NavDeepLink;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.cache.ResourceCache;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b \u0018\u0000 '2\u00020\u0001:\u0004m\nEGB'\b\u0000\u0012\b\u0010D\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\bj\u0010kB\u0011\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\bj\u0010lJ*\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0002J\u0012\u0010\r\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0002J0\u0010\u0018\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0002J.\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0002J.\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0002J>\u0010\"\u001a\u00020\f2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0014\u001a\u00020\u00132\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0002J*\u0010&\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00022\b\u0010%\u001a\u0004\u0018\u00010\u0016H\u0002J,\u0010'\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u00022\b\u0010$\u001a\u0004\u0018\u00010\u00022\b\u0010%\u001a\u0004\u0018\u00010\u0016H\u0002J\b\u0010(\u001a\u00020\tH\u0002J\u0014\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020 0)H\u0002J\u001c\u0010,\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010+H\u0002J\b\u0010-\u001a\u00020\tH\u0002J\u0017\u00100\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u000bH\u0000¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\f2\u0006\u00102\u001a\u000201H\u0000¢\u0006\u0004\b.\u00103J\u0010\u00105\u001a\u0002042\u0006\u0010\u0010\u001a\u00020\u0002H\u0007J(\u00106\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001c\u001a\u00020\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0007J/\u00109\u001a\u00020\u00132\b\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0000¢\u0006\u0004\b7\u00108J\u0019\u0010=\u001a\u0002042\b\u0010:\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0004\b;\u0010<J\u0013\u0010?\u001a\u00020\f2\b\u0010>\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010@\u001a\u000204H\u0016R\u0019\u0010D\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010A\u001a\u0004\bB\u0010CR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bE\u0010A\u001a\u0004\bF\u0010CR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\bG\u0010A\u001a\u0004\bH\u0010CR\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010AR\u001d\u0010R\u001a\u0004\u0018\u00010N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010O\u001a\u0004\bP\u0010QR\u001b\u0010U\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010O\u001a\u0004\bS\u0010TR'\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020 0)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010O\u001a\u0004\bV\u0010WR\u0016\u0010[\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR/\u0010]\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010O\u001a\u0004\bG\u0010\\R!\u0010_\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010O\u001a\u0004\bE\u0010^R\u001d\u0010`\u001a\u0004\u0018\u00010\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010O\u001a\u0004\bL\u0010CR\u001d\u0010a\u001a\u0004\u0018\u00010N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010O\u001a\u0004\bI\u0010QR\u0018\u0010b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010AR\u001d\u0010c\u001a\u0004\u0018\u00010N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010O\u001a\u0004\bY\u0010QR*\u0010e\u001a\u00020\f2\u0006\u0010d\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010Z\u001a\u0004\be\u0010T\"\u0004\bf\u0010gR\u001a\u0010i\u001a\b\u0012\u0004\u0012\u00020\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bh\u0010^¨\u0006n"}, m61528d2 = {"Landroidx/navigation/NavDeepLink;", "", "", "uri", "", "args", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "uriRegex", "", "a", "Landroid/net/Uri;", "", C4921e.f26528e, "action", "m", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, GoogleApiAvailabilityLight.f29016b, "fragment", "Landroid/os/Bundle;", "bundle", "", "Landroidx/navigation/NavArgument;", C1126e.f7698m, C6999h.f39688c, "Ljava/util/regex/Matcher;", "matcher", C6997f.f39671c, NavInflater.f8492d, C6998g.f39679a, "", "inputParams", "Landroidx/navigation/NavDeepLink$c;", "storedParam", "s", "name", "value", NavInflater.f8491c, "p", "q", "u", "", "v", "Lkotlin/Pair;", "r", "t", "matches$navigation_common_release", "(Landroid/net/Uri;)Z", "matches", "Landroidx/navigation/NavDeepLinkRequest;", "deepLinkRequest", "(Landroidx/navigation/NavDeepLinkRequest;)Z", "", "getMimeTypeMatchRating", "getMatchingArguments", "getMatchingPathAndQueryArgs$navigation_common_release", "(Landroid/net/Uri;Ljava/util/Map;)Landroid/os/Bundle;", "getMatchingPathAndQueryArgs", "requestedLink", "calculateMatchingPathSegments$navigation_common_release", "(Landroid/net/Uri;)I", "calculateMatchingPathSegments", Constants.ATTRVAL_OTHER, "equals", "hashCode", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getUriPattern", "()Ljava/lang/String;", "uriPattern", "b", "getAction", "c", "getMimeType", "d", "Ljava/util/List;", "pathArgs", "e", "pathRegex", "Ljava/util/regex/Pattern;", "Lkotlin/Lazy;", "j", "()Ljava/util/regex/Pattern;", "pathPattern", "l", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "isParameterizedQuery", C4921e.f26537n, "()Ljava/util/Map;", "queryArgsMap", "i", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "isSingleQueryParamValueOnly", "()Lkotlin/Pair;", "fragArgsAndRegex", "()Ljava/util/List;", "fragArgs", "fragRegex", "fragPattern", "mimeTypeRegex", "mimeTypePattern", "<set-?>", "isExactDeepLink", "setExactDeepLink$navigation_common_release", "(Z)V", "getArgumentsNames$navigation_common_release", "argumentsNames", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "(Ljava/lang/String;)V", "Builder", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,651:1\n1360#2:652\n1446#2,5:653\n1559#2:658\n1590#2,4:659\n1559#2:663\n1590#2,4:664\n1855#2:670\n1559#2:671\n1590#2,4:672\n1856#2:676\n215#3,2:668\n1#4:677\n*S KotlinDebug\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink\n*L\n85#1:652\n85#1:653,5\n229#1:658\n229#1:659,4\n247#1:663\n247#1:664,4\n295#1:670\n307#1:671\n307#1:672,4\n295#1:676\n269#1:668,2\n*E\n"})
/* loaded from: classes3.dex */
public final class NavDeepLink {

    /* renamed from: r */
    public static final Pattern f8413r = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");

    /* renamed from: s */
    public static final Pattern f8414s = Pattern.compile("\\{(.+?)\\}");

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final String uriPattern;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final String action;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final String mimeType;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<String> pathArgs;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String pathRegex;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy pathPattern;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy isParameterizedQuery;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy queryArgsMap;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isSingleQueryParamValueOnly;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy fragArgsAndRegex;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Lazy fragArgs;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Lazy fragRegex;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final Lazy fragPattern;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public String mimeTypeRegex;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Lazy mimeTypePattern;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isExactDeepLink;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\t\b\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\tR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0012"}, m61528d2 = {"Landroidx/navigation/NavDeepLink$Builder;", "", "", "uriPattern", "setUriPattern", "action", "setAction", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "setMimeType", "Landroidx/navigation/NavDeepLink;", PrivilegedApp.f6529f, "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "b", "c", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,651:1\n1#2:652\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public String uriPattern;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String action;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public String mimeType;

        @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, m61528d2 = {"Landroidx/navigation/NavDeepLink$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLink$Builder;", "action", "", "fromMimeType", HuaweiYunQueryArgs.QUERY_PARENT_MIMETYPE, "fromUriPattern", "uriPattern", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
        @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$Builder$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,651:1\n1#2:652\n*E\n"})
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @NotNull
            public final Builder fromAction(@NotNull String action) {
                Intrinsics.checkNotNullParameter(action, "action");
                if (!(action.length() > 0)) {
                    throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
                }
                Builder builder = new Builder();
                builder.setAction(action);
                return builder;
            }

            @JvmStatic
            @NotNull
            public final Builder fromMimeType(@NotNull String mimeType) {
                Intrinsics.checkNotNullParameter(mimeType, "mimeType");
                Builder builder = new Builder();
                builder.setMimeType(mimeType);
                return builder;
            }

            @JvmStatic
            @NotNull
            public final Builder fromUriPattern(@NotNull String uriPattern) {
                Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
                Builder builder = new Builder();
                builder.setUriPattern(uriPattern);
                return builder;
            }

            public Companion() {
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder() {
        }

        @JvmStatic
        @NotNull
        public static final Builder fromAction(@NotNull String str) {
            return INSTANCE.fromAction(str);
        }

        @JvmStatic
        @NotNull
        public static final Builder fromMimeType(@NotNull String str) {
            return INSTANCE.fromMimeType(str);
        }

        @JvmStatic
        @NotNull
        public static final Builder fromUriPattern(@NotNull String str) {
            return INSTANCE.fromUriPattern(str);
        }

        @NotNull
        public final NavDeepLink build() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        @NotNull
        public final Builder setAction(@NotNull String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (!(action.length() > 0)) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
            }
            this.action = action;
            return this;
        }

        @NotNull
        public final Builder setMimeType(@NotNull String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            this.mimeType = mimeType;
            return this;
        }

        @NotNull
        public final Builder setUriPattern(@NotNull String uriPattern) {
            Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
            this.uriPattern = uriPattern;
            return this;
        }
    }

    @SourceDebugExtension({"SMAP\nNavDeepLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$MimeType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,651:1\n731#2,9:652\n*S KotlinDebug\n*F\n+ 1 NavDeepLink.kt\nandroidx/navigation/NavDeepLink$MimeType\n*L\n412#1:652,9\n*E\n"})
    /* renamed from: androidx.navigation.NavDeepLink$b */
    /* loaded from: classes3.dex */
    public static final class C1221b implements Comparable<C1221b> {

        /* renamed from: e */
        @NotNull
        public String f8434e;

        /* renamed from: f */
        @NotNull
        public String f8435f;

        public C1221b(@NotNull String mimeType) {
            List emptyList;
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            List<String> split = new Regex("/").split(mimeType, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.f8434e = (String) emptyList.get(0);
            this.f8435f = (String) emptyList.get(1);
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull C1221b other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int i = Intrinsics.areEqual(this.f8434e, other.f8434e) ? 2 : 0;
            return Intrinsics.areEqual(this.f8435f, other.f8435f) ? i + 1 : i;
        }

        @NotNull
        /* renamed from: b */
        public final String m5150b() {
            return this.f8435f;
        }

        @NotNull
        /* renamed from: c */
        public final String m5151c() {
            return this.f8434e;
        }

        /* renamed from: d */
        public final void m5152d(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f8435f = str;
        }

        /* renamed from: e */
        public final void m5153e(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f8434e = str;
        }
    }

    /* renamed from: androidx.navigation.NavDeepLink$c */
    /* loaded from: classes3.dex */
    public static final class C1222c {

        /* renamed from: a */
        @Nullable
        public String f8436a;

        /* renamed from: b */
        @NotNull
        public final List<String> f8437b = new ArrayList();

        /* renamed from: a */
        public final void m5154a(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f8437b.add(name);
        }

        @NotNull
        /* renamed from: b */
        public final String m5155b(int i) {
            return this.f8437b.get(i);
        }

        @NotNull
        /* renamed from: c */
        public final List<String> m5156c() {
            return this.f8437b;
        }

        @Nullable
        /* renamed from: d */
        public final String m5157d() {
            return this.f8436a;
        }

        /* renamed from: e */
        public final void m5158e(@Nullable String str) {
            this.f8436a = str;
        }

        /* renamed from: f */
        public final int m5159f() {
            return this.f8437b.size();
        }
    }

    public NavDeepLink(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        this.pathArgs = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$pathPattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final Pattern invoke() {
                String str4;
                str4 = NavDeepLink.this.pathRegex;
                if (str4 != null) {
                    return Pattern.compile(str4, 2);
                }
                return null;
            }
        });
        this.pathPattern = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Boolean>() { // from class: androidx.navigation.NavDeepLink$isParameterizedQuery$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf((NavDeepLink.this.getUriPattern() == null || Uri.parse(NavDeepLink.this.getUriPattern()).getQuery() == null) ? false : true);
            }
        });
        this.isParameterizedQuery = lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Map<String, C1222c>>() { // from class: androidx.navigation.NavDeepLink$queryArgsMap$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Map<String, NavDeepLink.C1222c> invoke() {
                Map<String, NavDeepLink.C1222c> m5148v;
                m5148v = NavDeepLink.this.m5148v();
                return m5148v;
            }
        });
        this.queryArgsMap = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Pair<? extends List<String>, ? extends String>>() { // from class: androidx.navigation.NavDeepLink$fragArgsAndRegex$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final Pair<? extends List<String>, ? extends String> invoke() {
                Pair<? extends List<String>, ? extends String> m5144r;
                m5144r = NavDeepLink.this.m5144r();
                return m5144r;
            }
        });
        this.fragArgsAndRegex = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<List<String>>() { // from class: androidx.navigation.NavDeepLink$fragArgs$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<String> invoke() {
                Pair m5129c;
                List<String> list;
                m5129c = NavDeepLink.this.m5129c();
                return (m5129c == null || (list = (List) m5129c.getFirst()) == null) ? new ArrayList() : list;
            }
        });
        this.fragArgs = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: androidx.navigation.NavDeepLink$fragRegex$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                Pair m5129c;
                m5129c = NavDeepLink.this.m5129c();
                if (m5129c != null) {
                    return (String) m5129c.getSecond();
                }
                return null;
            }
        });
        this.fragRegex = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$fragPattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final Pattern invoke() {
                String m5131e;
                m5131e = NavDeepLink.this.m5131e();
                if (m5131e != null) {
                    return Pattern.compile(m5131e, 2);
                }
                return null;
            }
        });
        this.fragPattern = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$mimeTypePattern$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final Pattern invoke() {
                String str4;
                str4 = NavDeepLink.this.mimeTypeRegex;
                if (str4 != null) {
                    return Pattern.compile(str4);
                }
                return null;
            }
        });
        this.mimeTypePattern = lazy8;
        m5147u();
        m5146t();
    }

    /* renamed from: a */
    public final void m5127a(String uri, List<String> args, StringBuilder uriRegex) {
        Matcher matcher = f8414s.matcher(uri);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group(1);
            Intrinsics.checkNotNull(group, "null cannot be cast to non-null type kotlin.String");
            args.add(group);
            if (matcher.start() > i) {
                String substring = uri.substring(i, matcher.start());
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                uriRegex.append(Pattern.quote(substring));
            }
            uriRegex.append("([^/]+?)");
            i = matcher.end();
        }
        if (i < uri.length()) {
            String substring2 = uri.substring(i);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            uriRegex.append(Pattern.quote(substring2));
        }
    }

    /* renamed from: b */
    public final List<String> m5128b() {
        return (List) this.fragArgs.getValue();
    }

    /* renamed from: c */
    public final Pair<List<String>, String> m5129c() {
        return (Pair) this.fragArgsAndRegex.getValue();
    }

    public final int calculateMatchingPathSegments$navigation_common_release(@Nullable Uri requestedLink) {
        Set intersect;
        if (requestedLink == null || this.uriPattern == null) {
            return 0;
        }
        List<String> requestedPathSegments = requestedLink.getPathSegments();
        List<String> uriPathSegments = Uri.parse(this.uriPattern).getPathSegments();
        Intrinsics.checkNotNullExpressionValue(requestedPathSegments, "requestedPathSegments");
        Intrinsics.checkNotNullExpressionValue(uriPathSegments, "uriPathSegments");
        intersect = CollectionsKt___CollectionsKt.intersect(requestedPathSegments, uriPathSegments);
        return intersect.size();
    }

    /* renamed from: d */
    public final Pattern m5130d() {
        return (Pattern) this.fragPattern.getValue();
    }

    /* renamed from: e */
    public final String m5131e() {
        return (String) this.fragRegex.getValue();
    }

    public boolean equals(@Nullable Object other) {
        if (other == null || !(other instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) other;
        return Intrinsics.areEqual(this.uriPattern, navDeepLink.uriPattern) && Intrinsics.areEqual(this.action, navDeepLink.action) && Intrinsics.areEqual(this.mimeType, navDeepLink.mimeType);
    }

    /* renamed from: f */
    public final boolean m5132f(Matcher matcher, Bundle bundle, Map<String, NavArgument> arguments) {
        int collectionSizeOrDefault;
        List<String> list = this.pathArgs;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String str = (String) obj;
            String value = Uri.decode(matcher.group(i2));
            NavArgument navArgument = arguments.get(str);
            try {
                Intrinsics.checkNotNullExpressionValue(value, "value");
                if (m5142p(bundle, str, value, navArgument)) {
                    return false;
                }
                arrayList.add(Unit.INSTANCE);
                i = i2;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final boolean m5133g(Uri deepLink, Bundle bundle, Map<String, NavArgument> arguments) {
        String query;
        for (Map.Entry<String, C1222c> entry : m5137k().entrySet()) {
            String key = entry.getKey();
            C1222c value = entry.getValue();
            List<String> queryParameters = deepLink.getQueryParameters(key);
            if (this.isSingleQueryParamValueOnly && (query = deepLink.getQuery()) != null && !Intrinsics.areEqual(query, deepLink.toString())) {
                queryParameters = CollectionsKt__CollectionsJVMKt.listOf(query);
            }
            if (!m5145s(queryParameters, value, bundle, arguments)) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final String getAction() {
        return this.action;
    }

    @NotNull
    public final List<String> getArgumentsNames$navigation_common_release() {
        List plus;
        List<String> plus2;
        List<String> list = this.pathArgs;
        Collection<C1222c> values = m5137k().values();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = values.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((C1222c) it2.next()).m5156c());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) arrayList);
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) m5128b());
        return plus2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public final Bundle getMatchingArguments(@NotNull Uri deepLink, @NotNull Map<String, NavArgument> arguments) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Pattern m5136j = m5136j();
        Matcher matcher = m5136j != null ? m5136j.matcher(deepLink.toString()) : null;
        if (matcher == null || !matcher.matches()) {
            return null;
        }
        final Bundle bundle = new Bundle();
        if (!m5132f(matcher, bundle, arguments)) {
            return null;
        }
        if (m5138l() && !m5133g(deepLink, bundle, arguments)) {
            return null;
        }
        m5134h(deepLink.getFragment(), bundle, arguments);
        if (!NavArgumentKt.missingRequiredArguments(arguments, new Function1<String, Boolean>() { // from class: androidx.navigation.NavDeepLink$getMatchingArguments$missingRequiredArguments$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String argName) {
                Intrinsics.checkNotNullParameter(argName, "argName");
                return Boolean.valueOf(!bundle.containsKey(argName));
            }
        }).isEmpty()) {
            return null;
        }
        return bundle;
    }

    @NotNull
    public final Bundle getMatchingPathAndQueryArgs$navigation_common_release(@Nullable Uri deepLink, @NotNull Map<String, NavArgument> arguments) {
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Bundle bundle = new Bundle();
        if (deepLink == null) {
            return bundle;
        }
        Pattern m5136j = m5136j();
        Matcher matcher = m5136j != null ? m5136j.matcher(deepLink.toString()) : null;
        if (matcher == null || !matcher.matches()) {
            return bundle;
        }
        m5132f(matcher, bundle, arguments);
        if (m5138l()) {
            m5133g(deepLink, bundle, arguments);
        }
        return bundle;
    }

    @Nullable
    public final String getMimeType() {
        return this.mimeType;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int getMimeTypeMatchRating(@NotNull String mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        if (this.mimeType != null) {
            Pattern m5135i = m5135i();
            Intrinsics.checkNotNull(m5135i);
            if (m5135i.matcher(mimeType).matches()) {
                return new C1221b(this.mimeType).compareTo(new C1221b(mimeType));
            }
        }
        return -1;
    }

    @Nullable
    public final String getUriPattern() {
        return this.uriPattern;
    }

    /* renamed from: h */
    public final void m5134h(String fragment, Bundle bundle, Map<String, NavArgument> arguments) {
        int collectionSizeOrDefault;
        Pattern m5130d = m5130d();
        Matcher matcher = m5130d != null ? m5130d.matcher(String.valueOf(fragment)) : null;
        if (matcher != null && matcher.matches()) {
            List<String> m5128b = m5128b();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m5128b, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i = 0;
            for (Object obj : m5128b) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                String str = (String) obj;
                String value = Uri.decode(matcher.group(i2));
                NavArgument navArgument = arguments.get(str);
                try {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    if (m5142p(bundle, str, value, navArgument)) {
                        return;
                    }
                    arrayList.add(Unit.INSTANCE);
                    i = i2;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            }
        }
    }

    public int hashCode() {
        String str = this.uriPattern;
        int hashCode = ((str != null ? str.hashCode() : 0) + 0) * 31;
        String str2 = this.action;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    /* renamed from: i */
    public final Pattern m5135i() {
        return (Pattern) this.mimeTypePattern.getValue();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: isExactDeepLink, reason: from getter */
    public final boolean getIsExactDeepLink() {
        return this.isExactDeepLink;
    }

    /* renamed from: j */
    public final Pattern m5136j() {
        return (Pattern) this.pathPattern.getValue();
    }

    /* renamed from: k */
    public final Map<String, C1222c> m5137k() {
        return (Map) this.queryArgsMap.getValue();
    }

    /* renamed from: l */
    public final boolean m5138l() {
        return ((Boolean) this.isParameterizedQuery.getValue()).booleanValue();
    }

    /* renamed from: m */
    public final boolean m5139m(String action) {
        boolean z = action == null;
        String str = this.action;
        return z != (str != null) && (action == null || Intrinsics.areEqual(str, action));
    }

    public final boolean matches$navigation_common_release(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return matches$navigation_common_release(new NavDeepLinkRequest(uri, null, null));
    }

    /* renamed from: n */
    public final boolean m5140n(String mimeType) {
        if ((mimeType == null) != (this.mimeType != null)) {
            if (mimeType == null) {
                return true;
            }
            Pattern m5135i = m5135i();
            Intrinsics.checkNotNull(m5135i);
            if (m5135i.matcher(mimeType).matches()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: o */
    public final boolean m5141o(Uri uri) {
        if ((uri == null) != (m5136j() != null)) {
            if (uri == null) {
                return true;
            }
            Pattern m5136j = m5136j();
            Intrinsics.checkNotNull(m5136j);
            if (m5136j.matcher(uri.toString()).matches()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public final boolean m5142p(Bundle bundle, String name, String value, NavArgument argument) {
        if (argument != null) {
            argument.getType().parseAndPut(bundle, name, value);
            return false;
        }
        bundle.putString(name, value);
        return false;
    }

    /* renamed from: q */
    public final boolean m5143q(Bundle bundle, String name, String value, NavArgument argument) {
        if (!bundle.containsKey(name)) {
            return true;
        }
        if (argument == null) {
            return false;
        }
        NavType<Object> type = argument.getType();
        type.parseAndPut(bundle, name, value, type.get(bundle, name));
        return false;
    }

    /* renamed from: r */
    public final Pair<List<String>, String> m5144r() {
        String str = this.uriPattern;
        if (str == null || Uri.parse(str).getFragment() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String fragment = Uri.parse(this.uriPattern).getFragment();
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(fragment);
        m5127a(fragment, arrayList, sb);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "fragRegex.toString()");
        return TuplesKt.m61535to(arrayList, sb2);
    }

    /* renamed from: s */
    public final boolean m5145s(List<String> inputParams, C1222c storedParam, Bundle bundle, Map<String, NavArgument> arguments) {
        int collectionSizeOrDefault;
        if (inputParams == null) {
            return true;
        }
        for (String str : inputParams) {
            String m5157d = storedParam.m5157d();
            Matcher matcher = m5157d != null ? Pattern.compile(m5157d, 32).matcher(str) : null;
            if (matcher == null || !matcher.matches()) {
                return false;
            }
            Bundle bundle2 = new Bundle();
            try {
                List<String> m5156c = storedParam.m5156c();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(m5156c, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                int i = 0;
                for (Object obj : m5156c) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    String str2 = (String) obj;
                    String group = matcher.group(i2);
                    if (group == null) {
                        group = "";
                    } else {
                        Intrinsics.checkNotNullExpressionValue(group, "argMatcher.group(index + 1) ?: \"\"");
                    }
                    NavArgument navArgument = arguments.get(str2);
                    if (m5143q(bundle, str2, group, navArgument)) {
                        if (!Intrinsics.areEqual(group, '{' + str2 + '}') && m5142p(bundle2, str2, group, navArgument)) {
                            return false;
                        }
                    }
                    arrayList.add(Unit.INSTANCE);
                    i = i2;
                }
                bundle.putAll(bundle2);
            } catch (IllegalArgumentException unused) {
            }
        }
        return true;
    }

    public final void setExactDeepLink$navigation_common_release(boolean z) {
        this.isExactDeepLink = z;
    }

    /* renamed from: t */
    public final void m5146t() {
        String replace$default;
        if (this.mimeType == null) {
            return;
        }
        if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.mimeType).matches()) {
            throw new IllegalArgumentException(("The given mimeType " + this.mimeType + " does not match to required \"type/subtype\" format").toString());
        }
        C1221b c1221b = new C1221b(this.mimeType);
        replace$default = StringsKt__StringsJVMKt.replace$default("^(" + c1221b.m5151c() + "|[*]+)/(" + c1221b.m5150b() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, (Object) null);
        this.mimeTypeRegex = replace$default;
    }

    /* renamed from: u */
    public final void m5147u() {
        boolean contains$default;
        String replace$default;
        boolean contains$default2;
        if (this.uriPattern == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("^");
        if (!f8413r.matcher(this.uriPattern).find()) {
            sb.append("http[s]?://");
        }
        Matcher matcher = Pattern.compile("(\\?|\\#|$)").matcher(this.uriPattern);
        matcher.find();
        boolean z = false;
        String substring = this.uriPattern.substring(0, matcher.start());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        m5127a(substring, this.pathArgs, sb);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) sb, (CharSequence) ResourceCache.defaultPattern, false, 2, (Object) null);
        if (!contains$default) {
            contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) sb, (CharSequence) "([^/]+?)", false, 2, (Object) null);
            if (!contains$default2) {
                z = true;
            }
        }
        this.isExactDeepLink = z;
        sb.append("($|(\\?(.)*)|(\\#(.)*))");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "uriRegex.toString()");
        replace$default = StringsKt__StringsJVMKt.replace$default(sb2, ResourceCache.defaultPattern, "\\E.*\\Q", false, 4, (Object) null);
        this.pathRegex = replace$default;
    }

    /* renamed from: v */
    public final Map<String, C1222c> m5148v() {
        Object firstOrNull;
        String replace$default;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!m5138l()) {
            return linkedHashMap;
        }
        Uri parse = Uri.parse(this.uriPattern);
        for (String paramName : parse.getQueryParameterNames()) {
            StringBuilder sb = new StringBuilder();
            List<String> queryParams = parse.getQueryParameters(paramName);
            int i = 0;
            if (!(queryParams.size() <= 1)) {
                throw new IllegalArgumentException(("Query parameter " + paramName + " must only be present once in " + this.uriPattern + ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance.").toString());
            }
            Intrinsics.checkNotNullExpressionValue(queryParams, "queryParams");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) queryParams);
            String queryParam = (String) firstOrNull;
            if (queryParam == null) {
                this.isSingleQueryParamValueOnly = true;
                queryParam = paramName;
            }
            Matcher matcher = f8414s.matcher(queryParam);
            C1222c c1222c = new C1222c();
            while (matcher.find()) {
                String group = matcher.group(1);
                Intrinsics.checkNotNull(group, "null cannot be cast to non-null type kotlin.String");
                c1222c.m5154a(group);
                Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                String substring = queryParam.substring(i, matcher.start());
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(Pattern.quote(substring));
                sb.append("(.+?)?");
                i = matcher.end();
            }
            if (i < queryParam.length()) {
                Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                String substring2 = queryParam.substring(i);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                sb.append(Pattern.quote(substring2));
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "argRegex.toString()");
            replace$default = StringsKt__StringsJVMKt.replace$default(sb2, ResourceCache.defaultPattern, "\\E.*\\Q", false, 4, (Object) null);
            c1222c.m5158e(replace$default);
            Intrinsics.checkNotNullExpressionValue(paramName, "paramName");
            linkedHashMap.put(paramName, c1222c);
        }
        return linkedHashMap;
    }

    public final boolean matches$navigation_common_release(@NotNull NavDeepLinkRequest deepLinkRequest) {
        Intrinsics.checkNotNullParameter(deepLinkRequest, "deepLinkRequest");
        if (m5141o(deepLinkRequest.getUri()) && m5139m(deepLinkRequest.getAction())) {
            return m5140n(deepLinkRequest.getMimeType());
        }
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDeepLink(@NotNull String uri) {
        this(uri, null, null);
        Intrinsics.checkNotNullParameter(uri, "uri");
    }
}
