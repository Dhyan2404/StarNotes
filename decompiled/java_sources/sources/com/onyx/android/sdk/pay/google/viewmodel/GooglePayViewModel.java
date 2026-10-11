package com.onyx.android.sdk.pay.google.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.android.billingclient.api.BillingClient;
import com.onyx.android.sdk.pay.data.GooglePurchaseTokenArgs;
import com.onyx.android.sdk.pay.google.PaymentErrorCodeUtils;
import com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction;
import com.onyx.android.sdk.pay.google.action.GoogleConsumeOwnedPurchaseAction;
import com.onyx.android.sdk.pay.google.action.GoogleVerifyPurchaseTokenAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J,\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\fH\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/viewmodel/GooglePayViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "", "orderId", "orderToken", "accountStr", "Landroidx/lifecycle/LiveData;", "", "verifyGooglePurchaseToken", "errorCode", "Landroidx/lifecycle/MutableLiveData;", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", "d", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GooglePayViewModel extends ViewModel {

    /* renamed from: com.onyx.android.sdk.pay.google.viewmodel.GooglePayViewModel$a */
    /* loaded from: classes8.dex */
    public static final class C7555a<T> implements Predicate {

        /* renamed from: f */
        public final /* synthetic */ MutableLiveData<Integer> f44199f;

        public C7555a(MutableLiveData<Integer> mutableLiveData) {
            this.f44199f = mutableLiveData;
        }

        /* renamed from: a */
        public final boolean m34344a(int i) {
            return GooglePayViewModel.this.m34343d(i, this.f44199f);
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m34344a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.viewmodel.GooglePayViewModel$b */
    /* loaded from: classes8.dex */
    public static final class C7556b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BillingClient f44200e;

        /* renamed from: f */
        public final /* synthetic */ ArrayList<GooglePurchaseTokenArgs> f44201f;

        public C7556b(BillingClient billingClient, ArrayList<GooglePurchaseTokenArgs> arrayList) {
            this.f44200e = billingClient;
            this.f44201f = arrayList;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Integer> m34345a(int i) {
            return new GoogleConsumeOwnedPurchaseAction(this.f44200e, this.f44201f).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m34345a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.viewmodel.GooglePayViewModel$c */
    /* loaded from: classes8.dex */
    public static final class C7557c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BillingClient f44202e;

        public C7557c(BillingClient billingClient) {
            this.f44202e = billingClient;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends GoogleCheckAndSubmitPurchaseAction> m34346a(int i) {
            return new GoogleCheckAndSubmitPurchaseAction(this.f44202e, null, 2, 0 == true ? 1 : 0).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m34346a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.viewmodel.GooglePayViewModel$d */
    /* loaded from: classes8.dex */
    public static final class C7558d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ MutableLiveData<Integer> f44203e;

        public C7558d(MutableLiveData<Integer> mutableLiveData) {
            this.f44203e = mutableLiveData;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GoogleCheckAndSubmitPurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44203e.postValue(Integer.valueOf(it2.getResponseCode()));
        }
    }

    /* renamed from: d */
    public final boolean m34343d(int errorCode, MutableLiveData<Integer> result) {
        boolean isNoteErrorCode = PaymentErrorCodeUtils.INSTANCE.isNoteErrorCode(errorCode);
        if (!isNoteErrorCode) {
            result.postValue(Integer.valueOf(errorCode));
        }
        return isNoteErrorCode;
    }

    @NotNull
    public final LiveData<Integer> verifyGooglePurchaseToken(@NotNull BillingClient billingClient, @NotNull String orderId, @NotNull String orderToken, @NotNull String accountStr) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(orderToken, "orderToken");
        Intrinsics.checkNotNullParameter(accountStr, "accountStr");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new GooglePurchaseTokenArgs(orderToken, orderId));
        MutableLiveData mutableLiveData = new MutableLiveData();
        new GoogleVerifyPurchaseTokenAction(orderId, orderToken).build().filter(new C7555a(mutableLiveData)).flatMap(new C7556b(billingClient, arrayListOf)).flatMap(new C7557c(billingClient)).doOnNext(new C7558d(mutableLiveData)).subscribe();
        return mutableLiveData;
    }
}
