package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b&\u0018\u00002\u00020\u0001:\u00011B[\b\u0000\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0001\u0010!\u001a\u00020\u0002\u0012\b\b\u0001\u0010$\u001a\u00020\u0002\u0012\b\b\u0001\u0010'\u001a\u00020\u0002¢\u0006\u0004\b.\u0010/BS\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\b\u0010-\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u0019\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0004\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0002¢\u0006\u0004\b.\u00100J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0013\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0017\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u000fR\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u000fR\u0017\u0010\u001e\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001c\u0010\u0014\u001a\u0004\b\u001d\u0010\u0016R\u0017\u0010!\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001f\u0010\u0014\u001a\u0004\b \u0010\u0016R\u0017\u0010$\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\"\u0010\u0014\u001a\u0004\b#\u0010\u0016R\u0017\u0010'\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b%\u0010\u0014\u001a\u0004\b&\u0010\u0016R(\u0010-\u001a\u0004\u0018\u00010\f2\b\u0010(\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u00062"}, m61528d2 = {"Landroidx/navigation/NavOptions;", "", "", "getPopUpTo", "", "shouldLaunchSingleTop", "shouldRestoreState", "isPopUpToInclusive", "shouldPopUpToSaveState", Constants.ATTRVAL_OTHER, "equals", "hashCode", "", "toString", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "singleTop", "b", "restoreState", "c", "I", "getPopUpToId", "()I", "popUpToId", "d", "popUpToInclusive", "e", "popUpToSaveState", C6997f.f39671c, "getEnterAnim", "enterAnim", C6998g.f39679a, "getExitAnim", "exitAnim", C6999h.f39688c, "getPopEnterAnim", "popEnterAnim", "i", "getPopExitAnim", "popExitAnim", "<set-?>", "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPopUpToRoute", "()Ljava/lang/String;", "popUpToRoute", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ZZIZZIIII)V", "(ZZLjava/lang/String;ZZIIII)V", "Builder", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NavOptions {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean singleTop;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean restoreState;

    /* renamed from: c, reason: from kotlin metadata */
    @IdRes
    public final int popUpToId;

    /* renamed from: d, reason: from kotlin metadata */
    public final boolean popUpToInclusive;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean popUpToSaveState;

    /* renamed from: f, reason: from kotlin metadata */
    public final int enterAnim;

    /* renamed from: g, reason: from kotlin metadata */
    public final int exitAnim;

    /* renamed from: h, reason: from kotlin metadata */
    public final int popEnterAnim;

    /* renamed from: i, reason: from kotlin metadata */
    public final int popExitAnim;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String popUpToRoute;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010*J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0002J$\u0010\u000b\u001a\u00020\u00002\b\b\u0001\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002H\u0007J$\u0010\u000b\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\b\u0001\u0010\u0010\u001a\u00020\u0007J\u0010\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u0007J\u0010\u0010\u0015\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u0019R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u0019R\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001cR\u0016\u0010\u0010\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b&\u0010\u001cR\u0016\u0010\u0012\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001cR\u0016\u0010\u0014\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001c¨\u0006+"}, m61528d2 = {"Landroidx/navigation/NavOptions$Builder;", "", "", "singleTop", "setLaunchSingleTop", "restoreState", "setRestoreState", "", "destinationId", "inclusive", "saveState", "setPopUpTo", "", "route", "enterAnim", "setEnterAnim", "exitAnim", "setExitAnim", "popEnterAnim", "setPopEnterAnim", "popExitAnim", "setPopExitAnim", "Landroidx/navigation/NavOptions;", PrivilegedApp.f6529f, "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "b", "c", "I", "popUpToId", "d", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "popUpToRoute", "e", "popUpToInclusive", C6997f.f39671c, "popUpToSaveState", C6998g.f39679a, C6999h.f39688c, "i", "j", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean singleTop;

        /* renamed from: b, reason: from kotlin metadata */
        public boolean restoreState;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public String popUpToRoute;

        /* renamed from: e, reason: from kotlin metadata */
        public boolean popUpToInclusive;

        /* renamed from: f, reason: from kotlin metadata */
        public boolean popUpToSaveState;

        /* renamed from: c, reason: from kotlin metadata */
        @IdRes
        public int popUpToId = -1;

        /* renamed from: g, reason: from kotlin metadata */
        @AnimRes
        @AnimatorRes
        public int enterAnim = -1;

        /* renamed from: h, reason: from kotlin metadata */
        @AnimRes
        @AnimatorRes
        public int exitAnim = -1;

        /* renamed from: i, reason: from kotlin metadata */
        @AnimRes
        @AnimatorRes
        public int popEnterAnim = -1;

        /* renamed from: j, reason: from kotlin metadata */
        @AnimRes
        @AnimatorRes
        public int popExitAnim = -1;

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, int i, boolean z, boolean z2, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(i, z, z2);
        }

        @NotNull
        public final NavOptions build() {
            String str = this.popUpToRoute;
            return str != null ? new NavOptions(this.singleTop, this.restoreState, str, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim) : new NavOptions(this.singleTop, this.restoreState, this.popUpToId, this.popUpToInclusive, this.popUpToSaveState, this.enterAnim, this.exitAnim, this.popEnterAnim, this.popExitAnim);
        }

        @NotNull
        public final Builder setEnterAnim(@AnimRes @AnimatorRes int enterAnim) {
            this.enterAnim = enterAnim;
            return this;
        }

        @NotNull
        public final Builder setExitAnim(@AnimRes @AnimatorRes int exitAnim) {
            this.exitAnim = exitAnim;
            return this;
        }

        @NotNull
        public final Builder setLaunchSingleTop(boolean singleTop) {
            this.singleTop = singleTop;
            return this;
        }

        @NotNull
        public final Builder setPopEnterAnim(@AnimRes @AnimatorRes int popEnterAnim) {
            this.popEnterAnim = popEnterAnim;
            return this;
        }

        @NotNull
        public final Builder setPopExitAnim(@AnimRes @AnimatorRes int popExitAnim) {
            this.popExitAnim = popExitAnim;
            return this;
        }

        @JvmOverloads
        @NotNull
        public final Builder setPopUpTo(@IdRes int i, boolean z) {
            return setPopUpTo$default(this, i, z, false, 4, (Object) null);
        }

        @NotNull
        public final Builder setRestoreState(boolean restoreState) {
            this.restoreState = restoreState;
            return this;
        }

        public static /* synthetic */ Builder setPopUpTo$default(Builder builder, String str, boolean z, boolean z2, int i, Object obj) {
            if ((i & 4) != 0) {
                z2 = false;
            }
            return builder.setPopUpTo(str, z, z2);
        }

        @JvmOverloads
        @NotNull
        public final Builder setPopUpTo(@Nullable String str, boolean z) {
            return setPopUpTo$default(this, str, z, false, 4, (Object) null);
        }

        @JvmOverloads
        @NotNull
        public final Builder setPopUpTo(@IdRes int destinationId, boolean inclusive, boolean saveState) {
            this.popUpToId = destinationId;
            this.popUpToRoute = null;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }

        @JvmOverloads
        @NotNull
        public final Builder setPopUpTo(@Nullable String route, boolean inclusive, boolean saveState) {
            this.popUpToRoute = route;
            this.popUpToId = -1;
            this.popUpToInclusive = inclusive;
            this.popUpToSaveState = saveState;
            return this;
        }
    }

    public NavOptions(boolean z, boolean z2, @IdRes int i, boolean z3, boolean z4, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5) {
        this.singleTop = z;
        this.restoreState = z2;
        this.popUpToId = i;
        this.popUpToInclusive = z3;
        this.popUpToSaveState = z4;
        this.enterAnim = i2;
        this.exitAnim = i3;
        this.popEnterAnim = i4;
        this.popExitAnim = i5;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !(other instanceof NavOptions)) {
            return false;
        }
        NavOptions navOptions = (NavOptions) other;
        return this.singleTop == navOptions.singleTop && this.restoreState == navOptions.restoreState && this.popUpToId == navOptions.popUpToId && Intrinsics.areEqual(this.popUpToRoute, navOptions.popUpToRoute) && this.popUpToInclusive == navOptions.popUpToInclusive && this.popUpToSaveState == navOptions.popUpToSaveState && this.enterAnim == navOptions.enterAnim && this.exitAnim == navOptions.exitAnim && this.popEnterAnim == navOptions.popEnterAnim && this.popExitAnim == navOptions.popExitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getEnterAnim() {
        return this.enterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getExitAnim() {
        return this.exitAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopEnterAnim() {
        return this.popEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public final int getPopExitAnim() {
        return this.popExitAnim;
    }

    @Deprecated(message = "Use popUpToId instead.", replaceWith = @ReplaceWith(expression = "popUpToId", imports = {}))
    @IdRes
    /* renamed from: getPopUpTo, reason: from getter */
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    @IdRes
    public final int getPopUpToId() {
        return this.popUpToId;
    }

    @Nullable
    public final String getPopUpToRoute() {
        return this.popUpToRoute;
    }

    public int hashCode() {
        int i = (((((getSingleTop() ? 1 : 0) * 31) + (getRestoreState() ? 1 : 0)) * 31) + this.popUpToId) * 31;
        String str = this.popUpToRoute;
        return ((((((((((((i + (str != null ? str.hashCode() : 0)) * 31) + (getPopUpToInclusive() ? 1 : 0)) * 31) + (getPopUpToSaveState() ? 1 : 0)) * 31) + this.enterAnim) * 31) + this.exitAnim) * 31) + this.popEnterAnim) * 31) + this.popExitAnim;
    }

    /* renamed from: isPopUpToInclusive, reason: from getter */
    public final boolean getPopUpToInclusive() {
        return this.popUpToInclusive;
    }

    /* renamed from: shouldLaunchSingleTop, reason: from getter */
    public final boolean getSingleTop() {
        return this.singleTop;
    }

    /* renamed from: shouldPopUpToSaveState, reason: from getter */
    public final boolean getPopUpToSaveState() {
        return this.popUpToSaveState;
    }

    /* renamed from: shouldRestoreState, reason: from getter */
    public final boolean getRestoreState() {
        return this.restoreState;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NavOptions.class.getSimpleName());
        sb.append(MotionUtils.f31761c);
        if (this.singleTop) {
            sb.append("launchSingleTop ");
        }
        if (this.restoreState) {
            sb.append("restoreState ");
        }
        String str = this.popUpToRoute;
        if ((str != null || this.popUpToId != -1) && str != null) {
            sb.append("popUpTo(");
            String str2 = this.popUpToRoute;
            if (str2 != null) {
                sb.append(str2);
            } else {
                sb.append("0x");
                sb.append(Integer.toHexString(this.popUpToId));
            }
            if (this.popUpToInclusive) {
                sb.append(" inclusive");
            }
            if (this.popUpToSaveState) {
                sb.append(" saveState");
            }
            sb.append(MotionUtils.f31762d);
        }
        if (this.enterAnim != -1 || this.exitAnim != -1 || this.popEnterAnim != -1 || this.popExitAnim != -1) {
            sb.append("anim(enterAnim=0x");
            sb.append(Integer.toHexString(this.enterAnim));
            sb.append(" exitAnim=0x");
            sb.append(Integer.toHexString(this.exitAnim));
            sb.append(" popEnterAnim=0x");
            sb.append(Integer.toHexString(this.popEnterAnim));
            sb.append(" popExitAnim=0x");
            sb.append(Integer.toHexString(this.popExitAnim));
            sb.append(MotionUtils.f31762d);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    public NavOptions(boolean z, boolean z2, @Nullable String str, boolean z3, boolean z4, int i, int i2, int i3, int i4) {
        this(z, z2, NavDestination.INSTANCE.createRoute(str).hashCode(), z3, z4, i, i2, i3, i4);
        this.popUpToRoute = str;
    }
}
