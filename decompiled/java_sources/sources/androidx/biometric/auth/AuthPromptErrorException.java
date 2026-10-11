package androidx.biometric.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0006\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Landroidx/biometric/auth/AuthPromptErrorException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errorCode", "", "errorMessage", "", "(ILjava/lang/CharSequence;)V", "getErrorCode", "()I", "getErrorMessage", "()Ljava/lang/CharSequence;", "biometric-ktx_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class AuthPromptErrorException extends Exception {
    private final int errorCode;

    @NotNull
    private final CharSequence errorMessage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthPromptErrorException(int i, @NotNull CharSequence errorMessage) {
        super(errorMessage.toString());
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.errorCode = i;
        this.errorMessage = errorMessage;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    @NotNull
    public final CharSequence getErrorMessage() {
        return this.errorMessage;
    }
}
