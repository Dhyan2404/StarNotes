package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.window.core.ExperimentalWindowApi;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.v6l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@ExperimentalWindowApi
@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0013\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0017\u0010\u0014\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Landroidx/window/embedding/ActivityFilter;", "", "Landroid/content/Intent;", v6l.f87196g, "", "matchesIntent", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "matchesActivity", Constants.ATTRVAL_OTHER, "equals", "", "hashCode", "", "toString", "Landroid/content/ComponentName;", "a", "Landroid/content/ComponentName;", "getComponentName", "()Landroid/content/ComponentName;", "componentName", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getIntentAction", "()Ljava/lang/String;", "intentAction", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/ComponentName;Ljava/lang/String;)V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class ActivityFilter {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final ComponentName componentName;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public final String intentAction;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActivityFilter(@org.jetbrains.annotations.NotNull android.content.ComponentName r11, @org.jetbrains.annotations.Nullable java.lang.String r12) {
        /*
            r10 = this;
            java.lang.String r0 = "componentName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            r10.<init>()
            r10.componentName = r11
            r10.intentAction = r12
            java.lang.String r10 = r11.getPackageName()
            java.lang.String r12 = "componentName.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r12)
            java.lang.String r11 = r11.getClassName()
            java.lang.String r12 = "componentName.className"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r12)
            int r12 = r10.length()
            r7 = 1
            r8 = 0
            if (r12 <= 0) goto L28
            r12 = r7
            goto L29
        L28:
            r12 = r8
        L29:
            if (r12 == 0) goto L99
            int r12 = r11.length()
            if (r12 <= 0) goto L33
            r12 = r7
            goto L34
        L33:
            r12 = r8
        L34:
            if (r12 == 0) goto L8d
            java.lang.String r12 = "*"
            r0 = 2
            r9 = 0
            boolean r1 = kotlin.text.StringsKt.contains$default(r10, r12, r8, r0, r9)
            if (r1 == 0) goto L55
            java.lang.String r2 = "*"
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r10
            int r1 = kotlin.text.StringsKt.indexOf$default(r1, r2, r3, r4, r5, r6)
            int r10 = r10.length()
            int r10 = r10 - r7
            if (r1 != r10) goto L53
            goto L55
        L53:
            r10 = r8
            goto L56
        L55:
            r10 = r7
        L56:
            if (r10 == 0) goto L81
            boolean r10 = kotlin.text.StringsKt.contains$default(r11, r12, r8, r0, r9)
            if (r10 == 0) goto L72
            java.lang.String r1 = "*"
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            r0 = r11
            int r10 = kotlin.text.StringsKt.indexOf$default(r0, r1, r2, r3, r4, r5)
            int r11 = r11.length()
            int r11 = r11 - r7
            if (r10 != r11) goto L71
            goto L72
        L71:
            r7 = r8
        L72:
            if (r7 == 0) goto L75
            return
        L75:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Wildcard in class name is only allowed at the end."
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L81:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Wildcard in package name is only allowed at the end."
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L8d:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Activity class name must not be empty."
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L99:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Package name must not be empty"
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.embedding.ActivityFilter.<init>(android.content.ComponentName, java.lang.String):void");
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ActivityFilter)) {
            return false;
        }
        ActivityFilter activityFilter = (ActivityFilter) other;
        return Intrinsics.areEqual(this.componentName, activityFilter.componentName) && Intrinsics.areEqual(this.intentAction, activityFilter.intentAction);
    }

    @NotNull
    public final ComponentName getComponentName() {
        return this.componentName;
    }

    @Nullable
    public final String getIntentAction() {
        return this.intentAction;
    }

    public int hashCode() {
        int hashCode = this.componentName.hashCode() * 31;
        String str = this.intentAction;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final boolean matchesActivity(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (MatcherUtils.INSTANCE.areActivityOrIntentComponentsMatching$window_release(activity, this.componentName)) {
            String str = this.intentAction;
            if (str != null) {
                Intent intent = activity.getIntent();
                if (Intrinsics.areEqual(str, intent == null ? null : intent.getAction())) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean matchesIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (!MatcherUtils.INSTANCE.areComponentsMatching$window_release(intent.getComponent(), this.componentName)) {
            return false;
        }
        String str = this.intentAction;
        return str == null || Intrinsics.areEqual(str, intent.getAction());
    }

    @NotNull
    public String toString() {
        return "ActivityFilter(componentName=" + this.componentName + ", intentAction=" + ((Object) this.intentAction) + ')';
    }
}
