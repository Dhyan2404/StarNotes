package com.onyx.galaxy.note.category.action.cover;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.universal.editor.action.bkground.RxBaseTemplateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/cover/LoadCustomCoverAction;", "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadCustomCoverAction extends RxBaseTemplateAction<List<? extends CoverModel>> {

    /* renamed from: com.onyx.galaxy.note.category.action.cover.LoadCustomCoverAction$a */
    /* loaded from: classes9.dex */
    public static final class C11038a<T, R> implements Function {
        public C11038a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<CoverModel> apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCustomCoverAction.this.m42655l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<CoverModel>> create() {
        Observable map = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(getObserveOn()).map(new C11038a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<CoverModel> m42655l() {
        return KSyncBundle.INSTANCE.getDbProviderBundle().getCoverProvider(ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId())).loadListByCategory(new TemplateQueryBean("CUSTOM", null, null, null, 14, null));
    }
}
