package com.onyx.android.sdk.universal.editor.action.common;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0014¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/UpdateClipboardDataAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UpdateClipboardDataAction extends RxBaseAction<UpdateClipboardDataAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.UpdateClipboardDataAction$a */
    /* loaded from: classes8.dex */
    public static final class C8613a<T> implements Consumer {

        /* renamed from: e */
        public static final C8613a<T> f48210e = new C8613a<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull UpdateClipboardDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.updateClipDataIfChanges();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<UpdateClipboardDataAction> create() {
        Observable<UpdateClipboardDataAction> doOnNext = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(C8613a.f48210e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
