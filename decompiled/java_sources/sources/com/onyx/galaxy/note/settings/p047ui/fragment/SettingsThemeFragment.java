package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.FragmentActivityKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.theme.ThemeProduceBean;
import com.onyx.android.sdk.event.StatisticsAppThemeEvent;
import com.onyx.android.sdk.extension.ActivityExtKt;
import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.event.PaymentThemeEvent;
import com.onyx.android.sdk.theme.SkinBean;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.common.events.ThemeChangedEvent;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.base.BaseFragment;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.FragmentSettingsThemeBinding;
import com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction;
import com.onyx.galaxy.note.editor.view.adapter.ThemeAdapter;
import com.onyx.galaxy.note.member.action.OpenMemberChargeAction;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.p047ui.fragment.SettingsThemeFragment;
import com.onyx.galaxy.note.settings.viewmodel.SettingsThemeViewModel;
import com.onyx.galaxy.note.utils.ThemeExt;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010 \u001a\u0004\b+\u0010,¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsThemeFragment;", "Lcom/onyx/galaxy/note/common/base/BaseFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "Lcom/onyx/android/sdk/pay/event/PaymentThemeEvent;", NotificationCompat.CATEGORY_EVENT, "onPaymentThemeChange", "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;", "onThemeChangedEvent", "r0", "Lcom/onyx/android/sdk/theme/SkinBean;", "skinBean", "m0", "w0", "q0", "x0", "s0", "u0", "v0", "Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "d1", "Lkotlin/Lazy;", "o0", "()Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;", "themeAdapter", "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;", "e1", "p0", "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;", "viewModel", "Lcom/onyx/galaxy/note/databinding/FragmentSettingsThemeBinding;", "f1", "n0", "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsThemeBinding;", "binding", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class SettingsThemeFragment extends BaseFragment {

    /* renamed from: d1, reason: from kotlin metadata */
    @NotNull
    public final Lazy themeAdapter;

    /* renamed from: e1, reason: from kotlin metadata */
    @NotNull
    public final Lazy viewModel;

    /* renamed from: f1, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$a */
    /* loaded from: classes9.dex */
    public static final class C12731a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ PaymentThemeEvent f61749f;

        public C12731a(PaymentThemeEvent paymentThemeEvent) {
            this.f61749f = paymentThemeEvent;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ThemePaymentInfoAction it2) {
            SkinType themeByType;
            SkinBean skinBean;
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsThemeFragment.this.m51137p0().setPaymentEnable(it2.getIsPaymentEnable());
            SettingsThemeFragment.this.m51137p0().setHasPayment(it2.getHasPayment());
            SettingsThemeFragment.this.m51136o0().setHasPayment(SettingsThemeFragment.this.m51137p0().getHasPayment());
            SettingsThemeFragment.this.m51137p0().setProductInfoBean(it2.getProductBean());
            if (!SettingsThemeFragment.this.m51137p0().getIsPaymentEnable() || !SettingsThemeFragment.this.m51137p0().getHasPayment() || (themeByType = SkinType.INSTANCE.getThemeByType(this.f61749f.getSkinTypeValue())) == null || (skinBean = themeByType.toSkinBean()) == null) {
                return;
            }
            SettingsThemeFragment.this.m51144x0(skinBean);
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$b */
    /* loaded from: classes9.dex */
    public static final class C12732b implements Observer, FunctionAdapter {

        /* renamed from: a */
        public final /* synthetic */ Function1 f61750a;

        public C12732b(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f61750a = function;
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
            return this.f61750a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f61750a.invoke(obj);
        }
    }

    public SettingsThemeFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ThemeAdapter>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$themeAdapter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ThemeAdapter invoke() {
                return new ThemeAdapter();
            }
        });
        this.themeAdapter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<SettingsThemeViewModel>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$viewModel$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SettingsThemeViewModel invoke() {
                FragmentActivity requireActivity = SettingsThemeFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
                return (SettingsThemeViewModel) FragmentActivityKt.getViewModel(requireActivity, SettingsThemeViewModel.class);
            }
        });
        this.viewModel = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<FragmentSettingsThemeBinding>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FragmentSettingsThemeBinding invoke() {
                return FragmentSettingsThemeBinding.inflate(SettingsThemeFragment.this.getLayoutInflater());
            }
        });
        this.binding = lazy3;
    }

    /* renamed from: t0 */
    public static final void m51133t0(BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        SkinBean skinBean = (SkinBean) adapter.getItem(i);
        if (skinBean == null) {
            return;
        }
        skinBean.getThemeType();
    }

    /* renamed from: m0 */
    public final void m51134m0(SkinBean skinBean) {
        if (skinBean.getThemeStyle().isVipStyle()) {
            if (AccountDataBundle.INSTANCE.isVIPPermanent()) {
                m51144x0(skinBean);
                return;
            } else {
                m51142v0(skinBean);
                return;
            }
        }
        if (m51137p0().getHasPayment()) {
            m51144x0(skinBean);
        } else {
            m51143w0(skinBean);
        }
    }

    /* renamed from: n0 */
    public final FragmentSettingsThemeBinding m51135n0() {
        return (FragmentSettingsThemeBinding) this.binding.getValue();
    }

    /* renamed from: o0 */
    public final ThemeAdapter m51136o0() {
        return (ThemeAdapter) this.themeAdapter.getValue();
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063265, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View root = m51135n0().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        GlobalBundle.INSTANCE.unregister(this);
        PayBundle.INSTANCE.unRegister(this);
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onPaymentThemeChange(@NotNull PaymentThemeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Observable<ThemePaymentInfoAction> doOnNext = new ThemePaymentInfoAction().build().doOnNext(new C12731a(event));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        RxjavaKt.subscribeWithDefault$default(doOnNext, null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onThemeChangedEvent(@NotNull ThemeChangedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (ThemeUtils.getTheme().getThemeType() != m51136o0().getSelectTheme()) {
            m51136o0().setSelectTheme(ThemeUtils.getTheme().getThemeType());
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        m51141u0();
        m51140s0();
        m51139r0();
        GlobalBundle.INSTANCE.register(this);
        PayBundle.INSTANCE.register(this);
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }

    /* renamed from: p0 */
    public final SettingsThemeViewModel m51137p0() {
        return (SettingsThemeViewModel) this.viewModel.getValue();
    }

    /* renamed from: q0 */
    public final void m51138q0(SkinBean skinBean) {
        if (m51137p0().getProductInfoBean() == null) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.failed_to_get_product_info), false, 2, (Object) null);
            return;
        }
        ThemeProduceBean productInfoBean = m51137p0().getProductInfoBean();
        Intrinsics.checkNotNull(productInfoBean);
        if (!(productInfoBean.getProductId().length() == 0)) {
            ThemeProduceBean productInfoBean2 = m51137p0().getProductInfoBean();
            Intrinsics.checkNotNull(productInfoBean2);
            if (productInfoBean2.getType() >= 0) {
                BasePayment findIapPayment = PayBundle.INSTANCE.findIapPayment();
                if (findIapPayment != null) {
                    Context context = getContext();
                    ThemeProduceBean productInfoBean3 = m51137p0().getProductInfoBean();
                    Intrinsics.checkNotNull(productInfoBean3);
                    String productId = productInfoBean3.getProductId();
                    ThemeProduceBean productInfoBean4 = m51137p0().getProductInfoBean();
                    Intrinsics.checkNotNull(productInfoBean4);
                    findIapPayment.gotoThemePaymentActivity(context, productId, productInfoBean4.getType(), skinBean.getThemeType());
                    return;
                }
                return;
            }
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) ResManager.INSTANCE.getStringSafely(C10651R.string.failed_to_get_product_info), false, 2, (Object) null);
    }

    /* renamed from: r0 */
    public final void m51139r0() {
        m51137p0().initPayment();
        m51137p0().getThemeDisplayList().observe(getViewLifecycleOwner(), new C12732b(new Function1<List<? extends SkinBean>, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$initDisplayList$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends SkinBean> list) {
                invoke2((List<SkinBean>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(List<SkinBean> list) {
                SettingsThemeFragment.this.m51136o0().setHasPayment(SettingsThemeFragment.this.m51137p0().getHasPayment());
                SettingsThemeFragment.this.m51136o0().submitList(list);
            }
        }));
    }

    /* renamed from: s0 */
    public final void m51140s0() {
        m51136o0().setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.dlm
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SettingsThemeFragment.m51133t0(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: u0 */
    public final void m51141u0() {
        m51135n0().rlThemeList.setAdapter(m51136o0());
        m51136o0().setSelectTheme(ThemeUtils.getTheme().getThemeType());
        m51136o0().setCallback(new Function1<SkinBean, Unit>() { // from class: com.onyx.galaxy.note.settings.ui.fragment.SettingsThemeFragment$initView$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SkinBean skinBean) {
                invoke2(skinBean);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SkinBean skinBean) {
                Intrinsics.checkNotNullParameter(skinBean, "skinBean");
                if (skinBean.isFree()) {
                    SettingsThemeFragment.this.m51144x0(skinBean);
                } else {
                    SettingsThemeFragment.this.m51134m0(skinBean);
                }
            }
        });
    }

    /* renamed from: v0 */
    public final void m51142v0(SkinBean skinBean) {
        FeatureChargeArgs featureChargeArgs = new FeatureChargeArgs();
        featureChargeArgs.setFunctionFrom(OnyxStatisticConstant.TRIGGER_SYSTEMSETTING_PROSTYLE + skinBean.getThemeType());
        OpenMemberChargeAction openMemberChargeAction = new OpenMemberChargeAction(featureChargeArgs);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        RxBaseAction.execute$default(openMemberChargeAction.setActivityContext(requireActivity), null, null, null, 7, null);
    }

    /* renamed from: w0 */
    public final void m51143w0(SkinBean skinBean) {
        m51138q0(skinBean);
    }

    /* renamed from: x0 */
    public final void m51144x0(SkinBean skinBean) {
        m51136o0().setSelectTheme(skinBean.getThemeType());
        ThemeExt.INSTANCE.resetTheme(skinBean.getThemeType(), m51135n0().getRoot());
        StatisticsBundle statisticsBundle = StatisticsBundle.INSTANCE;
        String string = ResManager.INSTANCE.getString(skinBean.getTitle());
        if (string == null) {
            string = "";
        }
        statisticsBundle.postEvent(new StatisticsAppThemeEvent(string));
        GlobalBundle.INSTANCE.postEvent(new ThemeChangedEvent());
        ActivityExtKt.updateFullScreenStyle(NoteConfigManager.INSTANCE.getScreenOnOption().get());
    }
}
