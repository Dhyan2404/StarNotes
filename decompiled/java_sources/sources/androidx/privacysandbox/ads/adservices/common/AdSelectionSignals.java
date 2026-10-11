package androidx.privacysandbox.ads.adservices.common;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0017\u0010\r\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getSignals", "()Ljava/lang/String;", "signals", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class AdSelectionSignals {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String signals;

    public AdSelectionSignals(@NotNull String signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        this.signals = signals;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof AdSelectionSignals) {
            return Intrinsics.areEqual(this.signals, ((AdSelectionSignals) other).signals);
        }
        return false;
    }

    @NotNull
    public final String getSignals() {
        return this.signals;
    }

    public int hashCode() {
        return this.signals.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionSignals: " + this.signals;
    }
}
