package androidx.credentials.playservices.controllers.GetSignInIntent;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
/* renamed from: androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 */
/* loaded from: classes3.dex */
public /* synthetic */ class C0927xf12f72ff extends FunctionReferenceImpl implements Function2<String, String, GetCredentialException> {
    public C0927xf12f72ff(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    @NotNull
    public final GetCredentialException invoke(@Nullable String str, @Nullable String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m3905xd975db95(str, str2);
    }
}
