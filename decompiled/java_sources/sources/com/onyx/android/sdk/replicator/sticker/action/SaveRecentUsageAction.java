package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/SaveRecentUsageAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "e", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "sticker", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SaveRecentUsageAction extends StickerBaseAction<StickerModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StickerModel sticker;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.SaveRecentUsageAction$a */
    /* loaded from: classes8.dex */
    public static final class C7926a<T, R> implements Function {
        public C7926a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerModel apply(@NotNull StickerBaseAction<StickerModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveRecentUsageAction.this.m35836l();
        }
    }

    public SaveRecentUsageAction(@NotNull StickerModel sticker) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        this.sticker = sticker;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StickerModel> create() {
        Observable map = createObservable().map(new C7926a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StickerModel m35836l() {
        getStickerProvider().saveRecentUsage(this.sticker.getUniqueId());
        return this.sticker;
    }
}
