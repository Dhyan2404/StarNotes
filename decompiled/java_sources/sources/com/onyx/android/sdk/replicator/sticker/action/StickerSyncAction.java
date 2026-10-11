package com.onyx.android.sdk.replicator.sticker.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.SyncStateOptions;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.http.ComposedStickerData;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModelKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005H\u0002J\b\u0010\u0012\u001a\u00020\tH\u0002¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "m", "categories", "", "p", "Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;", GoogleApiAvailabilityLight.f29016b, "compose", "q", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "stickers", "l", C4921e.f26528e, Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerSyncAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n1855#2:78\n1855#2,2:79\n1856#2:81\n1855#2,2:82\n*S KotlinDebug\n*F\n+ 1 StickerSyncAction.kt\ncom/onyx/android/sdk/replicator/sticker/action/StickerSyncAction\n*L\n42#1:78\n43#1:79,2\n42#1:81\n61#1:82,2\n*E\n"})
/* loaded from: classes8.dex */
public final class StickerSyncAction extends StickerBaseAction<Object> {

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$a */
    /* loaded from: classes8.dex */
    public static final class C7927a<T, R> implements Function {
        public C7927a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerCategoryModel> apply(@NotNull StickerBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StickerSyncAction.this.m35839m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$b */
    /* loaded from: classes8.dex */
    public static final class C7928b<T, R> implements Function {
        public C7928b() {
        }

        /* renamed from: a */
        public final void m35845a(@NotNull List<StickerCategoryModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerSyncAction.this.m35842p(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35845a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$c */
    /* loaded from: classes8.dex */
    public static final class C7929c<T, R> implements Function {
        public C7929c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ComposedStickerData apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StickerSyncAction.this.m35840n();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$d */
    /* loaded from: classes8.dex */
    public static final class C7930d<T, R> implements Function {
        public C7930d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ComposedStickerData apply(@NotNull ComposedStickerData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StickerSyncAction.this.m35843q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$e */
    /* loaded from: classes8.dex */
    public static final class C7931e<T, R> implements Function {
        public C7931e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerModel> apply(@NotNull ComposedStickerData it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StickerSyncAction.this.m35838l(it2.getStickers());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.StickerSyncAction$f */
    /* loaded from: classes8.dex */
    public static final class C7932f<T, R> implements Function {
        public C7932f() {
        }

        /* renamed from: a */
        public final void m35849a(@NotNull List<StickerModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StickerSyncAction.this.m35841o();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35849a((List) obj);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        if (SyncStateOptions.INSTANCE.hasSynced("sticker")) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<StickerBaseAction<Object>> createObservable = createObservable();
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        Observable<R> map = createObservable.observeOn(kSyncBundle.getNetworkScheduler()).map(new C7927a());
        StickerValues stickerValues = StickerValues.INSTANCE;
        Observable<Object> map2 = map.observeOn(stickerValues.getScheduler().getObserveOn()).map(new C7928b()).observeOn(kSyncBundle.getNetworkScheduler()).map(new C7929c()).observeOn(stickerValues.getScheduler().getObserveOn()).map(new C7930d()).map(new C7931e()).map(new C7932f());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: l */
    public final List<StickerModel> m35838l(List<StickerModel> stickers) {
        for (StickerModel stickerModel : stickers) {
            String savedFile = StickerModelKt.getSavedFile(stickerModel);
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (fileUtils.isFileExist(savedFile)) {
                if (!Intrinsics.areEqual(stickerModel.getMd5(), fileUtils.computeFullMD5Safely(savedFile))) {
                    fileUtils.deleteFile(savedFile);
                }
            }
        }
        return stickers;
    }

    /* renamed from: m */
    public final List<StickerCategoryModel> m35839m() {
        return (List) StickerCallExecutor.INSTANCE.loadStickerCategory().getNonNullData();
    }

    /* renamed from: n */
    public final ComposedStickerData m35840n() {
        return StickerCallExecutor.INSTANCE.loadSticker().getNonNullData();
    }

    /* renamed from: o */
    public final void m35841o() {
        SyncStateOptions.INSTANCE.markAsSynced("sticker");
    }

    /* renamed from: p */
    public final void m35842p(List<StickerCategoryModel> categories) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(categories);
        for (StickerCategoryModel stickerCategoryModel : categories) {
            Iterator<T> it2 = stickerCategoryModel.getSubCategory().iterator();
            while (it2.hasNext()) {
                ((StickerCategoryModel) it2.next()).setParentUniqueId(stickerCategoryModel.getUniqueId());
            }
            arrayList.addAll(stickerCategoryModel.getSubCategory());
        }
        getStickerProvider().syncCategories(arrayList);
    }

    /* renamed from: q */
    public final ComposedStickerData m35843q(ComposedStickerData compose) {
        getStickerProvider().syncStickers(compose);
        return compose;
    }
}
