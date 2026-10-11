package com.onyx.android.sdk.universal.editor.display;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.onyx.android.sdk.note.common.data.render.NoteRenderArgs;
import com.onyx.android.sdk.reader.data.ReaderRenderArgs;
import com.onyx.android.sdk.reader.request.RenderContentRequest;
import com.onyx.android.sdk.universal.editor.action.page.RenderNotePageAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b:\u0010;J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\t\u0010\r\u001a\u00020\fHÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\fHÆ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0014HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u000e\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u000f\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010\u0010\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;", "", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "getRenderingSliceList", "getOutputSliceList", "", "isAbort", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "component1", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "component2", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "component3", "virtualPageBoxInfo", "contentRenderArgs", "noteRenderArgs", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "b", "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "getContentRenderArgs", "()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;", "setContentRenderArgs", "(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V", "c", "Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "getNoteRenderArgs", "()Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;", "setNoteRenderArgs", "(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;", "d", "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;", "getContentRequest", "()Lcom/onyx/android/sdk/reader/request/RenderContentRequest;", "setContentRequest", "(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;)V", "contentRequest", "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;", "e", "Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;", "getNoteAction", "()Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;", "setNoteAction", "(Lcom/onyx/android/sdk/universal/editor/action/page/RenderNotePageAction;)V", "noteAction", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class PageRenderRequestInfo {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public ReaderRenderArgs contentRenderArgs;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public NoteRenderArgs noteRenderArgs;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public RenderContentRequest contentRequest;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RenderNotePageAction noteAction;

    public PageRenderRequestInfo(@NotNull BoxInfo virtualPageBoxInfo, @NotNull ReaderRenderArgs contentRenderArgs, @NotNull NoteRenderArgs noteRenderArgs) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(contentRenderArgs, "contentRenderArgs");
        Intrinsics.checkNotNullParameter(noteRenderArgs, "noteRenderArgs");
        this.virtualPageBoxInfo = virtualPageBoxInfo;
        this.contentRenderArgs = contentRenderArgs;
        this.noteRenderArgs = noteRenderArgs;
    }

    public static /* synthetic */ PageRenderRequestInfo copy$default(PageRenderRequestInfo pageRenderRequestInfo, BoxInfo boxInfo, ReaderRenderArgs readerRenderArgs, NoteRenderArgs noteRenderArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            boxInfo = pageRenderRequestInfo.virtualPageBoxInfo;
        }
        if ((i & 2) != 0) {
            readerRenderArgs = pageRenderRequestInfo.contentRenderArgs;
        }
        if ((i & 4) != 0) {
            noteRenderArgs = pageRenderRequestInfo.noteRenderArgs;
        }
        return pageRenderRequestInfo.copy(boxInfo, readerRenderArgs, noteRenderArgs);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final ReaderRenderArgs getContentRenderArgs() {
        return this.contentRenderArgs;
    }

    @NotNull
    /* renamed from: component3, reason: from getter */
    public final NoteRenderArgs getNoteRenderArgs() {
        return this.noteRenderArgs;
    }

    @NotNull
    public final PageRenderRequestInfo copy(@NotNull BoxInfo virtualPageBoxInfo, @NotNull ReaderRenderArgs contentRenderArgs, @NotNull NoteRenderArgs noteRenderArgs) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(contentRenderArgs, "contentRenderArgs");
        Intrinsics.checkNotNullParameter(noteRenderArgs, "noteRenderArgs");
        return new PageRenderRequestInfo(virtualPageBoxInfo, contentRenderArgs, noteRenderArgs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PageRenderRequestInfo)) {
            return false;
        }
        PageRenderRequestInfo pageRenderRequestInfo = (PageRenderRequestInfo) other;
        return Intrinsics.areEqual(this.virtualPageBoxInfo, pageRenderRequestInfo.virtualPageBoxInfo) && Intrinsics.areEqual(this.contentRenderArgs, pageRenderRequestInfo.contentRenderArgs) && Intrinsics.areEqual(this.noteRenderArgs, pageRenderRequestInfo.noteRenderArgs);
    }

    @NotNull
    public final ReaderRenderArgs getContentRenderArgs() {
        return this.contentRenderArgs;
    }

    @Nullable
    public final RenderContentRequest getContentRequest() {
        return this.contentRequest;
    }

    @Nullable
    public final RenderNotePageAction getNoteAction() {
        return this.noteAction;
    }

    @NotNull
    public final NoteRenderArgs getNoteRenderArgs() {
        return this.noteRenderArgs;
    }

    @NotNull
    public final List<SliceInfo> getOutputSliceList() {
        ArrayList arrayList = new ArrayList();
        RenderContentRequest renderContentRequest = this.contentRequest;
        if (renderContentRequest != null && !renderContentRequest.getAbort()) {
            arrayList.addAll(renderContentRequest.getOutputSliceList());
        }
        RenderNotePageAction renderNotePageAction = this.noteAction;
        if (renderNotePageAction != null && !renderNotePageAction.getIsAbort()) {
            arrayList.addAll(renderNotePageAction.getSuccessList());
        }
        return arrayList;
    }

    @NotNull
    public final List<SliceInfo> getRenderingSliceList() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.contentRenderArgs.getSliceInfoList());
        arrayList.addAll(this.noteRenderArgs.noteSliceList());
        return arrayList;
    }

    @NotNull
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public int hashCode() {
        return (((this.virtualPageBoxInfo.hashCode() * 31) + this.contentRenderArgs.hashCode()) * 31) + this.noteRenderArgs.hashCode();
    }

    public final boolean isAbort() {
        RenderContentRequest renderContentRequest = this.contentRequest;
        boolean abort = renderContentRequest != null ? renderContentRequest.getAbort() : false;
        RenderNotePageAction renderNotePageAction = this.noteAction;
        return abort || (renderNotePageAction != null ? renderNotePageAction.getIsAbort() : false);
    }

    public final void setContentRenderArgs(@NotNull ReaderRenderArgs readerRenderArgs) {
        Intrinsics.checkNotNullParameter(readerRenderArgs, "<set-?>");
        this.contentRenderArgs = readerRenderArgs;
    }

    public final void setContentRequest(@Nullable RenderContentRequest renderContentRequest) {
        this.contentRequest = renderContentRequest;
    }

    public final void setNoteAction(@Nullable RenderNotePageAction renderNotePageAction) {
        this.noteAction = renderNotePageAction;
    }

    public final void setNoteRenderArgs(@NotNull NoteRenderArgs noteRenderArgs) {
        Intrinsics.checkNotNullParameter(noteRenderArgs, "<set-?>");
        this.noteRenderArgs = noteRenderArgs;
    }

    public final void setVirtualPageBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualPageBoxInfo = boxInfo;
    }

    @NotNull
    public String toString() {
        return "PageRenderRequestInfo(virtualPageBoxInfo=" + this.virtualPageBoxInfo + ", contentRenderArgs=" + this.contentRenderArgs + ", noteRenderArgs=" + this.noteRenderArgs + ')';
    }
}
