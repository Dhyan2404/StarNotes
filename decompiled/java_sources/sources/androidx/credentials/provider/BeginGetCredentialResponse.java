package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u00192\u00020\u0001:\u0003\u0004\u001a\u0019BC\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0002\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0017\u0010\u0018R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007R\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0005\u001a\u0004\b\u000f\u0010\u0007R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetCredentialResponse;", "", "", "Landroidx/credentials/provider/CredentialEntry;", "a", "Ljava/util/List;", "getCredentialEntries", "()Ljava/util/List;", "credentialEntries", "Landroidx/credentials/provider/Action;", "b", "getActions", NotificationCompat.WearableExtender.f5050p, "Landroidx/credentials/provider/AuthenticationAction;", "c", "getAuthenticationActions", "authenticationActions", "Landroidx/credentials/provider/RemoteEntry;", "d", "Landroidx/credentials/provider/RemoteEntry;", "getRemoteEntry", "()Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V", "Companion", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BeginGetCredentialResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<CredentialEntry> credentialEntries;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final List<Action> actions;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<AuthenticationAction> authenticationActions;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public final RemoteEntry remoteEntry;

    @Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\bJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u0014\u0010\u0014\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\bJ\u0006\u0010\u0016\u001a\u00020\u0015R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00050\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00100\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0019R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, m61528d2 = {"Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;", "", "Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", "setRemoteEntry", "Landroidx/credentials/provider/CredentialEntry;", "entry", "addCredentialEntry", "", "entries", "setCredentialEntries", "Landroidx/credentials/provider/Action;", "action", "addAction", NotificationCompat.WearableExtender.f5050p, "setActions", "Landroidx/credentials/provider/AuthenticationAction;", "authenticationAction", "addAuthenticationAction", "authenticationEntries", "setAuthenticationActions", "Landroidx/credentials/provider/BeginGetCredentialResponse;", PrivilegedApp.f6529f, "", "a", "Ljava/util/List;", "credentialEntries", "b", "c", "authenticationActions", "d", "Landroidx/credentials/provider/RemoteEntry;", Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public List<CredentialEntry> credentialEntries = new ArrayList();

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public List<Action> actions = new ArrayList();

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public List<AuthenticationAction> authenticationActions = new ArrayList();

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public RemoteEntry remoteEntry;

        @NotNull
        public final Builder addAction(@NotNull Action action) {
            Intrinsics.checkNotNullParameter(action, "action");
            this.actions.add(action);
            return this;
        }

        @NotNull
        public final Builder addAuthenticationAction(@NotNull AuthenticationAction authenticationAction) {
            Intrinsics.checkNotNullParameter(authenticationAction, "authenticationAction");
            this.authenticationActions.add(authenticationAction);
            return this;
        }

        @NotNull
        public final Builder addCredentialEntry(@NotNull CredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            this.credentialEntries.add(entry);
            return this;
        }

        @NotNull
        public final BeginGetCredentialResponse build() {
            List list;
            List list2;
            List list3;
            list = CollectionsKt___CollectionsKt.toList(this.credentialEntries);
            list2 = CollectionsKt___CollectionsKt.toList(this.actions);
            list3 = CollectionsKt___CollectionsKt.toList(this.authenticationActions);
            return new BeginGetCredentialResponse(list, list2, list3, this.remoteEntry);
        }

        @NotNull
        public final Builder setActions(@NotNull List<Action> actions) {
            List<Action> mutableList;
            Intrinsics.checkNotNullParameter(actions, "actions");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) actions);
            this.actions = mutableList;
            return this;
        }

        @NotNull
        public final Builder setAuthenticationActions(@NotNull List<AuthenticationAction> authenticationEntries) {
            List<AuthenticationAction> mutableList;
            Intrinsics.checkNotNullParameter(authenticationEntries, "authenticationEntries");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) authenticationEntries);
            this.authenticationActions = mutableList;
            return this;
        }

        @NotNull
        public final Builder setCredentialEntries(@NotNull List<? extends CredentialEntry> entries) {
            List<CredentialEntry> mutableList;
            Intrinsics.checkNotNullParameter(entries, "entries");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) entries);
            this.credentialEntries = mutableList;
            return this;
        }

        @NotNull
        public final Builder setRemoteEntry(@Nullable RemoteEntry remoteEntry) {
            this.remoteEntry = remoteEntry;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetCredentialResponse$Companion;", "", "()V", "asBundle", "Landroid/os/Bundle;", AbstractLogger.RESPONSE, "Landroidx/credentials/provider/BeginGetCredentialResponse;", "fromBundle", "bundle", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Bundle asBundle(@NotNull BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                C0931a.m3915a(bundle, response);
            }
            return bundle;
        }

        @JvmStatic
        @Nullable
        public final BeginGetCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return C0931a.m3916b(bundle);
            }
            return null;
        }

        public Companion() {
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.credentials.provider.BeginGetCredentialResponse$a */
    /* loaded from: classes3.dex */
    public static final class C0931a {

        /* renamed from: a */
        @NotNull
        public static final C0931a f6365a = new C0931a();

        /* renamed from: b */
        @NotNull
        public static final String f6366b = "androidx.credentials.provider.BeginGetCredentialResponse";

        @JvmStatic
        @DoNotInline
        /* renamed from: a */
        public static final void m3915a(@NotNull Bundle bundle, @NotNull BeginGetCredentialResponse response) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(response, "response");
            bundle.putParcelable(f6366b, BeginGetCredentialUtil.INSTANCE.convertToFrameworkResponse(response));
        }

        @JvmStatic
        @DoNotInline
        @Nullable
        /* renamed from: b */
        public static final BeginGetCredentialResponse m3916b(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginGetCredentialResponse beginGetCredentialResponse = (android.service.credentials.BeginGetCredentialResponse) bundle.getParcelable(f6366b, android.service.credentials.BeginGetCredentialResponse.class);
            if (beginGetCredentialResponse != null) {
                return BeginGetCredentialUtil.INSTANCE.convertToJetpackResponse(beginGetCredentialResponse);
            }
            return null;
        }
    }

    public BeginGetCredentialResponse() {
        this(null, null, null, null, 15, null);
    }

    @JvmStatic
    @NotNull
    public static final Bundle asBundle(@NotNull BeginGetCredentialResponse beginGetCredentialResponse) {
        return INSTANCE.asBundle(beginGetCredentialResponse);
    }

    @JvmStatic
    @Nullable
    public static final BeginGetCredentialResponse fromBundle(@NotNull Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @NotNull
    public final List<Action> getActions() {
        return this.actions;
    }

    @NotNull
    public final List<AuthenticationAction> getAuthenticationActions() {
        return this.authenticationActions;
    }

    @NotNull
    public final List<CredentialEntry> getCredentialEntries() {
        return this.credentialEntries;
    }

    @Nullable
    public final RemoteEntry getRemoteEntry() {
        return this.remoteEntry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeginGetCredentialResponse(@NotNull List<? extends CredentialEntry> credentialEntries, @NotNull List<Action> actions, @NotNull List<AuthenticationAction> authenticationActions, @Nullable RemoteEntry remoteEntry) {
        Intrinsics.checkNotNullParameter(credentialEntries, "credentialEntries");
        Intrinsics.checkNotNullParameter(actions, "actions");
        Intrinsics.checkNotNullParameter(authenticationActions, "authenticationActions");
        this.credentialEntries = credentialEntries;
        this.actions = actions;
        this.authenticationActions = authenticationActions;
        this.remoteEntry = remoteEntry;
    }

    public /* synthetic */ BeginGetCredentialResponse(List list, List list2, List list3, RemoteEntry remoteEntry, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list3, (i & 8) != 0 ? null : remoteEntry);
    }
}
