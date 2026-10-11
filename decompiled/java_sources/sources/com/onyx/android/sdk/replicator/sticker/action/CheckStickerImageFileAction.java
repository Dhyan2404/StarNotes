package com.onyx.android.sdk.replicator.sticker.action;

import android.net.Uri;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\f\u0010\rJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/CheckStickerImageFileAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Landroid/net/Uri;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "e", "Ljava/util/List;", "uris", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CheckStickerImageFileAction extends RxBaseAction<List<? extends Uri>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Uri> uris;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.CheckStickerImageFileAction$a */
    /* loaded from: classes8.dex */
    public static final class C7909a<T> implements Consumer {
        public C7909a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckStickerImageFileAction.this.m35802l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.CheckStickerImageFileAction$b */
    /* loaded from: classes8.dex */
    public static final class C7910b<T> implements Consumer {
        public C7910b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CheckStickerImageFileAction.this.m35803m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.CheckStickerImageFileAction$c */
    /* loaded from: classes8.dex */
    public static final class C7911c<T, R> implements Function {
        public C7911c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Uri> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CheckStickerImageFileAction.this.uris;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CheckStickerImageFileAction(@NotNull List<? extends Uri> uris) {
        Intrinsics.checkNotNullParameter(uris, "uris");
        this.uris = uris;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<? extends Uri>> create() {
        Observable<List<? extends Uri>> map = Observable.just(Unit.INSTANCE).doOnNext(new C7909a()).observeOn(Schedulers.m61350io()).doOnNext(new C7910b()).map(new C7911c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m35802l() {
        if (this.uris.size() > 20) {
            throw OnyxException.INSTANCE.m31891of(ErrorType.REACH_FILE_COUNT_LIMIT);
        }
    }

    /* renamed from: m */
    public final void m35803m() {
        if (!FileUtils.INSTANCE.isImageFile(this.uris)) {
            throw OnyxException.INSTANCE.m31891of(ErrorType.FORMAT_NOT_SUPPORTED);
        }
    }
}
