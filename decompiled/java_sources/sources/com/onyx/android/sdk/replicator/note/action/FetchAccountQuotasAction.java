package com.onyx.android.sdk.replicator.note.action;

import androidx.transition.Transition;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.request.cloud.FetchQuotasRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R$\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/FetchAccountQuotasAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "l", "", C6997f.f39671c, Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "category", C6998g.f39679a, "getSubCategory", "setSubCategory", "subCategory", C6999h.f39688c, "getItemId", "setItemId", Transition.f10629M0, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchAccountQuotasAction extends BaseNoteSyncAction<FetchAccountQuotasAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String category;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String subCategory;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String itemId;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction$a */
    /* loaded from: classes8.dex */
    public static final class C7682a<T, R> implements Function {
        public C7682a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<AccountQuotaItemData> apply(@NotNull FetchAccountQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchAccountQuotasAction.this.m35072l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction$b */
    /* loaded from: classes8.dex */
    public static final class C7683b<T, R> implements Function {

        /* renamed from: e */
        public static final C7683b<T, R> f45415e = new C7683b<>();

        /* renamed from: a */
        public final void m35074a(@NotNull List<AccountQuotaItemData> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountDataBundle.INSTANCE.updateAccountQuota(it2);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35074a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchAccountQuotasAction$c */
    /* loaded from: classes8.dex */
    public static final class C7684c<T, R> implements Function {
        public C7684c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FetchAccountQuotasAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchAccountQuotasAction.this;
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FetchAccountQuotasAction> create() {
        Observable<FetchAccountQuotasAction> map = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7682a()).observeOn(getMainUIScheduler()).map(C7683b.f45415e).map(new C7684c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Nullable
    public final String getCategory() {
        return this.category;
    }

    @Nullable
    public final String getItemId() {
        return this.itemId;
    }

    @Nullable
    public final String getSubCategory() {
        return this.subCategory;
    }

    /* renamed from: l */
    public final List<AccountQuotaItemData> m35072l() {
        FetchQuotasRequest fetchQuotasRequest = new FetchQuotasRequest();
        fetchQuotasRequest.setCategory(this.category);
        fetchQuotasRequest.setSubCategory(this.subCategory);
        fetchQuotasRequest.setItemId(this.itemId);
        return fetchQuotasRequest.execute();
    }

    public final void setCategory(@Nullable String str) {
        this.category = str;
    }

    public final void setItemId(@Nullable String str) {
        this.itemId = str;
    }

    public final void setSubCategory(@Nullable String str) {
        this.subCategory = str;
    }
}
