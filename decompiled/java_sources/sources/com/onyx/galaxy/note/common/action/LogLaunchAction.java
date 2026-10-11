package com.onyx.galaxy.note.common.action;

import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\b"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/action/LogLaunchAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LogLaunchAction extends RxBaseAction<LogLaunchAction> {

    /* renamed from: com.onyx.galaxy.note.common.action.LogLaunchAction$a */
    /* loaded from: classes9.dex */
    public static final class C11577a<T> implements Predicate {

        /* renamed from: e */
        public static final C11577a<T> f55911e = new C11577a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull LogLaunchAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SecurityUtils.INSTANCE.isUserAgreementPassed();
        }
    }

    /* renamed from: com.onyx.galaxy.note.common.action.LogLaunchAction$b */
    /* loaded from: classes9.dex */
    public static final class C11578b<T> implements Consumer {
        public C11578b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LogLaunchAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            LogLaunchAction.this.m44901l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LogLaunchAction> create() {
        Observable<LogLaunchAction> doOnNext = Observable.just(this).delay(1L, TimeUnit.SECONDS).filter(C11577a.f55911e).doOnNext(new C11578b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m44901l() {
        LogcatGenerator logcatGenerator = LogcatGenerator.INSTANCE;
        String generateLaunchLog = logcatGenerator.generateLaunchLog();
        String generateDeviceInfoLog = logcatGenerator.generateDeviceInfoLog();
        LogUtils.file("launch", generateLaunchLog);
        LogUtils.file("deviceInfo", generateDeviceInfoLog);
    }
}
