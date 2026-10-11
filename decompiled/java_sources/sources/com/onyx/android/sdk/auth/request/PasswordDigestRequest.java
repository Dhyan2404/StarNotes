package com.onyx.android.sdk.auth.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/request/PasswordDigestRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "a", Constants.STRING_SIG, "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PasswordDigestRequest extends RxBaseRequest<String> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String password;

    public PasswordDigestRequest(@NotNull String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        this.password = password;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public String execute() {
        String computeMD5 = FileUtils.INSTANCE.computeMD5(this.password);
        return computeMD5 == null ? "" : computeMD5;
    }
}
