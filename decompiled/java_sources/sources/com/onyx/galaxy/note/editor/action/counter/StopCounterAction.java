package com.onyx.galaxy.note.editor.action.counter;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.editor.action.counter.StopCounterAction;
import com.onyx.galaxy.note.editor.data.CounterEntry;
import com.onyx.galaxy.note.editor.event.CounterDoneEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterEvent;
import com.onyx.galaxy.note.editor.event.ShowCounterSettingEvent;
import com.onyx.galaxy.note.editor.p046ui.CounterBundle;
import com.onyx.galaxy.note.settings.data.CounterPreference;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B+\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "e", "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;", "counterBundle", "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", C6997f.f39671c, "Lcom/onyx/galaxy/note/editor/data/CounterEntry;", "counterEntry", "", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isAbort", C6999h.f39688c, "isManualStop", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/galaxy/note/editor/data/CounterEntry;ZZ)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class StopCounterAction extends RxBaseAction<StopCounterAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CounterBundle counterBundle;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final CounterEntry counterEntry;

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean isAbort;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean isManualStop;

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$a */
    /* loaded from: classes9.dex */
    public static final class C11888a<T, R> implements Function {
        public C11888a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StopCounterAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopCounterAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$b */
    /* loaded from: classes9.dex */
    public static final class C11889b<T> implements Predicate {
        public C11889b() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull StopCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StopCounterAction.this.counterEntry.isRunning();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$c */
    /* loaded from: classes9.dex */
    public static final class C11890c<T> implements Consumer {
        public C11890c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StopCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StopCounterAction.this.counterBundle.postEvent(new ShowCounterEvent(StopCounterAction.this.counterEntry, false, false, 4, null));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$d */
    /* loaded from: classes9.dex */
    public static final class C11891d<T> implements Consumer {
        public C11891d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StopCounterAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StopCounterAction.this.counterBundle.stopCounter(StopCounterAction.this.counterEntry);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$e */
    /* loaded from: classes9.dex */
    public static final class C11892e<T> implements Consumer {
        public C11892e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StopCounterAction.this.m45765n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$f */
    /* loaded from: classes9.dex */
    public static final class C11893f<T> implements Consumer {
        public C11893f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StopCounterAction.this.counterBundle.postEvent(new CounterDoneEvent(StopCounterAction.this.counterEntry, StopCounterAction.this.isManualStop));
        }
    }

    public /* synthetic */ StopCounterAction(CounterBundle counterBundle, CounterEntry counterEntry, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(counterBundle, counterEntry, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2);
    }

    /* renamed from: m */
    public static final void m45764m(boolean z, StopCounterAction it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        CounterPreference.getHasCounterNewRecordOption$default(CounterPreference.INSTANCE, z, null, 2, null).put(true);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StopCounterAction> create() {
        final boolean z = !this.counterEntry.isCountUp();
        Observable doOnNext = Observable.just(this).filter(new C11889b()).doOnNext(new C11890c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable doOnNext2 = RxjavaKt.doOnNextIf(doOnNext, new Function1<StopCounterAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull StopCounterAction it2) {
                boolean z2;
                Intrinsics.checkNotNullParameter(it2, "it");
                z2 = StopCounterAction.this.isAbort;
                return Boolean.valueOf(!z2);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.yzm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                StopCounterAction.m45764m(z, (StopCounterAction) obj);
            }
        }).doOnNext(new C11891d());
        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext2, new Function1<StopCounterAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$create$6
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull StopCounterAction it2) {
                boolean z2;
                Intrinsics.checkNotNullParameter(it2, "it");
                z2 = StopCounterAction.this.isAbort;
                return Boolean.valueOf(!z2);
            }
        }, new Function1<StopCounterAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.counter.StopCounterAction$create$7
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull StopCounterAction it2) {
                Observable<? extends Object> m45766o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45766o = StopCounterAction.this.m45766o();
                return m45766o;
            }
        }).doOnNext(new C11892e()).doOnNext(new C11893f()).map(new C11888a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m45765n() {
        GlobalBundle.INSTANCE.postEvent(new ShowCounterSettingEvent(this.counterEntry.isCountUp() ? 1 : 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public final Observable<?> m45766o() {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(this.counterEntry.getEntryRecord());
        return new SaveCounterRecordAction(listOf, null, 2, 0 == true ? 1 : 0).build();
    }

    public StopCounterAction(@NotNull CounterBundle counterBundle, @NotNull CounterEntry counterEntry, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(counterBundle, "counterBundle");
        Intrinsics.checkNotNullParameter(counterEntry, "counterEntry");
        this.counterBundle = counterBundle;
        this.counterEntry = counterEntry;
        this.isAbort = z;
        this.isManualStop = z2;
    }
}
