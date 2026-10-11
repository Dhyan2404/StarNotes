package com.onyx.galaxy.note.member.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.StringMap;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.action.ReloadAccountAction;
import com.onyx.android.sdk.data.account.event.VipRoleChanged;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.event.StatisticMemberPayDialogClickEvent;
import com.onyx.android.sdk.extension.DialogKt;
import com.onyx.android.sdk.extension.RecyclerViewKt;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.pay.PayBundle;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.bean.ProductInfoBean;
import com.onyx.android.sdk.pay.data.CreateOrderArgs;
import com.onyx.android.sdk.pay.data.OrderArgs;
import com.onyx.android.sdk.pay.data.OrderProductArgs;
import com.onyx.android.sdk.pay.data.PayResult;
import com.onyx.android.sdk.pay.view.PayDialog;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.PolicyType;
import com.onyx.galaxy.note.account.view.dialog.PolicyDialog;
import com.onyx.galaxy.note.common.action.PayAction;
import com.onyx.galaxy.note.common.data.NavigationType;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.databinding.DialogChargeFeatureBinding;
import com.onyx.galaxy.note.member.action.CreateOrderAction;
import com.onyx.galaxy.note.member.adapter.FeatureAdapter;
import com.onyx.galaxy.note.member.adapter.FeatureResourceAdapter;
import com.onyx.galaxy.note.member.data.ChargeFeatureBean;
import com.onyx.galaxy.note.member.data.ChargeGuide;
import com.onyx.galaxy.note.member.data.ChargeProduct;
import com.onyx.galaxy.note.member.data.Feature;
import com.onyx.galaxy.note.member.data.FeatureChargeArgs;
import com.onyx.galaxy.note.member.data.FeatureResource;
import com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog;
import com.onyx.galaxy.note.member.utils.ChargeStatisticUtils;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;
import com.onyx.galaxy.note.utils.Navigator;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.sod;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 F2\u00020\u0001:\u0001FB\u0007¢\u0006\u0004\bD\u0010EJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0002H\u0002J\b\u0010\u0014\u001a\u00020\u0002H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0002H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\b\u0010\u001a\u001a\u00020\u0002H\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J$\u0010$\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020#2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\b\u0010(\u001a\u00020\u0002H\u0016R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010?\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006G"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;", "Landroidx/fragment/app/DialogFragment;", "", "J0", "I0", "A0", "C0", "H0", "D0", "z0", "U0", "S0", "V0", "Lcom/onyx/galaxy/note/member/data/ChargeProduct;", sod.f84370x, "K0", "", FirebaseAnalytics.Param.INDEX, "T0", "L0", "M0", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", Constants.ATTRNAME_ORDER, "P0", "Q0", "O0", "y0", "", "x0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/os/Bundle;", C1126e.f7693h, "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onPause", "onDestroy", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "z1", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "chargeFeature", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "A1", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "featureChargeArgs", "Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;", "B1", "Lcom/onyx/galaxy/note/databinding/DialogChargeFeatureBinding;", "binding", "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;", "C1", "Lcom/onyx/galaxy/note/member/adapter/FeatureAdapter;", "featuresAdapter", "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;", "D1", "Lcom/onyx/galaxy/note/member/adapter/FeatureResourceAdapter;", "featuresResourceAdapter", "E1", "J", "viewTime", "Lcom/onyx/galaxy/note/member/data/Feature;", "F1", "Lcom/onyx/galaxy/note/member/data/Feature;", "currentFeature", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,383:1\n256#2,2:384\n256#2,2:386\n256#2,2:388\n256#2,2:394\n256#2,2:396\n256#2,2:398\n256#2,2:400\n1549#3:390\n1620#3,3:391\n215#4,2:402\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog\n*L\n202#1:384,2\n209#1:386,2\n217#1:388,2\n236#1:394,2\n244#1:396,2\n247#1:398,2\n255#1:400,2\n228#1:390\n228#1:391,3\n289#1:402,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ChargeFeatureDialog extends DialogFragment {
    public static final long CHARGE_CLICK_DURATION = 3000;

    @NotNull
    public static final String CHARGE_FEATURE_ARGS_DATA = "CHARGE_FEATURE_ARGS_DATA";

    @NotNull
    public static final String CHARGE_FEATURE_DATA = "CHARGE_FEATURE_DATA";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A1, reason: from kotlin metadata */
    public FeatureChargeArgs featureChargeArgs;

    /* renamed from: B1, reason: from kotlin metadata */
    public DialogChargeFeatureBinding binding;

    /* renamed from: C1, reason: from kotlin metadata */
    public FeatureAdapter featuresAdapter;

    /* renamed from: D1, reason: from kotlin metadata */
    public FeatureResourceAdapter featuresResourceAdapter;

    /* renamed from: E1, reason: from kotlin metadata */
    public long viewTime;

    /* renamed from: F1, reason: from kotlin metadata */
    @Nullable
    public Feature currentFeature;

    /* renamed from: z1, reason: from kotlin metadata */
    public ChargeFeatureBean chargeFeature;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;", "", "()V", "CHARGE_CLICK_DURATION", "", ChargeFeatureDialog.CHARGE_FEATURE_ARGS_DATA, "", ChargeFeatureDialog.CHARGE_FEATURE_DATA, "createChargeFeatureDialog", "Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;", "chargeFeature", "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;", "featureChargeArgs", "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ChargeFeatureDialog createChargeFeatureDialog(@NotNull ChargeFeatureBean chargeFeature, @NotNull FeatureChargeArgs featureChargeArgs) {
            Intrinsics.checkNotNullParameter(chargeFeature, "chargeFeature");
            Intrinsics.checkNotNullParameter(featureChargeArgs, "featureChargeArgs");
            Bundle bundle = new Bundle();
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            bundle.putString(ChargeFeatureDialog.CHARGE_FEATURE_DATA, jSONUtils.toJson(chargeFeature));
            bundle.putString(ChargeFeatureDialog.CHARGE_FEATURE_ARGS_DATA, jSONUtils.toJson(featureChargeArgs));
            ChargeFeatureDialog chargeFeatureDialog = new ChargeFeatureDialog();
            chargeFeatureDialog.setArguments(bundle);
            return chargeFeatureDialog;
        }

        public Companion() {
        }
    }

    @SourceDebugExtension({"SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,383:1\n256#2,2:384\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$1\n*L\n261#1:384,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$a */
    /* loaded from: classes9.dex */
    public static final class C12605a<T> implements Consumer {
        public C12605a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<ProductInfoBean> it2) {
            Object firstOrNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
            ProductInfoBean productInfoBean = (ProductInfoBean) firstOrNull;
            DialogChargeFeatureBinding dialogChargeFeatureBinding = null;
            if (productInfoBean != null) {
                DialogChargeFeatureBinding dialogChargeFeatureBinding2 = ChargeFeatureDialog.this.binding;
                if (dialogChargeFeatureBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    dialogChargeFeatureBinding = dialogChargeFeatureBinding2;
                }
                dialogChargeFeatureBinding.tvFinalAmount.setText(productInfoBean.getFinalAmount());
                return;
            }
            DialogChargeFeatureBinding dialogChargeFeatureBinding3 = ChargeFeatureDialog.this.binding;
            if (dialogChargeFeatureBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding3 = null;
            }
            TintTextView tvActive = dialogChargeFeatureBinding3.tvActive;
            Intrinsics.checkNotNullExpressionValue(tvActive, "tvActive");
            tvActive.setVisibility(8);
            DialogChargeFeatureBinding dialogChargeFeatureBinding4 = ChargeFeatureDialog.this.binding;
            if (dialogChargeFeatureBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogChargeFeatureBinding = dialogChargeFeatureBinding4;
            }
            dialogChargeFeatureBinding.tvFinalAmount.setText(C10651R.string.failed_to_get_product_info);
        }
    }

    @SourceDebugExtension({"SMAP\nChargeFeatureDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,383:1\n256#2,2:384\n*S KotlinDebug\n*F\n+ 1 ChargeFeatureDialog.kt\ncom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$loadProductInfo$2\n*L\n268#1:384,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$b */
    /* loaded from: classes9.dex */
    public static final class C12606b<T> implements Consumer {
        public C12606b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DialogChargeFeatureBinding dialogChargeFeatureBinding = ChargeFeatureDialog.this.binding;
            DialogChargeFeatureBinding dialogChargeFeatureBinding2 = null;
            if (dialogChargeFeatureBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding = null;
            }
            TintTextView tvActive = dialogChargeFeatureBinding.tvActive;
            Intrinsics.checkNotNullExpressionValue(tvActive, "tvActive");
            tvActive.setVisibility(8);
            DialogChargeFeatureBinding dialogChargeFeatureBinding3 = ChargeFeatureDialog.this.binding;
            if (dialogChargeFeatureBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogChargeFeatureBinding2 = dialogChargeFeatureBinding3;
            }
            dialogChargeFeatureBinding2.tvFinalAmount.setText(C10651R.string.failed_to_get_product_info);
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$c */
    /* loaded from: classes9.dex */
    public static final class C12607c<T> implements Consumer {
        public C12607c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OrderBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChargeFeatureDialog.this.m50498P0(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$d */
    /* loaded from: classes9.dex */
    public static final class C12608d<T> implements Consumer {

        /* renamed from: e */
        public static final C12608d<T> f61317e = new C12608d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OnyxErrorHandler.handle$default(OnyxErrorHandler.INSTANCE, it2, null, null, 6, null);
        }
    }

    /* renamed from: B0 */
    public static final void m50476B0(ChargeFeatureDialog this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.m50501T0(i);
    }

    /* renamed from: E0 */
    public static final void m50477E0(ChargeFeatureDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50495L0();
    }

    /* renamed from: F0 */
    public static final void m50478F0(ChargeFeatureDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50496M0();
    }

    /* renamed from: G0 */
    public static final void m50479G0(ChargeFeatureDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m50497O0();
    }

    /* renamed from: N0 */
    public static final void m50480N0(ChargeFeatureDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this$0.binding;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        dialogChargeFeatureBinding.llyCharge.setEnabled(true);
    }

    /* renamed from: R0 */
    public static final void m50481R0() {
        AccountDataBundle.INSTANCE.postEvent(VipRoleChanged.INSTANCE);
    }

    /* renamed from: A0 */
    public final void m50488A0() {
        this.featuresAdapter = new FeatureAdapter();
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        DialogChargeFeatureBinding dialogChargeFeatureBinding2 = null;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        RecyclerView recyclerView = dialogChargeFeatureBinding.rvFeatures;
        FeatureAdapter featureAdapter = this.featuresAdapter;
        if (featureAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresAdapter");
            featureAdapter = null;
        }
        recyclerView.setAdapter(featureAdapter);
        FeatureAdapter featureAdapter2 = this.featuresAdapter;
        if (featureAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresAdapter");
            featureAdapter2 = null;
        }
        featureAdapter2.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.nrd
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ChargeFeatureDialog.m50476B0(ChargeFeatureDialog.this, baseQuickAdapter, view, i);
            }
        });
        DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
        if (dialogChargeFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding3 = null;
        }
        RecyclerView rvFeatures = dialogChargeFeatureBinding3.rvFeatures;
        Intrinsics.checkNotNullExpressionValue(rvFeatures, "rvFeatures");
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        RecyclerViewKt.addMaterialItemDecoration$default(rvFeatures, requireContext, 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_32), false, 8, null);
        DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
        if (dialogChargeFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding2 = dialogChargeFeatureBinding4;
        }
        dialogChargeFeatureBinding2.rvFeatures.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
    }

    /* renamed from: C0 */
    public final void m50489C0() {
        this.featuresResourceAdapter = new FeatureResourceAdapter();
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        DialogChargeFeatureBinding dialogChargeFeatureBinding2 = null;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        ViewPager2 viewPager2 = dialogChargeFeatureBinding.rvFeatureResource;
        FeatureResourceAdapter featureResourceAdapter = this.featuresResourceAdapter;
        if (featureResourceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresResourceAdapter");
            featureResourceAdapter = null;
        }
        viewPager2.setAdapter(featureResourceAdapter);
        DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
        if (dialogChargeFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding2 = dialogChargeFeatureBinding3;
        }
        dialogChargeFeatureBinding2.rvFeatureResource.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$initFeatureResourceAdapter$1
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                DialogChargeFeatureBinding dialogChargeFeatureBinding4 = ChargeFeatureDialog.this.binding;
                if (dialogChargeFeatureBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    dialogChargeFeatureBinding4 = null;
                }
                dialogChargeFeatureBinding4.chargeIndicator.updateSelectedIndex(position);
            }
        });
    }

    /* renamed from: D0 */
    public final void m50490D0() {
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        DialogChargeFeatureBinding dialogChargeFeatureBinding2 = null;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        TintImageView ivBanner = dialogChargeFeatureBinding.ivBanner;
        Intrinsics.checkNotNullExpressionValue(ivBanner, "ivBanner");
        ViewKt.click$default(ivBanner, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.krd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChargeFeatureDialog.m50477E0(ChargeFeatureDialog.this, view);
            }
        }, 1, null);
        DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
        if (dialogChargeFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding3 = null;
        }
        LinearLayout llyCharge = dialogChargeFeatureBinding3.llyCharge;
        Intrinsics.checkNotNullExpressionValue(llyCharge, "llyCharge");
        ViewKt.click(llyCharge, 3000L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.lrd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChargeFeatureDialog.m50478F0(ChargeFeatureDialog.this, view);
            }
        });
        DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
        if (dialogChargeFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding2 = dialogChargeFeatureBinding4;
        }
        TintImageView ivClose = dialogChargeFeatureBinding2.ivClose;
        Intrinsics.checkNotNullExpressionValue(ivClose, "ivClose");
        ViewKt.click$default(ivClose, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.mrd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChargeFeatureDialog.m50479G0(ChargeFeatureDialog.this, view);
            }
        }, 1, null);
    }

    /* renamed from: H0 */
    public final void m50491H0() {
        int indexOf$default;
        ResManager resManager = ResManager.INSTANCE;
        String stringSafely = resManager.getStringSafely(C7520R.string.pay_agreement_tips);
        String stringSafely2 = resManager.getStringSafely(C7520R.string.pay_agreement);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) stringSafely, stringSafely2, 0, false, 6, (Object) null);
        SpannableString spannableString = new SpannableString(stringSafely);
        spannableString.setSpan(new ClickableSpan() { // from class: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$initPayAgreement$1
            @Override // android.text.style.ClickableSpan
            public void onClick(@NotNull View widget) {
                Intrinsics.checkNotNullParameter(widget, "widget");
                ChargeFeatureDialog.this.m50505y0();
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(@NotNull TextPaint ds) {
                Intrinsics.checkNotNullParameter(ds, "ds");
                ds.setUnderlineText(false);
                ds.setColor(ResManager.INSTANCE.getColor(C7996R.color.theme_primary_color_01));
            }
        }, indexOf$default, stringSafely2.length() + indexOf$default, 33);
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        DialogChargeFeatureBinding dialogChargeFeatureBinding2 = null;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        dialogChargeFeatureBinding.tvAgreement.setText(spannableString);
        DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
        if (dialogChargeFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding3 = null;
        }
        dialogChargeFeatureBinding3.tvAgreement.setMovementMethod(LinkMovementMethod.getInstance());
        DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
        if (dialogChargeFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding2 = dialogChargeFeatureBinding4;
        }
        dialogChargeFeatureBinding2.tvAgreement.setHighlightColor(0);
    }

    /* renamed from: I0 */
    public final void m50492I0() {
        m50488A0();
        m50489C0();
        m50491H0();
    }

    /* renamed from: J0 */
    public final void m50493J0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null) {
            DialogKt.setLayout(dialog, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_560), -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setCancelable(false);
    }

    /* renamed from: K0 */
    public final void m50494K0(ChargeProduct product) {
        ArrayList arrayListOf;
        PayBundle payBundle = PayBundle.INSTANCE;
        Context appContext = ResManager.INSTANCE.getAppContext();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(product.getGoogleProductId());
        BasePayAction<List<ProductInfoBean>> productInfoByProductIdAction = payBundle.getProductInfoByProductIdAction(appContext, arrayListOf);
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        TintTextView tvActive = dialogChargeFeatureBinding.tvActive;
        Intrinsics.checkNotNullExpressionValue(tvActive, "tvActive");
        tvActive.setVisibility(0);
        if (productInfoByProductIdAction == null) {
            return;
        }
        productInfoByProductIdAction.build().doOnNext(new C12605a()).doOnError(new C12606b()).subscribe();
    }

    /* renamed from: L0 */
    public final void m50495L0() {
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        ChargeGuide guide = chargeFeatureBean.getGuide();
        if (guide == null) {
            return;
        }
        int navType = guide.getNavType();
        if (navType != 1) {
            if (navType != 2) {
                if (navType != 3) {
                    return;
                }
                Navigator.navigate$default(Navigator.INSTANCE, NavigationType.MARKET, null, null, 6, null);
                return;
            } else {
                StringMap stringMap = new StringMap();
                stringMap.put("url", guide.getWebLink());
                Navigator.navigate$default(Navigator.INSTANCE, NavigationType.WEB_URL, stringMap, null, 4, null);
                return;
            }
        }
        StringMap stringMap2 = new StringMap();
        Map<String, Object> args = guide.getArgs();
        if (args != null) {
            for (Map.Entry<String, Object> entry : args.entrySet()) {
                stringMap2.put(entry.getKey(), entry.getValue().toString());
            }
        }
        Navigator.navigate$default(Navigator.INSTANCE, guide.getAppPage(), stringMap2, null, 4, null);
    }

    /* renamed from: M0 */
    public final void m50496M0() {
        List mutableListOf;
        DialogChargeFeatureBinding dialogChargeFeatureBinding = this.binding;
        FeatureChargeArgs featureChargeArgs = null;
        if (dialogChargeFeatureBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding = null;
        }
        dialogChargeFeatureBinding.llyCharge.setEnabled(false);
        FeatureResourceAdapter featureResourceAdapter = this.featuresResourceAdapter;
        if (featureResourceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresResourceAdapter");
            featureResourceAdapter = null;
        }
        featureResourceAdapter.pausePlayer();
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        ChargeProduct chargeProduct = chargeFeatureBean.getCom.sunia.HTREnginev2.sod.x java.lang.String();
        if (chargeProduct == null) {
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new OrderProductArgs(chargeProduct.getUniqueId(), 1));
        CreateOrderArgs createOrderArgs = new CreateOrderArgs(mutableListOf);
        StatisticsBundle.INSTANCE.postEvent(new StatisticMemberPayDialogClickEvent(NoteTreeBundle.FilterManager.INSTANCE.getQuotaInfo().getDocCountIncludeDustbin()));
        new CreateOrderAction(createOrderArgs).build().doOnNext(new C12607c()).doOnError(C12608d.f61317e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ord
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ChargeFeatureDialog.m50480N0(ChargeFeatureDialog.this);
            }
        }).subscribe();
        Feature feature = this.currentFeature;
        if (feature != null) {
            ChargeStatisticUtils chargeStatisticUtils = ChargeStatisticUtils.INSTANCE;
            FeatureChargeArgs featureChargeArgs2 = this.featureChargeArgs;
            if (featureChargeArgs2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
            } else {
                featureChargeArgs = featureChargeArgs2;
            }
            chargeStatisticUtils.reportChargeDialogOpen(featureChargeArgs, feature.getSummary(), m50504x0());
        }
    }

    /* renamed from: O0 */
    public final void m50497O0() {
        ChargeStatisticUtils chargeStatisticUtils = ChargeStatisticUtils.INSTANCE;
        FeatureChargeArgs featureChargeArgs = this.featureChargeArgs;
        if (featureChargeArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
            featureChargeArgs = null;
        }
        chargeStatisticUtils.reportChargeDialogClose(featureChargeArgs, m50504x0());
        dismiss();
    }

    /* renamed from: P0 */
    public final void m50498P0(OrderBean order) {
        if (order.isPaid()) {
            m50499Q0();
            return;
        }
        OrderArgs orderArgs = new OrderArgs();
        orderArgs.setOrderId(order.getOrderNo());
        FeatureChargeArgs featureChargeArgs = this.featureChargeArgs;
        FeatureChargeArgs featureChargeArgs2 = null;
        if (featureChargeArgs == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
            featureChargeArgs = null;
        }
        orderArgs.setStatisticSource(featureChargeArgs.getFunctionFrom());
        FeatureChargeArgs featureChargeArgs3 = this.featureChargeArgs;
        if (featureChargeArgs3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
            featureChargeArgs3 = null;
        }
        orderArgs.setInterfaceFrom(featureChargeArgs3.getInterfaceFrom());
        FeatureChargeArgs featureChargeArgs4 = this.featureChargeArgs;
        if (featureChargeArgs4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
        } else {
            featureChargeArgs2 = featureChargeArgs4;
        }
        orderArgs.setOperationCode(featureChargeArgs2.getOperationCode());
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
        RxBaseAction.execute$default(new PayAction(parentFragmentManager, orderArgs, new PayDialog.PayListener() { // from class: com.onyx.galaxy.note.member.dialog.ChargeFeatureDialog$onPay$1
            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPayResult(@NotNull PayResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result.isSuccess()) {
                    ChargeFeatureDialog.this.m50499Q0();
                }
            }

            @Override // com.onyx.android.sdk.pay.view.PayDialog.PayListener
            public void onPaymentAgreement() {
                ChargeFeatureDialog.this.m50505y0();
            }
        }), null, null, null, 7, null);
    }

    /* renamed from: Q0 */
    public final void m50499Q0() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable<Object> doFinally = new ReloadAccountAction().build().doFinally(new Action() { // from class: com.sunia.HTREnginev2.jrd
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ChargeFeatureDialog.m50481R0();
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doFinally, null, null, 3, null);
        dismiss();
        ToastUtils.show$default(ToastUtils.INSTANCE, C7520R.string.purchase_pro_success, false, 2, (Object) null);
    }

    /* renamed from: S0 */
    public final void m50500S0() {
        Collection emptyList;
        int collectionSizeOrDefault;
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        FeatureAdapter featureAdapter = null;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        List<Feature> features = chargeFeatureBean.getFeatures();
        if (features != null) {
            List<Feature> list = features;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            emptyList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                emptyList.add(((Feature) it2.next()).getSummary());
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        FeatureAdapter featureAdapter2 = this.featuresAdapter;
        if (featureAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresAdapter");
        } else {
            featureAdapter = featureAdapter2;
        }
        featureAdapter.addAll(emptyList);
        m50501T0(0);
    }

    /* renamed from: T0 */
    public final void m50501T0(int index) {
        Object orNull;
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        DialogChargeFeatureBinding dialogChargeFeatureBinding = null;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        List<Feature> features = chargeFeatureBean.getFeatures();
        if (features != null) {
            orNull = CollectionsKt___CollectionsKt.getOrNull(features, index);
            Feature feature = (Feature) orNull;
            if (feature == null) {
                return;
            }
            DialogChargeFeatureBinding dialogChargeFeatureBinding2 = this.binding;
            if (dialogChargeFeatureBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding2 = null;
            }
            dialogChargeFeatureBinding2.tvSubTitle.setText(feature.getTitle());
            FeatureAdapter featureAdapter = this.featuresAdapter;
            if (featureAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("featuresAdapter");
                featureAdapter = null;
            }
            featureAdapter.updateSelected(index);
            FeatureResourceAdapter featureResourceAdapter = this.featuresResourceAdapter;
            if (featureResourceAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("featuresResourceAdapter");
                featureResourceAdapter = null;
            }
            featureResourceAdapter.updateFeatureResource(feature);
            DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
            if (dialogChargeFeatureBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding3 = null;
            }
            dialogChargeFeatureBinding3.rvFeatureResource.setCurrentItem(0, true);
            DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
            if (dialogChargeFeatureBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogChargeFeatureBinding = dialogChargeFeatureBinding4;
            }
            ChargeIndicatorView chargeIndicatorView = dialogChargeFeatureBinding.chargeIndicator;
            List<FeatureResource> resources = feature.getResources();
            chargeIndicatorView.updateIndicatorTotal(resources != null ? resources.size() : 0);
            this.currentFeature = feature;
        }
    }

    /* renamed from: U0 */
    public final void m50502U0() {
        String str;
        String str2;
        String banner;
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        DialogChargeFeatureBinding dialogChargeFeatureBinding = null;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        ChargeGuide guide = chargeFeatureBean.getGuide();
        String str3 = "";
        if (guide == null || (str = guide.getTag()) == null) {
            str = "";
        }
        DialogChargeFeatureBinding dialogChargeFeatureBinding2 = this.binding;
        if (dialogChargeFeatureBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding2 = null;
        }
        dialogChargeFeatureBinding2.tvProductTag.setText(str);
        DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
        if (dialogChargeFeatureBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding3 = null;
        }
        TintTextView tvProductTag = dialogChargeFeatureBinding3.tvProductTag;
        Intrinsics.checkNotNullExpressionValue(tvProductTag, "tvProductTag");
        tvProductTag.setVisibility(StringKt.isNotBlank(str) ? 0 : 8);
        DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
        if (dialogChargeFeatureBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding4 = null;
        }
        TintTextView tintTextView = dialogChargeFeatureBinding4.tvTitle;
        ChargeFeatureBean chargeFeatureBean2 = this.chargeFeature;
        if (chargeFeatureBean2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean2 = null;
        }
        ChargeGuide guide2 = chargeFeatureBean2.getGuide();
        if (guide2 == null || (str2 = guide2.getTitle()) == null) {
            str2 = "";
        }
        tintTextView.setText(str2);
        ChargeFeatureBean chargeFeatureBean3 = this.chargeFeature;
        if (chargeFeatureBean3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean3 = null;
        }
        ChargeGuide guide3 = chargeFeatureBean3.getGuide();
        if (guide3 != null && (banner = guide3.getBanner()) != null) {
            str3 = banner;
        }
        if (!StringUtils.isNotBlank(str3)) {
            DialogChargeFeatureBinding dialogChargeFeatureBinding5 = this.binding;
            if (dialogChargeFeatureBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding5 = null;
            }
            TintImageView ivBanner = dialogChargeFeatureBinding5.ivBanner;
            Intrinsics.checkNotNullExpressionValue(ivBanner, "ivBanner");
            ivBanner.setVisibility(8);
            DialogChargeFeatureBinding dialogChargeFeatureBinding6 = this.binding;
            if (dialogChargeFeatureBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogChargeFeatureBinding = dialogChargeFeatureBinding6;
            }
            LinearLayout llyFeatureContent = dialogChargeFeatureBinding.llyFeatureContent;
            Intrinsics.checkNotNullExpressionValue(llyFeatureContent, "llyFeatureContent");
            com.onyx.android.sdk.base.extension.ViewKt.setMargins(llyFeatureContent, 0, 0, 0, 0);
            return;
        }
        DialogChargeFeatureBinding dialogChargeFeatureBinding7 = this.binding;
        if (dialogChargeFeatureBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding7 = null;
        }
        RequestBuilder<Drawable> load = GlideApp.with(dialogChargeFeatureBinding7.ivBanner).load(str3);
        DialogChargeFeatureBinding dialogChargeFeatureBinding8 = this.binding;
        if (dialogChargeFeatureBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding8 = null;
        }
        load.into(dialogChargeFeatureBinding8.ivBanner);
        DialogChargeFeatureBinding dialogChargeFeatureBinding9 = this.binding;
        if (dialogChargeFeatureBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding9 = null;
        }
        TintImageView ivBanner2 = dialogChargeFeatureBinding9.ivBanner;
        Intrinsics.checkNotNullExpressionValue(ivBanner2, "ivBanner");
        ivBanner2.setVisibility(0);
        DialogChargeFeatureBinding dialogChargeFeatureBinding10 = this.binding;
        if (dialogChargeFeatureBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding = dialogChargeFeatureBinding10;
        }
        LinearLayout llyFeatureContent2 = dialogChargeFeatureBinding.llyFeatureContent;
        Intrinsics.checkNotNullExpressionValue(llyFeatureContent2, "llyFeatureContent");
        com.onyx.android.sdk.base.extension.ViewKt.setMargins(llyFeatureContent2, 0, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_64), 0, 0);
    }

    /* renamed from: V0 */
    public final void m50503V0() {
        ChargeFeatureBean chargeFeatureBean = this.chargeFeature;
        DialogChargeFeatureBinding dialogChargeFeatureBinding = null;
        if (chargeFeatureBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean = null;
        }
        ChargeProduct chargeProduct = chargeFeatureBean.getCom.sunia.HTREnginev2.sod.x java.lang.String();
        if (chargeProduct == null) {
            DialogChargeFeatureBinding dialogChargeFeatureBinding2 = this.binding;
            if (dialogChargeFeatureBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                dialogChargeFeatureBinding = dialogChargeFeatureBinding2;
            }
            ConstraintLayout llyProduct = dialogChargeFeatureBinding.llyProduct;
            Intrinsics.checkNotNullExpressionValue(llyProduct, "llyProduct");
            llyProduct.setVisibility(8);
            return;
        }
        if (chargeProduct.getGoogleProductId().length() > 0) {
            m50494K0(chargeProduct);
        } else {
            DialogChargeFeatureBinding dialogChargeFeatureBinding3 = this.binding;
            if (dialogChargeFeatureBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding3 = null;
            }
            dialogChargeFeatureBinding3.tvFinalAmount.setText((char) 165 + chargeProduct.getFinalAmount());
            DialogChargeFeatureBinding dialogChargeFeatureBinding4 = this.binding;
            if (dialogChargeFeatureBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding4 = null;
            }
            dialogChargeFeatureBinding4.tvTotalAmount.setText((char) 165 + chargeProduct.getTotalAmount());
            DialogChargeFeatureBinding dialogChargeFeatureBinding5 = this.binding;
            if (dialogChargeFeatureBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                dialogChargeFeatureBinding5 = null;
            }
            TintTextView tvTotalAmount = dialogChargeFeatureBinding5.tvTotalAmount;
            Intrinsics.checkNotNullExpressionValue(tvTotalAmount, "tvTotalAmount");
            tvTotalAmount.setVisibility(Intrinsics.areEqual(chargeProduct.getFinalAmount(), chargeProduct.getTotalAmount()) ^ true ? 0 : 8);
        }
        DialogChargeFeatureBinding dialogChargeFeatureBinding6 = this.binding;
        if (dialogChargeFeatureBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding6 = null;
        }
        ConstraintLayout llyProduct2 = dialogChargeFeatureBinding6.llyProduct;
        Intrinsics.checkNotNullExpressionValue(llyProduct2, "llyProduct");
        llyProduct2.setVisibility(0);
        DialogChargeFeatureBinding dialogChargeFeatureBinding7 = this.binding;
        if (dialogChargeFeatureBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            dialogChargeFeatureBinding7 = null;
        }
        dialogChargeFeatureBinding7.tvTotalAmount.getPaint().setFlags(16);
        DialogChargeFeatureBinding dialogChargeFeatureBinding8 = this.binding;
        if (dialogChargeFeatureBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            dialogChargeFeatureBinding = dialogChargeFeatureBinding8;
        }
        dialogChargeFeatureBinding.tvTotalAmount.getPaint().setAntiAlias(true);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        DialogChargeFeatureBinding inflate = DialogChargeFeatureBinding.inflate(inflater, container, false);
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
        FeatureResourceAdapter featureResourceAdapter = this.featuresResourceAdapter;
        if (featureResourceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresResourceAdapter");
            featureResourceAdapter = null;
        }
        featureResourceAdapter.stopPlayer();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        FeatureResourceAdapter featureResourceAdapter = this.featuresResourceAdapter;
        if (featureResourceAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featuresResourceAdapter");
            featureResourceAdapter = null;
        }
        featureResourceAdapter.pausePlayer();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Bundle arguments = getArguments();
        FeatureChargeArgs featureChargeArgs = null;
        ChargeFeatureBean chargeFeatureBean = (ChargeFeatureBean) jSONUtils.parseObject(arguments != null ? arguments.getString(CHARGE_FEATURE_DATA) : null, ChargeFeatureBean.class);
        if (chargeFeatureBean == null) {
            chargeFeatureBean = new ChargeFeatureBean();
        }
        this.chargeFeature = chargeFeatureBean;
        Bundle arguments2 = getArguments();
        FeatureChargeArgs featureChargeArgs2 = (FeatureChargeArgs) jSONUtils.parseObject(arguments2 != null ? arguments2.getString(CHARGE_FEATURE_ARGS_DATA) : null, FeatureChargeArgs.class);
        if (featureChargeArgs2 == null) {
            featureChargeArgs2 = new FeatureChargeArgs();
        }
        this.featureChargeArgs = featureChargeArgs2;
        ChargeFeatureBean chargeFeatureBean2 = this.chargeFeature;
        if (chargeFeatureBean2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("chargeFeature");
            chargeFeatureBean2 = null;
        }
        if (chargeFeatureBean2.getFeatures() == null) {
            dismiss();
            return;
        }
        m50493J0();
        m50492I0();
        m50490D0();
        m50506z0();
        ChargeStatisticUtils chargeStatisticUtils = ChargeStatisticUtils.INSTANCE;
        FeatureChargeArgs featureChargeArgs3 = this.featureChargeArgs;
        if (featureChargeArgs3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
            featureChargeArgs3 = null;
        }
        chargeStatisticUtils.reportChargeDialogView(featureChargeArgs3);
        this.viewTime = System.currentTimeMillis();
        FeatureChargeArgs featureChargeArgs4 = this.featureChargeArgs;
        if (featureChargeArgs4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("featureChargeArgs");
        } else {
            featureChargeArgs = featureChargeArgs4;
        }
        featureChargeArgs.setInterfaceFrom(OnyxStatisticConstant.INTERFACE_FROM_PAID_GUIDE_POPUPS);
    }

    /* renamed from: x0 */
    public final long m50504x0() {
        return System.currentTimeMillis() - this.viewTime;
    }

    /* renamed from: y0 */
    public final void m50505y0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        new PolicyDialog(requireContext, PolicyType.MEMBER_PAYMENT_AGREEMENT).show();
    }

    /* renamed from: z0 */
    public final void m50506z0() {
        m50502U0();
        m50500S0();
        m50503V0();
    }
}
