package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.bean.AccountQuotaSubItem;
import com.onyx.android.sdk.data.account.request.cloud.FetchQuotasRequest;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "l", "", C6997f.f39671c, Constants.STRING_SIG, "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "category", C6998g.f39679a, "getSubCategory", "setSubCategory", "subCategory", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FetchScaleCollectionQuotasAction extends BaseNoteSyncAction<Integer> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public String category = "scaleCollection";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String subCategory = "normalScaleCollection";

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchScaleCollectionQuotasAction$a */
    /* loaded from: classes8.dex */
    public static final class C7685a<T, R> implements Function {
        public C7685a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<AccountQuotaItemData> apply(@NotNull FetchScaleCollectionQuotasAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FetchScaleCollectionQuotasAction.this.m35076l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.FetchScaleCollectionQuotasAction$b */
    /* loaded from: classes8.dex */
    public static final class C7686b<T, R> implements Function {
        public C7686b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull List<AccountQuotaItemData> it2) {
            AccountQuotaSubItem accountQuotaSubItem;
            T t;
            int i;
            List<AccountQuotaSubItem> subItems;
            Intrinsics.checkNotNullParameter(it2, "it");
            FetchScaleCollectionQuotasAction fetchScaleCollectionQuotasAction = FetchScaleCollectionQuotasAction.this;
            Iterator<T> it3 = it2.iterator();
            while (true) {
                accountQuotaSubItem = null;
                if (!it3.hasNext()) {
                    t = (T) null;
                    break;
                }
                t = it3.next();
                if (Intrinsics.areEqual(((AccountQuotaItemData) t).getCategory(), fetchScaleCollectionQuotasAction.getCategory())) {
                    break;
                }
            }
            AccountQuotaItemData accountQuotaItemData = t;
            if (accountQuotaItemData != null && (subItems = accountQuotaItemData.getSubItems()) != null) {
                FetchScaleCollectionQuotasAction fetchScaleCollectionQuotasAction2 = FetchScaleCollectionQuotasAction.this;
                Iterator<T> it4 = subItems.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    T next = it4.next();
                    if (Intrinsics.areEqual(((AccountQuotaSubItem) next).getCategory(), fetchScaleCollectionQuotasAction2.getSubCategory())) {
                        accountQuotaSubItem = next;
                        break;
                    }
                }
                AccountQuotaSubItem accountQuotaSubItem2 = accountQuotaSubItem;
                if (accountQuotaSubItem2 != null) {
                    i = (int) accountQuotaSubItem2.getTotalQuota();
                    return Integer.valueOf(i);
                }
            }
            i = -1;
            return Integer.valueOf(i);
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        Observable<Integer> map = Observable.just(this).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7685a()).map(new C7686b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getCategory() {
        return this.category;
    }

    @NotNull
    public final String getSubCategory() {
        return this.subCategory;
    }

    /* renamed from: l */
    public final List<AccountQuotaItemData> m35076l() {
        FetchQuotasRequest fetchQuotasRequest = new FetchQuotasRequest();
        fetchQuotasRequest.setCategory(this.category);
        fetchQuotasRequest.setSubCategory(this.subCategory);
        return fetchQuotasRequest.execute();
    }

    public final void setCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final void setSubCategory(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.subCategory = str;
    }
}
