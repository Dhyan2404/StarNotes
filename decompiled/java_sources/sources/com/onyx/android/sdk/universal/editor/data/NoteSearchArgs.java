package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.replicator.fts.bean.FTSIndexArgs;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0006\"\u0004\b\u0016\u0010\bR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R \u0010*\u001a\b\u0012\u0004\u0012\u00020,0+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010!\"\u0004\b.\u0010#¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "", "()V", "configEditorBundle", "", "getConfigEditorBundle", Constants.BOOLEAN_VALUE_SIG, "setConfigEditorBundle", "(Z)V", "ftsIndexArgs", "Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;", "getFtsIndexArgs", "()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;", "setFtsIndexArgs", "(Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;)V", "hwrArgs", "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "getHwrArgs", "()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;", "setHwrArgs", "(Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V", "isBackgroundSearch", "setBackgroundSearch", "keyword", "", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "noteModels", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModels", "()Ljava/util/List;", "setNoteModels", "(Ljava/util/List;)V", "searchContext", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", "getSearchContext", "()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", "setSearchContext", "(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;)V", "searchTypes", "", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", "getSearchTypes", "setSearchTypes", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteSearchArgs {
    private boolean configEditorBundle;

    @NotNull
    private FTSIndexArgs ftsIndexArgs;

    @NotNull
    private HWRArgs hwrArgs;
    private boolean isBackgroundSearch;

    @NotNull
    private NoteSearchContext searchContext;

    @NotNull
    private List<? extends TextSearchType> searchTypes;

    @NotNull
    private List<SyncNoteModel> noteModels = new ArrayList();

    @NotNull
    private String keyword = "";

    public NoteSearchArgs() {
        List<? extends TextSearchType> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.searchTypes = emptyList;
        this.hwrArgs = new HWRArgs();
        this.ftsIndexArgs = new FTSIndexArgs(false, false, false, 7, null);
        this.searchContext = new NoteSearchContext();
        this.configEditorBundle = true;
    }

    public final boolean getConfigEditorBundle() {
        return this.configEditorBundle;
    }

    @NotNull
    public final FTSIndexArgs getFtsIndexArgs() {
        return this.ftsIndexArgs;
    }

    @NotNull
    public final HWRArgs getHwrArgs() {
        return this.hwrArgs;
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModels() {
        return this.noteModels;
    }

    @NotNull
    public final NoteSearchContext getSearchContext() {
        return this.searchContext;
    }

    @NotNull
    public final List<TextSearchType> getSearchTypes() {
        return this.searchTypes;
    }

    /* renamed from: isBackgroundSearch, reason: from getter */
    public final boolean getIsBackgroundSearch() {
        return this.isBackgroundSearch;
    }

    public final void setBackgroundSearch(boolean z) {
        this.isBackgroundSearch = z;
    }

    public final void setConfigEditorBundle(boolean z) {
        this.configEditorBundle = z;
    }

    public final void setFtsIndexArgs(@NotNull FTSIndexArgs fTSIndexArgs) {
        Intrinsics.checkNotNullParameter(fTSIndexArgs, "<set-?>");
        this.ftsIndexArgs = fTSIndexArgs;
    }

    public final void setHwrArgs(@NotNull HWRArgs hWRArgs) {
        Intrinsics.checkNotNullParameter(hWRArgs, "<set-?>");
        this.hwrArgs = hWRArgs;
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    public final void setNoteModels(@NotNull List<SyncNoteModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.noteModels = list;
    }

    public final void setSearchContext(@NotNull NoteSearchContext noteSearchContext) {
        Intrinsics.checkNotNullParameter(noteSearchContext, "<set-?>");
        this.searchContext = noteSearchContext;
    }

    public final void setSearchTypes(@NotNull List<? extends TextSearchType> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.searchTypes = list;
    }
}
