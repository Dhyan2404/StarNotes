package androidx.credentials.provider;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Landroidx/credentials/provider/ProviderClearCredentialStateRequest;", "", "Landroidx/credentials/provider/CallingAppInfo;", "a", "Landroidx/credentials/provider/CallingAppInfo;", "getCallingAppInfo", "()Landroidx/credentials/provider/CallingAppInfo;", "callingAppInfo", Constants.CONSTRUCTOR_NAME, "(Landroidx/credentials/provider/CallingAppInfo;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ProviderClearCredentialStateRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CallingAppInfo callingAppInfo;

    public ProviderClearCredentialStateRequest(@NotNull CallingAppInfo callingAppInfo) {
        Intrinsics.checkNotNullParameter(callingAppInfo, "callingAppInfo");
        this.callingAppInfo = callingAppInfo;
    }

    @NotNull
    public final CallingAppInfo getCallingAppInfo() {
        return this.callingAppInfo;
    }
}
