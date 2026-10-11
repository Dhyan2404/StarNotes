package com.onyx.android.sdk.pay.viewmodel;

import android.app.Activity;
import android.graphics.Bitmap;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.PackageUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.action.CreateQRCodeAction;
import com.onyx.android.sdk.pay.action.LoadOrderInfoAction;
import com.onyx.android.sdk.pay.action.LoadPayInfoAction;
import com.onyx.android.sdk.pay.action.PollingOrderStatusAction;
import com.onyx.android.sdk.pay.action.RecreateOrderAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.PayArgs;
import com.onyx.android.sdk.pay.data.PayAttachArgs;
import com.onyx.android.sdk.pay.data.PayModel;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.data.PayStatusType;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.utils.PayStatisticUtils;
import com.onyx.android.sdk.pay.viewmodel.PayViewModel;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b[\u0010\\J*\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\"\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u001eJ\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010!\u001a\u00020 J\u0012\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00040#J\u0012\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040#J\u0012\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00040#J\u0006\u0010'\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0012J\u0006\u0010)\u001a\u00020\u0012J\u0006\u0010*\u001a\u00020\u0012J\u0006\u0010+\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0012J\u000e\u0010.\u001a\u00020\u00122\u0006\u0010-\u001a\u00020 R\u001d\u00105\u001a\b\u0012\u0004\u0012\u0002000/8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001d\u0010-\u001a\b\u0012\u0004\u0012\u00020 0/8\u0006¢\u0006\f\n\u0004\b\u0016\u00102\u001a\u0004\b6\u00104R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\u00190/8\u0006¢\u0006\f\n\u0004\b7\u00102\u001a\u0004\b8\u00104R\u0017\u0010?\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0017\u0010A\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b\b\u0010<\u001a\u0004\b@\u0010>R\"\u0010H\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR$\u0010P\u001a\u0004\u0018\u00010I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010RR$\u0010Z\u001a\u0004\u0018\u00010T8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010Y¨\u0006]"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;", "Landroidx/lifecycle/ViewModel;", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "data", "Lio/reactivex/rxjava3/core/Observable;", "l", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "payInfo", "Landroid/graphics/Bitmap;", C4921e.f26528e, "", "attachType", "Lcom/onyx/android/sdk/pay/data/PayArgs;", "p", Constants.ATTRNAME_ORDER, "", "q", "", "needRetry", "i", "Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;", "action", "Lcom/onyx/android/sdk/pay/data/PayStatusType;", "failedStatus", "r", "enableAlipay", "loadOrderInfo", "Landroidx/fragment/app/FragmentActivity;", "createNewOrder", "Lcom/onyx/android/sdk/pay/data/PayType;", "type", "togglePayType", "Landroidx/lifecycle/LiveData;", "loadAppPayInfo", "loadWXQRCodePayInfo", "loadAlipayQRCodePayInfo", "onPaySuccess", "onPayFail", "onPayFailWithoutRetry", "onPaySuccessWithoutRetry", "clean", "checkOrderStatusFromQrcode", "payType", "updatePayment", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/pay/data/PayModel;", C6999h.f39688c, "Landroidx/lifecycle/MutableLiveData;", "getPayModel", "()Landroidx/lifecycle/MutableLiveData;", "payModel", "getPayType", "j", "getPayStatusType", "payStatusType", "", C4921e.f26537n, "I", "getQrcodeHeight", "()I", "qrcodeHeight", "getQrcodeWidth", "qrcodeWidth", "m", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "setOrderId", "(Ljava/lang/String;)V", "orderId", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "getOrderArgs", "()Lcom/onyx/android/sdk/pay/data/OrderArgs;", "setOrderArgs", "(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V", "orderArgs", "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/Disposable;", "qrcodePollingDispose", "Lcom/onyx/android/sdk/pay/BasePayment;", "Lcom/onyx/android/sdk/pay/BasePayment;", "getPayment", "()Lcom/onyx/android/sdk/pay/BasePayment;", "setPayment", "(Lcom/onyx/android/sdk/pay/BasePayment;)V", "payment", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PayViewModel extends ViewModel {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<PayModel> payModel = new MutableLiveData<>();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<PayType> payType = new MutableLiveData<>();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<PayStatusType> payStatusType = new MutableLiveData<>();

    /* renamed from: k, reason: from kotlin metadata */
    public final int qrcodeHeight;

    /* renamed from: l, reason: from kotlin metadata */
    public final int qrcodeWidth;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public String orderId;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public OrderArgs orderArgs;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public Disposable qrcodePollingDispose;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public BasePayment payment;

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$a */
    /* loaded from: classes8.dex */
    public static final class C7561a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PayStatusType f44226f;

        public C7561a(PayStatusType payStatusType) {
            this.f44226f = payStatusType;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PollingOrderStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PayViewModel.this.m34414r(it2, this.f44226f);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$b */
    /* loaded from: classes8.dex */
    public static final class C7562b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PayStatusType f44228f;

        public C7562b(PayStatusType payStatusType) {
            this.f44228f = payStatusType;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PayViewModel.this.getPayStatusType().postValue(this.f44228f);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$c */
    /* loaded from: classes8.dex */
    public static final class C7563c<T, R> implements Function {

        /* renamed from: e */
        public static final C7563c<T, R> f44229e = new C7563c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String apply(@NotNull DataResponse<OrderBean> it2) {
            String newOrderNo;
            Intrinsics.checkNotNullParameter(it2, "it");
            OrderBean data = it2.getData();
            return (data == null || (newOrderNo = data.getNewOrderNo()) == null) ? "" : newOrderNo;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$d */
    /* loaded from: classes8.dex */
    public static final class C7564d<T, R> implements Function {

        /* renamed from: e */
        public static final C7564d<T, R> f44230e = new C7564d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<Bitmap> apply(@NotNull CreateQRCodeAction bitmap) {
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            DataResponse<Bitmap> dataResponse = new DataResponse<>();
            dataResponse.setData(bitmap.getBitmap());
            return dataResponse;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$e */
    /* loaded from: classes8.dex */
    public static final class C7565e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<PayBean>> f44231e;

        public C7565e(MutableLiveData<DataResponse<PayBean>> mutableLiveData) {
            this.f44231e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DataResponse<PayBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44231e.postValue(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$f */
    /* loaded from: classes8.dex */
    public static final class C7566f<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<PayBean>> f44232e;

        public C7566f(MutableLiveData<DataResponse<PayBean>> mutableLiveData) {
            this.f44232e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44232e.postValue(new DataResponse<>());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$g */
    /* loaded from: classes8.dex */
    public static final class C7567g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<PayBean>> f44233e;

        public C7567g(MutableLiveData<DataResponse<PayBean>> mutableLiveData) {
            this.f44233e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DataResponse<PayBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44233e.postValue(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$h */
    /* loaded from: classes8.dex */
    public static final class C7568h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<PayBean>> f44234e;

        public C7568h(MutableLiveData<DataResponse<PayBean>> mutableLiveData) {
            this.f44234e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44234e.postValue(new DataResponse<>());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$i */
    /* loaded from: classes8.dex */
    public static final class C7569i<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Activity f44236f;

        public C7569i(Activity activity) {
            this.f44236f = activity;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DataResponse<OrderBean>> apply(@NotNull DataResponse<OrderBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PayViewModel.this.m34410l(this.f44236f, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$j */
    /* loaded from: classes8.dex */
    public static final class C7570j<T, R> implements Function {

        /* renamed from: e */
        public static final C7570j<T, R> f44237e = new C7570j<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<OrderBean> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DataResponse<>();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$k */
    /* loaded from: classes8.dex */
    public static final class C7571k<T> implements Consumer {
        public C7571k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DataResponse<OrderBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PayViewModel.this.m34413q(it2.getData());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$l */
    /* loaded from: classes8.dex */
    public static final class C7572l<T, R> implements Function {
        public C7572l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DataResponse<Bitmap>> apply(@NotNull DataResponse<PayBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PayViewModel.this.m34411o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$m */
    /* loaded from: classes8.dex */
    public static final class C7573m<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<Bitmap>> f44240e;

        public C7573m(MutableLiveData<DataResponse<Bitmap>> mutableLiveData) {
            this.f44240e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DataResponse<Bitmap> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44240e.postValue(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.viewmodel.PayViewModel$n */
    /* loaded from: classes8.dex */
    public static final class C7574n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<DataResponse<Bitmap>> f44241e;

        public C7574n(MutableLiveData<DataResponse<Bitmap>> mutableLiveData) {
            this.f44241e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44241e.postValue(new DataResponse<>());
        }
    }

    public PayViewModel() {
        ResManager resManager = ResManager.INSTANCE;
        this.qrcodeHeight = resManager.getDimens(C7520R.dimen.qrcode_height);
        this.qrcodeWidth = resManager.getDimens(C7520R.dimen.qrcode_width);
        this.orderId = "";
    }

    /* renamed from: j */
    public static final void m34404j(PayViewModel this$0, PollingOrderStatusAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m34413q(it2.getOrder());
    }

    /* renamed from: k */
    public static final void m34405k(PayViewModel this$0, PollingOrderStatusAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        OrderArgs orderArgs = this$0.orderArgs;
        if (orderArgs != null) {
            PayType value = this$0.payType.getValue();
            if (value == null) {
                value = PayType.WX_PAY;
            }
            Intrinsics.checkNotNull(value);
            PayStatisticUtils.INSTANCE.reportNormalPayResult(orderArgs, new PayResult(value), true);
        }
    }

    /* renamed from: m */
    public static final void m34406m(PayViewModel this$0, String it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.orderId = it2;
    }

    /* renamed from: n */
    public static final void m34407n(PayViewModel this$0, FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.loadOrderInfo(activity);
    }

    /* renamed from: s */
    public static final void m34408s(PayViewModel this$0, DataResponse it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        OrderArgs orderArgs = this$0.orderArgs;
        if (orderArgs != null) {
            PayStatisticUtils.INSTANCE.reportPayDialogView(orderArgs);
        }
    }

    public final void checkOrderStatusFromQrcode() {
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        this.qrcodePollingDispose = RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(new PollingOrderStatusAction(this.orderId, Integer.MAX_VALUE).build(), new Function1<PollingOrderStatusAction, Boolean>() { // from class: com.onyx.android.sdk.pay.viewmodel.PayViewModel$checkOrderStatusFromQrcode$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PollingOrderStatusAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OrderBean order = it2.getOrder();
                boolean z = false;
                if (order != null && order.isUnpaid()) {
                    z = true;
                }
                return Boolean.valueOf(!z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.t0l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PayViewModel.m34404j(PayViewModel.this, (PollingOrderStatusAction) obj);
            }
        }), new Function1<PollingOrderStatusAction, Boolean>() { // from class: com.onyx.android.sdk.pay.viewmodel.PayViewModel$checkOrderStatusFromQrcode$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PollingOrderStatusAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                OrderBean order = it2.getOrder();
                boolean z = false;
                if (order != null && order.isPaid()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.u0l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PayViewModel.m34405k(PayViewModel.this, (PollingOrderStatusAction) obj);
            }
        }).subscribe();
    }

    public final void clean() {
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    public final void createNewOrder(@NotNull final FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.payStatusType.postValue(PayStatusType.LOADING);
        Observable<R> map = new RecreateOrderAction(this.orderId).build().map(C7563c.f44229e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        RxjavaKt.doOnNextIf(map, new Function1<String, Boolean>() { // from class: com.onyx.android.sdk.pay.viewmodel.PayViewModel$createNewOrder$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotBlank(it2));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.r0l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PayViewModel.m34406m(PayViewModel.this, (String) obj);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.s0l
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PayViewModel.m34407n(PayViewModel.this, activity);
            }
        }).subscribe();
    }

    public final boolean enableAlipay() {
        return PackageUtils.INSTANCE.checkPackageExist(com.onyx.android.sdk.pay.constants.Constants.ALIPAY_PACKAGE);
    }

    @Nullable
    public final OrderArgs getOrderArgs() {
        return this.orderArgs;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    @NotNull
    public final MutableLiveData<PayModel> getPayModel() {
        return this.payModel;
    }

    @NotNull
    public final MutableLiveData<PayStatusType> getPayStatusType() {
        return this.payStatusType;
    }

    @NotNull
    public final MutableLiveData<PayType> getPayType() {
        return this.payType;
    }

    @Nullable
    public final BasePayment getPayment() {
        return this.payment;
    }

    public final int getQrcodeHeight() {
        return this.qrcodeHeight;
    }

    public final int getQrcodeWidth() {
        return this.qrcodeWidth;
    }

    /* renamed from: i */
    public final void m34409i(boolean needRetry) {
        PayStatusType payStatusType = needRetry ? PayStatusType.PAY_FAIL : PayStatusType.PAY_LATER_REMIND;
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        new PollingOrderStatusAction(this.orderId, 0, 2, null).build().doOnNext(new C7561a(payStatusType)).doOnError(new C7562b(payStatusType)).subscribe();
    }

    /* renamed from: l */
    public final Observable<DataResponse<OrderBean>> m34410l(Activity activity, DataResponse<OrderBean> data) {
        return PayBundle.INSTANCE.checkedPaymentReady(activity, data);
    }

    @NotNull
    public final LiveData<DataResponse<PayBean>> loadAlipayQRCodePayInfo() {
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        PayArgs m34412p = m34412p("native");
        if (m34412p == null) {
            return new MutableLiveData(new DataResponse());
        }
        MutableLiveData mutableLiveData = new MutableLiveData();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<DataResponse<PayBean>> doOnError = new LoadPayInfoAction(this.orderId, m34412p).build().doOnNext(new C7565e(mutableLiveData)).doOnError(new C7566f(mutableLiveData));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
        return mutableLiveData;
    }

    @NotNull
    public final LiveData<DataResponse<PayBean>> loadAppPayInfo() {
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        PayArgs m34412p = m34412p("app");
        if (m34412p == null) {
            return new MutableLiveData(new DataResponse());
        }
        MutableLiveData mutableLiveData = new MutableLiveData();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<DataResponse<PayBean>> doOnError = new LoadPayInfoAction(this.orderId, m34412p).build().doOnNext(new C7567g(mutableLiveData)).doOnError(new C7568h(mutableLiveData));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
        return mutableLiveData;
    }

    public final void loadOrderInfo(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        this.payStatusType.postValue(PayStatusType.LOADING);
        Observable doOnNext = new LoadOrderInfoAction(this.orderId).build().flatMap(new C7569i(activity)).onErrorReturn(C7570j.f44237e).doOnNext(new C7571k());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.doOnNextIf(doOnNext, new Function1<DataResponse<OrderBean>, Boolean>() { // from class: com.onyx.android.sdk.pay.viewmodel.PayViewModel$loadOrderInfo$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DataResponse<OrderBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(DataResponseKt.isSuccess(it2));
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.v0l
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                PayViewModel.m34408s(PayViewModel.this, (DataResponse) obj);
            }
        }).subscribe();
    }

    @NotNull
    public final LiveData<DataResponse<Bitmap>> loadWXQRCodePayInfo() {
        Disposable disposable = this.qrcodePollingDispose;
        if (disposable != null) {
            disposable.dispose();
        }
        PayArgs m34412p = m34412p("native");
        if (m34412p == null) {
            return new MutableLiveData(new DataResponse());
        }
        MutableLiveData mutableLiveData = new MutableLiveData();
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnError = new LoadPayInfoAction(this.orderId, m34412p).build().flatMap(new C7572l()).doOnNext(new C7573m(mutableLiveData)).doOnError(new C7574n(mutableLiveData));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnError, null, null, 3, null);
        return mutableLiveData;
    }

    /* renamed from: o */
    public final Observable<DataResponse<Bitmap>> m34411o(DataResponse<PayBean> payInfo) {
        PayBean data = payInfo.getData();
        if (data == null) {
            Observable<DataResponse<Bitmap>> just = Observable.just(new DataResponse());
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = new CreateQRCodeAction(data.getCodeUrl(), this.qrcodeWidth, this.qrcodeHeight).build().map(C7564d.f44230e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void onPayFail() {
        this.payStatusType.postValue(PayStatusType.PAY_FAIL);
    }

    public final void onPayFailWithoutRetry() {
        this.payStatusType.postValue(PayStatusType.PAY_FAIL_WITHOUT_RETRY);
    }

    public final void onPaySuccess() {
        this.payStatusType.postValue(PayStatusType.CHECKING);
        m34409i(true);
    }

    public final void onPaySuccessWithoutRetry() {
        this.payStatusType.postValue(PayStatusType.CHECKING);
        m34409i(false);
    }

    /* renamed from: p */
    public final PayArgs m34412p(String attachType) {
        PayType value = this.payType.getValue();
        if (value == null) {
            return null;
        }
        PayAttachArgs payAttachArgs = new PayAttachArgs();
        payAttachArgs.setType(attachType);
        PayArgs payArgs = new PayArgs();
        payArgs.setAttach(payAttachArgs);
        payArgs.setPayType(value.getType());
        if (value == PayType.ALI_PAY) {
            payArgs.setQrcodeWidth(Integer.valueOf((int) DimenUtils.INSTANCE.px2DpFloat(this.qrcodeWidth)));
        }
        return payArgs;
    }

    /* renamed from: q */
    public final void m34413q(OrderBean order) {
        if (order == null) {
            this.payStatusType.postValue(PayStatusType.LOAD_FAIL);
            return;
        }
        if (!order.isUnpaid()) {
            if (order.isPaid()) {
                this.payStatusType.postValue(PayStatusType.PAY_SUCCESS);
                return;
            } else if (!order.isCancel()) {
                this.payStatusType.postValue(PayStatusType.LOAD_FAIL);
                return;
            } else {
                this.payModel.postValue(new PayModel().setOrder(order));
                this.payStatusType.postValue(PayStatusType.ORDER_CANCEL);
                return;
            }
        }
        if (order.isHuaweiIapPayEnabled()) {
            this.payType.postValue(PayType.HUAWEI_PAY);
            this.payStatusType.postValue(PayStatusType.OTHER_PAYING);
        } else if (order.isGooglePayEnable()) {
            this.payType.postValue(PayType.GOOGLE);
            this.payStatusType.postValue(PayStatusType.OTHER_PAYING);
        } else {
            if (this.payType.getValue() == null) {
                this.payType.postValue(PayType.WX_PAY);
            }
            this.payStatusType.postValue(PayStatusType.PAYING);
        }
        this.payModel.postValue(new PayModel().setOrder(order));
    }

    /* renamed from: r */
    public final void m34414r(PollingOrderStatusAction action, PayStatusType failedStatus) {
        OrderBean order = action.getOrder();
        boolean z = false;
        if (order != null && order.isPaid()) {
            z = true;
        }
        if (z) {
            this.payStatusType.postValue(PayStatusType.PAY_SUCCESS);
        } else {
            this.payStatusType.postValue(failedStatus);
        }
    }

    public final void setOrderArgs(@Nullable OrderArgs orderArgs) {
        this.orderArgs = orderArgs;
    }

    public final void setOrderId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.orderId = str;
    }

    public final void setPayment(@Nullable BasePayment basePayment) {
        this.payment = basePayment;
    }

    public final void togglePayType(@NotNull PayType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (type == this.payType.getValue()) {
            return;
        }
        this.payType.postValue(type);
    }

    public final void updatePayment(@NotNull PayType payType) {
        Intrinsics.checkNotNullParameter(payType, "payType");
        this.payment = PayBundle.INSTANCE.getPayment(payType);
    }
}
