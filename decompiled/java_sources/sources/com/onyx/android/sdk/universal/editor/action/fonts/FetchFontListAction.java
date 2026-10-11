package com.onyx.android.sdk.universal.editor.action.fonts;

import android.graphics.Typeface;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.FontThumbnailDownloadedEvent;
import com.onyx.android.sdk.replicator.font.FontList;
import com.onyx.android.sdk.replicator.font.FontResourceList;
import com.onyx.android.sdk.replicator.font.FontServiceExecutor;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\u0000H\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/fonts/FetchFontListAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/font/FontList;", C4921e.f26528e, "fontList", "q", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", "l", "m", "p", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchFontListAction extends RxBaseAction<Object> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$a */
    /* loaded from: classes8.dex */
    public static final class C9107a<T> implements Consumer {
        public C9107a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull FetchFontListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchFontListAction.this.m38346n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$b */
    /* loaded from: classes8.dex */
    public static final class C9108b<T, R> implements Function {
        public C9108b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontList apply(@NotNull FetchFontListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFontListAction.this.m38347o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$c */
    /* loaded from: classes8.dex */
    public static final class C9109c<T, R> implements Function {
        public C9109c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontList apply(@NotNull FontList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFontListAction.this.m38349q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$d */
    /* loaded from: classes8.dex */
    public static final class C9110d<T, R> implements Function {

        /* renamed from: e */
        public static final C9110d<T, R> f49067e = new C9110d<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FontModel> apply(@NotNull FontList it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$e */
    /* loaded from: classes8.dex */
    public static final class C9111e<T, R> implements Function {
        public C9111e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontModel apply(@NotNull FontModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFontListAction.this.m38344l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$f */
    /* loaded from: classes8.dex */
    public static final class C9112f<T, R> implements Function {
        public C9112f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchFontListAction apply(@NotNull FontModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFontListAction.this.m38345m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$g */
    /* loaded from: classes8.dex */
    public static final class C9113g<T, R> implements Function {
        public C9113g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull FetchFontListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchFontListAction.this.m38348p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.fonts.FetchFontListAction$h */
    /* loaded from: classes8.dex */
    public static final class C9114h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ FontModel f49071e;

        public C9114h(FontModel fontModel) {
            this.f49071e = fontModel;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new FontThumbnailDownloadedEvent(this.f49071e));
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        if (SyncStateOptions.INSTANCE.hasSynced("font")) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C9107a()).map(new C9108b()).map(new C9109c()).flatMap(C9110d.f49067e).map(new C9111e()).map(new C9112f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Object> map2 = RxjavaKt.takeLastOne(map).map(new C9113g());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: l */
    public final FontModel m38344l(FontModel model) {
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        if (!fontModelExt.isDownloaded(model)) {
            return model;
        }
        String savePath$default = FontModelExt.getSavePath$default(fontModelExt, model, null, 1, null);
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!Intrinsics.areEqual(model.getMd5(), fileUtils.computeFullMD5Safely(savePath$default))) {
            fileUtils.deleteFile(savePath$default);
        }
        return model;
    }

    /* renamed from: m */
    public final FetchFontListAction m38345m(FontModel model) {
        GlideExt glideExt = GlideExt.INSTANCE;
        String previewUrl = model.getPreviewUrl();
        FontModelExt fontModelExt = FontModelExt.INSTANCE;
        Observable.merge(glideExt.saveAsFile(previewUrl, fontModelExt.getCachedPreviewFile(model)), glideExt.saveAsFile(model.getInkTitleThumbnail(), fontModelExt.getCachedInkTitleThumbnailFile(model)), glideExt.saveAsFile(model.getInkContentThumbnail(), fontModelExt.getCachedInkContentThumbnailFile(model))).doOnNext(new C9114h(model)).subscribe();
        return this;
    }

    /* renamed from: n */
    public final void m38346n() {
        String ensureDefaultFontPath = FontConfig.INSTANCE.ensureDefaultFontPath();
        FontManager.addFontFace(ensureDefaultFontPath, Typeface.createFromFile(ensureDefaultFontPath));
    }

    /* renamed from: o */
    public final FontList m38347o() {
        FontResourceList data = FontServiceExecutor.INSTANCE.loadFontList().getData();
        Intrinsics.checkNotNull(data);
        return data.getResources();
    }

    /* renamed from: p */
    public final FetchFontListAction m38348p() {
        SyncStateOptions.INSTANCE.markAsSynced("font");
        return this;
    }

    /* renamed from: q */
    public final FontList m38349q(FontList fontList) {
        KSyncBundle.INSTANCE.getAppFontProvider().syncFontList(fontList);
        return fontList;
    }
}
