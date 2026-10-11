package com.onyx.galaxy.note.editor.action.counter;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/SegmentCounterAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "e", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SegmentCounterAction extends RxBaseAction<SegmentCounterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.SegmentCounterAction$a */
    /* loaded from: classes9.dex */
    public static final class C11880a<T> implements Consumer {
        public C11880a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SegmentCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SegmentCounterAction.this.counterEntry.segment();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.SegmentCounterAction$b */
    /* loaded from: classes9.dex */
    public static final class C11881b<T, R> implements Function {
        public C11881b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SaveCounterRecordAction> apply(@NotNull SegmentCounterAction it2) {
            List listOfNotNull;
            Intrinsics.checkNotNullParameter(it2, "it");
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(SegmentCounterAction.this.counterEntry.getEntryRecord());
            return new SaveCounterRecordAction(listOfNotNull, null, 2, 0 == true ? 1 : 0).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.SegmentCounterAction$c */
    /* loaded from: classes9.dex */
    public static final class C11882c<T, R> implements Function {
        public C11882c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SegmentCounterAction apply(@NotNull SaveCounterRecordAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SegmentCounterAction.this;
        }
    }

    public SegmentCounterAction(@NotNull CounterEntry counterEntry) {
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterEntry = counterEntry;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SegmentCounterAction> create() {
        Observable<SegmentCounterAction> map = Observable.just(this).doOnNext(new C11880a()).flatMap(new C11881b()).map(new C11882c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
