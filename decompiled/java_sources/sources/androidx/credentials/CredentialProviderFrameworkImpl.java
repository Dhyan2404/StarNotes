package androidx.credentials;

import android.annotation.SuppressLint;
import android.content.Context;
import android.credentials.ClearCredentialStateException;
import android.credentials.CreateCredentialRequest;
import android.credentials.CredentialOption;
import android.credentials.GetCredentialRequest;
import android.credentials.PrepareGetCredentialResponse;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.p001os.OutcomeReceiver;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.Credential;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.ClearCredentialUnsupportedException;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialNoCreateOptionException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialCustomException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialException;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialException;
import androidx.credentials.internal.FrameworkImplHelper;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.che;
import com.sunia.HTREnginev2.dhe;
import com.sunia.HTREnginev2.ehe;
import com.sunia.HTREnginev2.fhe;
import com.sunia.HTREnginev2.lhe;
import com.sunia.HTREnginev2.phe;
import com.sunia.HTREnginev2.rhe;
import com.sunia.HTREnginev2.she;
import com.sunia.HTREnginev2.the;
import com.sunia.HTREnginev2.uhe;
import com.sunia.HTREnginev2.yik;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 92\u00020\u0001:\u00014B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\bA\u0010BJ6\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bH\u0016J>\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0\bH\u0016J>\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\n0\bH\u0016J>\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00142\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\bH\u0016J\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010 \u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001dH\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010%\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020!H\u0000¢\u0006\u0004\b#\u0010$J\u0017\u0010)\u001a\u00020\t2\u0006\u0010\"\u001a\u00020&H\u0000¢\u0006\u0004\b'\u0010(J\b\u0010+\u001a\u00020*H\u0016J8\u0010/\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020,2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010-\u0012\u0004\u0012\u00020.0\bH\u0016J\u0016\u00102\u001a\u00020*2\f\u00101\u001a\b\u0012\u0004\u0012\u00020\f00H\u0002J\u0018\u00104\u001a\u0002032\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u00107\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u00106\u001a\u000205H\u0003J\u0010\u00109\u001a\u0002082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010;\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00106\u001a\u00020:H\u0003J\b\u0010=\u001a\u00020<H\u0002R\u0016\u0010@\u001a\u0004\u0018\u00010>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010?¨\u0006C"}, m61528d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl;", "Landroidx/credentials/CredentialProvider;", "Landroidx/credentials/GetCredentialRequest;", AbstractLogger.REQUEST, "Landroid/os/CancellationSignal;", "cancellationSignal", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/credentials/CredentialManagerCallback;", "Landroidx/credentials/PrepareGetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "callback", "", "onPrepareCredential", "Landroid/content/Context;", "context", "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;", "pendingGetCredentialHandle", "Landroidx/credentials/GetCredentialResponse;", "onGetCredential", "Landroidx/credentials/CreateCredentialRequest;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "onCreateCredential", "Landroid/credentials/GetCredentialException;", "error", "convertToJetpackGetException$credentials_release", "(Landroid/credentials/GetCredentialException;)Landroidx/credentials/exceptions/GetCredentialException;", "convertToJetpackGetException", "Landroid/credentials/CreateCredentialException;", "convertToJetpackCreateException$credentials_release", "(Landroid/credentials/CreateCredentialException;)Landroidx/credentials/exceptions/CreateCredentialException;", "convertToJetpackCreateException", "Landroid/credentials/GetCredentialResponse;", AbstractLogger.RESPONSE, "convertGetResponseToJetpackClass$credentials_release", "(Landroid/credentials/GetCredentialResponse;)Landroidx/credentials/GetCredentialResponse;", "convertGetResponseToJetpackClass", "Landroid/credentials/PrepareGetCredentialResponse;", "convertPrepareGetResponseToJetpackClass$credentials_release", "(Landroid/credentials/PrepareGetCredentialResponse;)Landroidx/credentials/PrepareGetCredentialResponse;", "convertPrepareGetResponseToJetpackClass", "", "isAvailableOnDevice", "Landroidx/credentials/ClearCredentialStateRequest;", "Ljava/lang/Void;", "Landroidx/credentials/exceptions/ClearCredentialException;", "onClearCredential", "Lkotlin/Function0;", "handleNullCredMan", "d", "Landroid/credentials/CreateCredentialRequest;", "a", "Landroid/credentials/CreateCredentialRequest$Builder;", "builder", "e", "Landroid/credentials/GetCredentialRequest;", "b", "Landroid/credentials/GetCredentialRequest$Builder;", C6997f.f39671c, "Landroid/credentials/ClearCredentialStateRequest;", "c", "Landroid/credentials/CredentialManager;", "Landroid/credentials/CredentialManager;", "credentialManager", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
@RequiresApi(34)
@SourceDebugExtension({"SMAP\nCredentialProviderFrameworkImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,397:1\n1855#2,2:398\n*S KotlinDebug\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n*L\n243#1:398,2\n*E\n"})
/* loaded from: classes3.dex */
public final class CredentialProviderFrameworkImpl implements CredentialProvider {

    /* renamed from: c */
    @NotNull
    public static final String f6258c = "CredManProvService";

    /* renamed from: d */
    @NotNull
    public static final String f6259d = "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION";

    /* renamed from: e */
    @NotNull
    public static final String f6260e = "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION";

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public final android.credentials.CredentialManager credentialManager;

    public CredentialProviderFrameworkImpl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.credentialManager = lhe.m55428a(context.getSystemService("credential"));
    }

    /* renamed from: a */
    public final android.credentials.CreateCredentialRequest m3875a(CreateCredentialRequest request, Context context) {
        CreateCredentialRequest.Builder alwaysSendAppInfoToProvider = new CreateCredentialRequest.Builder(request.getType(), FrameworkImplHelper.INSTANCE.getFinalCreateCredentialData(request, context), request.getCandidateQueryData()).setIsSystemProviderRequired(request.getIsSystemProviderRequired()).setAlwaysSendAppInfoToProvider(true);
        Intrinsics.checkNotNullExpressionValue(alwaysSendAppInfoToProvider, "Builder(request.type,\n  …ndAppInfoToProvider(true)");
        m3879e(request, alwaysSendAppInfoToProvider);
        android.credentials.CreateCredentialRequest build = alwaysSendAppInfoToProvider.build();
        Intrinsics.checkNotNullExpressionValue(build, "createCredentialRequestBuilder.build()");
        return build;
    }

    /* renamed from: b */
    public final android.credentials.GetCredentialRequest m3876b(GetCredentialRequest request) {
        android.credentials.GetCredentialRequest build;
        dhe.m53659a();
        GetCredentialRequest.Builder m53456a = che.m53456a(GetCredentialRequest.INSTANCE.toRequestDataBundle(request));
        for (CredentialOption credentialOption : request.getCredentialOptions()) {
            m53456a.addCredentialOption(new CredentialOption.Builder(credentialOption.getType(), credentialOption.getRequestData(), credentialOption.getCandidateQueryData()).setIsSystemProviderRequired(credentialOption.getIsSystemProviderRequired()).setAllowedProviders(credentialOption.getAllowedProviders()).build());
        }
        m3880f(request, m53456a);
        build = m53456a.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }

    /* renamed from: c */
    public final android.credentials.ClearCredentialStateRequest m3877c() {
        fhe.m54108a();
        return ehe.m53959a(new Bundle());
    }

    @NotNull
    public final GetCredentialResponse convertGetResponseToJetpackClass$credentials_release(@NotNull android.credentials.GetCredentialResponse response) {
        android.credentials.Credential credential;
        String type;
        Bundle data;
        Intrinsics.checkNotNullParameter(response, "response");
        credential = response.getCredential();
        Intrinsics.checkNotNullExpressionValue(credential, "response.credential");
        Credential.Companion companion = Credential.INSTANCE;
        type = credential.getType();
        Intrinsics.checkNotNullExpressionValue(type, "credential.type");
        data = credential.getData();
        Intrinsics.checkNotNullExpressionValue(data, "credential.data");
        return new GetCredentialResponse(companion.createFrom(type, data));
    }

    @NotNull
    public final PrepareGetCredentialResponse convertPrepareGetResponseToJetpackClass$credentials_release(@NotNull android.credentials.PrepareGetCredentialResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return new PrepareGetCredentialResponse.Builder().setFrameworkResponse(response).setPendingGetCredentialHandle(new PrepareGetCredentialResponse.PendingGetCredentialHandle(response.getPendingGetCredentialHandle())).build();
    }

    @NotNull
    public final CreateCredentialException convertToJetpackCreateException$credentials_release(@NotNull android.credentials.CreateCredentialException error) {
        String type;
        String type2;
        boolean startsWith$default;
        String type3;
        String message;
        String type4;
        String message2;
        String message3;
        String message4;
        String message5;
        String message6;
        Intrinsics.checkNotNullParameter(error, "error");
        type = error.getType();
        switch (type.hashCode()) {
            case -2055374133:
                if (type.equals(CreateCredentialCancellationException.TYPE_CREATE_CREDENTIAL_CANCELLATION_EXCEPTION)) {
                    message3 = error.getMessage();
                    return new CreateCredentialCancellationException(message3);
                }
                break;
            case 1316905704:
                if (type.equals(CreateCredentialUnknownException.TYPE_CREATE_CREDENTIAL_UNKNOWN_EXCEPTION)) {
                    message4 = error.getMessage();
                    return new CreateCredentialUnknownException(message4);
                }
                break;
            case 2092588512:
                if (type.equals(CreateCredentialInterruptedException.TYPE_CREATE_CREDENTIAL_INTERRUPTED_EXCEPTION)) {
                    message5 = error.getMessage();
                    return new CreateCredentialInterruptedException(message5);
                }
                break;
            case 2131915191:
                if (type.equals(CreateCredentialNoCreateOptionException.TYPE_CREATE_CREDENTIAL_NO_CREATE_OPTION)) {
                    message6 = error.getMessage();
                    return new CreateCredentialNoCreateOptionException(message6);
                }
                break;
        }
        type2 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type2, "error.type");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(type2, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, null);
        if (!startsWith$default) {
            type3 = error.getType();
            Intrinsics.checkNotNullExpressionValue(type3, "error.type");
            message = error.getMessage();
            return new CreateCredentialCustomException(type3, message);
        }
        CreatePublicKeyCredentialException.Companion companion = CreatePublicKeyCredentialException.INSTANCE;
        type4 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type4, "error.type");
        message2 = error.getMessage();
        return companion.createFrom(type4, message2);
    }

    @NotNull
    public final GetCredentialException convertToJetpackGetException$credentials_release(@NotNull android.credentials.GetCredentialException error) {
        String type;
        String type2;
        boolean startsWith$default;
        String type3;
        String message;
        String type4;
        String message2;
        String message3;
        String message4;
        String message5;
        String message6;
        Intrinsics.checkNotNullParameter(error, "error");
        type = error.getType();
        switch (type.hashCode()) {
            case -781118336:
                if (type.equals(GetCredentialUnknownException.TYPE_GET_CREDENTIAL_UNKNOWN_EXCEPTION)) {
                    message3 = error.getMessage();
                    return new GetCredentialUnknownException(message3);
                }
                break;
            case -45448328:
                if (type.equals(GetCredentialInterruptedException.TYPE_GET_CREDENTIAL_INTERRUPTED_EXCEPTION)) {
                    message4 = error.getMessage();
                    return new GetCredentialInterruptedException(message4);
                }
                break;
            case 580557411:
                if (type.equals(GetCredentialCancellationException.TYPE_GET_CREDENTIAL_CANCELLATION_EXCEPTION)) {
                    message5 = error.getMessage();
                    return new GetCredentialCancellationException(message5);
                }
                break;
            case 627896683:
                if (type.equals(NoCredentialException.TYPE_FRAMEWORK_TYPE_NO_CREDENTIAL)) {
                    message6 = error.getMessage();
                    return new NoCredentialException(message6);
                }
                break;
        }
        type2 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type2, "error.type");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(type2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, null);
        if (!startsWith$default) {
            type3 = error.getType();
            Intrinsics.checkNotNullExpressionValue(type3, "error.type");
            message = error.getMessage();
            return new GetCredentialCustomException(type3, message);
        }
        GetPublicKeyCredentialException.Companion companion = GetPublicKeyCredentialException.INSTANCE;
        type4 = error.getType();
        Intrinsics.checkNotNullExpressionValue(type4, "error.type");
        message2 = error.getMessage();
        return companion.createFrom(type4, message2);
    }

    /* renamed from: d */
    public final boolean m3878d(Function0<Unit> handleNullCredMan) {
        if (this.credentialManager != null) {
            return false;
        }
        handleNullCredMan.invoke();
        return true;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: e */
    public final void m3879e(CreateCredentialRequest request, CreateCredentialRequest.Builder builder) {
        if (request.getOrigin() != null) {
            builder.setOrigin(request.getOrigin());
        }
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: f */
    public final void m3880f(GetCredentialRequest request, GetCredentialRequest.Builder builder) {
        if (request.getOrigin() != null) {
            builder.setOrigin(request.getOrigin());
        }
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        return Build.VERSION.SDK_INT >= 34;
    }

    @Override // androidx.credentials.CredentialProvider
    public void onClearCredential(@NotNull ClearCredentialStateRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<Void, ClearCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Log.i(f6258c, "In CredentialProviderFrameworkImpl onClearCredential");
        if (m3878d(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new ClearCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(phe.m56261a(th));
            }

            public void onError(@NotNull ClearCredentialStateException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "ClearCredentialStateException error returned from framework");
                callback.onError(new ClearCredentialUnknownException(null, 1, null));
            }

            public void onResult(@NotNull Void response) {
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "Clear result returned from framework: ");
                callback.onResult(response);
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.clearCredentialState(m3877c(), cancellationSignal, executor, yik.m58424a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onCreateCredential(@NotNull Context context, @NotNull final CreateCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (m3878d(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new CreateCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onCreateCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(she.m57164a(th));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(rhe.m56949a(obj));
            }

            public void onError(@NotNull android.credentials.CreateCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "CreateCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackCreateException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.CreateCredentialResponse response) {
                Bundle data;
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "Create Result returned from framework: ");
                CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = callback;
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.INSTANCE;
                String type = request.getType();
                data = response.getData();
                Intrinsics.checkNotNullExpressionValue(data, "response.data");
                credentialManagerCallback.onResult(companion.createFrom(type, data));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.createCredential(context, m3875a(request, context), cancellationSignal, executor, yik.m58424a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (m3878d(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(the.m57373a(th));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(uhe.m57623a(obj));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.GetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                callback.onResult(this.convertGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        PrepareGetCredentialResponse.PendingGetCredentialHandle frameworkHandle = pendingGetCredentialHandle.getFrameworkHandle();
        Intrinsics.checkNotNull(frameworkHandle);
        credentialManager.getCredential(context, frameworkHandle, cancellationSignal, executor, yik.m58424a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onPrepareCredential(@NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<PrepareGetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (m3878d(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onPrepareCredential$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onPrepareCredential$outcome$1
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(the.m57373a(th));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.PrepareGetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                callback.onResult(this.convertPrepareGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.prepareGetCredential(m3876b(request), cancellationSignal, executor, yik.m58424a(outcomeReceiver));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(@NotNull Context context, @NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (m3878d(new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                callback.onError(new GetCredentialUnsupportedException("Your device doesn't support credential manager"));
            }
        })) {
            return;
        }
        OutcomeReceiver outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onGetCredential$outcome$2
            public /* bridge */ /* synthetic */ void onError(Throwable th) {
                onError(the.m57373a(th));
            }

            public /* bridge */ /* synthetic */ void onResult(Object obj) {
                onResult(uhe.m57623a(obj));
            }

            public void onError(@NotNull android.credentials.GetCredentialException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "GetCredentialResponse error returned from framework");
                callback.onError(this.convertToJetpackGetException$credentials_release(error));
            }

            public void onResult(@NotNull android.credentials.GetCredentialResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                Log.i(CredentialProviderFrameworkImpl.f6258c, "GetCredentialResponse returned from framework");
                callback.onResult(this.convertGetResponseToJetpackClass$credentials_release(response));
            }
        };
        android.credentials.CredentialManager credentialManager = this.credentialManager;
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.getCredential(context, m3876b(request), cancellationSignal, executor, yik.m58424a(outcomeReceiver));
    }
}
