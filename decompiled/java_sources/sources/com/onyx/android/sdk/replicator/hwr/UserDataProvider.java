package com.onyx.android.sdk.replicator.hwr;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.account.model.HWRActivationModel;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\f\u001a\u00020\tR\u001b\u0010\u0011\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/hwr/UserDataProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "engine", "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;", "queryActivationStateByEngine", "", "queryAllActivationStates", "model", "", "saveActivationState", "deleteActivationStateByEngine", "deleteAllActivationStates", "Lcom/couchbase/lite/Collection;", "a", "Lkotlin/Lazy;", "()Lcom/couchbase/lite/Collection;", "hwrActivationStateCollection", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserDataProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserDataProvider.kt\ncom/onyx/android/sdk/replicator/hwr/UserDataProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,44:1\n38#2,15:45\n48#2,5:60\n*S KotlinDebug\n*F\n+ 1 UserDataProvider.kt\ncom/onyx/android/sdk/replicator/hwr/UserDataProvider\n*L\n21#1:45,15\n27#1:60,5\n*E\n"})
/* loaded from: classes8.dex */
public final class UserDataProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy hwrActivationStateCollection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserDataProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.hwr.UserDataProvider$hwrActivationStateCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return UserDataProvider.this.ensureCollection(SyncConstant.COLLECTION_HWR_ACTIVATION_MODEL);
            }
        });
        this.hwrActivationStateCollection = lazy;
    }

    /* renamed from: a */
    public final Collection m34985a() {
        return (Collection) this.hwrActivationStateCollection.getValue();
    }

    public final void deleteActivationStateByEngine(@NotNull String engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        CouchCollections.INSTANCE.deleteByExpression(m34985a(), getDatabase(), new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("engine", engine)));
    }

    public final void deleteAllActivationStates() {
        CouchCollections.INSTANCE.deleteByExpression(m34985a(), getDatabase(), new CBQueryArgs().selectAll());
    }

    @Nullable
    public final HWRActivationModel queryActivationStateByEngine(@NotNull String engine) {
        String str;
        BaseReplicatorModel baseReplicatorModel;
        Object first;
        Intrinsics.checkNotNullParameter(engine, "engine");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("engine", engine));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34985a = m34985a();
        andWith.m72250setDistinct(true);
        if (m34985a == null || (str = m34985a.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m34985a, andWith), HWRActivationModel.class, str);
        if (!fromResultList.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) fromResultList);
            baseReplicatorModel = (BaseReplicatorModel) first;
        } else {
            baseReplicatorModel = null;
        }
        return (HWRActivationModel) baseReplicatorModel;
    }

    @NotNull
    public final List<HWRActivationModel> queryAllActivationStates() {
        String str;
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m34985a = m34985a();
        if (m34985a == null || (str = m34985a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m34985a, selectAll), HWRActivationModel.class, str);
    }

    public final void saveActivationState(@NotNull HWRActivationModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        CouchCollections.INSTANCE.saveDocument(m34985a(), (Collection) model);
    }
}
