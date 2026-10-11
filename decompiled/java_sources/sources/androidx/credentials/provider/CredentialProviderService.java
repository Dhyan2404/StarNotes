package androidx.credentials.provider;

import android.os.CancellationSignal;
import android.p001os.OutcomeReceiver;
import android.service.credentials.ClearCredentialStateRequest;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.provider.utils.BeginCreateCredentialUtil;
import androidx.credentials.provider.utils.BeginGetCredentialUtil;
import androidx.credentials.provider.utils.ClearCredentialUtil;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.aie;
import com.sunia.HTREnginev2.bie;
import com.sunia.HTREnginev2.cie;
import com.sunia.HTREnginev2.xhe;
import com.sunia.HTREnginev2.yhe;
import com.sunia.HTREnginev2.yik;
import com.sunia.HTREnginev2.zhe;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@RequiresApi(34)
@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001f\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b<\u0010=J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006J*\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u0006J*\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0006J.\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0012\u0004\u0012\u00020\u00150\u0006H&J,\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0006H&J,\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u0006H&R*\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f8G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R.\u0010-\u001a\u0004\u0018\u00010\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u001b8G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R.\u00104\u001a\u0004\u0018\u00010\u00172\b\u0010 \u001a\u0004\u0018\u00010\u00178G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R.\u0010;\u001a\u0004\u0018\u00010\u00142\b\u0010 \u001a\u0004\u0018\u00010\u00148G@GX\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006>"}, m61528d2 = {"Landroidx/credentials/provider/CredentialProviderService;", "Landroid/service/credentials/CredentialProviderService;", "Landroid/service/credentials/BeginGetCredentialRequest;", AbstractLogger.REQUEST, "Landroid/os/CancellationSignal;", "cancellationSignal", "Landroid/os/OutcomeReceiver;", "Landroid/service/credentials/BeginGetCredentialResponse;", "Landroid/credentials/GetCredentialException;", "callback", "", "onBeginGetCredential", "Landroid/service/credentials/BeginCreateCredentialRequest;", "Landroid/service/credentials/BeginCreateCredentialResponse;", "Landroid/credentials/CreateCredentialException;", "onBeginCreateCredential", "Landroid/service/credentials/ClearCredentialStateRequest;", "Ljava/lang/Void;", "Landroid/credentials/ClearCredentialStateException;", "onClearCredentialState", "Landroidx/credentials/provider/ProviderClearCredentialStateRequest;", "Landroidx/credentials/exceptions/ClearCredentialException;", "onClearCredentialStateRequest", "Landroidx/credentials/provider/BeginGetCredentialRequest;", "Landroidx/credentials/provider/BeginGetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "onBeginGetCredentialRequest", "Landroidx/credentials/provider/BeginCreateCredentialRequest;", "Landroidx/credentials/provider/BeginCreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "onBeginCreateCredentialRequest", "", "<set-?>", "e", Constants.HASIDCALL_INDEX_SIG, "isTestMode", Constants.BOOLEAN_VALUE_SIG, "setTestMode", "(Z)V", C6997f.f39671c, "Landroidx/credentials/provider/BeginCreateCredentialRequest;", "getLastCreateRequest", "()Landroidx/credentials/provider/BeginCreateCredentialRequest;", "setLastCreateRequest", "(Landroidx/credentials/provider/BeginCreateCredentialRequest;)V", "lastCreateRequest", C6998g.f39679a, "Landroidx/credentials/provider/BeginGetCredentialRequest;", "getLastGetRequest", "()Landroidx/credentials/provider/BeginGetCredentialRequest;", "setLastGetRequest", "(Landroidx/credentials/provider/BeginGetCredentialRequest;)V", "lastGetRequest", C6999h.f39688c, "Landroidx/credentials/provider/ProviderClearCredentialStateRequest;", "getLastClearRequest", "()Landroidx/credentials/provider/ProviderClearCredentialStateRequest;", "setLastClearRequest", "(Landroidx/credentials/provider/ProviderClearCredentialStateRequest;)V", "lastClearRequest", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class CredentialProviderService extends android.service.credentials.CredentialProviderService {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isTestMode;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public BeginCreateCredentialRequest lastCreateRequest;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public BeginGetCredentialRequest lastGetRequest;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ProviderClearCredentialStateRequest lastClearRequest;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final ProviderClearCredentialStateRequest getLastClearRequest() {
        return this.lastClearRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final BeginCreateCredentialRequest getLastCreateRequest() {
        return this.lastCreateRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    @Nullable
    public final BeginGetCredentialRequest getLastGetRequest() {
        return this.lastGetRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* renamed from: isTestMode, reason: from getter */
    public final boolean getIsTestMode() {
        return this.isTestMode;
    }

    public final void onBeginCreateCredential(@NotNull android.service.credentials.BeginCreateCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onBeginCreateCredential$outcome$1
            public void onError(@NotNull CreateCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                yhe.m58421a();
                outcomeReceiver2.onError(xhe.m58211a(error.getType(), error.getMessage()));
            }

            public void onResult(@NotNull BeginCreateCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                OutcomeReceiver.this.onResult(BeginCreateCredentialUtil.INSTANCE.convertToFrameworkResponse(response));
            }
        };
        BeginCreateCredentialRequest convertToJetpackRequest$credentials_release = BeginCreateCredentialUtil.INSTANCE.convertToJetpackRequest$credentials_release(request);
        if (this.isTestMode) {
            this.lastCreateRequest = convertToJetpackRequest$credentials_release;
        }
        onBeginCreateCredentialRequest(convertToJetpackRequest$credentials_release, cancellationSignal, yik.m58424a(outcomeReceiver));
    }

    public abstract void onBeginCreateCredentialRequest(@NotNull BeginCreateCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver callback);

    public final void onBeginGetCredential(@NotNull android.service.credentials.BeginGetCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BeginGetCredentialRequest convertToJetpackRequest$credentials_release = BeginGetCredentialUtil.INSTANCE.convertToJetpackRequest$credentials_release(request);
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onBeginGetCredential$outcome$1
            public void onError(@NotNull GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                aie.m53020a();
                outcomeReceiver2.onError(zhe.m58673a(error.getType(), error.getMessage()));
            }

            public void onResult(@NotNull BeginGetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                OutcomeReceiver.this.onResult(BeginGetCredentialUtil.INSTANCE.convertToFrameworkResponse(response));
            }
        };
        if (this.isTestMode) {
            this.lastGetRequest = convertToJetpackRequest$credentials_release;
        }
        onBeginGetCredentialRequest(convertToJetpackRequest$credentials_release, cancellationSignal, yik.m58424a(outcomeReceiver));
    }

    public abstract void onBeginGetCredentialRequest(@NotNull BeginGetCredentialRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver callback);

    public final void onClearCredentialState(@NotNull ClearCredentialStateRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull final OutcomeReceiver callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
        Intrinsics.checkNotNullParameter(callback, "callback");
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.provider.CredentialProviderService$onClearCredentialState$outcome$1
            public void onError(@NotNull ClearCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                OutcomeReceiver outcomeReceiver2 = OutcomeReceiver.this;
                cie.m53459a();
                outcomeReceiver2.onError(bie.m53273a(error.getType(), error.getMessage()));
            }

            public void onResult(@Nullable Void response) {
                OutcomeReceiver.this.onResult(response);
            }
        };
        ProviderClearCredentialStateRequest convertToJetpackRequest$credentials_release = ClearCredentialUtil.INSTANCE.convertToJetpackRequest$credentials_release(request);
        if (this.isTestMode) {
            this.lastClearRequest = convertToJetpackRequest$credentials_release;
        }
        onClearCredentialStateRequest(convertToJetpackRequest$credentials_release, cancellationSignal, yik.m58424a(outcomeReceiver));
    }

    public abstract void onClearCredentialStateRequest(@NotNull ProviderClearCredentialStateRequest request, @NotNull CancellationSignal cancellationSignal, @NotNull OutcomeReceiver callback);

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastClearRequest(@Nullable ProviderClearCredentialStateRequest providerClearCredentialStateRequest) {
        this.lastClearRequest = providerClearCredentialStateRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastCreateRequest(@Nullable BeginCreateCredentialRequest beginCreateCredentialRequest) {
        this.lastCreateRequest = beginCreateCredentialRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setLastGetRequest(@Nullable BeginGetCredentialRequest beginGetCredentialRequest) {
        this.lastGetRequest = beginGetCredentialRequest;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    public final void setTestMode(boolean z) {
        this.isTestMode = z;
    }
}
