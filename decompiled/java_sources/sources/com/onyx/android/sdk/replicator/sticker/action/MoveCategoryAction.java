package com.onyx.android.sdk.replicator.sticker.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.ResponeDataKt;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/MoveCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "e", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "sticker", "", C6997f.f39671c, Constants.STRING_SIG, "newCategoryId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MoveCategoryAction extends StickerBaseAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StickerModel sticker;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String newCategoryId;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.MoveCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7922a<T, R> implements Function {
        public C7922a() {
        }

        /* renamed from: a */
        public final void m35830a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveCategoryAction.this.m35828l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35830a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.MoveCategoryAction$b */
    /* loaded from: classes8.dex */
    public static final class C7923b<T, R> implements Function {
        public C7923b() {
        }

        /* renamed from: a */
        public final void m35831a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveCategoryAction.this.m35829m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35831a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    public MoveCategoryAction(@NotNull StickerModel sticker, @NotNull String newCategoryId) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        Intrinsics.checkNotNullParameter(newCategoryId, "newCategoryId");
        this.sticker = sticker;
        this.newCategoryId = newCategoryId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7922a()).observeOn(getStickerObserveOn()).map(new C7923b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m35828l() {
        if (!ResponeDataKt.success(StickerCallExecutor.INSTANCE.moveStickerCategory(this.sticker, this.newCategoryId))) {
            throw OnyxException.INSTANCE.m31891of(ErrorType.REQUEST_FAIL);
        }
    }

    /* renamed from: m */
    public final void m35829m() {
        getStickerProvider().moveStickerCategory(this.sticker, this.newCategoryId);
    }
}
