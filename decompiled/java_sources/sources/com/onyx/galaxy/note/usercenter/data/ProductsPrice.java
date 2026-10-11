package com.onyx.galaxy.note.usercenter.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/data/ProductsPrice;", "", "", "a", Constants.STRING_SIG, "getMessageId", "()Ljava/lang/String;", "setMessageId", "(Ljava/lang/String;)V", "messageId", "", "Lcom/onyx/galaxy/note/usercenter/data/ProductPriceBean;", "b", "Ljava/util/List;", "getPriceList", "()Ljava/util/List;", "setPriceList", "(Ljava/util/List;)V", "priceList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ProductsPrice {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(name = "id")
    @NotNull
    public String messageId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @JSONField(name = "data")
    @NotNull
    public List<ProductPriceBean> priceList = new ArrayList();

    @NotNull
    public final String getMessageId() {
        return this.messageId;
    }

    @NotNull
    public final List<ProductPriceBean> getPriceList() {
        return this.priceList;
    }

    public final void setMessageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.messageId = str;
    }

    public final void setPriceList(@NotNull List<ProductPriceBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.priceList = list;
    }
}
