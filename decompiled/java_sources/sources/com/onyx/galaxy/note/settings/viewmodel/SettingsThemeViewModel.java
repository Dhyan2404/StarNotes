package com.onyx.galaxy.note.settings.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.theme.ThemeProduceBean;
import com.onyx.android.sdk.data.common.data.theme.UserThemeBean;
import com.onyx.android.sdk.data.common.error.OnyxErrorHandler;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.theme.SkinBean;
import com.onyx.android.sdk.theme.utils.SkinType;
import com.onyx.android.sdk.theme.utils.ThemeStyle;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction;
import com.onyx.galaxy.note.editor.action.theme.UserThemeRequestAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002R*\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001e\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R.\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0\u000b0'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "initPayment", "e", "Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;", "paymentResult", "Lcom/onyx/galaxy/note/editor/action/theme/UserThemeRequestAction;", "userThemeResult", "d", C6997f.f39671c, "", "Lcom/onyx/android/sdk/data/common/data/theme/UserThemeBean;", "i", "Ljava/util/List;", "getUserThemeList", "()Ljava/util/List;", "setUserThemeList", "(Ljava/util/List;)V", "userThemeList", "", "j", Constants.HASIDCALL_INDEX_SIG, "isPaymentEnable", Constants.BOOLEAN_VALUE_SIG, "setPaymentEnable", "(Z)V", C4921e.f26537n, "getHasPayment", "setHasPayment", "hasPayment", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "l", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "getProductInfoBean", "()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "setProductInfoBean", "(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V", "productInfoBean", "Landroidx/lifecycle/MutableLiveData;", "Lcom/onyx/android/sdk/theme/SkinBean;", "m", "Landroidx/lifecycle/MutableLiveData;", "getThemeDisplayList", "()Landroidx/lifecycle/MutableLiveData;", "setThemeDisplayList", "(Landroidx/lifecycle/MutableLiveData;)V", "themeDisplayList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSettingsThemeViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsThemeViewModel.kt\ncom/onyx/galaxy/note/settings/viewmodel/SettingsThemeViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
/* loaded from: classes9.dex */
public final class SettingsThemeViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public List<UserThemeBean> userThemeList;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isPaymentEnable;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean hasPayment;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public ThemeProduceBean productInfoBean;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public MutableLiveData<List<SkinBean>> themeDisplayList = new MutableLiveData<>(SkinType.Companion.getDisplayList$default(SkinType.INSTANCE, null, 1, null));

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsThemeViewModel$a */
    /* loaded from: classes9.dex */
    public static final class C12767a<T1, T2, R> implements BiFunction {
        public C12767a() {
        }

        /* renamed from: a */
        public final void m51230a(@NotNull ThemePaymentInfoAction paymentResult, @NotNull UserThemeRequestAction userThemeResult) {
            Intrinsics.checkNotNullParameter(paymentResult, "paymentResult");
            Intrinsics.checkNotNullParameter(userThemeResult, "userThemeResult");
            SettingsThemeViewModel.this.m51227d(paymentResult, userThemeResult);
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
            m51230a((ThemePaymentInfoAction) obj, (UserThemeRequestAction) obj2);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.settings.viewmodel.SettingsThemeViewModel$b */
    /* loaded from: classes9.dex */
    public static final class C12768b<T> implements Consumer {
        public C12768b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SettingsThemeViewModel.this.m51229f();
        }
    }

    /* renamed from: d */
    public final void m51227d(ThemePaymentInfoAction paymentResult, UserThemeRequestAction userThemeResult) {
        this.isPaymentEnable = paymentResult.getIsPaymentEnable();
        this.hasPayment = paymentResult.getHasPayment();
        this.productInfoBean = paymentResult.getProductBean();
        this.userThemeList = userThemeResult.getUserThemeList();
    }

    /* renamed from: e */
    public final void m51228e() {
        OnyxErrorHandler onyxErrorHandler = OnyxErrorHandler.INSTANCE;
        Observable doOnNext = Observable.zip(new ThemePaymentInfoAction().build(), new UserThemeRequestAction().build(), new C12767a()).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler()).doOnNext(new C12768b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        OnyxErrorHandler.subscribeWithErrorHandler$default(onyxErrorHandler, doOnNext, null, null, 3, null);
    }

    /* renamed from: f */
    public final void m51229f() {
        List<SkinBean> defaultThemeList = SkinType.INSTANCE.defaultThemeList();
        for (SkinBean skinBean : defaultThemeList) {
            if (Intrinsics.areEqual(skinBean.getThemeStyle(), ThemeStyle.INSTANCE.getPaymentStyle())) {
                skinBean.setDisplay(this.isPaymentEnable);
            }
            List<UserThemeBean> list = this.userThemeList;
            Object obj = null;
            if (list != null) {
                Iterator<T> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (StringKt.toHexValue(((UserThemeBean) next).getKey()) == skinBean.getThemeType()) {
                        obj = next;
                        break;
                    }
                }
                obj = (UserThemeBean) obj;
            }
            if (obj != null) {
                skinBean.setDisplay(true);
            }
        }
        this.themeDisplayList.postValue(SkinType.INSTANCE.getDisplayList(defaultThemeList));
    }

    public final boolean getHasPayment() {
        return this.hasPayment;
    }

    @Nullable
    public final ThemeProduceBean getProductInfoBean() {
        return this.productInfoBean;
    }

    @NotNull
    public final MutableLiveData<List<SkinBean>> getThemeDisplayList() {
        return this.themeDisplayList;
    }

    @Nullable
    public final List<UserThemeBean> getUserThemeList() {
        return this.userThemeList;
    }

    public final void initPayment() {
        if (AccountDataBundle.INSTANCE.isAlreadyLogin()) {
            m51228e();
        }
    }

    /* renamed from: isPaymentEnable, reason: from getter */
    public final boolean getIsPaymentEnable() {
        return this.isPaymentEnable;
    }

    public final void setHasPayment(boolean z) {
        this.hasPayment = z;
    }

    public final void setPaymentEnable(boolean z) {
        this.isPaymentEnable = z;
    }

    public final void setProductInfoBean(@Nullable ThemeProduceBean themeProduceBean) {
        this.productInfoBean = themeProduceBean;
    }

    public final void setThemeDisplayList(@NotNull MutableLiveData<List<SkinBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.themeDisplayList = mutableLiveData;
    }

    public final void setUserThemeList(@Nullable List<UserThemeBean> list) {
        this.userThemeList = list;
    }
}
