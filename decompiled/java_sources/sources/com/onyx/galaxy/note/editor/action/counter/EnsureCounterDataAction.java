package com.onyx.galaxy.note.editor.action.counter;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.counter.data.CounterType;
import com.onyx.android.sdk.replicator.counter.model.CounterTaskModel;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\t\u001a\u00020\bH\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;", "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "", "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;", "m", "", "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EnsureCounterDataAction extends RxCounterBaseAction<EnsureCounterDataAction> {

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$a */
    /* loaded from: classes9.dex */
    public static final class C11867a<T, R> implements Function {
        public C11867a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EnsureCounterDataAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureCounterDataAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$b */
    /* loaded from: classes9.dex */
    public static final class C11868b<T, R> implements Function {
        public C11868b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateCounterTaskAction> apply(@NotNull EnsureCounterDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateCounterTaskAction(EnsureCounterDataAction.this.m45737m()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$c */
    /* loaded from: classes9.dex */
    public static final class C11869c<T> implements Consumer {

        /* renamed from: e */
        public static final C11869c<T> f58243e = new C11869c<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CreateCounterTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MMKVNote.INSTANCE.setUserCounterInitDataVersion(AccountDataBundle.INSTANCE.getSyncUserId(), 1);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$d */
    /* loaded from: classes9.dex */
    public static final class C11870d<T, R> implements Function {
        public C11870d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EnsureCounterDataAction apply(@NotNull CreateCounterTaskAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureCounterDataAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<EnsureCounterDataAction> create() {
        Observable just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable map = RxjavaKt.flatMapIf(just, new Function1<EnsureCounterDataAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull EnsureCounterDataAction it2) {
                boolean m45736l;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45736l = EnsureCounterDataAction.this.m45736l();
                return Boolean.valueOf(m45736l);
            }
        }, new Function1<EnsureCounterDataAction, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.counter.EnsureCounterDataAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull EnsureCounterDataAction it2) {
                Observable<? extends Object> m45738n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m45738n = EnsureCounterDataAction.this.m45738n();
                return m45738n;
            }
        }).map(new C11867a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final boolean m45736l() {
        return MMKVNote.INSTANCE.getUserCounterInitDataVersion(AccountDataBundle.INSTANCE.getSyncUserId()) < 1;
    }

    /* renamed from: m */
    public final List<CounterTaskModel> m45737m() {
        List<CounterTaskModel.CountTimeSetting> mutableListOf;
        List<CounterTaskModel.CountTimeSetting> mutableListOf2;
        List<CounterTaskModel.CountTimeSetting> mutableListOf3;
        List<CounterTaskModel> listOf;
        long millisOfNow = DateTimeUtil.INSTANCE.millisOfNow();
        CounterTaskModel[] counterTaskModelArr = new CounterTaskModel[3];
        CounterTaskModel counterTaskModel = new CounterTaskModel();
        counterTaskModel.setType(CounterType.COUNT_DOWN.ordinal());
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C10651R.string.counter_focus);
        if (string == null) {
            string = "";
        }
        counterTaskModel.setTitle(string);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new CounterTaskModel.CountTimeSetting("", timeUnit.toMillis(25L)));
        counterTaskModel.setCountList(mutableListOf);
        counterTaskModel.setCreatedAt(millisOfNow);
        Unit unit = Unit.INSTANCE;
        counterTaskModelArr[0] = counterTaskModel;
        CounterTaskModel counterTaskModel2 = new CounterTaskModel();
        CounterType counterType = CounterType.COUNT_DOWN_MULTIPLE;
        counterTaskModel2.setType(counterType.ordinal());
        String string2 = resManager.getString(C10651R.string.counter_pomodoro);
        if (string2 == null) {
            string2 = "";
        }
        counterTaskModel2.setTitle(string2);
        String string3 = resManager.getString(C10651R.string.counter_pomodoro_focus);
        String string4 = resManager.getString(C10651R.string.counter_pomodoro_rest);
        mutableListOf2 = CollectionsKt__CollectionsKt.mutableListOf(new CounterTaskModel.CountTimeSetting(string3 + "×1", timeUnit.toMillis(25L)), new CounterTaskModel.CountTimeSetting(string4 + "×1", timeUnit.toMillis(5L)), new CounterTaskModel.CountTimeSetting(string3 + "×2", timeUnit.toMillis(25L)), new CounterTaskModel.CountTimeSetting(string4 + "×2", timeUnit.toMillis(5L)), new CounterTaskModel.CountTimeSetting(string3 + "×3", timeUnit.toMillis(25L)), new CounterTaskModel.CountTimeSetting(string4 + "×3", timeUnit.toMillis(5L)), new CounterTaskModel.CountTimeSetting(string3 + "×4", timeUnit.toMillis(25L)), new CounterTaskModel.CountTimeSetting(string4 + "×4", timeUnit.toMillis(30L)));
        counterTaskModel2.setCountList(mutableListOf2);
        long j = millisOfNow + (-1);
        counterTaskModel2.setCreatedAt(j);
        counterTaskModelArr[1] = counterTaskModel2;
        CounterTaskModel counterTaskModel3 = new CounterTaskModel();
        counterTaskModel3.setType(counterType.ordinal());
        String string5 = resManager.getString(C10651R.string.counter_cet4);
        if (string5 == null) {
            string5 = "";
        }
        counterTaskModel3.setTitle(string5);
        mutableListOf3 = CollectionsKt__CollectionsKt.mutableListOf(new CounterTaskModel.CountTimeSetting(resManager.getString(C10651R.string.counter_cet_writing), timeUnit.toMillis(30L)), new CounterTaskModel.CountTimeSetting(resManager.getString(C10651R.string.counter_cet_listen), timeUnit.toMillis(25L)), new CounterTaskModel.CountTimeSetting(resManager.getString(C10651R.string.counter_cet_reading), timeUnit.toMillis(40L)), new CounterTaskModel.CountTimeSetting(resManager.getString(C10651R.string.counter_cet_translating), timeUnit.toMillis(30L)));
        counterTaskModel3.setCountList(mutableListOf3);
        counterTaskModel3.setCreatedAt(j - 1);
        counterTaskModelArr[2] = counterTaskModel3;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) counterTaskModelArr);
        return listOf;
    }

    /* renamed from: n */
    public final Observable<EnsureCounterDataAction> m45738n() {
        Observable<EnsureCounterDataAction> map = Observable.just(this).flatMap(new C11868b()).doOnNext(C11869c.f58243e).map(new C11870d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
