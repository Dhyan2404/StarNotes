package com.onyx.android.sdk.base.extension;

import com.couchbase.lite.internal.core.C4Replicator;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u001a\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u001c\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/RetryWithDelay;", "Lio/reactivex/rxjava3/functions/Function;", "Lio/reactivex/rxjava3/core/Observable;", "", "observable", "apply", "", "e", "I", C4Replicator.REPLICATOR_OPTION_MAX_RETRIES, C6997f.f39671c, "retryDelayMillis", C6998g.f39679a, "retryCount", Constants.CONSTRUCTOR_NAME, "(II)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RetryWithDelay implements Function<Observable<? extends Throwable>, Observable<?>> {

    /* renamed from: e, reason: from kotlin metadata */
    public final int maxRetries;

    /* renamed from: f, reason: from kotlin metadata */
    public final int retryDelayMillis;

    /* renamed from: g, reason: from kotlin metadata */
    public int retryCount;

    /* renamed from: com.onyx.android.sdk.base.extension.RetryWithDelay$a */
    /* loaded from: classes7.dex */
    public static final class C7120a<T, R> implements Function {
        public C7120a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RetryWithDelay retryWithDelay = RetryWithDelay.this;
            retryWithDelay.retryCount++;
            return retryWithDelay.retryCount <= RetryWithDelay.this.maxRetries ? Observable.timer(RetryWithDelay.this.retryDelayMillis, TimeUnit.MILLISECONDS) : Observable.error(it2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RetryWithDelay() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.extension.RetryWithDelay.<init>():void");
    }

    public RetryWithDelay(int i, int i2) {
        this.maxRetries = i;
        this.retryDelayMillis = i2;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    @NotNull
    public Observable<?> apply(@NotNull Observable<? extends Throwable> observable) throws Throwable {
        Intrinsics.checkNotNullParameter(observable, "observable");
        Observable flatMap = observable.flatMap(new C7120a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    public /* synthetic */ RetryWithDelay(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 3 : i, (i3 & 2) != 0 ? 500 : i2);
    }
}
