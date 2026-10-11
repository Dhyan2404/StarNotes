package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteExtraModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TagExtraModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004J\u0014\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0004J\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004J\u0014\u0010\u0010\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\r0\u0004J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/NoteExtraModel;", "loadNoteExtraList", "loadExpandedNoteExtraList", "", "ids", "models", "", "saveNoteExtraList", "Lcom/onyx/android/sdk/replicator/note/db/model/TagExtraModel;", "loadTagExtraList", "loadExpandedTagExtraList", "saveTagExtraList", "Lcom/couchbase/lite/Collection;", "a", "b", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteExtraProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExtraProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteExtraProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n*L\n1#1,76:1\n48#2,5:77\n48#2,5:82\n*S KotlinDebug\n*F\n+ 1 NoteExtraProvider.kt\ncom/onyx/android/sdk/replicator/note/db/NoteExtraProvider\n*L\n29#1:77,5\n53#1:82,5\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteExtraProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteExtraProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35174a() {
        return ensureCollection(SyncConstant.COLLECTION_NOTE_EXTRA_MODEL);
    }

    /* renamed from: b */
    public final Collection m35175b() {
        return ensureCollection(SyncConstant.COLLECTION_TAG_EXTRA_MODEL);
    }

    @NotNull
    public final List<NoteExtraModel> loadExpandedNoteExtraList() {
        return loadNoteExtraList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_EXPAND_STATUS, 1)));
    }

    @NotNull
    public final List<TagExtraModel> loadExpandedTagExtraList() {
        return loadTagExtraList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_EXPAND_STATUS, 1)));
    }

    @NotNull
    public final List<NoteExtraModel> loadNoteExtraList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35174a = m35174a();
        if (m35174a == null || (str = m35174a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35174a, queryArgs), NoteExtraModel.class, str);
    }

    @NotNull
    public final List<TagExtraModel> loadTagExtraList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35175b = m35175b();
        if (m35175b == null || (str = m35175b.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35175b, queryArgs), TagExtraModel.class, str);
    }

    public final void saveNoteExtraList(@NotNull List<NoteExtraModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        CouchCollections.INSTANCE.saveList(m35174a(), getDatabase(), models);
    }

    public final void saveTagExtraList(@NotNull List<TagExtraModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        CouchCollections.INSTANCE.saveList(m35175b(), getDatabase(), models);
    }

    @NotNull
    public final List<NoteExtraModel> loadNoteExtraList(@NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        return loadNoteExtraList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, ids)));
    }

    @NotNull
    public final List<TagExtraModel> loadTagExtraList(@NotNull List<String> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        return loadTagExtraList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, ids)));
    }
}
