package com.onyx.galaxy.note.member.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0007R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\n¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "", "", "ensureOperationCode", "", "a", Constants.STRING_SIG, "getFunctionFrom", "()Ljava/lang/String;", "setFunctionFrom", "(Ljava/lang/String;)V", "functionFrom", "b", "getInterfaceFrom", "setInterfaceFrom", "interfaceFrom", "c", "getOperationCode", "setOperationCode", "operationCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class FeatureChargeArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = OnyxStatisticConstant.KEY_FUNCTION_FROM)
    @NotNull
    public String functionFrom = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = OnyxStatisticConstant.KEY_INTERFACE_FROM)
    @NotNull
    public String interfaceFrom = "";

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(name = OnyxStatisticConstant.KEY_OPERATION_CODE)
    @NotNull
    public String operationCode = "";

    @JSONField(deserialize = false, serialize = false)
    public final void ensureOperationCode() {
        String accountId;
        if (StringKt.isNotBlank(this.operationCode) || (accountId = AccountDataBundle.INSTANCE.getAccountId()) == null) {
            return;
        }
        this.operationCode = accountId + NameUtil.USCORE + System.currentTimeMillis();
    }

    @NotNull
    public final String getFunctionFrom() {
        return this.functionFrom;
    }

    @NotNull
    public final String getInterfaceFrom() {
        return this.interfaceFrom;
    }

    @NotNull
    public final String getOperationCode() {
        return this.operationCode;
    }

    public final void setFunctionFrom(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.functionFrom = str;
    }

    public final void setInterfaceFrom(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.interfaceFrom = str;
    }

    public final void setOperationCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.operationCode = str;
    }
}
