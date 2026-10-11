package com.onyx.android.sdk.note.common.document.doc;

import android.graphics.Rect;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.NoteCreateInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0006\u001a\u0004\b\u001d\u0010\b\"\u0004\b\u001e\u0010\nR$\u0010'\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;", "", "Landroid/graphics/Rect;", "pageRect", "", "a", Constants.STRING_SIG, "getDocumentId", "()Ljava/lang/String;", "setDocumentId", "(Ljava/lang/String;)V", "documentId", "b", "getParentUniqueId", "setParentUniqueId", CouchFieldKey.KEY_PARENT_UNIQUE_ID, "c", "getUserId", "setUserId", Constant.TAG_USER_ID, "Lcom/onyx/android/sdk/base/data/Size;", "d", "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "viewSize", "e", "getPageId", "setPageId", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "getNoteCreateInfo", "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;", "setNoteCreateInfo", "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V", "noteCreateInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NoteDocBean {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String parentUniqueId;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String pageId;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public NoteCreateInfo noteCreateInfo;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String documentId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String userId = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(0, 0, 3, null);

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final NoteCreateInfo getNoteCreateInfo() {
        return this.noteCreateInfo;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    @Nullable
    public final String getParentUniqueId() {
        return this.parentUniqueId;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    @Nullable
    public final Rect pageRect() {
        RectF firstPaperRectF;
        NoteCreateInfo noteCreateInfo = this.noteCreateInfo;
        if (noteCreateInfo == null || (firstPaperRectF = noteCreateInfo.firstPaperRectF()) == null) {
            return null;
        }
        return RectKt.toRect(firstPaperRectF);
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setNoteCreateInfo(@Nullable NoteCreateInfo noteCreateInfo) {
        this.noteCreateInfo = noteCreateInfo;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setParentUniqueId(@Nullable String str) {
        this.parentUniqueId = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.viewSize = size;
    }
}
