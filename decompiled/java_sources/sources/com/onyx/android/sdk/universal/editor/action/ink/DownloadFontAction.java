package com.onyx.android.sdk.universal.editor.action.ink;

import android.graphics.Typeface;
import com.onegravity.rteditor.fonts.FontManager;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.download.FileDownloadRequest;
import com.onyx.android.sdk.data.common.download.OnyxDownloadManager;
import com.onyx.android.sdk.data.common.path.PathManager;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModel;
import com.onyx.android.sdk.replicator.note.p035db.model.FontModelExt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ink/DownloadFontAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "m", "e", "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;", "model", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DownloadFontAction extends RxBaseAction<FontModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final FontModel model;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.DownloadFontAction$a */
    /* loaded from: classes8.dex */
    public static final class C9546a<T, R> implements Function {
        public C9546a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull DownloadFontAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFontAction.this.m39233l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.DownloadFontAction$b */
    /* loaded from: classes8.dex */
    public static final class C9547b<T> implements Consumer {
        public C9547b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DownloadFontAction.this.m39234m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.DownloadFontAction$c */
    /* loaded from: classes8.dex */
    public static final class C9548c<T, R> implements Function {
        public C9548c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FontModel apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DownloadFontAction.this.getModel();
        }
    }

    public DownloadFontAction(@NotNull FontModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        this.model = model;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FontModel> create() {
        Observable<FontModel> map = Observable.just(this).flatMap(new C9546a()).doOnNext(new C9547b()).map(new C9548c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final FontModel getModel() {
        return this.model;
    }

    /* renamed from: l */
    public final Observable<?> m39233l() {
        String randomCacheFile = PathManager.INSTANCE.getRandomCacheFile();
        String savePath$default = FontModelExt.getSavePath$default(FontModelExt.INSTANCE, this.model, null, 1, null);
        FileDownloadRequest fileDownloadRequest = new FileDownloadRequest(this.model.getUrl(), randomCacheFile);
        fileDownloadRequest.setTag(savePath$default);
        fileDownloadRequest.setForceReDownload(true);
        fileDownloadRequest.setFileMd5(this.model.getMd5());
        fileDownloadRequest.setTargetPath(savePath$default);
        return RxjavaKt.takeLastOne(OnyxDownloadManager.INSTANCE.createObservable(fileDownloadRequest));
    }

    /* renamed from: m */
    public final void m39234m() {
        String savePath$default = FontModelExt.getSavePath$default(FontModelExt.INSTANCE, this.model, null, 1, null);
        FontManager.addFontFace(savePath$default, Typeface.createFromFile(savePath$default));
    }
}
