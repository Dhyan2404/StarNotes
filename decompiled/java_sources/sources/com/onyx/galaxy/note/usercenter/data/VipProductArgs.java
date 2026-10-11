package com.onyx.galaxy.note.usercenter.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/data/VipProductArgs;", "", "", "a", Constants.STRING_SIG, "getPriceTypeId", "()Ljava/lang/String;", "setPriceTypeId", "(Ljava/lang/String;)V", "priceTypeId", "Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;", "b", "Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;", "getData", "()Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;", "setData", "(Lcom/onyx/galaxy/note/usercenter/data/VipProductBean;)V", "data", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class VipProductArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = "id")
    @NotNull
    public String priceTypeId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = "data")
    @Nullable
    public VipProductBean data;

    @Nullable
    public final VipProductBean getData() {
        return this.data;
    }

    @NotNull
    public final String getPriceTypeId() {
        return this.priceTypeId;
    }

    public final void setData(@Nullable VipProductBean vipProductBean) {
        this.data = vipProductBean;
    }

    public final void setPriceTypeId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.priceTypeId = str;
    }
}
