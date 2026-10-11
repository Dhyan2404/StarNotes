package androidx.credentials.provider;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00112\u00020\u0001:\u0002\u0004\u0011B#\b\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetCredentialRequest;", "", "", "Landroidx/credentials/provider/BeginGetCredentialOption;", "a", "Ljava/util/List;", "getBeginGetCredentialOptions", "()Ljava/util/List;", "beginGetCredentialOptions", "Landroidx/credentials/provider/CallingAppInfo;", "b", "Landroidx/credentials/provider/CallingAppInfo;", "getCallingAppInfo", "()Landroidx/credentials/provider/CallingAppInfo;", "callingAppInfo", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class BeginGetCredentialRequest {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final List<BeginGetCredentialOption> beginGetCredentialOptions;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final CallingAppInfo callingAppInfo;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0004H\u0007¨\u0006\t"}, m61528d2 = {"Landroidx/credentials/provider/BeginGetCredentialRequest$Companion;", "", "()V", "asBundle", "Landroid/os/Bundle;", AbstractLogger.REQUEST, "Landroidx/credentials/provider/BeginGetCredentialRequest;", "fromBundle", "bundle", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final Bundle asBundle(@NotNull BeginGetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            if (Build.VERSION.SDK_INT >= 34) {
                C0930a.m3913a(bundle, request);
            }
            return bundle;
        }

        @JvmStatic
        @Nullable
        public final BeginGetCredentialRequest fromBundle(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (Build.VERSION.SDK_INT >= 34) {
                return C0930a.m3914b(bundle);
            }
            return null;
        }

        public Companion() {
        }
    }

    @RequiresApi(34)
    /* renamed from: androidx.credentials.provider.BeginGetCredentialRequest$a */
    /* loaded from: classes3.dex */
    public static final class C0930a {

        /* renamed from: a */
        @NotNull
        public static final C0930a f6355a = new C0930a();

        /* renamed from: b */
        @NotNull
        public static final String f6356b = "androidx.credentials.provider.BeginGetCredentialRequest";

        @JvmStatic
        @DoNotInline
        /* renamed from: a */
        public static final void m3913a(@NotNull Bundle bundle, @NotNull BeginGetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(request, "request");
            bundle.putParcelable(f6356b, BeginGetCredentialUtil.INSTANCE.convertToFrameworkRequest(request));
        }

        @JvmStatic
        @DoNotInline
        @Nullable
        /* renamed from: b */
        public static final BeginGetCredentialRequest m3914b(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            android.service.credentials.BeginGetCredentialRequest beginGetCredentialRequest = (android.service.credentials.BeginGetCredentialRequest) bundle.getParcelable(f6356b, android.service.credentials.BeginGetCredentialRequest.class);
            if (beginGetCredentialRequest != null) {
                return BeginGetCredentialUtil.INSTANCE.convertToJetpackRequest$credentials_release(beginGetCredentialRequest);
            }
            return null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BeginGetCredentialRequest(@NotNull List<? extends BeginGetCredentialOption> beginGetCredentialOptions) {
        this(beginGetCredentialOptions, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(beginGetCredentialOptions, "beginGetCredentialOptions");
    }

    @JvmStatic
    @NotNull
    public static final Bundle asBundle(@NotNull BeginGetCredentialRequest beginGetCredentialRequest) {
        return INSTANCE.asBundle(beginGetCredentialRequest);
    }

    @JvmStatic
    @Nullable
    public static final BeginGetCredentialRequest fromBundle(@NotNull Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @NotNull
    public final List<BeginGetCredentialOption> getBeginGetCredentialOptions() {
        return this.beginGetCredentialOptions;
    }

    @Nullable
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public BeginGetCredentialRequest(@NotNull List<? extends BeginGetCredentialOption> beginGetCredentialOptions, @Nullable CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(beginGetCredentialOptions, "beginGetCredentialOptions");
        this.beginGetCredentialOptions = beginGetCredentialOptions;
        this.callingAppInfo = callingAppInfo;
    }

    public /* synthetic */ BeginGetCredentialRequest(List list, CallingAppInfo callingAppInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : callingAppInfo);
    }
}
