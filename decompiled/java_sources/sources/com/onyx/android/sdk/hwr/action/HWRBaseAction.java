package com.onyx.android.sdk.hwr.action;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.hwr.action.HWRBaseAction;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u0014J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0004J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0014J\b\u0010\u000e\u001a\u00020\fH\u0014R\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001b\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", PrivilegedApp.f6529f, "Lio/reactivex/rxjava3/core/Scheduler;", "getRecognizeObserveOn", "getCloudObserveOn", "", "e", "", "onError", "onSuccess", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "getBundle", "()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "setBundle", "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V", "bundle", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", C6997f.f39671c, "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "getOutput", "()Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", Constants.ELEMNAME_OUTPUT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class HWRBaseAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public HWRBundle bundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HWROutput output;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRBaseAction$a */
    /* loaded from: classes7.dex */
    public static final class C7405a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ HWRBaseAction<T> f42232e;

        public C7405a(HWRBaseAction<T> hWRBaseAction) {
            this.f42232e = hWRBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f42232e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRBaseAction$b */
    /* loaded from: classes7.dex */
    public static final class C7406b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ HWRBaseAction<T> f42233e;

        public C7406b(HWRBaseAction<T> hWRBaseAction) {
            this.f42233e = hWRBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        public final T apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f42233e.onSuccess();
            return it2;
        }
    }

    public HWRBaseAction(@NotNull HWRBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        this.output = new HWROutput();
        this.bundle = bundle;
    }

    /* renamed from: m */
    public static final void m33296m(HWRBaseAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFinally();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<T> build() {
        Observable<T> observable = (Observable<T>) create().doOnError(new C7405a(this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.zeh
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                HWRBaseAction.m33296m(HWRBaseAction.this);
            }
        }).map(new C7406b(this));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @NotNull
    public final Observable<HWRBaseAction<T>> createObservable() {
        Observable<T> observeOn = Observable.just(this).subscribeOn(AndroidSchedulers.mainThread()).observeOn(getRecognizeObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final HWRBundle getBundle() {
        return this.bundle;
    }

    @NotNull
    public final Scheduler getCloudObserveOn() {
        return this.bundle.getRecognizerManager().getCloudScheduler().getObserveOn();
    }

    @NotNull
    public final HWROutput getOutput() {
        return this.output;
    }

    @NotNull
    public final Scheduler getRecognizeObserveOn() {
        return this.bundle.getRecognizerManager().getRecognizeScheduler().getObserveOn();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onError(@NotNull Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.output.setSuccess(false);
        this.output.setException(HWRException.INSTANCE.m33356of(e, e.getMessage()));
    }

    public void onSuccess() {
    }

    public final void setBundle(@NotNull HWRBundle hWRBundle) {
        Intrinsics.checkNotNullParameter(hWRBundle, "<set-?>");
        this.bundle = hWRBundle;
    }
}
