package com.onyx.android.sdk.universal.editor.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.action.ConfigLogAction;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.C8045R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/DebugAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/action/ConfigLogAction;", "l", "m", "", "e", Constants.HASIDCALL_INDEX_SIG, "getDebug", Constants.BOOLEAN_VALUE_SIG, "debug", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DebugAction extends RxBaseAction<DebugAction> {

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean debug;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.DebugAction$a */
    /* loaded from: classes8.dex */
    public static final class C8186a<T, R> implements Function {
        public C8186a() {
        }

        /* renamed from: a */
        public final void m36767a(@NotNull DebugAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DebugAction.this.m36766n();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m36767a((DebugAction) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.DebugAction$b */
    /* loaded from: classes8.dex */
    public static final class C8187b<T, R> implements Function {
        public C8187b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ConfigLogAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DebugAction.this.m36764l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.DebugAction$c */
    /* loaded from: classes8.dex */
    public static final class C8188c<T, R> implements Function {
        public C8188c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DebugAction apply(@NotNull ConfigLogAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DebugAction.this;
        }
    }

    public DebugAction(boolean z) {
        this.debug = z;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DebugAction> create() {
        Observable<DebugAction> map = Observable.just(this).map(new C8186a()).flatMap(new C8187b()).map(new C8188c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final boolean getDebug() {
        return this.debug;
    }

    /* renamed from: l */
    public final Observable<ConfigLogAction> m36764l() {
        File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir("log");
        Intrinsics.checkNotNull(externalFilesDir);
        boolean z = this.debug;
        return new ConfigLogAction(new ConfigLogAction.ConfigLogParams(externalFilesDir, z, !z, 0, 0, 0, 56, null)).build();
    }

    /* renamed from: m */
    public final void m36765m() {
        Benchmark.Companion companion = Benchmark.INSTANCE;
        companion.setShowShortDurationInfoLog(this.debug);
        if (this.debug) {
            companion.setShortDurationThreshold(0L);
        } else {
            companion.setShortDurationThreshold(ResManager.INSTANCE.getInteger(C8045R.integer.benchmark_duration_threshold));
        }
    }

    /* renamed from: n */
    public final void m36766n() {
        Debug.INSTANCE.setDebug(this.debug);
        m36765m();
        RxBaseAction.INSTANCE.setEnableBenchmark(this.debug);
    }
}
