package com.onyx.android.sdk.auth.base;

import com.onyx.android.sdk.auth.data.AuthBean;
import com.onyx.android.sdk.auth.data.AuthResult;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0000J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/base/AuthCallback;", "", "()V", "invokeAuth", "", "callback", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/auth/data/AuthResult;", "invokeCancel", "invokeDigestInvalid", "authBean", "Lcom/onyx/android/sdk/auth/data/AuthBean;", "invokeDismiss", "invokeOpenResetPwdView", "onAuth", "onCancel", "onDigestInvalid", "onDismiss", "onOpenResetPwdView", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class AuthCallback {
    public final void invokeAuth(@NotNull AuthCallback callback, @NotNull AuthResult result) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(result, "result");
        callback.onAuth(result);
    }

    public final void invokeCancel(@NotNull AuthCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onCancel();
    }

    public final void invokeDigestInvalid(@NotNull AuthCallback callback, @NotNull AuthBean authBean) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(authBean, "authBean");
        callback.onDigestInvalid(authBean);
    }

    public final void invokeDismiss(@NotNull AuthCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onDismiss();
    }

    public final void invokeOpenResetPwdView(@NotNull AuthCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onOpenResetPwdView();
    }

    public abstract void onAuth(@NotNull AuthResult result);

    public final void onCancel() {
    }

    public final void onDigestInvalid(@NotNull AuthBean authBean) {
        Intrinsics.checkNotNullParameter(authBean, "authBean");
    }

    public final void onDismiss() {
    }

    public final void onOpenResetPwdView() {
    }
}
