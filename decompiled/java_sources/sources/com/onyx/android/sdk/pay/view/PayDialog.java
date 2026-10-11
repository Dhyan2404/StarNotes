package com.onyx.android.sdk.pay.view;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.FragmentKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.extension.DialogKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.PayModel;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.data.PayStatusType;
import com.onyx.android.sdk.pay.data.PayType;
import com.onyx.android.sdk.pay.databinding.DialogPayBinding;
import com.onyx.android.sdk.pay.event.PayResultEvent;
import com.onyx.android.sdk.pay.utils.PayStatisticUtils;
import com.onyx.android.sdk.pay.view.PayDialog;
import com.onyx.android.sdk.pay.viewmodel.PayViewModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001dB\u0011\u0012\b\b\u0002\u0010I\u001a\u00020D¢\u0006\u0004\bb\u0010cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J \u0010\u0014\u001a\u00020\u00022\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0014\u0010!\u001a\u00020\u00022\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002J\b\u0010\"\u001a\u00020\u0002H\u0002J\b\u0010#\u001a\u00020\u0002H\u0002J\b\u0010$\u001a\u00020\u0002H\u0002J\b\u0010%\u001a\u00020\u0002H\u0002J\u0012\u0010'\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010\u001fH\u0002J\b\u0010(\u001a\u00020\u0002H\u0002J\b\u0010)\u001a\u00020\u0002H\u0002J\b\u0010*\u001a\u00020\u0002H\u0002J\b\u0010+\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\b\u0010-\u001a\u00020\u0002H\u0002J\b\u0010.\u001a\u00020\u0002H\u0002J\b\u00100\u001a\u00020/H\u0002J\u0010\u00101\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\b\u00102\u001a\u00020\u0002H\u0002J\u001a\u00104\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u00103\u001a\u00020\u0015H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0007J\u0012\u0010:\u001a\u00020\u00022\b\u00109\u001a\u0004\u0018\u000108H\u0016J\b\u0010;\u001a\u00020\u0002H\u0016J$\u0010A\u001a\u00020@2\u0006\u0010=\u001a\u00020<2\b\u0010?\u001a\u0004\u0018\u00010>2\b\u00109\u001a\u0004\u0018\u000108H\u0016J\u001a\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020@2\b\u00109\u001a\u0004\u0018\u000108H\u0016R\u0017\u0010I\u001a\u00020D8\u0006¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0014\u0010L\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bN\u0010OR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u0016\u0010Y\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR$\u0010a\u001a\u0004\u0018\u00010Z8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/view/PayDialog;", "Landroidx/fragment/app/DialogFragment;", "", "V0", "U0", "N0", "M0", "Lcom/onyx/android/sdk/pay/data/PayModel;", "model", "k1", "Lcom/onyx/android/sdk/pay/data/PayType;", "payType", "m1", "Lcom/onyx/android/sdk/pay/data/PayStatusType;", "type", "l1", "a1", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "payInfo", "E0", "", "B0", "payBean", "Lcom/onyx/android/sdk/pay/BasePayment;", "payment", "c1", "Y0", "Lcom/onyx/android/sdk/pay/data/PayResult;", "payResult", "F0", "", "title", "g1", "K0", "n1", "i1", "L0", "tips", "j1", "f1", "Z0", "X0", "W0", "d1", "z0", "C0", "", "A0", "J0", "b1", "showErrorMessage", "H0", "Lcom/onyx/android/sdk/pay/event/PayResultEvent;", NotificationCompat.CATEGORY_EVENT, "onPayResultEvent", "Landroid/os/Bundle;", C1126e.f7693h, "onCreate", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "z1", "Lcom/onyx/android/sdk/pay/data/OrderArgs;", "getOrderArgs", "()Lcom/onyx/android/sdk/pay/data/OrderArgs;", "orderArgs", "A1", Constants.STRING_SIG, "orderId", "Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;", "B1", "Lcom/onyx/android/sdk/pay/databinding/DialogPayBinding;", "binding", "Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;", "C1", "Lkotlin/Lazy;", "D0", "()Lcom/onyx/android/sdk/pay/viewmodel/PayViewModel;", "viewmodel", "D1", "J", "viewTime", "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "E1", "Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "getListener", "()Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "setListener", "(Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pay/data/OrderArgs;)V", "PayListener", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPayDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,594:1\n262#2,2:595\n262#2,2:597\n262#2,2:599\n262#2,2:601\n283#2,2:603\n262#2,2:605\n262#2,2:607\n283#2,2:609\n262#2,2:611\n262#2,2:613\n262#2,2:615\n262#2,2:617\n283#2,2:619\n262#2,2:621\n262#2,2:623\n262#2,2:625\n262#2,2:627\n262#2,2:629\n283#2,2:631\n262#2,2:633\n262#2,2:635\n262#2,2:637\n262#2,2:639\n283#2,2:641\n262#2,2:643\n262#2,2:645\n262#2,2:647\n262#2,2:649\n262#2,2:651\n262#2,2:653\n262#2,2:655\n262#2,2:657\n262#2,2:659\n262#2,2:661\n262#2,2:663\n262#2,2:665\n262#2,2:667\n262#2,2:669\n262#2,2:671\n262#2,2:673\n262#2,2:675\n*S KotlinDebug\n*F\n+ 1 PayDialog.kt\ncom/onyx/android/sdk/pay/view/PayDialog\n*L\n175#1:595,2\n187#1:597,2\n189#1:599,2\n211#1:601,2\n212#1:603,2\n221#1:605,2\n222#1:607,2\n231#1:609,2\n232#1:611,2\n236#1:613,2\n237#1:615,2\n238#1:617,2\n243#1:619,2\n244#1:621,2\n246#1:623,2\n247#1:625,2\n248#1:627,2\n249#1:629,2\n254#1:631,2\n255#1:633,2\n258#1:635,2\n259#1:637,2\n260#1:639,2\n265#1:641,2\n266#1:643,2\n268#1:645,2\n269#1:647,2\n270#1:649,2\n271#1:651,2\n277#1:653,2\n396#1:655,2\n402#1:657,2\n416#1:659,2\n417#1:661,2\n422#1:663,2\n445#1:665,2\n450#1:667,2\n472#1:669,2\n473#1:671,2\n489#1:673,2\n490#1:675,2\n*E\n"})
/* loaded from: classes17.dex */
public final class PayDialog extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    /* renamed from: B1, reason: from kotlin metadata */
    public DialogPayBinding binding;

    /* renamed from: C1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewmodel;

    /* renamed from: D1, reason: from kotlin metadata */
    public long viewTime;

    /* renamed from: E1, reason: from kotlin metadata */
    @Nullable
    public PayListener listener;

    /* renamed from: z1, reason: from kotlin metadata */
    @NotNull
    public final OrderArgs orderArgs;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/view/PayDialog$PayListener;", "", "onPayResult", "", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "Lcom/onyx/android/sdk/pay/data/PayResult;", "onPaymentAgreement", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface PayListener {
        void onPayResult(@NotNull PayResult result);

        void onPaymentAgreement();
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[PayStatusType.values().length];
            try {
                iArr[PayStatusType.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PayStatusType.OTHER_PAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PayStatusType.LOAD_FAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PayStatusType.PAYING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PayStatusType.CHECKING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PayStatusType.PAY_FAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PayStatusType.PAY_FAIL_WITHOUT_RETRY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PayStatusType.PAY_SUCCESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PayStatusType.PAY_LATER_REMIND.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[PayStatusType.ORDER_CANCEL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PayType.values().length];
            try {
                iArr2[PayType.ALI_PAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[PayType.WX_PAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[PayType.HUAWEI_PAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[PayType.GOOGLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.view.PayDialog$a */
    /* loaded from: classes8.dex */
    public static final class C7559a<T> implements Consumer {
        public C7559a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PayResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            PayDialog.this.m34372F0(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.view.PayDialog$b */
    /* loaded from: classes8.dex */
    public static final class C7560b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f44212a;

        public C7560b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f44212a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final Function<?> getFunctionDelegate() {
            return this.f44212a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f44212a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PayDialog() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* renamed from: G0 */
    public static final void m34349G0() {
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C7520R.string.pay_cancel_tips), false, 2, (Object) null);
    }

    /* renamed from: I0 */
    public static /* synthetic */ void m34350I0(PayDialog payDialog, PayResult payResult, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        payDialog.m34373H0(payResult, z);
    }

    /* renamed from: O0 */
    public static final void m34351O0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m34370D0().togglePayType(PayType.ALI_PAY);
    }

    /* renamed from: P0 */
    public static final void m34352P0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m34370D0().togglePayType(PayType.WX_PAY);
    }

    /* renamed from: Q0 */
    public static final void m34353Q0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m34386b1();
    }

    /* renamed from: R0 */
    public static final void m34354R0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PayStatisticUtils.INSTANCE.reportPayDialogClose(this$0.orderArgs, this$0.m34367A0());
        this$0.m34384Z0();
    }

    /* renamed from: S0 */
    public static final void m34355S0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m34385a1();
    }

    /* renamed from: T0 */
    public static final void m34356T0(PayDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PayViewModel m34370D0 = this$0.m34370D0();
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        m34370D0.loadOrderInfo(requireActivity);
    }

    /* renamed from: e1 */
    public static final boolean m34357e1(View view, MotionEvent motionEvent) {
        return true;
    }

    /* renamed from: h1 */
    public static /* synthetic */ void m34358h1(PayDialog payDialog, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        payDialog.m34390g1(str);
    }

    /* renamed from: A0 */
    public final long m34367A0() {
        return System.currentTimeMillis() - this.viewTime;
    }

    /* renamed from: B0 */
    public final boolean m34368B0() {
        PayType value = m34370D0().getPayType().getValue();
        if (value == null || m34370D0().getPayment() == null) {
            return false;
        }
        BasePayment payment = m34370D0().getPayment();
        Intrinsics.checkNotNull(payment);
        if (payment.isPaymentInstalled()) {
            return true;
        }
        if (value != PayType.WX_PAY) {
            return false;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C7520R.string.wx_not_exist_tips), false, 2, (Object) null);
        return false;
    }

    /* renamed from: C0 */
    public final void m34369C0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.clearFlags(8192);
    }

    /* renamed from: D0 */
    public final PayViewModel m34370D0() {
        return (PayViewModel) this.viewmodel.getValue();
    }

    /* renamed from: E0 */
    public final void m34371E0(DataResponse<PayBean> payInfo, PayType payType) {
        PayBean data = payInfo.getData();
        if (data == null || payType == null) {
            m34375K0();
            return;
        }
        if (m34370D0().getPayment() == null) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$1[payType.ordinal()];
        if (i == 1) {
            m34375K0();
            BasePayment payment = m34370D0().getPayment();
            Intrinsics.checkNotNull(payment);
            m34383Y0(data, payment);
            PayStatisticUtils.INSTANCE.reportAppPay(this.orderArgs, PayType.ALI_PAY, m34367A0());
            return;
        }
        if (i == 2) {
            m34375K0();
            BasePayment payment2 = m34370D0().getPayment();
            Intrinsics.checkNotNull(payment2);
            m34387c1(data, payment2);
            PayStatisticUtils.INSTANCE.reportAppPay(this.orderArgs, PayType.WX_PAY, m34367A0());
            return;
        }
        if (i == 3 || i == 4) {
            BasePayment payment3 = m34370D0().getPayment();
            Intrinsics.checkNotNull(payment3);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            payment3.gotoPayActivity(requireContext, payType, this.orderId, data);
        }
    }

    /* renamed from: F0 */
    public final void m34372F0(PayResult payResult) {
        m34374J0(payResult);
        DialogPayBinding dialogPayBinding = null;
        if (payResult.getPayType() == PayType.HUAWEI_PAY) {
            m34350I0(this, payResult, false, 2, null);
            return;
        }
        if (payResult.getPayType() == PayType.GOOGLE) {
            m34373H0(payResult, true);
            return;
        }
        int status = payResult.getStatus();
        if (status == 0) {
            m34370D0().onPaySuccess();
            return;
        }
        if (status != 1) {
            if (status != 2) {
                return;
            }
            m34370D0().onPayFail();
            return;
        }
        DialogPayBinding dialogPayBinding2 = this.binding;
        if (dialogPayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding = dialogPayBinding2;
        }
        dialogPayBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.j0l
            @Override // java.lang.Runnable
            public final void run() {
                PayDialog.m34349G0();
            }
        });
        PayViewModel m34370D0 = m34370D0();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        m34370D0.loadOrderInfo(requireActivity);
    }

    /* renamed from: H0 */
    public final void m34373H0(PayResult payResult, boolean showErrorMessage) {
        int status = payResult.getStatus();
        if (status == 0) {
            m34370D0().onPaySuccessWithoutRetry();
            return;
        }
        if (status == 1) {
            m34384Z0();
            return;
        }
        if (status != 2) {
            return;
        }
        if (!showErrorMessage) {
            m34384Z0();
            return;
        }
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        dialogPayBinding.tvPayErrorMessage.setText(payResult.getMessage());
        m34370D0().onPayFailWithoutRetry();
    }

    /* renamed from: J0 */
    public final void m34374J0(PayResult payResult) {
        if (payResult.getPayType() == PayType.HUAWEI_PAY) {
            PayStatisticUtils.INSTANCE.reportHuaweiPayResult(this.orderArgs, payResult);
        } else {
            PayStatisticUtils.INSTANCE.reportNormalPayResult(this.orderArgs, payResult, false);
        }
    }

    /* renamed from: K0 */
    public final void m34375K0() {
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        FrameLayout flyLoading = dialogPayBinding.flyLoading;
        Intrinsics.checkNotNullExpressionValue(flyLoading, "flyLoading");
        flyLoading.setVisibility(8);
        DialogPayBinding dialogPayBinding2 = this.binding;
        if (dialogPayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding2 = null;
        }
        Drawable background = dialogPayBinding2.ivLoading.getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    /* renamed from: L0 */
    public final void m34376L0() {
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        FrameLayout flyQrcodeLoading = dialogPayBinding.flyQrcodeLoading;
        Intrinsics.checkNotNullExpressionValue(flyQrcodeLoading, "flyQrcodeLoading");
        flyQrcodeLoading.setVisibility(8);
        DialogPayBinding dialogPayBinding2 = this.binding;
        if (dialogPayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding2 = null;
        }
        Drawable background = dialogPayBinding2.ivQrcodeLoading.getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    /* renamed from: M0 */
    public final void m34377M0() {
        m34370D0().setOrderId(this.orderId);
        m34370D0().setOrderArgs(this.orderArgs);
        m34370D0().getPayType().observe(getViewLifecycleOwner(), new C7560b(new PayDialog$initData$1(this)));
        m34370D0().getPayStatusType().observe(getViewLifecycleOwner(), new C7560b(new PayDialog$initData$2(this)));
        m34370D0().getPayModel().observe(this, new C7560b(new PayDialog$initData$3(this)));
        PayViewModel m34370D0 = m34370D0();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        m34370D0.loadOrderInfo(requireActivity);
    }

    /* renamed from: N0 */
    public final void m34378N0() {
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        LinearLayout llyAliPay = dialogPayBinding.llyAliPay;
        Intrinsics.checkNotNullExpressionValue(llyAliPay, "llyAliPay");
        ViewKt.click$default(llyAliPay, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.k0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34351O0(PayDialog.this, view);
            }
        }, 1, null);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        LinearLayout llyWechatPay = dialogPayBinding3.llyWechatPay;
        Intrinsics.checkNotNullExpressionValue(llyWechatPay, "llyWechatPay");
        ViewKt.click$default(llyWechatPay, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.l0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34352P0(PayDialog.this, view);
            }
        }, 1, null);
        DialogPayBinding dialogPayBinding4 = this.binding;
        if (dialogPayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding4 = null;
        }
        TintLinearLayout llyQrcodeInvalid = dialogPayBinding4.llyQrcodeInvalid;
        Intrinsics.checkNotNullExpressionValue(llyQrcodeInvalid, "llyQrcodeInvalid");
        ViewKt.click$default(llyQrcodeInvalid, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34353Q0(PayDialog.this, view);
            }
        }, 1, null);
        DialogPayBinding dialogPayBinding5 = this.binding;
        if (dialogPayBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding5 = null;
        }
        TintImageView ivClose = dialogPayBinding5.ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.n0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34354R0(PayDialog.this, view);
            }
        }, 1, null);
        DialogPayBinding dialogPayBinding6 = this.binding;
        if (dialogPayBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding6 = null;
        }
        TintTextView tvPay = dialogPayBinding6.tvPay;
        Intrinsics.checkNotNullExpressionValue(tvPay, "tvPay");
        ViewKt.click$default(tvPay, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34355S0(PayDialog.this, view);
            }
        }, 1, null);
        DialogPayBinding dialogPayBinding7 = this.binding;
        if (dialogPayBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding7;
        }
        TintTextView tvRetry = dialogPayBinding2.tvRetry;
        Intrinsics.checkNotNullExpressionValue(tvRetry, "tvRetry");
        ViewKt.click$default(tvRetry, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.p0l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PayDialog.m34356T0(PayDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: U0 */
    public final void m34379U0() {
        int indexOf$default;
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C7520R.string.pay_agreement_tips);
        String stringSafely2 = resManager.getStringSafely(C7520R.string.pay_agreement);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) stringSafely, stringSafely2, 0, false, 6, (Object) null);
        SpannableString spannableString = new SpannableString(stringSafely);
        spannableString.setSpan(new UnderLineSpan(resManager.getColor(C7996R.color.theme_primary_color_01), new Function0<Unit>() { // from class: com.onyx.android.sdk.pay.view.PayDialog$initPayAgreement$underLineSpan$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PayDialog.PayListener listener = PayDialog.this.getListener();
                if (listener != null) {
                    listener.onPaymentAgreement();
                }
            }
        }), indexOf$default, stringSafely2.length() + indexOf$default, 33);
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        dialogPayBinding.tvAgreement.setText(spannableString);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        dialogPayBinding3.tvAgreement.setMovementMethod(LinkMovementMethod.getInstance());
        DialogPayBinding dialogPayBinding4 = this.binding;
        if (dialogPayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding4;
        }
        dialogPayBinding2.tvAgreement.setHighlightColor(0);
    }

    /* renamed from: V0 */
    public final void m34380V0() {
        m34379U0();
    }

    /* renamed from: W0 */
    public final void m34381W0() {
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        WebView wvQrcode = dialogPayBinding.wvQrcode;
        Intrinsics.checkNotNullExpressionValue(wvQrcode, "wvQrcode");
        wvQrcode.setVisibility(8);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding3;
        }
        TintImageView ivQrcode = dialogPayBinding2.ivQrcode;
        Intrinsics.checkNotNullExpressionValue(ivQrcode, "ivQrcode");
        ivQrcode.setVisibility(8);
        m34370D0().loadAlipayQRCodePayInfo().observe(getViewLifecycleOwner(), new C7560b(new Function1<DataResponse<PayBean>, Unit>() { // from class: com.onyx.android.sdk.pay.view.PayDialog$loadAlipayQrCode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DataResponse<PayBean> dataResponse) {
                invoke2(dataResponse);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DataResponse<PayBean> dataResponse) {
                PayViewModel m34370D0;
                DialogPayBinding dialogPayBinding4;
                PayViewModel m34370D02;
                m34370D0 = PayDialog.this.m34370D0();
                if (m34370D0.getPayType().getValue() != PayType.ALI_PAY) {
                    return;
                }
                PayBean data = dataResponse.getData();
                dialogPayBinding4 = PayDialog.this.binding;
                if (dialogPayBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding4 = null;
                }
                WebView wvQrcode2 = dialogPayBinding4.wvQrcode;
                Intrinsics.checkNotNullExpressionValue(wvQrcode2, "wvQrcode");
                wvQrcode2.setVisibility(data != null ? 0 : 8);
                if (data != null) {
                    PayDialog.this.m34388d1(data);
                    m34370D02 = PayDialog.this.m34370D0();
                    m34370D02.checkOrderStatusFromQrcode();
                } else {
                    PayDialog.this.m34376L0();
                    PayDialog.this.m34392j1(ResManager.INSTANCE.getString(C7520R.string.qrcode_load_fail_tips));
                }
            }
        }));
    }

    /* renamed from: X0 */
    public final void m34382X0() {
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        WebView wvQrcode = dialogPayBinding.wvQrcode;
        Intrinsics.checkNotNullExpressionValue(wvQrcode, "wvQrcode");
        wvQrcode.setVisibility(8);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding3;
        }
        TintImageView ivQrcode = dialogPayBinding2.ivQrcode;
        Intrinsics.checkNotNullExpressionValue(ivQrcode, "ivQrcode");
        ivQrcode.setVisibility(0);
        m34370D0().loadWXQRCodePayInfo().observe(this, new C7560b(new Function1<DataResponse<Bitmap>, Unit>() { // from class: com.onyx.android.sdk.pay.view.PayDialog$loadWXQrcode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DataResponse<Bitmap> dataResponse) {
                invoke2(dataResponse);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DataResponse<Bitmap> dataResponse) {
                PayViewModel m34370D0;
                DialogPayBinding dialogPayBinding4;
                PayViewModel m34370D02;
                m34370D0 = PayDialog.this.m34370D0();
                if (m34370D0.getPayType().getValue() != PayType.WX_PAY) {
                    return;
                }
                PayDialog.this.m34376L0();
                dialogPayBinding4 = PayDialog.this.binding;
                if (dialogPayBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding4 = null;
                }
                dialogPayBinding4.ivQrcode.setImageBitmap(dataResponse.getData());
                if (dataResponse.getData() != null) {
                    m34370D02 = PayDialog.this.m34370D0();
                    m34370D02.checkOrderStatusFromQrcode();
                } else {
                    PayDialog.this.m34392j1(ResManager.INSTANCE.getString(C7520R.string.qrcode_load_fail_tips));
                }
            }
        }));
    }

    /* renamed from: Y0 */
    public final void m34383Y0(PayBean payBean, BasePayment payment) {
        String orderStr = payBean.getOrderStr();
        if (orderStr == null) {
            orderStr = "";
        }
        BasePayAction<PayResult> aliPayAction = payment.getAliPayAction(orderStr);
        if (aliPayAction == null) {
            return;
        }
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aliPayAction.setActivity(requireActivity).build().doOnNext(new C7559a()).subscribe();
    }

    /* renamed from: Z0 */
    public final void m34384Z0() {
        PayStatusType value = m34370D0().getPayStatusType().getValue();
        if (value == null || value == PayStatusType.CHECKING) {
            return;
        }
        PayType value2 = m34370D0().getPayType().getValue();
        if (value2 == null) {
            value2 = PayType.WX_PAY;
        }
        Intrinsics.checkNotNull(value2);
        PayResult payResult = new PayResult(value2);
        if (value == PayStatusType.PAY_SUCCESS) {
            payResult.setStatus(0);
        } else {
            payResult.setStatus(2);
        }
        PayListener payListener = this.listener;
        if (payListener != null) {
            payListener.onPayResult(payResult);
        }
        dismiss();
    }

    /* renamed from: a1 */
    public final void m34385a1() {
        if (m34370D0().getPayStatusType().getValue() != PayStatusType.ORDER_CANCEL && m34368B0()) {
            ResManager resManager = ResManager.INSTANCE;
            m34390g1(resManager.getStringSafely(C7520R.string.dialog_playing));
            final PayType value = m34370D0().getPayType().getValue();
            m34392j1(resManager.getStringSafely(C7520R.string.qrcode_invalid_tips));
            m34370D0().loadAppPayInfo().observe(getViewLifecycleOwner(), new C7560b(new Function1<DataResponse<PayBean>, Unit>() { // from class: com.onyx.android.sdk.pay.view.PayDialog$onPayFromApp$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(DataResponse<PayBean> dataResponse) {
                    invoke2(dataResponse);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DataResponse<PayBean> dataResponse) {
                    PayDialog payDialog = PayDialog.this;
                    Intrinsics.checkNotNull(dataResponse);
                    payDialog.m34371E0(dataResponse, value);
                }
            }));
        }
    }

    /* renamed from: b1 */
    public final void m34386b1() {
        if (m34370D0().getPayStatusType().getValue() != PayStatusType.ORDER_CANCEL) {
            m34396n1();
            return;
        }
        PayViewModel m34370D0 = m34370D0();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        m34370D0.createNewOrder(requireActivity);
    }

    /* renamed from: c1 */
    public final void m34387c1(PayBean payBean, BasePayment payment) {
        payment.onWechatPay(payBean);
    }

    /* renamed from: d1 */
    public final void m34388d1(PayBean payBean) {
        String orderStr = payBean.getOrderStr();
        if (orderStr == null) {
            orderStr = "";
        }
        String str = orderStr;
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        WebView wvQrcode = dialogPayBinding.wvQrcode;
        Intrinsics.checkNotNullExpressionValue(wvQrcode, "wvQrcode");
        WebSettings settings = wvQrcode.getSettings();
        Intrinsics.checkNotNullExpressionValue(settings, "getSettings(...)");
        settings.setJavaScriptEnabled(true);
        wvQrcode.setWebViewClient(new WebViewClient() { // from class: com.onyx.android.sdk.pay.view.PayDialog$showAlipayQrcode$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(@Nullable WebView view, @Nullable String url) {
                super.onPageFinished(view, url);
                PayDialog.this.m34376L0();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(@Nullable WebView view, @NotNull WebResourceRequest request, @Nullable WebResourceError error) {
                Intrinsics.checkNotNullParameter(request, "request");
                super.onReceivedError(view, request, error);
                if (request.isForMainFrame()) {
                    Integer valueOf = error != null ? Integer.valueOf(error.getErrorCode()) : null;
                    boolean z = true;
                    if ((valueOf == null || valueOf.intValue() != -2) && (valueOf == null || valueOf.intValue() != -8)) {
                        z = false;
                    }
                    if (z) {
                        PayDialog.this.m34392j1(ResManager.INSTANCE.getStringSafely(C7520R.string.load_pay_fail_tips));
                    }
                }
            }
        });
        wvQrcode.setVerticalScrollBarEnabled(false);
        wvQrcode.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.q0l
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m34357e1;
                m34357e1 = PayDialog.m34357e1(view, motionEvent);
                return m34357e1;
            }
        });
        wvQrcode.loadDataWithBaseURL(null, str, "text/html", "UTF-8", null);
    }

    /* renamed from: f1 */
    public final void m34389f1() {
        m34375K0();
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        FrameLayout flyStatus = dialogPayBinding.flyStatus;
        Intrinsics.checkNotNullExpressionValue(flyStatus, "flyStatus");
        flyStatus.setVisibility(0);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        TintTextView tintTextView = dialogPayBinding3.tvPayStatus;
        ResManager resManager = ResManager.INSTANCE;
        tintTextView.setText(resManager.getString(C7520R.string.load_pay_fail));
        DialogPayBinding dialogPayBinding4 = this.binding;
        if (dialogPayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding4 = null;
        }
        dialogPayBinding4.tvPayStatusTips.setText(resManager.getString(C7520R.string.load_pay_fail_tips));
        DialogPayBinding dialogPayBinding5 = this.binding;
        if (dialogPayBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding5;
        }
        dialogPayBinding2.ivPayStatus.setImageDrawable(resManager.getDrawable(C7520R.drawable.ic_pay_fail));
    }

    /* renamed from: g1 */
    public final void m34390g1(String title) {
        if (title == null) {
            title = ResManager.INSTANCE.getStringSafely(C7520R.string.dialog_loading);
        }
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        FrameLayout flyLoading = dialogPayBinding.flyLoading;
        Intrinsics.checkNotNullExpressionValue(flyLoading, "flyLoading");
        flyLoading.setVisibility(0);
        DialogPayBinding dialogPayBinding2 = this.binding;
        if (dialogPayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding2 = null;
        }
        dialogPayBinding2.tvLoading.setText(title);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        Drawable background = dialogPayBinding3.ivLoading.getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    @Nullable
    public final PayListener getListener() {
        return this.listener;
    }

    @NotNull
    public final OrderArgs getOrderArgs() {
        return this.orderArgs;
    }

    /* renamed from: i1 */
    public final void m34391i1() {
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        TintLinearLayout llyQrcodeInvalid = dialogPayBinding.llyQrcodeInvalid;
        Intrinsics.checkNotNullExpressionValue(llyQrcodeInvalid, "llyQrcodeInvalid");
        llyQrcodeInvalid.setVisibility(8);
        DialogPayBinding dialogPayBinding2 = this.binding;
        if (dialogPayBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding2 = null;
        }
        FrameLayout flyQrcodeLoading = dialogPayBinding2.flyQrcodeLoading;
        Intrinsics.checkNotNullExpressionValue(flyQrcodeLoading, "flyQrcodeLoading");
        flyQrcodeLoading.setVisibility(0);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        Drawable background = dialogPayBinding3.ivQrcodeLoading.getBackground();
        AnimationDrawable animationDrawable = background instanceof AnimationDrawable ? (AnimationDrawable) background : null;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    /* renamed from: j1 */
    public final void m34392j1(String tips) {
        int indexOf$default;
        if (tips == null) {
            tips = "";
        }
        String str = tips;
        String stringSafely = ResManager.INSTANCE.getStringSafely(C7520R.string.qrcode_refresh);
        SpannableString spannableString = new SpannableString(str);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, stringSafely, 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            spannableString.setSpan(new ClickableSpan() { // from class: com.onyx.android.sdk.pay.view.PayDialog$showQrcodeTips$1
                @Override // android.text.style.ClickableSpan
                public void onClick(@NotNull View widget) {
                    Intrinsics.checkNotNullParameter(widget, "widget");
                }

                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(@NotNull TextPaint ds) {
                    Intrinsics.checkNotNullParameter(ds, "ds");
                    ds.setColor(ResManager.INSTANCE.getColor(C7996R.color.theme_primary_color_01));
                    ds.setUnderlineText(true);
                }
            }, indexOf$default, stringSafely.length() + indexOf$default, 33);
        }
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        dialogPayBinding.tvQrcodeTips.setText(spannableString);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding3;
        }
        TintLinearLayout llyQrcodeInvalid = dialogPayBinding2.llyQrcodeInvalid;
        Intrinsics.checkNotNullExpressionValue(llyQrcodeInvalid, "llyQrcodeInvalid");
        llyQrcodeInvalid.setVisibility(0);
    }

    /* renamed from: k1 */
    public final void m34393k1(PayModel model) {
        OrderBean orderBean = model.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER java.lang.String();
        if (orderBean == null || orderBean.isPaid()) {
            return;
        }
        if (orderBean.isUnpaid() && (orderBean.isHuaweiIapPayEnabled() || orderBean.isGooglePayEnable())) {
            m34385a1();
            return;
        }
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        dialogPayBinding.tvOrderName.setText(orderBean.getProductName());
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        dialogPayBinding3.tvActualPrice.setText((char) 165 + orderBean.getFinalAmount());
        DialogPayBinding dialogPayBinding4 = this.binding;
        if (dialogPayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding4 = null;
        }
        dialogPayBinding4.tvOriginalPrice.setText((char) 165 + orderBean.getTotalAmount());
        DialogPayBinding dialogPayBinding5 = this.binding;
        if (dialogPayBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding5 = null;
        }
        TintTextView tvOriginalPrice = dialogPayBinding5.tvOriginalPrice;
        Intrinsics.checkNotNullExpressionValue(tvOriginalPrice, "tvOriginalPrice");
        tvOriginalPrice.setVisibility(Intrinsics.areEqual(orderBean.getFinalAmount(), orderBean.getTotalAmount()) ^ true ? 0 : 8);
        DialogPayBinding dialogPayBinding6 = this.binding;
        if (dialogPayBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding6 = null;
        }
        dialogPayBinding6.tvOriginalPrice.getPaint().setFlags(16);
        DialogPayBinding dialogPayBinding7 = this.binding;
        if (dialogPayBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogPayBinding2 = dialogPayBinding7;
        }
        dialogPayBinding2.tvOriginalPrice.getPaint().setAntiAlias(true);
        if (orderBean.isUnpaid()) {
            m34396n1();
        }
    }

    /* renamed from: l1 */
    public final void m34394l1(PayStatusType type) {
        if (type == PayStatusType.PAYING) {
            m34397z0();
        } else {
            m34369C0();
        }
        DialogPayBinding dialogPayBinding = null;
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
            case 2:
                DialogPayBinding dialogPayBinding2 = this.binding;
                if (dialogPayBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding2 = null;
                }
                FrameLayout flyStatus = dialogPayBinding2.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus, "flyStatus");
                flyStatus.setVisibility(8);
                DialogPayBinding dialogPayBinding3 = this.binding;
                if (dialogPayBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding3 = null;
                }
                LinearLayout llyPayContain = dialogPayBinding3.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain, "llyPayContain");
                llyPayContain.setVisibility(4);
                m34358h1(this, null, 1, null);
                return;
            case 3:
                m34389f1();
                return;
            case 4:
                DialogPayBinding dialogPayBinding4 = this.binding;
                if (dialogPayBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding4 = null;
                }
                FrameLayout flyStatus2 = dialogPayBinding4.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus2, "flyStatus");
                flyStatus2.setVisibility(8);
                DialogPayBinding dialogPayBinding5 = this.binding;
                if (dialogPayBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding5;
                }
                LinearLayout llyPayContain2 = dialogPayBinding.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain2, "llyPayContain");
                llyPayContain2.setVisibility(0);
                m34375K0();
                return;
            case 5:
                m34390g1(ResManager.INSTANCE.getString(C7520R.string.dialog_playing));
                return;
            case 6:
                DialogPayBinding dialogPayBinding6 = this.binding;
                if (dialogPayBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding6 = null;
                }
                LinearLayout llyPayContain3 = dialogPayBinding6.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain3, "llyPayContain");
                llyPayContain3.setVisibility(4);
                DialogPayBinding dialogPayBinding7 = this.binding;
                if (dialogPayBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding7 = null;
                }
                FrameLayout flyStatus3 = dialogPayBinding7.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus3, "flyStatus");
                flyStatus3.setVisibility(0);
                DialogPayBinding dialogPayBinding8 = this.binding;
                if (dialogPayBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding8 = null;
                }
                TintImageView tintImageView = dialogPayBinding8.ivPayStatus;
                ResManager resManager = ResManager.INSTANCE;
                tintImageView.setImageDrawable(resManager.getDrawable(C7520R.drawable.ic_pay_fail));
                DialogPayBinding dialogPayBinding9 = this.binding;
                if (dialogPayBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding9 = null;
                }
                dialogPayBinding9.tvPayStatus.setText(resManager.getStringSafely(C7520R.string.pay_fail));
                DialogPayBinding dialogPayBinding10 = this.binding;
                if (dialogPayBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding10 = null;
                }
                dialogPayBinding10.tvPayStatusTips.setText(resManager.getStringSafely(C7520R.string.pay_fail_tips));
                DialogPayBinding dialogPayBinding11 = this.binding;
                if (dialogPayBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding11 = null;
                }
                TintTextView tvPayStatusTips = dialogPayBinding11.tvPayStatusTips;
                Intrinsics.checkNotNullExpressionValue(tvPayStatusTips, "tvPayStatusTips");
                tvPayStatusTips.setVisibility(0);
                DialogPayBinding dialogPayBinding12 = this.binding;
                if (dialogPayBinding12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding12 = null;
                }
                TintTextView tvRetry = dialogPayBinding12.tvRetry;
                Intrinsics.checkNotNullExpressionValue(tvRetry, "tvRetry");
                tvRetry.setVisibility(0);
                DialogPayBinding dialogPayBinding13 = this.binding;
                if (dialogPayBinding13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding13;
                }
                TintTextView tvPayErrorMessage = dialogPayBinding.tvPayErrorMessage;
                Intrinsics.checkNotNullExpressionValue(tvPayErrorMessage, "tvPayErrorMessage");
                tvPayErrorMessage.setVisibility(8);
                m34375K0();
                return;
            case 7:
                DialogPayBinding dialogPayBinding14 = this.binding;
                if (dialogPayBinding14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding14 = null;
                }
                LinearLayout llyPayContain4 = dialogPayBinding14.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain4, "llyPayContain");
                llyPayContain4.setVisibility(4);
                DialogPayBinding dialogPayBinding15 = this.binding;
                if (dialogPayBinding15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding15 = null;
                }
                FrameLayout flyStatus4 = dialogPayBinding15.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus4, "flyStatus");
                flyStatus4.setVisibility(0);
                DialogPayBinding dialogPayBinding16 = this.binding;
                if (dialogPayBinding16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding16 = null;
                }
                dialogPayBinding16.ivPayStatus.setImageDrawable(ResManager.INSTANCE.getDrawable(C7520R.drawable.ic_pay_fail));
                DialogPayBinding dialogPayBinding17 = this.binding;
                if (dialogPayBinding17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding17 = null;
                }
                TintTextView tvPayStatus = dialogPayBinding17.tvPayStatus;
                Intrinsics.checkNotNullExpressionValue(tvPayStatus, "tvPayStatus");
                tvPayStatus.setVisibility(8);
                DialogPayBinding dialogPayBinding18 = this.binding;
                if (dialogPayBinding18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding18 = null;
                }
                TintTextView tvPayStatusTips2 = dialogPayBinding18.tvPayStatusTips;
                Intrinsics.checkNotNullExpressionValue(tvPayStatusTips2, "tvPayStatusTips");
                tvPayStatusTips2.setVisibility(8);
                DialogPayBinding dialogPayBinding19 = this.binding;
                if (dialogPayBinding19 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding19 = null;
                }
                TintTextView tvRetry2 = dialogPayBinding19.tvRetry;
                Intrinsics.checkNotNullExpressionValue(tvRetry2, "tvRetry");
                tvRetry2.setVisibility(8);
                DialogPayBinding dialogPayBinding20 = this.binding;
                if (dialogPayBinding20 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding20;
                }
                TintTextView tvPayErrorMessage2 = dialogPayBinding.tvPayErrorMessage;
                Intrinsics.checkNotNullExpressionValue(tvPayErrorMessage2, "tvPayErrorMessage");
                tvPayErrorMessage2.setVisibility(0);
                m34375K0();
                return;
            case 8:
                DialogPayBinding dialogPayBinding21 = this.binding;
                if (dialogPayBinding21 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding21 = null;
                }
                LinearLayout llyPayContain5 = dialogPayBinding21.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain5, "llyPayContain");
                llyPayContain5.setVisibility(4);
                DialogPayBinding dialogPayBinding22 = this.binding;
                if (dialogPayBinding22 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding22 = null;
                }
                FrameLayout flyStatus5 = dialogPayBinding22.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus5, "flyStatus");
                flyStatus5.setVisibility(0);
                DialogPayBinding dialogPayBinding23 = this.binding;
                if (dialogPayBinding23 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding23 = null;
                }
                TintImageView tintImageView2 = dialogPayBinding23.ivPayStatus;
                ResManager resManager2 = ResManager.INSTANCE;
                tintImageView2.setImageDrawable(resManager2.getDrawable(C7520R.drawable.ic_pay_success));
                DialogPayBinding dialogPayBinding24 = this.binding;
                if (dialogPayBinding24 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding24 = null;
                }
                dialogPayBinding24.tvPayStatus.setText(resManager2.getStringSafely(C7520R.string.pay_success));
                DialogPayBinding dialogPayBinding25 = this.binding;
                if (dialogPayBinding25 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding25 = null;
                }
                TintTextView tvPayStatusTips3 = dialogPayBinding25.tvPayStatusTips;
                Intrinsics.checkNotNullExpressionValue(tvPayStatusTips3, "tvPayStatusTips");
                tvPayStatusTips3.setVisibility(8);
                DialogPayBinding dialogPayBinding26 = this.binding;
                if (dialogPayBinding26 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding26 = null;
                }
                TintTextView tvRetry3 = dialogPayBinding26.tvRetry;
                Intrinsics.checkNotNullExpressionValue(tvRetry3, "tvRetry");
                tvRetry3.setVisibility(8);
                DialogPayBinding dialogPayBinding27 = this.binding;
                if (dialogPayBinding27 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding27;
                }
                TintTextView tvPayErrorMessage3 = dialogPayBinding.tvPayErrorMessage;
                Intrinsics.checkNotNullExpressionValue(tvPayErrorMessage3, "tvPayErrorMessage");
                tvPayErrorMessage3.setVisibility(8);
                m34375K0();
                return;
            case 9:
                DialogPayBinding dialogPayBinding28 = this.binding;
                if (dialogPayBinding28 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding28 = null;
                }
                LinearLayout llyPayContain6 = dialogPayBinding28.llyPayContain;
                Intrinsics.checkNotNullExpressionValue(llyPayContain6, "llyPayContain");
                llyPayContain6.setVisibility(4);
                DialogPayBinding dialogPayBinding29 = this.binding;
                if (dialogPayBinding29 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding29 = null;
                }
                FrameLayout flyStatus6 = dialogPayBinding29.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus6, "flyStatus");
                flyStatus6.setVisibility(0);
                DialogPayBinding dialogPayBinding30 = this.binding;
                if (dialogPayBinding30 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding30 = null;
                }
                TintImageView tintImageView3 = dialogPayBinding30.ivPayStatus;
                ResManager resManager3 = ResManager.INSTANCE;
                tintImageView3.setImageDrawable(resManager3.getDrawable(C7520R.drawable.ic_pay_fail));
                DialogPayBinding dialogPayBinding31 = this.binding;
                if (dialogPayBinding31 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding31 = null;
                }
                TintTextView tvPayStatus2 = dialogPayBinding31.tvPayStatus;
                Intrinsics.checkNotNullExpressionValue(tvPayStatus2, "tvPayStatus");
                tvPayStatus2.setVisibility(8);
                DialogPayBinding dialogPayBinding32 = this.binding;
                if (dialogPayBinding32 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding32 = null;
                }
                TintTextView tvPayStatusTips4 = dialogPayBinding32.tvPayStatusTips;
                Intrinsics.checkNotNullExpressionValue(tvPayStatusTips4, "tvPayStatusTips");
                tvPayStatusTips4.setVisibility(8);
                DialogPayBinding dialogPayBinding33 = this.binding;
                if (dialogPayBinding33 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding33 = null;
                }
                TintTextView tvRetry4 = dialogPayBinding33.tvRetry;
                Intrinsics.checkNotNullExpressionValue(tvRetry4, "tvRetry");
                tvRetry4.setVisibility(8);
                DialogPayBinding dialogPayBinding34 = this.binding;
                if (dialogPayBinding34 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding34 = null;
                }
                TintTextView tvPayErrorMessage4 = dialogPayBinding34.tvPayErrorMessage;
                Intrinsics.checkNotNullExpressionValue(tvPayErrorMessage4, "tvPayErrorMessage");
                tvPayErrorMessage4.setVisibility(0);
                DialogPayBinding dialogPayBinding35 = this.binding;
                if (dialogPayBinding35 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding35;
                }
                dialogPayBinding.tvPayErrorMessage.setText(resManager3.getStringSafely(C7520R.string.pay_success_later_remind));
                m34375K0();
                return;
            case 10:
                DialogPayBinding dialogPayBinding36 = this.binding;
                if (dialogPayBinding36 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogPayBinding36 = null;
                }
                FrameLayout flyStatus7 = dialogPayBinding36.flyStatus;
                Intrinsics.checkNotNullExpressionValue(flyStatus7, "flyStatus");
                flyStatus7.setVisibility(8);
                DialogPayBinding dialogPayBinding37 = this.binding;
                if (dialogPayBinding37 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogPayBinding = dialogPayBinding37;
                }
                dialogPayBinding.llyPayContain.setVisibility(0);
                m34375K0();
                m34392j1(ResManager.INSTANCE.getString(C7520R.string.order_close_tips));
                return;
            default:
                return;
        }
    }

    /* renamed from: m1 */
    public final void m34395m1(PayType payType) {
        OrderBean orderBean;
        m34370D0().updatePayment(payType);
        DialogPayBinding dialogPayBinding = this.binding;
        DialogPayBinding dialogPayBinding2 = null;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        LinearLayout linearLayout = dialogPayBinding.llyAliPay;
        PayType payType2 = PayType.ALI_PAY;
        linearLayout.setSelected(payType == payType2);
        DialogPayBinding dialogPayBinding3 = this.binding;
        if (dialogPayBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding3 = null;
        }
        View viewAliLine = dialogPayBinding3.viewAliLine;
        Intrinsics.checkNotNullExpressionValue(viewAliLine, "viewAliLine");
        viewAliLine.setVisibility(payType == payType2 ? 0 : 8);
        DialogPayBinding dialogPayBinding4 = this.binding;
        if (dialogPayBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding4 = null;
        }
        LinearLayout linearLayout2 = dialogPayBinding4.llyWechatPay;
        PayType payType3 = PayType.WX_PAY;
        linearLayout2.setSelected(payType == payType3);
        DialogPayBinding dialogPayBinding5 = this.binding;
        if (dialogPayBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding5 = null;
        }
        View viewWechatLine = dialogPayBinding5.viewWechatLine;
        Intrinsics.checkNotNullExpressionValue(viewWechatLine, "viewWechatLine");
        viewWechatLine.setVisibility(payType == payType3 ? 0 : 8);
        DialogPayBinding dialogPayBinding6 = this.binding;
        if (dialogPayBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding6 = null;
        }
        dialogPayBinding6.flyQrcode.setSelected(payType == payType2);
        if (payType == payType2) {
            DialogPayBinding dialogPayBinding7 = this.binding;
            if (dialogPayBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogPayBinding2 = dialogPayBinding7;
            }
            dialogPayBinding2.tvPay.setText(getString(C7520R.string.alipay_app_pay));
        } else {
            DialogPayBinding dialogPayBinding8 = this.binding;
            if (dialogPayBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogPayBinding2 = dialogPayBinding8;
            }
            dialogPayBinding2.tvPay.setText(getString(C7520R.string.wechat_app_pay));
        }
        PayModel value = m34370D0().getPayModel().getValue();
        if (value == null || (orderBean = value.getCom.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER java.lang.String()) == null || !orderBean.isUnpaid()) {
            return;
        }
        m34396n1();
    }

    /* renamed from: n1 */
    public final void m34396n1() {
        m34391i1();
        if (m34370D0().getPayType().getValue() == PayType.ALI_PAY) {
            m34381W0();
        } else if (m34370D0().getPayType().getValue() == PayType.WX_PAY) {
            m34382X0();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063342, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogPayBinding inflate = DialogPayBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        PayBundle.INSTANCE.unRegister(this);
        DialogPayBinding dialogPayBinding = this.binding;
        if (dialogPayBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogPayBinding = null;
        }
        dialogPayBinding.wvQrcode.destroy();
        m34370D0().clean();
        m34369C0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPayResultEvent(@NotNull PayResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m34372F0(event.getCom.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING java.lang.String());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        String orderId = this.orderArgs.getOrderId();
        if (orderId == null || orderId.length() == 0) {
            dismiss();
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            DialogKt.setLayout(dialog, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_560), -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        m34380V0();
        m34378N0();
        m34377M0();
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCanceledOnTouchOutside(false);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null) {
            dialog4.setCancelable(false);
        }
        this.viewTime = System.currentTimeMillis();
    }

    public final void setListener(@Nullable PayListener payListener) {
        this.listener = payListener;
    }

    /* renamed from: z0 */
    public final void m34397z0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.addFlags(8192);
    }

    public PayDialog(@NotNull OrderArgs orderArgs) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(orderArgs, "orderArgs");
        this.orderArgs = orderArgs;
        this.orderId = orderArgs.getOrderId();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PayViewModel>() { // from class: com.onyx.android.sdk.pay.view.PayDialog$viewmodel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PayViewModel invoke() {
                return (PayViewModel) FragmentKt.getViewModel(PayDialog.this, PayViewModel.class);
            }
        });
        this.viewmodel = lazy;
    }

    public /* synthetic */ PayDialog(OrderArgs orderArgs, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new OrderArgs() : orderArgs);
    }
}
