package androidx.credentials.playservices.controllers.CreatePassword;

import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
/* renamed from: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1$onReceiveResult$1 */
/* loaded from: classes3.dex */
public /* synthetic */ class C0895x4c19f34c extends FunctionReferenceImpl implements Function2<String, String, CreateCredentialException> {
    public C0895x4c19f34c(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    @NotNull
    public final CreateCredentialException invoke(@Nullable String str, @Nullable String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m3904x5e74af(str, str2);
    }
}
