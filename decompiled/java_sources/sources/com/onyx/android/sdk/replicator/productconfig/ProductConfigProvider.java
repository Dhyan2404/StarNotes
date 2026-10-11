package com.onyx.android.sdk.replicator.productconfig;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R0\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\nj\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004`\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", CouchFieldKey.KEY_CONFIG_TYPE, "Lcom/onyx/android/sdk/replicator/productconfig/ProductConfigModel;", "loadFromLocal", "", "a", "b", "c", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "caches", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nProductConfigProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductConfigProvider.kt\ncom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,42:1\n38#2,15:43\n*S KotlinDebug\n*F\n+ 1 ProductConfigProvider.kt\ncom/onyx/android/sdk/replicator/productconfig/ProductConfigProvider\n*L\n38#1:43,15\n*E\n"})
/* loaded from: classes8.dex */
public final class ProductConfigProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, ProductConfigModel> caches;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductConfigProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        this.caches = new HashMap<>();
    }

    /* renamed from: a */
    public final boolean m35566a(String configType) {
        return this.caches.containsKey(configType);
    }

    /* renamed from: b */
    public final ProductConfigModel m35567b(String configType) {
        ProductConfigModel productConfigModel = this.caches.get(configType);
        Intrinsics.checkNotNull(productConfigModel);
        return productConfigModel;
    }

    /* renamed from: c */
    public final ProductConfigModel m35568c(String configType) {
        BaseReplicatorModel baseReplicatorModel;
        Object first;
        Collection createCollection = getCouchHolder().ensureDB().createCollection(SyncConstant.CLOUD_CONFIG_CHANNEL);
        Intrinsics.checkNotNullExpressionValue(createCollection, "createCollection(...)");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CONFIG_TYPE, configType));
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CONFIG_STATUS, 0));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        cBQueryArgs.m72250setDistinct(true);
        String name = createCollection.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(createCollection, cBQueryArgs), ProductConfigModel.class, name);
        if (!fromResultList.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) fromResultList);
            baseReplicatorModel = (BaseReplicatorModel) first;
        } else {
            baseReplicatorModel = null;
        }
        ProductConfigModel productConfigModel = (ProductConfigModel) baseReplicatorModel;
        if (productConfigModel == null) {
            productConfigModel = ProductConfigModel.INSTANCE.getEmpty();
        }
        this.caches.put(configType, productConfigModel);
        return productConfigModel;
    }

    @NotNull
    public final ProductConfigModel loadFromLocal(@NotNull String configType) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        return m35566a(configType) ? m35567b(configType) : m35568c(configType);
    }
}
