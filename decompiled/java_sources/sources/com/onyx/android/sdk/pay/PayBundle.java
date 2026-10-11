package com.onyx.android.sdk.pay;

import android.app.Activity;
import android.content.Context;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.pay.PaymentSelector;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.data.PaymentArgs;
import com.onyx.android.sdk.pay.data.PaymentConfig;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dagger.hilt.android.EntryPointAccessors;
import io.reactivex.rxjava3.core.Observable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b2\u00103J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J(\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\f2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tJ*\u0010\u0015\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0010\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0001J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0001J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0001J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0001R\u0014\u0010#\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\"R\u001b\u0010\u0003\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b!\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u001d\u0010-\u001a\u0004\u0018\u00010*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010%\u001a\u0004\b$\u0010,R\u001b\u00101\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010%\u001a\u0004\b'\u00100¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/PayBundle;", "", "Lorg/greenrobot/eventbus/EventBus;", "eventBus", "", "initStatisticBus", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "checkIAPOrder", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "data", "Lio/reactivex/rxjava3/core/Observable;", "checkedPaymentReady", "Landroid/content/Context;", "context", "", "", "productIdList", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;", "getProductInfoByProductIdAction", "Lcom/onyx/android/sdk/pay/data/PayType;", "payType", "Lcom/onyx/android/sdk/pay/BasePayment;", "getPayment", "findIapPayment", NotificationCompat.CATEGORY_EVENT, "reportStatisticEvent", "subscriber", "register", "unRegister", "postEvent", "a", Constants.STRING_SIG, "PAYMENT_CONFIG_RAW_NAME", "b", "Lkotlin/Lazy;", "()Lorg/greenrobot/eventbus/EventBus;", "c", "Lorg/greenrobot/eventbus/EventBus;", "statisticBus", "Lcom/onyx/android/sdk/pay/data/PaymentConfig;", "d", "()Lcom/onyx/android/sdk/pay/data/PaymentConfig;", "paymentConfig", "Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;", "e", "()Lcom/onyx/android/sdk/pay/PaymentSelector$Factory;", "paymentFactory", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPayBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayBundle.kt\ncom/onyx/android/sdk/pay/PayBundle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes8.dex */
public final class PayBundle {

    @NotNull
    public static final PayBundle INSTANCE = new PayBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String PAYMENT_CONFIG_RAW_NAME = "payment_config";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBus;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public static EventBus statisticBus;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Lazy paymentConfig;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final Lazy paymentFactory;

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EventBus>() { // from class: com.onyx.android.sdk.pay.PayBundle$eventBus$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBus invoke() {
                return new EventBus();
            }
        });
        eventBus = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<PaymentConfig>() { // from class: com.onyx.android.sdk.pay.PayBundle$paymentConfig$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final PaymentConfig invoke() {
                return (PaymentConfig) ConfigLoader.INSTANCE.load(PaymentConfig.class, PayBundle.PAYMENT_CONFIG_RAW_NAME);
            }
        });
        paymentConfig = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<PaymentSelector.Factory>() { // from class: com.onyx.android.sdk.pay.PayBundle$paymentFactory$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PaymentSelector.Factory invoke() {
                return ((IPaymentFactoryEntryPoint) EntryPointAccessors.fromApplication(ResManager.INSTANCE.getAppContext(), IPaymentFactoryEntryPoint.class)).getFactory();
            }
        });
        paymentFactory = lazy3;
    }

    /* renamed from: a */
    public final EventBus m34240a() {
        return (EventBus) eventBus.getValue();
    }

    /* renamed from: b */
    public final PaymentConfig m34241b() {
        return (PaymentConfig) paymentConfig.getValue();
    }

    /* renamed from: c */
    public final PaymentSelector.Factory m34242c() {
        return (PaymentSelector.Factory) paymentFactory.getValue();
    }

    public final void checkIAPOrder(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        BasePayment findIapPayment = findIapPayment();
        if (findIapPayment != null) {
            findIapPayment.checkIAPOrder(activity);
        }
    }

    @NotNull
    public final Observable<DataResponse<OrderBean>> checkedPaymentReady(@NotNull Activity activity, @NotNull DataResponse<OrderBean> data) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(data, "data");
        BasePayment findIapPayment = findIapPayment();
        if (findIapPayment != null) {
            return findIapPayment.checkPaymentReady(activity, data);
        }
        Observable<DataResponse<OrderBean>> just = Observable.just(data);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Nullable
    public final BasePayment findIapPayment() {
        PaymentArgs paymentArgs;
        ArrayList<PaymentArgs> paymentTypeList;
        Object obj;
        PaymentConfig m34241b = m34241b();
        if (m34241b == null || (paymentTypeList = m34241b.getPaymentTypeList()) == null) {
            paymentArgs = null;
        } else {
            Iterator<T> it2 = paymentTypeList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((PaymentArgs) obj).getIapPayment()) {
                    break;
                }
            }
            paymentArgs = (PaymentArgs) obj;
        }
        if (paymentArgs == null) {
            return null;
        }
        return getPayment(PayType.INSTANCE.getPayTypeByTypeName(paymentArgs.getType()));
    }

    @Nullable
    public final BasePayment getPayment(@Nullable PayType payType) {
        String type;
        if (payType == null || (type = payType.getType()) == null) {
            return null;
        }
        return m34242c().create(type).getPayment();
    }

    @Nullable
    public final BasePayAction<List<ProductInfoBean>> getProductInfoByProductIdAction(@NotNull Context context, @NotNull List<String> productIdList) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(productIdList, "productIdList");
        BasePayment findIapPayment = findIapPayment();
        if (findIapPayment == null) {
            return null;
        }
        return findIapPayment.getProductInfoByProductIdAction(context, productIdList);
    }

    public final void initStatisticBus(@NotNull EventBus eventBus2) {
        Intrinsics.checkNotNullParameter(eventBus2, "eventBus");
        statisticBus = eventBus2;
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            m34240a().post(event);
        } catch (Exception unused) {
        }
    }

    public final void register(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureRegister(m34240a(), subscriber);
    }

    public final void reportStatisticEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventBus eventBus2 = statisticBus;
        if (eventBus2 != null) {
            eventBus2.post(event);
        }
    }

    public final void unRegister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBusHolderKt.ensureUnRegister(m34240a(), subscriber);
    }
}
