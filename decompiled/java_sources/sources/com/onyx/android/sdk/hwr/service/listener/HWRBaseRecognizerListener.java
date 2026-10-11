package com.onyx.android.sdk.hwr.service.listener;

import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0016J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0016R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/listener/HWRBaseRecognizerListener;", "Lcom/onyx/android/sdk/hwr/service/listener/IHWRRecognizerListener;", "()V", "resultPublishObservable", "Lio/reactivex/rxjava3/subjects/Subject;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "singleResultObservable", "getResultPublishObservable", "Lio/reactivex/rxjava3/core/Observable;", "getSingleResultObservable", "publishResult", "", Constants.ELEMNAME_OUTPUT_STRING, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class HWRBaseRecognizerListener implements IHWRRecognizerListener {

    @JvmField
    @NotNull
    public Subject<HWROutput> resultPublishObservable;

    @JvmField
    @NotNull
    public Subject<HWROutput> singleResultObservable;

    public HWRBaseRecognizerListener() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.resultPublishObservable = create;
        PublishSubject create2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create2, "create(...)");
        this.singleResultObservable = create2;
    }

    @Override // com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener
    @NotNull
    public Observable<HWROutput> getResultPublishObservable() {
        if (this.singleResultObservable.hasComplete()) {
            PublishSubject create = PublishSubject.create();
            Intrinsics.checkNotNullExpressionValue(create, "create(...)");
            this.singleResultObservable = create;
        }
        return this.resultPublishObservable;
    }

    @Override // com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener
    @NotNull
    public Observable<HWROutput> getSingleResultObservable() {
        if (!this.singleResultObservable.hasComplete()) {
            this.singleResultObservable.onComplete();
        }
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.singleResultObservable = create;
        return create;
    }

    @Override // com.onyx.android.sdk.hwr.service.listener.IHWRRecognizerListener
    public void publishResult(@NotNull HWROutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        if (!this.resultPublishObservable.hasComplete()) {
            this.resultPublishObservable.onNext(output);
        }
        if (this.singleResultObservable.hasComplete()) {
            return;
        }
        this.singleResultObservable.onNext(output);
        this.singleResultObservable.onComplete();
    }
}
