package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.CopyNoteArgs;
import com.onyx.android.sdk.replicator.note.data.page.NotePageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageNameList;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\n\u0010\u000b\u001a\u00020\f*\u00020\fJ\u0012\u0010\r\u001a\u00020\u0006*\u00020\f2\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\u0006*\u00020\f2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils;", "", "()V", "TITLE_REPEAT_SUFFIX", "", "generateUniqueName", "", "noteProvider", "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "copyNoteAttr", "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;", "updateNotePageInfo", "updateNotePageNameList", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCopyNoteUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n215#2,2:70\n*S KotlinDebug\n*F\n+ 1 CopyNoteUtils.kt\ncom/onyx/android/sdk/replicator/note/utils/CopyNoteUtils\n*L\n40#1:70,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyNoteUtils {

    @NotNull
    public static final CopyNoteUtils INSTANCE = new CopyNoteUtils();

    @NotNull
    public static final String TITLE_REPEAT_SUFFIX = "_1";

    @NotNull
    public final CopyNoteArgs copyNoteAttr(@NotNull CopyNoteArgs copyNoteArgs) throws Exception {
        Intrinsics.checkNotNullParameter(copyNoteArgs, "<this>");
        SyncNoteModel docNote = copyNoteArgs.getDocNote();
        if (docNote == null) {
            return copyNoteArgs;
        }
        docNote.setUniqueId(copyNoteArgs.getDstDocId());
        docNote.setGroupId(copyNoteArgs.getDstGroupId());
        docNote.setParentUniqueId(copyNoteArgs.getDstParentId());
        docNote.setUser(copyNoteArgs.getUserId());
        return copyNoteArgs;
    }

    public final void generateUniqueName(@NotNull NoteProvider noteProvider, @NotNull final SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteProvider, "noteProvider");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        noteModel.setTitle(NoteModelProviderKt.generateUniqueName(noteProvider, String.valueOf(noteModel.getTitle()), "_1", new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.replicator.note.utils.CopyNoteUtils$generateUniqueName$newTitle$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs generateUniqueName) {
                Intrinsics.checkNotNullParameter(generateUniqueName, "$this$generateUniqueName");
                CouchUtils couchUtils = CouchUtils.INSTANCE;
                generateUniqueName.andWith(couchUtils.equalExpression("type", Integer.valueOf(SyncNoteModel.this.getType())));
                generateUniqueName.andWith(couchUtils.equalOrNullExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, SyncNoteModel.this.getParentUniqueId()));
            }
        }));
    }

    public final void updateNotePageInfo(@NotNull CopyNoteArgs copyNoteArgs, @NotNull SyncNoteModel noteModel) {
        PageInfo pageInfo;
        Intrinsics.checkNotNullParameter(copyNoteArgs, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        NotePageInfo notePageInfo = noteModel.getNotePageInfo();
        if (copyNoteArgs.getCopyGlobalPage()) {
            r0 = notePageInfo != null ? notePageInfo.getPageInfo(copyNoteArgs.getSrcDocId()) : null;
            if (r0 != null) {
                if (notePageInfo != null) {
                    notePageInfo.removePageInfo(copyNoteArgs.getSrcDocId());
                }
                if (notePageInfo != null) {
                    notePageInfo.addPageInfo(copyNoteArgs.getDstDocId(), r0);
                }
            }
        }
        for (Map.Entry<String, String> entry : copyNoteArgs.getPageIdCopyMap().entrySet()) {
            if (notePageInfo != null && (pageInfo = notePageInfo.getPageInfo(entry.getKey())) != null) {
                notePageInfo.removePageInfo(entry.getKey());
                notePageInfo.addPageInfo(entry.getValue(), pageInfo);
                if (r0 != null) {
                    r0.mergePageInfo(pageInfo);
                }
            }
        }
    }

    public final void updateNotePageNameList(@NotNull CopyNoteArgs copyNoteArgs, @NotNull SyncNoteModel noteModel) {
        List<String> list;
        Intrinsics.checkNotNullParameter(copyNoteArgs, "<this>");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        PageNameList pageNameList = new PageNameList();
        list = CollectionsKt___CollectionsKt.toList(copyNoteArgs.getPageIdCopyMap().values());
        pageNameList.addAll(list);
        noteModel.setPageNameList(pageNameList);
    }
}
