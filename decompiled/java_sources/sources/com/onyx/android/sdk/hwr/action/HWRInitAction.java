package com.onyx.android.sdk.hwr.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.request.HWRInitRequest;
import com.onyx.android.sdk.hwr.request.HWRResourceCheckRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRInitAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "getInput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "setInput", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "input", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRInitAction extends HWRBaseAction<HWROutput> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRInput input;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInitAction$a */
    /* loaded from: classes7.dex */
    public static final class C7419a<T, R> implements Function {
        public C7419a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWRBaseAction<HWROutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRInitAction.this.m33320n();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRInitAction$b */
    /* loaded from: classes7.dex */
    public static final class C7420b<T, R> implements Function {
        public C7420b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWROutput apply(@NotNull HWROutput it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRInitAction.this.m33321o();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRInitAction(@NotNull HWRBundle bundle, @NotNull HWRInput input) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = input;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWROutput> create() {
        Observable<HWROutput> map = createObservable().map(new C7419a()).map(new C7420b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWRInput getInput() {
        return this.input;
    }

    /* renamed from: n */
    public final HWROutput m33320n() {
        if (new HWRResourceCheckRequest(getBundle(), this.input).execute().booleanValue()) {
            return getOutput();
        }
        throw HWRException.INSTANCE.m33354of(HWRException.ExceptionType.RESOURCE_NOT_FOUND, ErrorType.RESOURCE_NOT_FOUND);
    }

    /* renamed from: o */
    public final HWROutput m33321o() {
        new HWRInitRequest(getBundle(), this.input).execute();
        return getOutput();
    }

    public final void setInput(@NotNull HWRInput hWRInput) {
        Intrinsics.checkNotNullParameter(hWRInput, "<set-?>");
        this.input = hWRInput;
    }
}
