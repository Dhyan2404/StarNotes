package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\b\u001a\u00020\u0007R\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u000b\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/HwrResourceProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;", "models", "", "saveLangResourceList", "", "engine", "loadResourceList", "Lcom/couchbase/lite/Collection;", "a", "Lkotlin/Lazy;", "()Lcom/couchbase/lite/Collection;", "resourceCollection", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHwrResourceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HwrResourceProvider.kt\ncom/onyx/android/sdk/replicator/note/db/HwrResourceProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,30:1\n33#2,2:31\n56#2,8:33\n48#2,5:41\n64#2,4:46\n58#2:50\n*S KotlinDebug\n*F\n+ 1 HwrResourceProvider.kt\ncom/onyx/android/sdk/replicator/note/db/HwrResourceProvider\n*L\n21#1:31,2\n28#1:33,8\n28#1:41,5\n28#1:46,4\n28#1:50\n*E\n"})
/* loaded from: classes8.dex */
public final class HwrResourceProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy resourceCollection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HwrResourceProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.note.db.HwrResourceProvider$resourceCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return HwrResourceProvider.this.ensureCollection(SyncConstant.COLLECTION_HWR_RESOURCE_MODEL);
            }
        });
        this.resourceCollection = lazy;
    }

    /* renamed from: a */
    public final Collection m35172a() {
        return (Collection) this.resourceCollection.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0025, code lost:
    
        if (r2 == null) goto L6;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel> loadResourceList(@org.jetbrains.annotations.NotNull java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "engine"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r1 = new com.onyx.android.sdk.data.couchbase.CBQueryArgs
            r1.<init>()
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r2 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            com.couchbase.lite.Expression r7 = r2.equalExpression(r0, r7)
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r7 = r1.andWith(r7)
            com.onyx.android.sdk.data.couchbase.utils.CouchCollections r0 = com.onyx.android.sdk.data.couchbase.utils.CouchCollections.INSTANCE
            com.couchbase.lite.Collection r6 = r6.m35172a()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L1f:
            if (r6 == 0) goto L27
            java.lang.String r2 = r6.getName()
            if (r2 != 0) goto L29
        L27:
            java.lang.String r2 = "_default"
        L29:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r3 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r4 = r0.queryResultList(r6, r7)
            java.lang.Class<com.onyx.android.sdk.replicator.note.db.model.HwrResourceModel> r5 = com.onyx.android.sdk.replicator.note.p035db.model.HwrResourceModel.class
            java.util.List r2 = r3.fromResultList(r4, r5, r2)
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            r1.addAll(r3)
            int r3 = r7.getOffset()
            int r4 = r2.size()
            int r3 = r3 + r4
            r7.m72252setOffset(r3)
            int r2 = r2.size()
            int r3 = r7.getLimit()
            if (r2 >= r3) goto L1f
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.p035db.HwrResourceProvider.loadResourceList(java.lang.String):java.util.List");
    }

    public final void saveLangResourceList(@NotNull List<HwrResourceModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35172a = m35172a();
        if (m35172a != null) {
            Database database = m35172a.getDatabase();
            Intrinsics.checkNotNullExpressionValue(database, "getDatabase(...)");
            couchCollections.deleteByExpression(m35172a, database, new CBQueryArgs().selectAll());
        }
        couchCollections.saveList(m35172a(), getDatabase(), models);
    }
}
