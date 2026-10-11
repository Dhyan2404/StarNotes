package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.replicator.note.data.background.BkGroundRes;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J$\u0010\t\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0003J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\n*\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005J \u0010\u0015\u001a\u00020\u0014*\u00020\u00022\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0013\u001a\u00020\u0003H\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;", "", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "", "copyPageId", "", "newIndex", "newPageId", "", "copyPage", "", "copyIndexes", "copyPageList", "copyIndex", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "copyPageBkGround", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "newPageUniqueId", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocClone {

    @NotNull
    public static final NoteDocClone INSTANCE = new NoteDocClone();

    public static /* synthetic */ boolean copyPage$default(NoteDocClone noteDocClone, NoteDocument noteDocument, String str, int i, String str2, int i2, Object obj) throws Exception {
        if ((i2 & 4) != 0) {
            str2 = UUIDUtils.INSTANCE.rawUUID();
        }
        return noteDocClone.copyPage(noteDocument, str, i, str2);
    }

    /* renamed from: a */
    public final void m33742a(NoteDocument noteDocument, Exception exc, String str) throws Exception {
        NoteDocNotePage.INSTANCE.removePageById(noteDocument, str);
        throw new Exception(exc);
    }

    public final boolean copyPage(@NotNull NoteDocument noteDocument, @NotNull String copyPageId, int i, @NotNull String newPageId) throws Exception {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(copyPageId, "copyPageId");
        Intrinsics.checkNotNullParameter(newPageId, "newPageId");
        NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteDocument, copyPageId);
        if (pageByUniqueId == null) {
            return false;
        }
        NotePageSave.INSTANCE.savePage(pageByUniqueId);
        String str = null;
        try {
            NotePage notePageClone = pageByUniqueId.notePageClone(newPageId);
            str = notePageClone.getPageUniqueId();
            noteDocument.getPageDataMap().put(i, str, notePageClone);
            NoteDocCache.INSTANCE.cachePage(noteDocument, str);
            NoteDocBKGround noteDocBKGround = NoteDocBKGround.INSTANCE;
            BkGroundRes pageBkGround = noteDocBKGround.getPageBkGround(noteDocument, copyPageId);
            if (pageBkGround != null) {
                noteDocBKGround.setPageBkGround(noteDocument, str, pageBkGround.bkGroundResClone());
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (str == null) {
                return false;
            }
            m33742a(noteDocument, e, str);
            return false;
        }
    }

    @Nullable
    public final BkGroundRes copyPageBkGround(@NotNull NoteDocument noteDocument, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        NotePage pageByIndex = NoteDocNotePage.INSTANCE.getPageByIndex(noteDocument, i);
        if (pageByIndex == null) {
            return null;
        }
        NotePageSave.INSTANCE.savePage(pageByIndex);
        try {
            BkGroundRes pageBkGround = NoteDocBKGround.INSTANCE.getPageBkGround(noteDocument, noteDocument.getPageDataMap().get(i));
            if (pageBkGround != null) {
                return pageBkGround.bkGroundResClone();
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final List<Integer> copyPageList(@NotNull NoteDocument noteDocument, @NotNull List<Integer> copyIndexes) throws Exception {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(copyIndexes, "copyIndexes");
        ArrayList arrayList = new ArrayList();
        int intValue = copyIndexes.get(copyIndexes.size() - 1).intValue();
        Iterator<Integer> it2 = copyIndexes.iterator();
        while (it2.hasNext()) {
            intValue++;
            String str = noteDocument.getPageDataMap().get(it2.next().intValue());
            Intrinsics.checkNotNullExpressionValue(str, "get(...)");
            if (copyPage$default(this, noteDocument, str, intValue, null, 4, null)) {
                arrayList.add(Integer.valueOf(intValue));
            }
        }
        return arrayList;
    }
}
