package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.message.model.NotificationModel;
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

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\b\u001a\u00020\u0005R\u001b\u0010\r\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NotificationProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/data/message/model/NotificationModel;", "notifications", "", "saveAll", "loadAll", "deleteAll", "Lcom/couchbase/lite/Collection;", "a", "Lkotlin/Lazy;", "()Lcom/couchbase/lite/Collection;", "notificationCollection", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "holder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotificationProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,31:1\n48#2,5:32\n*S KotlinDebug\n*F\n+ 1 NotificationProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NotificationProvider\n*L\n24#1:32,5\n*E\n"})
/* loaded from: classes8.dex */
public final class NotificationProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy notificationCollection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationProvider(@NotNull final CouchHolder holder) {
        super(holder);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(holder, "holder");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.note.db.NotificationProvider$notificationCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return CouchHolder.this.ensureCollection(SyncConstant.COLLECTION_NOTIFICATION);
            }
        });
        this.notificationCollection = lazy;
    }

    /* renamed from: a */
    public final Collection m35180a() {
        return (Collection) this.notificationCollection.getValue();
    }

    public final void deleteAll() {
        CouchCollections.INSTANCE.deleteByExpression(m35180a(), getDatabase(), new CBQueryArgs().selectAll());
    }

    @NotNull
    public final List<NotificationModel> loadAll() {
        String str;
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35180a = m35180a();
        if (m35180a == null || (str = m35180a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35180a, selectAll), NotificationModel.class, str);
    }

    public final void saveAll(@NotNull List<NotificationModel> notifications) {
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        CouchCollections.INSTANCE.saveList(m35180a(), getDatabase(), notifications);
    }
}
