package com.onyx.android.sdk.replicator.note.proto.p036pb;

import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteListArgs;
import com.onyx.android.sdk.replicator.note.bean.ExportNoteListArgs;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.NoteTagProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u000e\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/pb/UserTagPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/BaseUserPBData;", "Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;", "pbDataContext", "", "collectDataExportToFile", "copyPBToDB", "", "a", "I", "getType", "()I", "setType", "(I)V", "type", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUserTagPBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserTagPBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1603#2,9:50\n1855#2:59\n1856#2:61\n1612#2:62\n1603#2,9:63\n1855#2:72\n1856#2:74\n1612#2:75\n766#2:76\n857#2,2:77\n1#3:60\n1#3:73\n*S KotlinDebug\n*F\n+ 1 UserTagPBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/UserTagPBData\n*L\n26#1:50,9\n26#1:59\n26#1:61\n26#1:62\n42#1:63,9\n42#1:72\n42#1:74\n42#1:75\n43#1:76\n43#1:77,2\n26#1:60\n42#1:73\n*E\n"})
/* loaded from: classes8.dex */
public final class UserTagPBData extends BaseUserPBData {

    /* renamed from: a, reason: from kotlin metadata */
    public int type = 20;

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void collectDataExportToFile(@NotNull UserPBDataContext pbDataContext) {
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        ExportNoteListArgs exportNoteListArgs = pbDataContext.getExportNoteListArgs();
        if (exportNoteListArgs != null && exportNoteListArgs.getExportAllTag()) {
            List<Tree<SyncTagModel>> childrenToList = NoteTagProviderKt.loadDocTagTree(pbDataContext.getNoteProvider()).childrenToList();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = childrenToList.iterator();
            while (it2.hasNext()) {
                SyncTagModel syncTagModel = (SyncTagModel) ((Tree) it2.next()).getItem();
                if (syncTagModel != null) {
                    arrayList.add(syncTagModel);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            CollectionKt.safeAddAll(pbDataContext.getTagList(), arrayList);
        }
    }

    @Override // com.onyx.android.sdk.replicator.note.proto.p036pb.BaseUserPBData, com.onyx.android.sdk.replicator.note.proto.p036pb.UserPBData
    public void copyPBToDB(@NotNull UserPBDataContext pbDataContext) {
        List listOf;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(pbDataContext, "pbDataContext");
        CopyNoteListArgs copyNoteListArgs = pbDataContext.getCopyNoteListArgs();
        if (copyNoteListArgs != null && copyNoteListArgs.getCopyAllTag()) {
            NoteProvider noteProvider = pbDataContext.getNoteProvider();
            List childrenToList = Tree.INSTANCE.create(pbDataContext.getTagList(), new Function1<SyncTagModel, String>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserTagPBData$copyPBToDB$tree$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final String invoke(@NotNull SyncTagModel item) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    return item.getUniqueId();
                }
            }, new Function1<SyncTagModel, String>() { // from class: com.onyx.android.sdk.replicator.note.proto.pb.UserTagPBData$copyPBToDB$tree$2
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final String invoke(@NotNull SyncTagModel item) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    return item.getParentId();
                }
            }).childrenToList();
            ArrayList arrayList = new ArrayList();
            Iterator it2 = childrenToList.iterator();
            while (it2.hasNext()) {
                SyncTagModel syncTagModel = (SyncTagModel) ((Tree) it2.next()).getItem();
                if (syncTagModel != null) {
                    arrayList.add(syncTagModel);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(((SyncTagModel) obj).getUniqueId());
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) NoteTagProviderKt.loadTagById(noteProvider, listOf));
                SyncTagModel syncTagModel2 = (SyncTagModel) firstOrNull;
                if (syncTagModel2 == null || !syncTagModel2.isEnabled()) {
                    arrayList2.add(obj);
                }
            }
            NoteTagProviderKt.saveTagList(noteProvider, arrayList2);
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
