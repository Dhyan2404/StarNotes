package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\b\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataExportToFile", "copyPBToDB", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "a", "", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserNoteFolderPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1603#2,9:68\n1855#2:77\n1856#2:79\n1612#2:80\n1603#2,9:81\n1855#2:90\n1856#2:92\n1612#2:93\n766#2:94\n857#2,2:95\n1#3:78\n1#3:91\n*S KotlinDebug\n*F\n+ 1 UserNoteFolderPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserNoteFolderPBData\n*L\n33#1:68,9\n33#1:77\n33#1:79\n33#1:80\n52#1:81,9\n52#1:90\n52#1:92\n52#1:93\n53#1:94\n53#1:95,2\n33#1:78\n52#1:91\n*E\n"})
/* loaded from: classes8.dex */
public final class UserNoteFolderPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 19;

    /* renamed from: a */
    public final CBQueryArgs m35497a() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 0));
        cBQueryArgs.andWith(couchUtils.equalExpression("status", 1));
        cBQueryArgs.setLimit(Integer.MAX_VALUE);
        return cBQueryArgs;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs != null && exportNoteListArgs.getExportAllFolder()) {
            List<Tree<SyncNoteModel>> childrenToList = NoteTagProviderKt.loadNoteModelTree(pbDataContext.getNoteProvider(), m35497a()).childrenToList();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = childrenToList.iterator();
            while (it2.hasNext()) {
                SyncNoteModel syncNoteModel = (SyncNoteModel) ((Tree) it2.next()).getItem();
                if (syncNoteModel != null) {
                    arrayList.add(syncNoteModel);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            CollectionKt.safeAddAll(pbDataContext.getNoteFolderList(), arrayList);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs != null && copyNoteListArgs.getCopyAllFolder()) {
            NoteProvider noteProvider = pbDataContext.getNoteProvider();
            List childrenToList = Tree.INSTANCE.create(pbDataContext.getNoteFolderList(), new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserNoteFolderPBData$copyPBToDB$tree$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final String invoke(@NotNull SyncNoteModel item) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    return item.getUniqueId();
                }
            }, new Function1<SyncNoteModel, String>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserNoteFolderPBData$copyPBToDB$tree$2
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final String invoke(@NotNull SyncNoteModel item) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    return item.getParentUniqueId();
                }
            }).childrenToList();
            ArrayList arrayList = new ArrayList();
            Iterator it2 = childrenToList.iterator();
            while (it2.hasNext()) {
                SyncNoteModel syncNoteModel = (SyncNoteModel) ((Tree) it2.next()).getItem();
                if (syncNoteModel != null) {
                    arrayList.add(syncNoteModel);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                SyncNoteModel loadNote = NoteModelProviderKt.loadNote(noteProvider, ((SyncNoteModel) obj).getUniqueId());
                if (loadNote == null || !loadNote.isEnabled()) {
                    arrayList2.add(obj);
                }
            }
            NoteModelProviderKt.saveNoteList(noteProvider, arrayList2);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void setType(int i) {
        this.type = i;
    }
}
