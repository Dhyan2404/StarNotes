package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "e", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ResetCounterAction extends RxBaseAction<ResetCounterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.ResetCounterAction$a */
    /* loaded from: classes9.dex */
    public static final class C11877a<T> implements Predicate {
        public C11877a() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ResetCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ResetCounterAction.this.counterEntry.isRunning();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.ResetCounterAction$b */
    /* loaded from: classes9.dex */
    public static final class C11878b<T> implements Consumer {
        public C11878b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ResetCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ResetCounterAction.this.counterEntry.reset();
        }
    }

    public ResetCounterAction(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ResetCounterAction> create() {
        Observable<ResetCounterAction> doOnNext = Observable.just(this).filter(new C11877a()).doOnNext(new C11878b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
