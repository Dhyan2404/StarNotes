package com.onyx.galaxy.note.common.action;

import com.onyx.android.sdk.base.data.config.GlobalConfig;
import com.onyx.android.sdk.base.data.config.GlobalConfigBean;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.bean.DefaultPenParams;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class InitGlobalConfigAction extends RxBaseAction<InitGlobalConfigAction> {

    /* renamed from: com.onyx.galaxy.note.common.action.InitGlobalConfigAction$a */
    /* loaded from: classes9.dex */
    public static final class C11572a<T, R> implements Function {
        public C11572a() {
        }

        /* renamed from: a */
        public final void m44895a(@NotNull InitGlobalConfigAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            InitGlobalConfigAction.this.m44894l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m44895a((InitGlobalConfigAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.InitGlobalConfigAction$b */
    /* loaded from: classes9.dex */
    public static final class C11573b<T, R> implements Function {
        public C11573b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InitGlobalConfigAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return InitGlobalConfigAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<InitGlobalConfigAction> create() {
        Observable<InitGlobalConfigAction> map = Observable.just(this).observeOn(GlobalBundle.INSTANCE.getSingleIO().getObserveOn()).map(new C11572a()).map(new C11573b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m44894l() {
        GlobalConfig globalConfig = GlobalConfig.INSTANCE;
        ConfigLoader configLoader = ConfigLoader.INSTANCE;
        globalConfig.init((GlobalConfigBean) configLoader.load(GlobalConfigBean.class, GlobalConfig.GLOBAL_CONFIG_RAW_NAME));
        PenUtils penUtils = PenUtils.INSTANCE;
        DefaultPenParams defaultPenParams = (DefaultPenParams) configLoader.load(DefaultPenParams.class, PenUtils.DEFAULT_PARAMS_CONFIG_RAW_NAME);
        if (defaultPenParams == null) {
            defaultPenParams = new DefaultPenParams();
        }
        penUtils.initDefaultPenParams(defaultPenParams);
    }
}
