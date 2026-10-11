package com.onyx.android.sdk.universal.editor.action.common;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.AutoBackupTaskProvider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/EnsureAutoBackupTaskProviderAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/replicator/note/db/AutoBackupTaskProvider;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EnsureAutoBackupTaskProviderAction extends RxBaseAction<AutoBackupTaskProvider> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupTaskProviderAction$a */
    /* loaded from: classes8.dex */
    public static final class C8597a<T, R> implements Function {

        /* renamed from: e */
        public static final C8597a<T, R> f48189e = new C8597a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderInfo apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.EnsureAutoBackupTaskProviderAction$b */
    /* loaded from: classes8.dex */
    public static final class C8598b<T, R> implements Function {

        /* renamed from: e */
        public static final C8598b<T, R> f48190e = new C8598b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AutoBackupTaskProvider apply(@NotNull ProviderInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return KSyncBundle.INSTANCE.getDbProviderBundle().getAutoBackupTaskProvider(it2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AutoBackupTaskProvider> create() {
        Observable<AutoBackupTaskProvider> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(C8597a.f48189e).map(C8598b.f48190e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
