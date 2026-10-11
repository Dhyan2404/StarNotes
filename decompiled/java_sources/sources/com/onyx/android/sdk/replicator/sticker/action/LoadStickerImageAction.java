package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.glide.GlideExt;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerImageAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "e", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "sticker", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadStickerImageAction extends StickerBaseAction<String> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StickerModel sticker;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.LoadStickerImageAction$a */
    /* loaded from: classes8.dex */
    public static final class C7921a<T, R> implements Function {
        public C7921a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull StickerBaseAction<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadStickerImageAction.this.m35825l();
        }
    }

    public LoadStickerImageAction(@NotNull StickerModel sticker) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        this.sticker = sticker;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<String> create() {
        Observable flatMap = createObservable().flatMap(new C7921a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<String> m35825l() {
        if (!StickerModelKt.isSaved(this.sticker)) {
            return m35826m();
        }
        Observable<String> just = Observable.just(StickerModelKt.getSavedFile(this.sticker));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: m */
    public final Observable<String> m35826m() {
        return GlideExt.INSTANCE.saveAsFile(this.sticker.getImageUrl(), StickerModelKt.getSavedFile(this.sticker));
    }
}
