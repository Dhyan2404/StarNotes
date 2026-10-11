package com.onyx.galaxy.note.editor.action.theme;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.cloud.p026v2.ThemePayService;
import com.onyx.android.sdk.data.common.data.theme.ThemePaymentEnableBean;
import com.onyx.android.sdk.data.common.data.theme.ThemeProduceBean;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.common.data.AppConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0000H\u0002J\b\u0010\u0006\u001a\u00020\u0000H\u0002J\b\u0010\u0007\u001a\u00020\u0000H\u0002R\"\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0012\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\n\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/theme/ThemePaymentInfoAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "l", "m", "", "e", Constants.HASIDCALL_INDEX_SIG, "isPaymentEnable", Constants.BOOLEAN_VALUE_SIG, "setPaymentEnable", "(Z)V", C6997f.f39671c, "getHasPayment", "setHasPayment", "hasPayment", "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", C6998g.f39679a, "Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "getProductBean", "()Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;", "setProductBean", "(Lcom/onyx/android/sdk/data/common/data/theme/ThemeProduceBean;)V", "productBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ThemePaymentInfoAction extends RxBaseAction<ThemePaymentInfoAction> {

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isPaymentEnable;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean hasPayment;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ThemeProduceBean productBean;

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$a */
    /* loaded from: classes9.dex */
    public static final class C12002a<T, R> implements Function {
        public C12002a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThemePaymentInfoAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThemePaymentInfoAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$b */
    /* loaded from: classes9.dex */
    public static final class C12003b<T, R> implements Function {
        public C12003b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThemePaymentInfoAction apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThemePaymentInfoAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$c */
    /* loaded from: classes9.dex */
    public static final class C12004c<T, R> implements Function {
        public C12004c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThemePaymentInfoAction apply(@NotNull ThemePaymentInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThemePaymentInfoAction.this.m45979m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$d */
    /* loaded from: classes9.dex */
    public static final class C12005d<T, R> implements Function {
        public C12005d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThemePaymentInfoAction apply(@NotNull ThemePaymentInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThemePaymentInfoAction.this.m45981o();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$e */
    /* loaded from: classes9.dex */
    public static final class C12006e<T, R> implements Function {
        public C12006e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThemePaymentInfoAction apply(@NotNull ThemePaymentInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ThemePaymentInfoAction.this.m45978l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ThemePaymentInfoAction> create() {
        Observable observeOn = Observable.just(this).observeOn(KSyncBundle.INSTANCE.getNetworkScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        Observable<ThemePaymentInfoAction> onErrorReturn = RxjavaKt.flatMapIf(observeOn, new Function1<ThemePaymentInfoAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ThemePaymentInfoAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(AppConfigManager.INSTANCE.getSupportPaymentTheme());
            }
        }, new Function1<ThemePaymentInfoAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.theme.ThemePaymentInfoAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull ThemePaymentInfoAction it2) {
                Observable<? extends Object> m45980n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45980n = ThemePaymentInfoAction.this.m45980n();
                return m45980n;
            }
        }).map(new C12002a()).onErrorReturn(new C12003b());
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    public final boolean getHasPayment() {
        return this.hasPayment;
    }

    @Nullable
    public final ThemeProduceBean getProductBean() {
        return this.productBean;
    }

    /* renamed from: isPaymentEnable, reason: from getter */
    public final boolean getIsPaymentEnable() {
        return this.isPaymentEnable;
    }

    /* renamed from: l */
    public final ThemePaymentInfoAction m45978l() {
        this.productBean = ((ThemePayService) ServiceFactory.INSTANCE.getOnyxApiV2Service(ThemePayService.class)).getThemeProductInfo().execute().body().getData();
        return this;
    }

    /* renamed from: m */
    public final ThemePaymentInfoAction m45979m() {
        ThemePaymentEnableBean data = ((ThemePayService) ServiceFactory.INSTANCE.getOnyxApiV2Service(ThemePayService.class)).getThemeConfig().execute().body().getData();
        this.isPaymentEnable = data != null ? data.isPaymentEnabled() : false;
        return this;
    }

    /* renamed from: n */
    public final Observable<ThemePaymentInfoAction> m45980n() {
        Observable<ThemePaymentInfoAction> map = Observable.just(this).map(new C12004c()).map(new C12005d()).map(new C12006e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final ThemePaymentInfoAction m45981o() {
        this.hasPayment = ((ThemePayService) ServiceFactory.INSTANCE.getOnyxApiV2Service(ThemePayService.class)).queryThemeOrder().execute().body().getData() != null;
        return this;
    }

    public final void setHasPayment(boolean z) {
        this.hasPayment = z;
    }

    public final void setPaymentEnable(boolean z) {
        this.isPaymentEnable = z;
    }

    public final void setProductBean(@Nullable ThemeProduceBean themeProduceBean) {
        this.productBean = themeProduceBean;
    }
}
