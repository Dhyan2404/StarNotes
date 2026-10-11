package com.onyx.android.sdk.cloudstorage.common.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.p020db.CloudStorageDBBundle;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/common/action/DeleteLocalAuthAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", Constants.STRING_SIG, "providerTitle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class DeleteLocalAuthAction extends RxBaseAction<Long> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String providerTitle;

    /* renamed from: com.onyx.android.sdk.cloudstorage.common.action.DeleteLocalAuthAction$a */
    /* loaded from: classes7.dex */
    public static final class C7156a<T, R> implements Function {
        public C7156a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Long apply(@NotNull DeleteLocalAuthAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Long.valueOf(DeleteLocalAuthAction.this.m32260l());
        }
    }

    public DeleteLocalAuthAction(@NotNull String providerTitle) {
        Intrinsics.checkNotNullParameter(providerTitle, "providerTitle");
        this.providerTitle = providerTitle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Long> create() {
        Observable<Long> observeOn = Observable.just(this).observeOn(Schedulers.m61350io()).map(new C7156a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final long m32260l() {
        return CloudStorageDBBundle.INSTANCE.getProviderAccountProvider().deleteProviderAccountList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_PROVIDER_NAME, this.providerTitle)));
    }
}
