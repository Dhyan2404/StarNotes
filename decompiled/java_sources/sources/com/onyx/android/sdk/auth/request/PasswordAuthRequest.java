package com.onyx.android.sdk.auth.request;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/request/PasswordAuthRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "()Ljava/lang/Boolean;", "", "a", Constants.STRING_SIG, "digest", "b", "password", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PasswordAuthRequest extends RxBaseRequest<Boolean> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String digest;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String password;

    public PasswordAuthRequest(@NotNull String digest, @NotNull String password) {
        Intrinsics.checkNotNullParameter(digest, "digest");
        Intrinsics.checkNotNullParameter(password, "password");
        this.digest = digest;
        this.password = password;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Boolean execute() {
        return Boolean.valueOf(StringKt.safelyEquals(this.digest, FileUtils.INSTANCE.computeMD5(this.password)));
    }
}
