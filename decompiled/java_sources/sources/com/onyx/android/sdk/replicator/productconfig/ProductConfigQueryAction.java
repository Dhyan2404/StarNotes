package com.onyx.android.sdk.replicator.productconfig;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.message.MessageReplicateArgs;
import com.onyx.android.sdk.replicator.message.MessageReplicator;
import com.onyx.android.sdk.replicator.message.MessageReplicatorSyncAction;
import com.onyx.android.sdk.replicator.replicator.ReplicatorBundle;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigQueryAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "m", "l", "", "e", Constants.STRING_SIG, CouchFieldKey.KEY_CONFIG_TYPE, "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/message/MessageReplicateArgs;", "args", "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/message/MessageReplicator;", "replicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ProductConfigQueryAction extends RxBaseAction<ProductConfigModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String configType;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final MessageReplicateArgs args;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final MessageReplicator replicator;

    /* renamed from: com.onyx.android.sdk.replicator.productconfig.ProductConfigQueryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7801a<T, R> implements Function {
        public C7801a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull ProductConfigQueryAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProductConfigQueryAction.this.m35570m();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.productconfig.ProductConfigQueryAction$b */
    /* loaded from: classes8.dex */
    public static final class C7802b<T, R> implements Function {
        public C7802b() {
        }

        @NotNull
        /* renamed from: a */
        public final ProductConfigModel m35572a(boolean z) {
            return ProductConfigQueryAction.this.m35569l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m35572a(((Boolean) obj).booleanValue());
        }
    }

    public ProductConfigQueryAction(@NotNull String configType) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        this.configType = configType;
        MessageReplicateArgs messageReplicateArgs = new MessageReplicateArgs(SyncConstant.CLOUD_CONFIG_CHANNEL, true);
        this.args = messageReplicateArgs;
        this.replicator = ReplicatorBundle.INSTANCE.getMessageReplicator(messageReplicateArgs);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ProductConfigModel> create() {
        Observable<ProductConfigModel> map = Observable.just(this).observeOn(this.replicator.getObserveOn()).flatMap(new C7801a()).map(new C7802b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final ProductConfigModel m35569l() {
        ProductConfigModel loadFromLocal = KSyncBundle.INSTANCE.getDbProviderBundle().getProductConfigProvider(ProviderInfoUtils.INSTANCE.getMessageProviderInfo(this.args.getUserId())).loadFromLocal(this.configType);
        if (!loadFromLocal.isEmpty()) {
            return loadFromLocal;
        }
        throw new RuntimeException("Product Config not Found : " + this.configType);
    }

    /* renamed from: m */
    public final Observable<Boolean> m35570m() {
        if (!MessageReplicator.INSTANCE.replicated(this.args.getUserId(), SyncConstant.CLOUD_CONFIG_CHANNEL)) {
            return new MessageReplicatorSyncAction(this.args).build();
        }
        Observable<Boolean> just = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
