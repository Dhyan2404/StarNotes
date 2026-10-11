package com.onyx.android.sdk.ocr.action;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.ocr.action.OcrBaseAction;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import com.onyx.android.sdk.ocr.data.constant.OcrException;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u001b\u0010\u0011J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0004J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014R\"\u0010\u0012\u001a\u00020\f8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\n\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "createObservable", PrivilegedApp.f6529f, "", "onSuccess", "", "e", "onError", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "getInput", "()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "setInput", "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V", "input", "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", C6997f.f39671c, "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "getOutput", "()Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "setOutput", "(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V", Constants.ELEMNAME_OUTPUT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class OcrBaseAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public OcrInput input;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public OcrOutput output;

    /* renamed from: com.onyx.android.sdk.ocr.action.OcrBaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C7514a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ OcrBaseAction<T> f44011e;

        public C7514a(OcrBaseAction<T> ocrBaseAction) {
            this.f44011e = ocrBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44011e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.ocr.action.OcrBaseAction$b */
    /* loaded from: classes8.dex */
    public static final class C7515b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ OcrBaseAction<T> f44012e;

        public C7515b(OcrBaseAction<T> ocrBaseAction) {
            this.f44012e = ocrBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        public final T apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f44012e.onSuccess();
            return it2;
        }
    }

    public OcrBaseAction(@NotNull OcrInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.input = OcrInput.INSTANCE.getEmpty();
        this.output = new OcrOutput();
        this.input = input;
    }

    /* renamed from: m */
    public static final void m34220m(OcrBaseAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFinally();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<T> build() {
        Observable<T> observable = (Observable<T>) create().doOnError(new C7514a(this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.sek
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                OcrBaseAction.m34220m(OcrBaseAction.this);
            }
        }).map(new C7515b(this));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @NotNull
    public final Observable<OcrBaseAction<T>> createObservable() {
        Observable<OcrBaseAction<T>> observeOn = Observable.just(this).observeOn(OcrValues.INSTANCE.getScheduler().getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final OcrInput getInput() {
        return this.input;
    }

    @NotNull
    public final OcrOutput getOutput() {
        return this.output;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onError(@NotNull Throwable e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.output.setSuccess(false);
        this.output.setError(OcrException.INSTANCE.m34231of(e));
    }

    public void onSuccess() {
        this.output.setSuccess(true);
        this.output.setError(OcrException.INSTANCE.getNONE());
    }

    public final void setInput(@NotNull OcrInput ocrInput) {
        Intrinsics.checkNotNullParameter(ocrInput, "<set-?>");
        this.input = ocrInput;
    }

    public final void setOutput(@NotNull OcrOutput ocrOutput) {
        Intrinsics.checkNotNullParameter(ocrOutput, "<set-?>");
        this.output = ocrOutput;
    }
}
