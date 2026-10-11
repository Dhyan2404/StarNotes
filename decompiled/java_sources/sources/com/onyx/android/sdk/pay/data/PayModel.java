package com.onyx.android.sdk.pay.data;

import com.onyx.android.sdk.pay.bean.OrderBean;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\u0004\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PayModel;", "", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "orderBean", "setOrder", "a", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "getOrder", "()Lcom/onyx/android/sdk/pay/bean/OrderBean;", "(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V", Constants.ATTRNAME_ORDER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayModel {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public OrderBean order;

    @Nullable
    public final OrderBean getOrder() {
        return this.order;
    }

    /* renamed from: setOrder, reason: collision with other method in class */
    public final void m72310setOrder(@Nullable OrderBean orderBean) {
        this.order = orderBean;
    }

    @NotNull
    public final PayModel setOrder(@Nullable OrderBean orderBean) {
        this.order = orderBean;
        return this;
    }
}
