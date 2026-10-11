package androidx.navigation;

import android.os.Bundle;
import androidx.fragment.app.C1126e;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\t\u0010\n\u001a\u00020\u0006HÆ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u0006HÆ\u0001R\u001a\u0010\u000b\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Landroidx/navigation/ActionOnlyNavDirections;", "Landroidx/navigation/NavDirections;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "component1", "actionId", "copy", "a", "I", "getActionId", "()I", "Landroid/os/Bundle;", "b", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", C1126e.f7698m, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final /* data */ class ActionOnlyNavDirections implements NavDirections {

    /* renamed from: a, reason: from kotlin metadata */
    public final int actionId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Bundle arguments = new Bundle();

    public ActionOnlyNavDirections(int i) {
        this.actionId = i;
    }

    public static /* synthetic */ ActionOnlyNavDirections copy$default(ActionOnlyNavDirections actionOnlyNavDirections, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = actionOnlyNavDirections.actionId;
        }
        return actionOnlyNavDirections.copy(i);
    }

    /* renamed from: component1, reason: from getter */
    public final int getActionId() {
        return this.actionId;
    }

    @NotNull
    public final ActionOnlyNavDirections copy(int actionId) {
        return new ActionOnlyNavDirections(actionId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return other != null && Intrinsics.areEqual(ActionOnlyNavDirections.class, other.getClass()) && getActionId() == ((ActionOnlyNavDirections) other).getActionId();
    }

    @Override // androidx.navigation.NavDirections
    public int getActionId() {
        return this.actionId;
    }

    @Override // androidx.navigation.NavDirections
    @NotNull
    public Bundle getArguments() {
        return this.arguments;
    }

    public int hashCode() {
        return 31 + getActionId();
    }

    @NotNull
    public String toString() {
        return "ActionOnlyNavDirections(actionId=" + getActionId() + ')';
    }
}
