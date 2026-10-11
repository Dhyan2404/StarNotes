package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.http.HttpHeaders;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Navigator.Name(ActivityChooserModel.f1429r)
@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018\u0000 \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001b\u001c\u001dB\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J0\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016R\u0017\u0010\u0014\u001a\u00020\u000f8\u0007¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001e"}, m61528d2 = {"Landroidx/navigation/ActivityNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/ActivityNavigator$Destination;", "createDestination", "", "popBackStack", FirebaseAnalytics.Param.DESTINATION, "Landroid/os/Bundle;", "args", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "Landroidx/navigation/NavDestination;", "navigate", "Landroid/content/Context;", "c", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroid/app/Activity;", "d", "Landroid/app/Activity;", "hostActivity", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Companion", HttpHeaders.DESTINATION, "Extras", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,531:1\n179#2,2:532\n*S KotlinDebug\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator\n*L\n48#1:532,2\n*E\n"})
/* loaded from: classes3.dex */
public class ActivityNavigator extends Navigator<Destination> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e */
    @NotNull
    public static final String f8296e = "android-support-navigation:ActivityNavigator:source";

    /* renamed from: f */
    @NotNull
    public static final String f8297f = "android-support-navigation:ActivityNavigator:current";

    /* renamed from: g */
    @NotNull
    public static final String f8298g = "android-support-navigation:ActivityNavigator:popEnterAnim";

    /* renamed from: h */
    @NotNull
    public static final String f8299h = "android-support-navigation:ActivityNavigator:popExitAnim";

    /* renamed from: i */
    @NotNull
    public static final String f8300i = "ActivityNavigator";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final Activity hostActivity;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Landroidx/navigation/ActivityNavigator$Companion;", "", "()V", "EXTRA_NAV_CURRENT", "", "EXTRA_NAV_SOURCE", "EXTRA_POP_ENTER_ANIM", "EXTRA_POP_EXIT_ANIM", "LOG_TAG", "applyPopAnimationsToPendingTransition", "", ActivityChooserModel.f1429r, "Landroid/app/Activity;", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void applyPopAnimationsToPendingTransition(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intent intent = activity.getIntent();
            if (intent == null) {
                return;
            }
            int intExtra = intent.getIntExtra(ActivityNavigator.f8298g, -1);
            int intExtra2 = intent.getIntExtra(ActivityNavigator.f8299h, -1);
            if (intExtra == -1 && intExtra2 == -1) {
                return;
            }
            if (intExtra == -1) {
                intExtra = 0;
            }
            if (intExtra2 == -1) {
                intExtra2 = 0;
            }
            activity.overridePendingTransition(intExtra, intExtra2);
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010:\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000009¢\u0006\u0004\b;\u0010<B\u0011\b\u0016\u0012\u0006\u0010>\u001a\u00020=¢\u0006\u0004\b;\u0010?J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0017J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\b\u0010\u0019\u001a\u00020\u0018H\u0017J\b\u0010\u001a\u001a\u00020\u0005H\u0016J\u0013\u0010\u001d\u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0016J\u001c\u0010!\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002R(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R(\u0010-\u001a\u0004\u0018\u00010\u00052\b\u0010\"\u001a\u0004\u0018\u00010\u00058F@BX\u0086\u000e¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010*R(\u00102\u001a\u0004\u0018\u00010\u00102\b\u0010\"\u001a\u0004\u0018\u00010\u00108F@BX\u0086\u000e¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R(\u0010\u0013\u001a\u0004\u0018\u00010\u00052\b\u0010\"\u001a\u0004\u0018\u00010\u00058F@BX\u0086\u000e¢\u0006\f\n\u0004\b3\u0010(\u001a\u0004\b4\u0010*R(\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\"\u001a\u0004\u0018\u00010\u00158F@BX\u0086\u000e¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108¨\u0006@"}, m61528d2 = {"Landroidx/navigation/ActivityNavigator$Destination;", "Landroidx/navigation/NavDestination;", "Landroid/content/Intent;", v6l.f87196g, "setIntent", "", "dataPattern", "setDataPattern", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "onInflate", MessageConst.KEY_PACKAGE_NAME, "setTargetPackage", "Landroid/content/ComponentName;", "name", "setComponentName", "action", "setAction", "Landroid/net/Uri;", "data", "setData", "", "supportsActions", "toString", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "equals", "", "hashCode", "pattern", "b", "<set-?>", C4921e.f26528e, "Landroid/content/Intent;", "getIntent", "()Landroid/content/Intent;", "p", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDataPattern", "()Ljava/lang/String;", "q", "getTargetPackage", "targetPackage", "r", "Landroid/content/ComponentName;", "getComponent", "()Landroid/content/ComponentName;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COMPONENT_STRING, "s", "getAction", "t", "Landroid/net/Uri;", "getData", "()Landroid/net/Uri;", "Landroidx/navigation/Navigator;", "activityNavigator", Constants.CONSTRUCTOR_NAME, "(Landroidx/navigation/Navigator;)V", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "(Landroidx/navigation/NavigatorProvider;)V", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    @NavDestination.ClassType(Activity.class)
    @SourceDebugExtension({"SMAP\nActivityNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator$Destination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n*L\n1#1,531:1\n232#2,3:532\n*S KotlinDebug\n*F\n+ 1 ActivityNavigator.kt\nandroidx/navigation/ActivityNavigator$Destination\n*L\n270#1:532,3\n*E\n"})
    /* loaded from: classes3.dex */
    public static class Destination extends NavDestination {

        /* renamed from: o, reason: from kotlin metadata */
        @Nullable
        public Intent intent;

        /* renamed from: p, reason: from kotlin metadata */
        @Nullable
        public String dataPattern;

        /* renamed from: q, reason: from kotlin metadata */
        @Nullable
        public String targetPackage;

        /* renamed from: r, reason: from kotlin metadata */
        @Nullable
        public ComponentName component;

        /* renamed from: s, reason: from kotlin metadata */
        @Nullable
        public String action;

        /* renamed from: t, reason: from kotlin metadata */
        @Nullable
        public Uri data;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull Navigator<? extends Destination> activityNavigator) {
            super(activityNavigator);
            Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        }

        /* renamed from: b */
        public final String m5090b(Context context, String pattern) {
            String replace$default;
            if (pattern == null) {
                return null;
            }
            String packageName = context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            replace$default = StringsKt__StringsJVMKt.replace$default(pattern, NavInflater.APPLICATION_ID_PLACEHOLDER, packageName, false, 4, (Object) null);
            return replace$default;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !(other instanceof Destination)) {
                return false;
            }
            if (super.equals(other)) {
                Intent intent = this.intent;
                if ((intent != null ? intent.filterEquals(((Destination) other).intent) : ((Destination) other).intent == null) && Intrinsics.areEqual(this.dataPattern, ((Destination) other).dataPattern)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public final String getAction() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getAction();
            }
            return null;
        }

        @Nullable
        public final ComponentName getComponent() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getComponent();
            }
            return null;
        }

        @Nullable
        public final Uri getData() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @Nullable
        public final String getDataPattern() {
            return this.dataPattern;
        }

        @Nullable
        public final Intent getIntent() {
            return this.intent;
        }

        @Nullable
        public final String getTargetPackage() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getPackage();
            }
            return null;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            Intent intent = this.intent;
            int filterHashCode = (hashCode + (intent != null ? intent.filterHashCode() : 0)) * 31;
            String str = this.dataPattern;
            return filterHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void onInflate(@NotNull Context context, @NotNull AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, C1224R.styleable.ActivityNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…tyNavigator\n            )");
            setTargetPackage(m5090b(context, obtainAttributes.getString(C1224R.styleable.ActivityNavigator_targetPackage)));
            String string = obtainAttributes.getString(C1224R.styleable.ActivityNavigator_android_name);
            if (string != null) {
                if (string.charAt(0) == '.') {
                    string = context.getPackageName() + string;
                }
                setComponentName(new ComponentName(context, string));
            }
            setAction(obtainAttributes.getString(C1224R.styleable.ActivityNavigator_action));
            String m5090b = m5090b(context, obtainAttributes.getString(C1224R.styleable.ActivityNavigator_data));
            if (m5090b != null) {
                setData(Uri.parse(m5090b));
            }
            setDataPattern(m5090b(context, obtainAttributes.getString(C1224R.styleable.ActivityNavigator_dataPattern)));
            obtainAttributes.recycle();
        }

        @NotNull
        public final Destination setAction(@Nullable String action) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setAction(action);
            return this;
        }

        @NotNull
        public final Destination setComponentName(@Nullable ComponentName name) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setComponent(name);
            return this;
        }

        @NotNull
        public final Destination setData(@Nullable Uri data) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setData(data);
            return this;
        }

        @NotNull
        public final Destination setDataPattern(@Nullable String dataPattern) {
            this.dataPattern = dataPattern;
            return this;
        }

        @NotNull
        public final Destination setIntent(@Nullable Intent intent) {
            this.intent = intent;
            return this;
        }

        @NotNull
        public final Destination setTargetPackage(@Nullable String packageName) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setPackage(packageName);
            return this;
        }

        @Override // androidx.navigation.NavDestination
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public boolean supportsActions() {
            return false;
        }

        @Override // androidx.navigation.NavDestination
        @NotNull
        public String toString() {
            ComponentName component = getComponent();
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (component != null) {
                sb.append(" class=");
                sb.append(component.getClassName());
            } else {
                String action = getAction();
                if (action != null) {
                    sb.append(" action=");
                    sb.append(action);
                }
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.getNavigator(ActivityNavigator.class));
            Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0010B\u001b\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Landroidx/navigation/ActivityNavigator$Extras;", "Landroidx/navigation/Navigator$Extras;", "", "a", "I", "getFlags", "()I", "flags", "Landroidx/core/app/ActivityOptionsCompat;", "b", "Landroidx/core/app/ActivityOptionsCompat;", "getActivityOptions", "()Landroidx/core/app/ActivityOptionsCompat;", "activityOptions", Constants.CONSTRUCTOR_NAME, "(ILandroidx/core/app/ActivityOptionsCompat;)V", "Builder", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Extras implements Navigator.Extras {

        /* renamed from: a, reason: from kotlin metadata */
        public final int flags;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public final ActivityOptionsCompat activityOptions;

        @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Landroidx/navigation/ActivityNavigator$Extras$Builder;", "", "", "flags", "addFlags", "Landroidx/core/app/ActivityOptionsCompat;", "activityOptions", "setActivityOptions", "Landroidx/navigation/ActivityNavigator$Extras;", PrivilegedApp.f6529f, "a", "I", "b", "Landroidx/core/app/ActivityOptionsCompat;", Constants.CONSTRUCTOR_NAME, "()V", "navigation-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a, reason: from kotlin metadata */
            public int flags;

            /* renamed from: b, reason: from kotlin metadata */
            @Nullable
            public ActivityOptionsCompat activityOptions;

            @NotNull
            public final Builder addFlags(int flags) {
                this.flags = flags | this.flags;
                return this;
            }

            @NotNull
            public final Extras build() {
                return new Extras(this.flags, this.activityOptions);
            }

            @NotNull
            public final Builder setActivityOptions(@NotNull ActivityOptionsCompat activityOptions) {
                Intrinsics.checkNotNullParameter(activityOptions, "activityOptions");
                this.activityOptions = activityOptions;
                return this;
            }
        }

        public Extras(int i, @Nullable ActivityOptionsCompat activityOptionsCompat) {
            this.flags = i;
            this.activityOptions = activityOptionsCompat;
        }

        @Nullable
        public final ActivityOptionsCompat getActivityOptions() {
            return this.activityOptions;
        }

        public final int getFlags() {
            return this.flags;
        }
    }

    public ActivityNavigator(@NotNull Context context) {
        Sequence generateSequence;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        generateSequence = SequencesKt__SequencesKt.generateSequence(context, (Function1<? super Context, ? extends Context>) ((Function1<? super Object, ? extends Object>) new Function1<Context, Context>() { // from class: androidx.navigation.ActivityNavigator$hostActivity$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Context invoke(@NotNull Context it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2 instanceof ContextWrapper) {
                    return ((ContextWrapper) it2).getBaseContext();
                }
                return null;
            }
        }));
        Iterator it2 = generateSequence.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((Context) obj) instanceof Activity) {
                    break;
                }
            }
        }
        this.hostActivity = (Activity) obj;
    }

    @JvmStatic
    public static final void applyPopAnimationsToPendingTransition(@NotNull Activity activity) {
        INSTANCE.applyPopAnimationsToPendingTransition(activity);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        Activity activity = this.hostActivity;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.Navigator
    @NotNull
    public Destination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public NavDestination navigate(@NotNull Destination destination, @Nullable Bundle args, @Nullable NavOptions navOptions, @Nullable Navigator.Extras navigatorExtras) {
        int coerceAtLeast;
        int coerceAtLeast2;
        Intent intent;
        int intExtra;
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (destination.getIntent() != null) {
            Intent intent2 = new Intent(destination.getIntent());
            if (args != null) {
                intent2.putExtras(args);
                String dataPattern = destination.getDataPattern();
                if (!(dataPattern == null || dataPattern.length() == 0)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(dataPattern);
                    while (matcher.find()) {
                        String group = matcher.group(1);
                        if (args.containsKey(group)) {
                            matcher.appendReplacement(stringBuffer, "");
                            stringBuffer.append(Uri.encode(String.valueOf(args.get(group))));
                        } else {
                            throw new IllegalArgumentException("Could not find " + group + CloudStorageConstants.OPERATION_IN + args + " to fill data pattern " + dataPattern);
                        }
                    }
                    matcher.appendTail(stringBuffer);
                    intent2.setData(Uri.parse(stringBuffer.toString()));
                }
            }
            boolean z = navigatorExtras instanceof Extras;
            if (z) {
                intent2.addFlags(((Extras) navigatorExtras).getFlags());
            }
            if (this.hostActivity == null) {
                intent2.addFlags(268435456);
            }
            if (navOptions != null && navOptions.getSingleTop()) {
                intent2.addFlags(536870912);
            }
            Activity activity = this.hostActivity;
            if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra(f8297f, 0)) != 0) {
                intent2.putExtra(f8296e, intExtra);
            }
            intent2.putExtra(f8297f, destination.getId());
            Resources resources = this.context.getResources();
            if (navOptions != null) {
                int popEnterAnim = navOptions.getPopEnterAnim();
                int popExitAnim = navOptions.getPopExitAnim();
                if ((popEnterAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popEnterAnim), "animator")) || (popExitAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popExitAnim), "animator"))) {
                    Log.w(f8300i, "Activity destinations do not support Animator resource. Ignoring popEnter resource " + resources.getResourceName(popEnterAnim) + " and popExit resource " + resources.getResourceName(popExitAnim) + " when launching " + destination);
                } else {
                    intent2.putExtra(f8298g, popEnterAnim);
                    intent2.putExtra(f8299h, popExitAnim);
                }
            }
            if (z) {
                ActivityOptionsCompat activityOptions = ((Extras) navigatorExtras).getActivityOptions();
                if (activityOptions != null) {
                    ContextCompat.startActivity(this.context, intent2, activityOptions.toBundle());
                } else {
                    this.context.startActivity(intent2);
                }
            } else {
                this.context.startActivity(intent2);
            }
            if (navOptions == null || this.hostActivity == null) {
                return null;
            }
            int enterAnim = navOptions.getEnterAnim();
            int exitAnim = navOptions.getExitAnim();
            if ((enterAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(enterAnim), "animator")) && (exitAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(exitAnim), "animator"))) {
                if (enterAnim < 0 && exitAnim < 0) {
                    return null;
                }
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(enterAnim, 0);
                coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(exitAnim, 0);
                this.hostActivity.overridePendingTransition(coerceAtLeast, coerceAtLeast2);
                return null;
            }
            Log.w(f8300i, "Activity destinations do not support Animator resource. Ignoring enter resource " + resources.getResourceName(enterAnim) + " and exit resource " + resources.getResourceName(exitAnim) + "when launching " + destination);
            return null;
        }
        throw new IllegalStateException(("Destination " + destination.getId() + " does not have an Intent set.").toString());
    }
}
