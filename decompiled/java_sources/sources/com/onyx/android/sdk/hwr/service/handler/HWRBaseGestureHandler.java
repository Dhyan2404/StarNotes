package com.onyx.android.sdk.hwr.service.handler;

import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0016J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0016R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/handler/HWRBaseGestureHandler;", "Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;", "()V", "gesturePublishObservable", "Lio/reactivex/rxjava3/subjects/Subject;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "singleGestureObservable", "getGesturePublishObservable", "Lio/reactivex/rxjava3/core/Observable;", "getSingleGestureObservable", "publishGesture", "", Constants.ELEMNAME_OUTPUT_STRING, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class HWRBaseGestureHandler implements IHWRGestureHandler {

    @JvmField
    @NotNull
    public Subject<HWROutput> gesturePublishObservable;

    @JvmField
    @NotNull
    public Subject<HWROutput> singleGestureObservable;

    public HWRBaseGestureHandler() {
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.gesturePublishObservable = create;
        PublishSubject create2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create2, "create(...)");
        this.singleGestureObservable = create2;
    }

    @Override // com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler
    @NotNull
    public Observable<HWROutput> getGesturePublishObservable() {
        if (this.singleGestureObservable.hasComplete()) {
            PublishSubject create = PublishSubject.create();
            Intrinsics.checkNotNullExpressionValue(create, "create(...)");
            this.singleGestureObservable = create;
        }
        return this.gesturePublishObservable;
    }

    @Override // com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler
    @NotNull
    public Observable<HWROutput> getSingleGestureObservable() {
        if (!this.singleGestureObservable.hasComplete()) {
            this.singleGestureObservable.onComplete();
        }
        PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.singleGestureObservable = create;
        return create;
    }

    @Override // com.onyx.android.sdk.hwr.service.handler.IHWRGestureHandler
    public void publishGesture(@NotNull HWROutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        if (!this.gesturePublishObservable.hasComplete()) {
            this.gesturePublishObservable.onNext(output);
        }
        if (this.singleGestureObservable.hasComplete()) {
            return;
        }
        this.singleGestureObservable.onNext(output);
        this.singleGestureObservable.onComplete();
    }
}
