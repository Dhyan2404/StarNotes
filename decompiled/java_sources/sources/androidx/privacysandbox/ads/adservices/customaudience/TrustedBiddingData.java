package androidx.privacysandbox.ads.adservices.customaudience;

import android.net.Uri;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "Landroid/net/Uri;", "a", "Landroid/net/Uri;", "getTrustedBiddingUri", "()Landroid/net/Uri;", "trustedBiddingUri", "", "b", "Ljava/util/List;", "getTrustedBiddingKeys", "()Ljava/util/List;", "trustedBiddingKeys", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Ljava/util/List;)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class TrustedBiddingData {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Uri trustedBiddingUri;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<String> trustedBiddingKeys;

    public TrustedBiddingData(@NotNull Uri trustedBiddingUri, @NotNull List<String> trustedBiddingKeys) {
        Intrinsics.checkNotNullParameter(trustedBiddingUri, "trustedBiddingUri");
        Intrinsics.checkNotNullParameter(trustedBiddingKeys, "trustedBiddingKeys");
        this.trustedBiddingUri = trustedBiddingUri;
        this.trustedBiddingKeys = trustedBiddingKeys;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrustedBiddingData)) {
            return false;
        }
        TrustedBiddingData trustedBiddingData = (TrustedBiddingData) other;
        return Intrinsics.areEqual(this.trustedBiddingUri, trustedBiddingData.trustedBiddingUri) && Intrinsics.areEqual(this.trustedBiddingKeys, trustedBiddingData.trustedBiddingKeys);
    }

    @NotNull
    public final List<String> getTrustedBiddingKeys() {
        return this.trustedBiddingKeys;
    }

    @NotNull
    public final Uri getTrustedBiddingUri() {
        return this.trustedBiddingUri;
    }

    public int hashCode() {
        return (this.trustedBiddingUri.hashCode() * 31) + this.trustedBiddingKeys.hashCode();
    }

    @NotNull
    public String toString() {
        return "TrustedBiddingData: trustedBiddingUri=" + this.trustedBiddingUri + " trustedBiddingKeys=" + this.trustedBiddingKeys;
    }
}
