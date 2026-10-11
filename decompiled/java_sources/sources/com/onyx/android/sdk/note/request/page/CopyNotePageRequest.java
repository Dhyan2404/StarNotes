package com.onyx.android.sdk.note.request.page;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocClone;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R \u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/CopyNotePageRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6998g.f39679a, "Ljava/util/Map;", "boxInfoMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Map;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/CopyNotePageRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,30:1\n125#2:31\n152#2,3:32\n*S KotlinDebug\n*F\n+ 1 CopyNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/CopyNotePageRequest\n*L\n22#1:31\n22#1:32,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyNotePageRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Map<BoxInfo, BoxInfo> boxInfoMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyNotePageRequest(@NotNull NoteBundle noteBundle, @NotNull Map<BoxInfo, BoxInfo> boxInfoMap) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(boxInfoMap, "boxInfoMap");
        this.boxInfoMap = boxInfoMap;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Map<BoxInfo, BoxInfo> map = this.boxInfoMap;
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<BoxInfo, BoxInfo> entry : map.entrySet()) {
            BoxInfo key = entry.getKey();
            BoxInfo value = entry.getValue();
            NoteDocument noteDoc = noteBundle.getNoteDoc();
            arrayList.add(Boolean.valueOf(NoteDocClone.INSTANCE.copyPage(noteDoc, key.getId(), NoteDocNotePage.INSTANCE.getPageIndex(noteDoc, key.getId()) + 1, value.getId())));
        }
    }
}
