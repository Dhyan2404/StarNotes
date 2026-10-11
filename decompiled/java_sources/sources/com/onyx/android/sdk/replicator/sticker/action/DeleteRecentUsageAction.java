package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/DeleteRecentUsageAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "e", Constants.STRING_SIG, CouchFieldKey.KEY_STICKER_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteRecentUsageAction extends StickerBaseAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String stickerId;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.DeleteRecentUsageAction$a */
    /* loaded from: classes8.dex */
    public static final class C7914a<T, R> implements Function {
        public C7914a() {
        }

        /* renamed from: a */
        public final void m35812a(@NotNull StickerBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteRecentUsageAction.this.m35811l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35812a((StickerBaseAction) obj);
            return Unit.INSTANCE;
        }
    }

    public DeleteRecentUsageAction(@NotNull String stickerId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        this.stickerId = stickerId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> map = createObservable().map(new C7914a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m35811l() {
        getStickerProvider().deleteUsageByStickerId(this.stickerId);
    }
}
