package com.onyx.android.sdk.note.request.page;

import com.blankj.utilcode.util.LogUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.UndoRedoCommand;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/ClearNotePageRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", C6997f.f39671c, "", "", C6998g.f39679a, "Ljava/util/Collection;", "pageIds", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nClearNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClearNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/ClearNotePageRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1855#2,2:47\n*S KotlinDebug\n*F\n+ 1 ClearNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/ClearNotePageRequest\n*L\n26#1:47,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ClearNotePageRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> pageIds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClearNotePageRequest(@NotNull NoteBundle noteBundle, @NotNull Collection<String> pageIds) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        this.pageIds = pageIds;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<? extends Shape> mutableList;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        for (String str : this.pageIds) {
            NoteDocNotePage noteDocNotePage = NoteDocNotePage.INSTANCE;
            NotePage notePage = noteDocNotePage.getNotePage(noteBundle.getNoteDoc(), str);
            if (notePage != null) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) notePage.getShapeList());
                m34171f(mutableList);
                noteDocNotePage.clearPage(noteBundle.getNoteDoc(), str);
                noteBundle.postRemoveShapeEvent(mutableList);
                LogUtils.wTag(AnyKt.toSimpleNameString(this), notePage.getDocumentUniqueId() + " clear notePage:" + notePage.getPageUniqueId());
            }
        }
    }

    /* renamed from: f */
    public final void m34171f(List<? extends Shape> shapeList) {
        List<? extends Shape> list = shapeList;
        if (CollectionKt.isNullOrEmpty(list)) {
            return;
        }
        getNoteBundle().getCommandManager().addCommand(new UndoRedoCommand().removeShapes(list));
    }
}
