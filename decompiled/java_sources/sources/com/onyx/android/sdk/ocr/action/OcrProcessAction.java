package com.onyx.android.sdk.ocr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.ocr.data.bean.OcrInput;
import com.onyx.android.sdk.ocr.data.bean.OcrOutput;
import com.onyx.android.sdk.ocr.request.OcrProcessRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/ocr/action/OcrProcessAction;", "Lcom/onyx/android/sdk/ocr/action/OcrBaseAction;", "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;", "input", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V", "sdk-ocr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OcrProcessAction extends OcrBaseAction<OcrOutput> {

    /* renamed from: com.onyx.android.sdk.ocr.action.OcrProcessAction$a */
    /* loaded from: classes8.dex */
    public static final class C7516a<T, R> implements Function {
        public C7516a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OcrOutput> apply(@NotNull OcrBaseAction<OcrOutput> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return OcrProcessAction.this.m34222n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OcrProcessAction(@NotNull OcrInput input) {
        super(input);
        Intrinsics.checkNotNullParameter(input, "input");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<OcrOutput> create() {
        Observable flatMap = createObservable().flatMap(new C7516a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<OcrOutput> m34222n() {
        return new OcrProcessRequest(getInput()).execute();
    }
}
