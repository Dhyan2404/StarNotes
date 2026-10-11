package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
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

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u00112\u00020\u0001:\u0003\u0004\u0012\u0011B#\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Landroidx/credentials/provider/BeginCreateCredentialResponse;", "", "", "Landroidx/credentials/provider/CreateEntry;", "a", "Ljava/util/List;", "getCreateEntries", "()Ljava/util/List;", "createEntries", "Landroidx/credentials/provider/RemoteEntry;", "b", "Landroidx/credentials/provider/RemoteEntry;", "getRemoteEntry", "()Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V", "Companion", "Builder", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BeginCreateCredentialResponse {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<CreateEntry> createEntries;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final RemoteEntry remoteEntry;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0005\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0003J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0006\u0010\f\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;", "", "", "Landroidx/credentials/provider/CreateEntry;", "createEntries", "setCreateEntries", "createEntry", "addCreateEntry", "Landroidx/credentials/provider/RemoteEntry;", "remoteEntry", "setRemoteEntry", "Landroidx/credentials/provider/BeginCreateCredentialResponse;", PrivilegedApp.f6529f, "", "a", "Ljava/util/List;", "b", "Landroidx/credentials/provider/RemoteEntry;", Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public List<CreateEntry> createEntries = new ArrayList();

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public RemoteEntry remoteEntry;

        @NotNull
        public final Builder addCreateEntry(@NotNull CreateEntry createEntry) {
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            this.createEntries.add(createEntry);
            return this;
        }

        @NotNull
        public final BeginCreateCredentialResponse build() {
            List list;
            list = CollectionsKt___CollectionsKt.toList(this.createEntries);
            return new BeginCreateCredentialResponse(list, this.remoteEntry);
        }

        @NotNull
        public final Builder setCreateEntries(@NotNull List<CreateEntry> createEntries) {
            List<CreateEntry> mutableList;
            Intrinsics.checkNotNullParameter(createEntries, "createEntries");
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) createEntries);
            this.createEntries = mutableList;
            return this;
        }

        @NotNull
        public final Builder setRemoteEntry(@Nullable RemoteEntry remoteEntry) {
            this.remoteEntry = remoteEntry;
            return this;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, m61528d2 = {"Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;", "", "()V", "asBundle", "Landroid/os/Bundle;", AbstractLogger.RESPONSE, "Landroidx/credentials/provider/BeginCreateCredentialResponse;", "fromBundle", "bundle", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Bundle asBundle(@NotNull BeginCreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                C0929a.m3910a(bundle, response);
            }
            return bundle;
        }

        @JvmStatic
        @Nullable
        public final BeginCreateCredentialResponse fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return C0929a.m3911b(bundle);
            }
            return null;
        }

        public Companion() {
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.credentials.provider.BeginCreateCredentialResponse$a */
    /* loaded from: classes3.dex */
    public static final class C0929a {

        /* renamed from: a */
        @NotNull
        public static final C0929a f6346a = new C0929a();

        /* renamed from: b */
        @NotNull
        public static final String f6347b = "androidx.credentials.provider.BeginCreateCredentialResponse";

        @JvmStatic
        @DoNotInline
        /* renamed from: a */
        public static final void m3910a(@NotNull Bundle bundle, @NotNull BeginCreateCredentialResponse response) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(response, "response");
            bundle.putParcelable(f6347b, BeginCreateCredentialUtil.INSTANCE.convertToFrameworkResponse(response));
        }

        @JvmStatic
        @DoNotInline
        @Nullable
        /* renamed from: b */
        public static final BeginCreateCredentialResponse m3911b(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginCreateCredentialResponse beginCreateCredentialResponse = (android.service.credentials.BeginCreateCredentialResponse) bundle.getParcelable(f6347b, android.service.credentials.BeginCreateCredentialResponse.class);
            if (beginCreateCredentialResponse != null) {
                return BeginCreateCredentialUtil.INSTANCE.convertToJetpackResponse(beginCreateCredentialResponse);
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BeginCreateCredentialResponse() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @JvmStatic
    @NotNull
    public static final Bundle asBundle(@NotNull BeginCreateCredentialResponse beginCreateCredentialResponse) {
        return INSTANCE.asBundle(beginCreateCredentialResponse);
    }

    @JvmStatic
    @Nullable
    public static final BeginCreateCredentialResponse fromBundle(@NotNull Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @NotNull
    public final List<CreateEntry> getCreateEntries() {
        return this.createEntries;
    }

    @Nullable
    public final RemoteEntry getRemoteEntry() {
        return this.remoteEntry;
    }

    public BeginCreateCredentialResponse(@NotNull List<CreateEntry> createEntries, @Nullable RemoteEntry remoteEntry) {
        Intrinsics.checkNotNullParameter(createEntries, "createEntries");
        this.createEntries = createEntries;
        this.remoteEntry = remoteEntry;
    }

    public /* synthetic */ BeginCreateCredentialResponse(List list, RemoteEntry remoteEntry, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 2) != 0 ? null : remoteEntry);
    }
}
