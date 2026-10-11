package com.onyx.android.sdk.universal.editor.action.common;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0014¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/common/EnsureNoteProviderAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "()V", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Observable;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class EnsureNoteProviderAction extends RxBaseAction<NoteProvider> {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction$a */
    /* loaded from: classes8.dex */
    public static final class C8602a<T, R> implements Function {

        /* renamed from: e */
        public static final C8602a<T, R> f48195e = new C8602a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderInfo apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderInfoUtils.INSTANCE.getUserNoteTreeProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.common.EnsureNoteProviderAction$b */
    /* loaded from: classes8.dex */
    public static final class C8603b<T, R> implements Function {

        /* renamed from: e */
        public static final C8603b<T, R> f48196e = new C8603b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final NoteProvider apply(@NotNull ProviderInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return KSyncBundle.INSTANCE.getDbProviderBundle().getNoteProvider(it2);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<NoteProvider> create() {
        Observable<NoteProvider> map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(C8602a.f48195e).map(C8603b.f48196e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
