package com.onyx.android.sdk.data.account.bean;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;", "", "()V", "autoDecideVerifyMethods", "", "getAutoDecideVerifyMethods", Constants.BOOLEAN_VALUE_SIG, "setAutoDecideVerifyMethods", "(Z)V", "checkCurrentAccount", "getCheckCurrentAccount", "setCheckCurrentAccount", "enableEmailMethod", "getEnableEmailMethod", "setEnableEmailMethod", "enableHuaweiMethod", "getEnableHuaweiMethod", "setEnableHuaweiMethod", "enablePasswordMethod", "getEnablePasswordMethod", "setEnablePasswordMethod", "enablePhoneMethod", "getEnablePhoneMethod", "setEnablePhoneMethod", "enableWechatMethod", "getEnableWechatMethod", "setEnableWechatMethod", "verificationTitle", "", "getVerificationTitle", "()Ljava/lang/String;", "setVerificationTitle", "(Ljava/lang/String;)V", "getSupportedMethods", "", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class AccountVerifyArgs {
    private boolean enableEmailMethod;
    private boolean enableHuaweiMethod;
    private boolean enablePasswordMethod;
    private boolean enablePhoneMethod;
    private boolean enableWechatMethod;

    @NotNull
    private String verificationTitle = "";
    private boolean checkCurrentAccount = true;
    private boolean autoDecideVerifyMethods = true;

    public final boolean getAutoDecideVerifyMethods() {
        return this.autoDecideVerifyMethods;
    }

    public final boolean getCheckCurrentAccount() {
        return this.checkCurrentAccount;
    }

    public final boolean getEnableEmailMethod() {
        return this.enableEmailMethod;
    }

    public final boolean getEnableHuaweiMethod() {
        return this.enableHuaweiMethod;
    }

    public final boolean getEnablePasswordMethod() {
        return this.enablePasswordMethod;
    }

    public final boolean getEnablePhoneMethod() {
        return this.enablePhoneMethod;
    }

    public final boolean getEnableWechatMethod() {
        return this.enableWechatMethod;
    }

    @NotNull
    public final List<String> getSupportedMethods() {
        ArrayList arrayList = new ArrayList();
        CollectionKt.addIf(arrayList, AccountVerifyMethods.PASSWORD, new Function0<Boolean>() { // from class: com.onyx.android.sdk.data.account.bean.AccountVerifyArgs$getSupportedMethods$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(AccountVerifyArgs.this.getEnablePasswordMethod());
            }
        });
        CollectionKt.addIf(arrayList, AccountVerifyMethods.PHONE, new Function0<Boolean>() { // from class: com.onyx.android.sdk.data.account.bean.AccountVerifyArgs$getSupportedMethods$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(AccountVerifyArgs.this.getEnablePhoneMethod());
            }
        });
        CollectionKt.addIf(arrayList, AccountVerifyMethods.EMAIL, new Function0<Boolean>() { // from class: com.onyx.android.sdk.data.account.bean.AccountVerifyArgs$getSupportedMethods$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(AccountVerifyArgs.this.getEnableEmailMethod());
            }
        });
        CollectionKt.addIf(arrayList, AccountVerifyMethods.WECHAT, new Function0<Boolean>() { // from class: com.onyx.android.sdk.data.account.bean.AccountVerifyArgs$getSupportedMethods$4
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(AccountVerifyArgs.this.getEnableWechatMethod());
            }
        });
        CollectionKt.addIf(arrayList, AccountVerifyMethods.HUAWEI, new Function0<Boolean>() { // from class: com.onyx.android.sdk.data.account.bean.AccountVerifyArgs$getSupportedMethods$5
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(AccountVerifyArgs.this.getEnableHuaweiMethod());
            }
        });
        return arrayList;
    }

    @NotNull
    public final String getVerificationTitle() {
        return this.verificationTitle;
    }

    public final void setAutoDecideVerifyMethods(boolean z) {
        this.autoDecideVerifyMethods = z;
    }

    public final void setCheckCurrentAccount(boolean z) {
        this.checkCurrentAccount = z;
    }

    public final void setEnableEmailMethod(boolean z) {
        this.enableEmailMethod = z;
    }

    public final void setEnableHuaweiMethod(boolean z) {
        this.enableHuaweiMethod = z;
    }

    public final void setEnablePasswordMethod(boolean z) {
        this.enablePasswordMethod = z;
    }

    public final void setEnablePhoneMethod(boolean z) {
        this.enablePhoneMethod = z;
    }

    public final void setEnableWechatMethod(boolean z) {
        this.enableWechatMethod = z;
    }

    public final void setVerificationTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.verificationTitle = str;
    }
}
