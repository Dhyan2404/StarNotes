package androidx.credentials;

import androidx.credentials.PrepareGetCredentialResponse;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public /* synthetic */ class PrepareGetCredentialResponse$Builder$setFrameworkResponse$1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
    public PrepareGetCredentialResponse$Builder$setFrameworkResponse$1(Object obj) {
        super(1, obj, PrepareGetCredentialResponse.Builder.class, "hasCredentialType", "hasCredentialType(Ljava/lang/String;)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final Boolean invoke(@NotNull String p0) {
        boolean m3882b;
        Intrinsics.checkNotNullParameter(p0, "p0");
        m3882b = ((PrepareGetCredentialResponse.Builder) this.receiver).m3882b(p0);
        return Boolean.valueOf(m3882b);
    }
}
