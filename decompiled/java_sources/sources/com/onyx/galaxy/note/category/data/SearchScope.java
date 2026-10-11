package com.onyx.galaxy.note.category.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\t¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/SearchScope;", "", "()V", "folderIds", "", "", "getFolderIds", "()Ljava/util/List;", "setFolderIds", "(Ljava/util/List;)V", "folderNames", "getFolderNames", "setFolderNames", "selectAllFolder", "", "getSelectAllFolder", Constants.BOOLEAN_VALUE_SIG, "setSelectAllFolder", "(Z)V", "selectAllTag", "getSelectAllTag", "setSelectAllTag", "tagIds", "getTagIds", "setTagIds", "tagNames", "getTagNames", "setTagNames", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SearchScope {
    private boolean selectAllFolder;
    private boolean selectAllTag;

    @NotNull
    private List<String> folderIds = new ArrayList();

    @NotNull
    private List<String> tagIds = new ArrayList();

    @NotNull
    private List<String> folderNames = new ArrayList();

    @NotNull
    private List<String> tagNames = new ArrayList();

    @NotNull
    public final List<String> getFolderIds() {
        return this.folderIds;
    }

    @NotNull
    public final List<String> getFolderNames() {
        return this.folderNames;
    }

    public final boolean getSelectAllFolder() {
        return this.selectAllFolder;
    }

    public final boolean getSelectAllTag() {
        return this.selectAllTag;
    }

    @NotNull
    public final List<String> getTagIds() {
        return this.tagIds;
    }

    @NotNull
    public final List<String> getTagNames() {
        return this.tagNames;
    }

    public final void setFolderIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.folderIds = list;
    }

    public final void setFolderNames(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.folderNames = list;
    }

    public final void setSelectAllFolder(boolean z) {
        this.selectAllFolder = z;
    }

    public final void setSelectAllTag(boolean z) {
        this.selectAllTag = z;
    }

    public final void setTagIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagIds = list;
    }

    public final void setTagNames(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagNames = list;
    }
}
