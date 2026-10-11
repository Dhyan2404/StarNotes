package com.onyx.galaxy.note.member.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/data/ChargeProduct;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "b", "getFinalAmount", "setFinalAmount", "finalAmount", "c", "getTotalAmount", "setTotalAmount", "totalAmount", "d", "getGoogleProductId", "setGoogleProductId", "googleProductId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ChargeProduct {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = CouchFieldKey.KEY_UNIQUE_ID)
    @NotNull
    public String uniqueId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = "finalAmount")
    @NotNull
    public String finalAmount = "";

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(name = "totalAmount")
    @NotNull
    public String totalAmount = "";

    /* renamed from: d, reason: from kotlin metadata */
    @JSONField(name = "googleProductId")
    @NotNull
    public String googleProductId = "";

    @NotNull
    public final String getFinalAmount() {
        return this.finalAmount;
    }

    @NotNull
    public final String getGoogleProductId() {
        return this.googleProductId;
    }

    @NotNull
    public final String getTotalAmount() {
        return this.totalAmount;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final void setFinalAmount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.finalAmount = str;
    }

    public final void setGoogleProductId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.googleProductId = str;
    }

    public final void setTotalAmount(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.totalAmount = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }
}
