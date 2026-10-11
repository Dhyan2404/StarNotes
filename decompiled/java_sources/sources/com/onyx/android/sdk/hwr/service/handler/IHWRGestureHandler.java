package com.onyx.android.sdk.hwr.service.handler;

import com.onyx.android.sdk.hwr.data.bean.HWROutput;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/handler/IHWRGestureHandler;", "", "getGesturePublishObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;", "getSingleGestureObservable", "publishGesture", "", Constants.ELEMNAME_OUTPUT_STRING, "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface IHWRGestureHandler {
    @NotNull
    Observable<HWROutput> getGesturePublishObservable();

    @NotNull
    Observable<HWROutput> getSingleGestureObservable();

    void publishGesture(@NotNull HWROutput output);
}
