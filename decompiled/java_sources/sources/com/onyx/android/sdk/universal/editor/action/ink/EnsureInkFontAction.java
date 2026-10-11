package com.onyx.android.sdk.universal.editor.action.ink;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\b\u0010\t\u001a\u00020\u0000H\u0002¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ink/EnsureInkFontAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", C4921e.f26528e, FontUtils.FONTS, GoogleApiAvailabilityLight.f29016b, "p", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EnsureInkFontAction extends RxBaseAction<EnsureInkFontAction> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$a */
    /* loaded from: classes8.dex */
    public static final class C9553a<T, R> implements Function {
        public C9553a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<FontModel>> apply(@NotNull EnsureInkFontAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureInkFontAction.this.m39247o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$b */
    /* loaded from: classes8.dex */
    public static final class C9554b<T, R> implements Function {
        public C9554b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EnsureInkFontAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureInkFontAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$c */
    /* loaded from: classes8.dex */
    public static final class C9555c<T, R> implements Function {
        public C9555c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final EnsureInkFontAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return EnsureInkFontAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$d */
    /* loaded from: classes8.dex */
    public static final class C9556d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<FontModel> f49945e;

        public C9556d(List<FontModel> list) {
            this.f49945e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<FontModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(this.f49945e, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$e */
    /* loaded from: classes8.dex */
    public static final class C9557e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<FontModel> f49946e;

        public C9557e(List<FontModel> list) {
            this.f49946e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FontModel> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f49946e;
        }
    }

    /* renamed from: m */
    public static final void m39245m(EnsureInkFontAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39248p();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<EnsureInkFontAction> create() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        if (syncStateOptions.hasSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.INK_BEAUTIFY_FONT_DOWNLOADED, null, 2, null))) {
            Observable<EnsureInkFontAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable flatMap = Observable.just(this).flatMap(new C9553a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable<EnsureInkFontAction> doOnComplete = RxjavaKt.takeLastOne(RxjavaKt.flatMapIf(flatMap, new Function1<List<? extends FontModel>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$create$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<FontModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends FontModel> list) {
                return invoke2((List<FontModel>) list);
            }
        }, new Function1<List<? extends FontModel>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$create$3
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<FontModel> it2) {
                Observable<? extends Object> m39246n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39246n = EnsureInkFontAction.this.m39246n(it2);
                return m39246n;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends FontModel> list) {
                return invoke2((List<FontModel>) list);
            }
        })).map(new C9554b()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.xqf
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                EnsureInkFontAction.m39245m(EnsureInkFontAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnComplete, "doOnComplete(...)");
        return doOnComplete;
    }

    /* renamed from: n */
    public final Observable<EnsureInkFontAction> m39246n(List<FontModel> fonts) {
        Observable fromIterable = Observable.fromIterable(fonts);
        Intrinsics.checkNotNullExpressionValue(fromIterable, "fromIterable(...)");
        Observable<EnsureInkFontAction> map = RxjavaKt.takeLastOne(RxjavaKt.flatMapIf(fromIterable, new Function1<FontModel, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$downloadAbsentFont$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FontModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!FontModelExt.INSTANCE.isDownloaded(it2));
            }
        }, new Function1<FontModel, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$downloadAbsentFont$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull FontModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new DownloadFontAction(it2).build();
            }
        })).map(new C9555c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<List<FontModel>> m39247o() {
        final ArrayList arrayList = new ArrayList();
        Observable<List<? extends FontModel>> doOnNext = new LoadInkFontListAction().build().doOnNext(new C9556d(arrayList));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<List<? extends FontModel>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$loadFontList$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<FontModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(arrayList.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends FontModel> list) {
                return invoke2((List<FontModel>) list);
            }
        }, new Function1<List<? extends FontModel>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$loadFontList$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$loadFontList$3$a */
            /* loaded from: classes8.dex */
            public static final class C9558a<T, R> implements Function {

                /* renamed from: e */
                public static final C9558a<T, R> f49947e = new C9558a<>();

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends List<FontModel>> apply(@NotNull Object it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new LoadInkFontListAction().build();
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.EnsureInkFontAction$loadFontList$3$b */
            /* loaded from: classes8.dex */
            public static final class C9559b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ List<FontModel> f49948e;

                public C9559b(List<FontModel> list) {
                    this.f49948e = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<FontModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    CollectionKt.safeAddAll(this.f49948e, it2);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends FontModel> list) {
                return invoke2((List<FontModel>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<FontModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<? extends Object> doOnNext2 = RxjavaKt.takeLastOne(new FetchInkFontListAction().build()).flatMap(C9558a.f49947e).doOnNext(new C9559b(arrayList));
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                return doOnNext2;
            }
        }).map(new C9557e(arrayList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final EnsureInkFontAction m39248p() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        syncStateOptions.markAsSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.INK_BEAUTIFY_FONT_DOWNLOADED, null, 2, null));
        return this;
    }
}
