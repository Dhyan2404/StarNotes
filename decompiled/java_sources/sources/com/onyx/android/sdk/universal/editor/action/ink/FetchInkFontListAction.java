package com.onyx.android.sdk.universal.editor.action.ink;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.common.NoteService;
import com.onyx.android.sdk.replicator.event.FontThumbnailDownloadedEvent;
import com.onyx.android.sdk.replicator.font.FontList;
import com.onyx.android.sdk.replicator.font.FontResourceList;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\u0000H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ink/FetchInkFontListAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/font/FontList;", "p", "fontList", "r", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "m", C4921e.f26528e, "q", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchInkFontListAction extends RxBaseAction<Object> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$a */
    /* loaded from: classes8.dex */
    public static final class C9560a<T, R> implements Function {
        public C9560a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontList apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchInkFontListAction.this.m39260p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$b */
    /* loaded from: classes8.dex */
    public static final class C9561b<T, R> implements Function {
        public C9561b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontList apply(@NotNull FontList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchInkFontListAction.this.m39262r(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$c */
    /* loaded from: classes8.dex */
    public static final class C9562c<T> implements Predicate {

        /* renamed from: e */
        public static final C9562c<T> f49951e = new C9562c<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull FontList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return !it2.isEmpty();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$d */
    /* loaded from: classes8.dex */
    public static final class C9563d<T, R> implements Function {

        /* renamed from: e */
        public static final C9563d<T, R> f49952e = new C9563d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FontModel> apply(@NotNull FontList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$e */
    /* loaded from: classes8.dex */
    public static final class C9564e<T, R> implements Function {
        public C9564e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontModel apply(@NotNull FontModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchInkFontListAction.this.m39258m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$f */
    /* loaded from: classes8.dex */
    public static final class C9565f<T, R> implements Function {
        public C9565f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchInkFontListAction apply(@NotNull FontModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchInkFontListAction.this.m39259o(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$g */
    /* loaded from: classes8.dex */
    public static final class C9566g<T, R> implements Function {
        public C9566g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull FetchInkFontListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchInkFontListAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.FetchInkFontListAction$h */
    /* loaded from: classes8.dex */
    public static final class C9567h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ FontModel f49956e;

        public C9567h(FontModel fontModel) {
            this.f49956e = fontModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new FontThumbnailDownloadedEvent(this.f49956e));
        }
    }

    /* renamed from: n */
    public static final void m39257n(FetchInkFontListAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39261q();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        if (syncStateOptions.hasSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.INK_BEAUTIFY, null, 2, null))) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable just2 = Observable.just(Unit.INSTANCE);
        ClusterManager clusterManager = ClusterManager.INSTANCE;
        Observable<Object> map = just2.observeOn(clusterManager.getCloudObserveOn()).map(new C9560a()).observeOn(AccountDataBundle.INSTANCE.getDataObserveOn()).map(new C9561b()).filter(C9562c.f49951e).observeOn(Schedulers.m61350io()).flatMap(C9563d.f49952e).map(new C9564e()).observeOn(clusterManager.getCloudObserveOn()).map(new C9565f()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.gag
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FetchInkFontListAction.m39257n(FetchInkFontListAction.this);
            }
        }).map(new C9566g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final FontModel m39258m(FontModel model) {
        FileUtils.INSTANCE.checkMD5WithDelete(FontModelExt.getSavePath$default(FontModelExt.INSTANCE, model, null, 1, null), model.getMd5());
        return model;
    }

    /* renamed from: o */
    public final FetchInkFontListAction m39259o(FontModel model) {
        GlideExt glideExt = GlideExt.INSTANCE;
        String previewUrl = model.getPreviewUrl();
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        Observable.merge(glideExt.saveAsFile(previewUrl, fontModelExt.getCachedPreviewFile(model)), glideExt.saveAsFile(model.getInkTitleThumbnail(), fontModelExt.getCachedInkTitleThumbnailFile(model)), glideExt.saveAsFile(model.getInkContentThumbnail(), fontModelExt.getCachedInkContentThumbnailFile(model))).doOnNext(new C9567h(model)).subscribe();
        return this;
    }

    /* renamed from: p */
    public final FontList m39260p() {
        return ((FontResourceList) RetrofitExt.INSTANCE.executeAndGetData(((NoteService) ServiceFactory.INSTANCE.getOnyxApiV2Service(NoteService.class)).loadInkFontList())).getResources();
    }

    /* renamed from: q */
    public final FetchInkFontListAction m39261q() {
        SyncStateOptions syncStateOptions = SyncStateOptions.INSTANCE;
        syncStateOptions.markAsSynced(SyncStateOptions.getComposedKey$default(syncStateOptions, FunctionKey.INK_BEAUTIFY, null, 2, null));
        return this;
    }

    /* renamed from: r */
    public final FontList m39262r(FontList fontList) {
        KSyncBundle.INSTANCE.getUserInkFontProvider().syncInkFontList(fontList);
        return fontList;
    }
}
