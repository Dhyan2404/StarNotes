package com.onyx.android.sdk.replicator.note.action;

import androidx.transition.Transition;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.QuotaUsageDetailData;
import com.onyx.android.sdk.data.account.bean.QuotaUsageDetailItem;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R$\u0010\u000e\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\"\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001d¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/FetchUsageQuotaDetailAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "", "Lcom/onyx/android/sdk/data/account/bean/QuotaUsageDetailItem;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "category", C6998g.f39679a, "getSubCategory", "setSubCategory", "subCategory", C6999h.f39688c, "getItemId", "setItemId", Transition.f10629M0, "", "i", "I", "getPage", "()I", "setPage", "(I)V", "page", "j", "getPageSize", "setPageSize", "pageSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchUsageQuotaDetailAction extends BaseNoteSyncAction<List<? extends QuotaUsageDetailItem>> {

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String category;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String subCategory;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String itemId;

    /* renamed from: i, reason: from kotlin metadata */
    public int page = 1;

    /* renamed from: j, reason: from kotlin metadata */
    public int pageSize = 10;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchUsageQuotaDetailAction$a */
    /* loaded from: classes8.dex */
    public static final class C7687a<T, R> implements Function {
        public C7687a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<QuotaUsageDetailItem> apply(@NotNull FetchUsageQuotaDetailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchUsageQuotaDetailAction.this.m35079l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<QuotaUsageDetailItem>> create() {
        Observable<List<QuotaUsageDetailItem>> map = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7687a());
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

    public final int getPage() {
        return this.page;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    @Nullable
    public final String getSubCategory() {
        return this.subCategory;
    }

    /* renamed from: l */
    public final List<QuotaUsageDetailItem> m35079l() {
        List<QuotaUsageDetailItem> emptyList;
        try {
            return ((QuotaUsageDetailData) RetrofitExt.INSTANCE.executeAndGetData(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).fetchQuotasUsageDetail(this.category, this.subCategory, this.itemId, String.valueOf(this.page), String.valueOf(this.pageSize)))).getItems();
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    public final void setCategory(@Nullable String str) {
        this.category = str;
    }

    public final void setItemId(@Nullable String str) {
        this.itemId = str;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final void setPageSize(int i) {
        this.pageSize = i;
    }

    public final void setSubCategory(@Nullable String str) {
        this.subCategory = str;
    }
}
