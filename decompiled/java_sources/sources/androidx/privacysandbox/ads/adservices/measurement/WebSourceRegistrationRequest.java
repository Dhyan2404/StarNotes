package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(33)
@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u00002\u00020\u0001:\u0001'BM\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b%\u0010&J\u0013\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0012\u001a\u0004\b\u001d\u0010\u0014R\u0019\u0010!\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0012\u001a\u0004\b \u0010\u0014R\u0019\u0010$\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\"\u0010\u0012\u001a\u0004\b#\u0010\u0014¨\u0006("}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", "", Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;", "a", "Ljava/util/List;", "getWebSourceParams", "()Ljava/util/List;", "webSourceParams", "Landroid/net/Uri;", "b", "Landroid/net/Uri;", "getTopOriginUri", "()Landroid/net/Uri;", "topOriginUri", "Landroid/view/InputEvent;", "c", "Landroid/view/InputEvent;", "getInputEvent", "()Landroid/view/InputEvent;", "inputEvent", "d", "getAppDestination", "appDestination", "e", "getWebDestination", "webDestination", C6997f.f39671c, "getVerifiedDestination", "verifiedDestination", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V", "Builder", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WebSourceRegistrationRequest {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<WebSourceParams> WebSourceParams;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final Uri TopOriginUri;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @Nullable
    public final InputEvent InputEvent;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @Nullable
    public final Uri AppDestination;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @Nullable
    public final Uri WebDestination;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @Nullable
    public final Uri VerifiedDestination;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0014R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0014¨\u0006\u001d"}, m61528d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;", "", "Landroid/view/InputEvent;", "inputEvent", "setInputEvent", "Landroid/net/Uri;", "appDestination", "setAppDestination", "webDestination", "setWebDestination", "verifiedDestination", "setVerifiedDestination", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;", PrivilegedApp.f6529f, "", "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;", "a", "Ljava/util/List;", "webSourceParams", "b", "Landroid/net/Uri;", "topOriginUri", "c", "Landroid/view/InputEvent;", "d", "e", C6997f.f39671c, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroid/net/Uri;)V", "ads-adservices_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final List<WebSourceParams> webSourceParams;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Uri topOriginUri;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public InputEvent inputEvent;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public Uri appDestination;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public Uri webDestination;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public Uri verifiedDestination;

        public Builder(@NotNull List<WebSourceParams> webSourceParams, @NotNull Uri topOriginUri) {
            Intrinsics.checkNotNullParameter(webSourceParams, "webSourceParams");
            Intrinsics.checkNotNullParameter(topOriginUri, "topOriginUri");
            this.webSourceParams = webSourceParams;
            this.topOriginUri = topOriginUri;
        }

        @NotNull
        public final WebSourceRegistrationRequest build() {
            return new WebSourceRegistrationRequest(this.webSourceParams, this.topOriginUri, this.inputEvent, this.appDestination, this.webDestination, this.verifiedDestination);
        }

        @NotNull
        public final Builder setAppDestination(@Nullable Uri appDestination) {
            this.appDestination = appDestination;
            return this;
        }

        @NotNull
        public final Builder setInputEvent(@NotNull InputEvent inputEvent) {
            Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
            this.inputEvent = inputEvent;
            return this;
        }

        @NotNull
        public final Builder setVerifiedDestination(@Nullable Uri verifiedDestination) {
            this.verifiedDestination = verifiedDestination;
            return this;
        }

        @NotNull
        public final Builder setWebDestination(@Nullable Uri webDestination) {
            this.webDestination = webDestination;
            return this;
        }
    }

    public WebSourceRegistrationRequest(@NotNull List<WebSourceParams> webSourceParams, @NotNull Uri topOriginUri, @Nullable InputEvent inputEvent, @Nullable Uri uri, @Nullable Uri uri2, @Nullable Uri uri3) {
        Intrinsics.checkNotNullParameter(webSourceParams, "webSourceParams");
        Intrinsics.checkNotNullParameter(topOriginUri, "topOriginUri");
        this.WebSourceParams = webSourceParams;
        this.TopOriginUri = topOriginUri;
        this.InputEvent = inputEvent;
        this.AppDestination = uri;
        this.WebDestination = uri2;
        this.VerifiedDestination = uri3;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebSourceRegistrationRequest)) {
            return false;
        }
        WebSourceRegistrationRequest webSourceRegistrationRequest = (WebSourceRegistrationRequest) other;
        return Intrinsics.areEqual(this.WebSourceParams, webSourceRegistrationRequest.WebSourceParams) && Intrinsics.areEqual(this.WebDestination, webSourceRegistrationRequest.WebDestination) && Intrinsics.areEqual(this.AppDestination, webSourceRegistrationRequest.AppDestination) && Intrinsics.areEqual(this.TopOriginUri, webSourceRegistrationRequest.TopOriginUri) && Intrinsics.areEqual(this.InputEvent, webSourceRegistrationRequest.InputEvent) && Intrinsics.areEqual(this.VerifiedDestination, webSourceRegistrationRequest.VerifiedDestination);
    }

    @Nullable
    public final Uri getAppDestination() {
        return this.AppDestination;
    }

    @Nullable
    public final InputEvent getInputEvent() {
        return this.InputEvent;
    }

    @NotNull
    public final Uri getTopOriginUri() {
        return this.TopOriginUri;
    }

    @Nullable
    public final Uri getVerifiedDestination() {
        return this.VerifiedDestination;
    }

    @Nullable
    public final Uri getWebDestination() {
        return this.WebDestination;
    }

    @NotNull
    public final List<WebSourceParams> getWebSourceParams() {
        return this.WebSourceParams;
    }

    public int hashCode() {
        int hashCode = (this.WebSourceParams.hashCode() * 31) + this.TopOriginUri.hashCode();
        InputEvent inputEvent = this.InputEvent;
        if (inputEvent != null) {
            hashCode = (hashCode * 31) + inputEvent.hashCode();
        }
        Uri uri = this.AppDestination;
        if (uri != null) {
            hashCode = (hashCode * 31) + uri.hashCode();
        }
        Uri uri2 = this.WebDestination;
        if (uri2 != null) {
            hashCode = (hashCode * 31) + uri2.hashCode();
        }
        int hashCode2 = (hashCode * 31) + this.TopOriginUri.hashCode();
        InputEvent inputEvent2 = this.InputEvent;
        if (inputEvent2 != null) {
            hashCode2 = (hashCode2 * 31) + inputEvent2.hashCode();
        }
        Uri uri3 = this.VerifiedDestination;
        return uri3 != null ? (hashCode2 * 31) + uri3.hashCode() : hashCode2;
    }

    @NotNull
    public String toString() {
        return "WebSourceRegistrationRequest { " + ("WebSourceParams=[" + this.WebSourceParams + "], TopOriginUri=" + this.TopOriginUri + ", InputEvent=" + this.InputEvent + ", AppDestination=" + this.AppDestination + ", WebDestination=" + this.WebDestination + ", VerifiedDestination=" + this.VerifiedDestination) + " }";
    }

    public /* synthetic */ WebSourceRegistrationRequest(List list, Uri uri, InputEvent inputEvent, Uri uri2, Uri uri3, Uri uri4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, uri, (i & 4) != 0 ? null : inputEvent, (i & 8) != 0 ? null : uri2, (i & 16) != 0 ? null : uri3, (i & 32) != 0 ? null : uri4);
    }
}
