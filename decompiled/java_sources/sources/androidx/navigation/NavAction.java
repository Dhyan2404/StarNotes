package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.IdRes;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B+\b\u0007\u0012\b\b\u0001\u0010\r\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u001a\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006 "}, m61528d2 = {"Landroidx/navigation/NavAction;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "a", "I", "getDestinationId", "()I", "destinationId", "Landroidx/navigation/NavOptions;", "b", "Landroidx/navigation/NavOptions;", "getNavOptions", "()Landroidx/navigation/NavOptions;", "setNavOptions", "(Landroidx/navigation/NavOptions;)V", "navOptions", "Landroid/os/Bundle;", "c", "Landroid/os/Bundle;", "getDefaultArguments", "()Landroid/os/Bundle;", "setDefaultArguments", "(Landroid/os/Bundle;)V", "defaultArguments", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILandroidx/navigation/NavOptions;Landroid/os/Bundle;)V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nNavAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavAction.kt\nandroidx/navigation/NavAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n1726#2,3:92\n1855#2,2:95\n*S KotlinDebug\n*F\n+ 1 NavAction.kt\nandroidx/navigation/NavAction\n*L\n63#1:92,3\n73#1:95,2\n*E\n"})
/* loaded from: classes3.dex */
public final class NavAction {

    /* renamed from: a, reason: from kotlin metadata */
    @IdRes
    public final int destinationId;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public NavOptions navOptions;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Bundle defaultArguments;

    @JvmOverloads
    public NavAction(@IdRes int i) {
        this(i, null, null, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r7 != r8) goto L4
            return r0
        L4:
            r1 = 0
            if (r8 == 0) goto L6f
            boolean r2 = r8 instanceof androidx.navigation.NavAction
            if (r2 != 0) goto Ld
            goto L6f
        Ld:
            int r2 = r7.destinationId
            androidx.navigation.NavAction r8 = (androidx.navigation.NavAction) r8
            int r3 = r8.destinationId
            if (r2 != r3) goto L6d
            androidx.navigation.NavOptions r2 = r7.navOptions
            androidx.navigation.NavOptions r3 = r8.navOptions
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L6d
            android.os.Bundle r2 = r7.defaultArguments
            android.os.Bundle r3 = r8.defaultArguments
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 != 0) goto L6e
            android.os.Bundle r2 = r7.defaultArguments
            if (r2 == 0) goto L69
            java.util.Set r2 = r2.keySet()
            if (r2 == 0) goto L69
            boolean r3 = r2.isEmpty()
            if (r3 == 0) goto L3b
        L39:
            r7 = r0
            goto L65
        L3b:
            java.util.Iterator r2 = r2.iterator()
        L3f:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L39
            java.lang.Object r3 = r2.next()
            java.lang.String r3 = (java.lang.String) r3
            android.os.Bundle r4 = r7.defaultArguments
            r5 = 0
            if (r4 == 0) goto L55
            java.lang.Object r4 = r4.get(r3)
            goto L56
        L55:
            r4 = r5
        L56:
            android.os.Bundle r6 = r8.defaultArguments
            if (r6 == 0) goto L5e
            java.lang.Object r5 = r6.get(r3)
        L5e:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r3 != 0) goto L3f
            r7 = r1
        L65:
            if (r7 != r0) goto L69
            r7 = r0
            goto L6a
        L69:
            r7 = r1
        L6a:
            if (r7 == 0) goto L6d
            goto L6e
        L6d:
            r0 = r1
        L6e:
            return r0
        L6f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavAction.equals(java.lang.Object):boolean");
    }

    @Nullable
    public final Bundle getDefaultArguments() {
        return this.defaultArguments;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    @Nullable
    public final NavOptions getNavOptions() {
        return this.navOptions;
    }

    public int hashCode() {
        Set<String> keySet;
        int hashCode = Integer.hashCode(this.destinationId) * 31;
        NavOptions navOptions = this.navOptions;
        int hashCode2 = hashCode + (navOptions != null ? navOptions.hashCode() : 0);
        Bundle bundle = this.defaultArguments;
        if (bundle != null && (keySet = bundle.keySet()) != null) {
            for (String str : keySet) {
                int i = hashCode2 * 31;
                Bundle bundle2 = this.defaultArguments;
                Object obj = bundle2 != null ? bundle2.get(str) : null;
                hashCode2 = i + (obj != null ? obj.hashCode() : 0);
            }
        }
        return hashCode2;
    }

    public final void setDefaultArguments(@Nullable Bundle bundle) {
        this.defaultArguments = bundle;
    }

    public final void setNavOptions(@Nullable NavOptions navOptions) {
        this.navOptions = navOptions;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NavAction.class.getSimpleName());
        sb.append("(0x");
        sb.append(Integer.toHexString(this.destinationId));
        sb.append(MotionUtils.f31762d);
        if (this.navOptions != null) {
            sb.append(" navOptions=");
            sb.append(this.navOptions);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    @JvmOverloads
    public NavAction(@IdRes int i, @Nullable NavOptions navOptions) {
        this(i, navOptions, null, 4, null);
    }

    @JvmOverloads
    public NavAction(@IdRes int i, @Nullable NavOptions navOptions, @Nullable Bundle bundle) {
        this.destinationId = i;
        this.navOptions = navOptions;
        this.defaultArguments = bundle;
    }

    public /* synthetic */ NavAction(int i, NavOptions navOptions, Bundle bundle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : navOptions, (i2 & 4) != 0 ? null : bundle);
    }
}
