package androidx.credentials.exceptions.publickeycredential;

import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataCloneError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.HierarchyRequestError;
import androidx.credentials.exceptions.domerrors.InUseAttributeError;
import androidx.credentials.exceptions.domerrors.InvalidCharacterError;
import androidx.credentials.exceptions.domerrors.InvalidModificationError;
import androidx.credentials.exceptions.domerrors.InvalidNodeTypeError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NamespaceError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NoModificationAllowedError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotFoundError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.OperationError;
import androidx.credentials.exceptions.domerrors.OptOutError;
import androidx.credentials.exceptions.domerrors.QuotaExceededError;
import androidx.credentials.exceptions.domerrors.ReadOnlyError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.SyntaxError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.TransactionInactiveError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.domerrors.VersionError;
import androidx.credentials.exceptions.domerrors.WrongDocumentError;
import androidx.credentials.internal.FrameworkClassParsingException;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m61528d2 = {"Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils;", "", "()V", "Companion", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public final class DomExceptionUtils {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String SEPARATOR = "/";

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J:\u0010\n\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0081\b¢\u0006\u0004\b\b\u0010\tJ/\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00038\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, m61528d2 = {"Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;", "", "T", "", "type", RequestParameters.PREFIX, NotificationCompat.CATEGORY_MESSAGE, "t", "generateDomException$credentials_release", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "generateDomException", "Landroidx/credentials/exceptions/domerrors/DomError;", "domError", "a", "(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "SEPARATOR", Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final <T> T m3884a(DomError domError, String r2, T t) {
            if (t instanceof CreatePublicKeyCredentialDomException) {
                return (T) new CreatePublicKeyCredentialDomException(domError, r2);
            }
            if (t instanceof GetPublicKeyCredentialDomException) {
                return (T) new GetPublicKeyCredentialDomException(domError, r2);
            }
            throw new FrameworkClassParsingException();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final /* synthetic */ <T> T generateDomException$credentials_release(String type, String r4, String r5, T t) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(r4, "prefix");
            if (Intrinsics.areEqual(type, r4 + AbortError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_ABORT_ERROR)) {
                return (T) m3884a(new AbortError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + ConstraintError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_CONSTRAINT_ERROR)) {
                return (T) m3884a(new ConstraintError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + DataCloneError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_CLONE_ERROR)) {
                return (T) m3884a(new DataCloneError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + DataError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DATA_ERROR)) {
                return (T) m3884a(new DataError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + EncodingError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_ENCODING_ERROR)) {
                return (T) m3884a(new EncodingError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + HierarchyRequestError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_HIERARCHY_REQUEST_ERROR)) {
                return (T) m3884a(new HierarchyRequestError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + InUseAttributeError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_IN_USE_ATTRIBUTE_ERROR)) {
                return (T) m3884a(new InUseAttributeError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + InvalidCharacterError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_CHARACTER_ERROR)) {
                return (T) m3884a(new InvalidCharacterError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + InvalidModificationError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_MODIFICATION_ERROR)) {
                return (T) m3884a(new InvalidModificationError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + InvalidNodeTypeError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_NODE_TYPE_ERROR)) {
                return (T) m3884a(new InvalidNodeTypeError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + InvalidStateError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_INVALID_STATE_ERROR)) {
                return (T) m3884a(new InvalidStateError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NamespaceError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NAMESPACE_ERROR)) {
                return (T) m3884a(new NamespaceError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NetworkError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NETWORK_ERROR)) {
                return (T) m3884a(new NetworkError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NoModificationAllowedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NO_MODIFICATION_ALLOWED_ERROR)) {
                return (T) m3884a(new NoModificationAllowedError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NotAllowedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_ALLOWED_ERROR)) {
                return (T) m3884a(new NotAllowedError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NotFoundError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_FOUND_ERROR)) {
                return (T) m3884a(new NotFoundError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NotReadableError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_READABLE_ERROR)) {
                return (T) m3884a(new NotReadableError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + NotSupportedError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_NOT_SUPPORTED_ERROR)) {
                return (T) m3884a(new NotSupportedError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + OperationError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_OPERATION_ERROR)) {
                return (T) m3884a(new OperationError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + OptOutError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_OPT_OUT_ERROR)) {
                return (T) m3884a(new OptOutError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + QuotaExceededError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_QUOTA_EXCEEDED_ERROR)) {
                return (T) m3884a(new QuotaExceededError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + ReadOnlyError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_READ_ONLY_ERROR)) {
                return (T) m3884a(new ReadOnlyError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + SecurityError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_SECURITY_ERROR)) {
                return (T) m3884a(new SecurityError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + SyntaxError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_SYNTAX_ERROR)) {
                return (T) m3884a(new SyntaxError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + TimeoutError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_TIMEOUT_ERROR)) {
                return (T) m3884a(new TimeoutError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + TransactionInactiveError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_TRANSACTION_INACTIVE_ERROR)) {
                return (T) m3884a(new TransactionInactiveError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + UnknownError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_UNKNOWN_ERROR)) {
                return (T) m3884a(new UnknownError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + VersionError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_VERSION_ERROR)) {
                return (T) m3884a(new VersionError(), r5, t);
            }
            if (Intrinsics.areEqual(type, r4 + WrongDocumentError.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_WRONG_DOCUMENT_ERROR)) {
                return (T) m3884a(new WrongDocumentError(), r5, t);
            }
            throw new FrameworkClassParsingException();
        }

        public Companion() {
        }
    }
}
