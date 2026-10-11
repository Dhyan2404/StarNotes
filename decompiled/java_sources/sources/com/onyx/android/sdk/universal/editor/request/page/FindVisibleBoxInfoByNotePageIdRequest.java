package com.onyx.android.sdk.universal.editor.request.page;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", "", C6997f.f39671c, Constants.STRING_SIG, "getNotePageId", "()Ljava/lang/String;", "notePageId", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6998g.f39679a, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "virtualPageBoxInfo", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "getUpdateToVisibleBox", Constants.BOOLEAN_VALUE_SIG, "setUpdateToVisibleBox", "(Z)V", "updateToVisibleBox", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FindVisibleBoxInfoByNotePageIdRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String notePageId;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean updateToVisibleBox;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FindVisibleBoxInfoByNotePageIdRequest(@NotNull WorkBundle workBundle, @NotNull String notePageId) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(notePageId, "notePageId");
        this.notePageId = notePageId;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Sequence asSequence;
        Sequence filter;
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        asSequence = CollectionsKt___CollectionsKt.asSequence(WorkBundleKt.visibleBoxList(workBundle));
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.request.page.FindVisibleBoxInfoByNotePageIdRequest$execute$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                String notePageId = FindVisibleBoxInfoByNotePageIdRequest.this.getNotePageId();
                BoxInfo noteInfo = it2.getNoteInfo();
                return Boolean.valueOf(Intrinsics.areEqual(notePageId, noteInfo != null ? noteInfo.getId() : null));
            }
        });
        firstOrNull = SequencesKt___SequencesKt.firstOrNull(filter);
        BoxInfo boxInfo = (BoxInfo) firstOrNull;
        this.virtualPageBoxInfo = boxInfo;
        if (boxInfo == null && this.updateToVisibleBox) {
            FindBoxInfoByNotePageIdRequest findBoxInfoByNotePageIdRequest = new FindBoxInfoByNotePageIdRequest(workBundle, this.notePageId);
            findBoxInfoByNotePageIdRequest.execute2();
            BoxInfo virtualPageBoxInfo = findBoxInfoByNotePageIdRequest.getVirtualPageBoxInfo();
            BoxInfo boxInfo2 = null;
            BoxInfo copy = virtualPageBoxInfo != null ? virtualPageBoxInfo.copy() : null;
            if (copy != null) {
                WorkBundleKt.updateToVisibleBox(workBundle, copy);
                boxInfo2 = copy;
            }
            this.virtualPageBoxInfo = boxInfo2;
        }
    }

    @NotNull
    public final String getNotePageId() {
        return this.notePageId;
    }

    public final boolean getUpdateToVisibleBox() {
        return this.updateToVisibleBox;
    }

    @Nullable
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setUpdateToVisibleBox(boolean z) {
        this.updateToVisibleBox = z;
    }

    public final void setVirtualPageBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualPageBoxInfo = boxInfo;
    }
}
