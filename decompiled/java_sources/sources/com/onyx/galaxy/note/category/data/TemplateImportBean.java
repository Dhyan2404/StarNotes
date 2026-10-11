package com.onyx.galaxy.note.category.data;

import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.TitleModel;
import com.onyx.galaxy.note.message.data.MessageConst;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/TemplateImportBean;", "", "()V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "readerPageInfo", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPageInfo", "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "setReaderPageInfo", "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V", "thumbnailRelativePath", "getThumbnailRelativePath", "setThumbnailRelativePath", "title", "getTitle", "setTitle", MessageConst.KEY_TITLE_LIST, "", "Lcom/onyx/android/sdk/replicator/note/db/model/TitleModel;", "getTitleList", "()Ljava/util/List;", "setTitleList", "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TemplateImportBean {

    @NotNull
    private String id;

    @Nullable
    private String thumbnailRelativePath;

    @NotNull
    private List<TitleModel> titleList;

    @NotNull
    private ReaderPageInfo readerPageInfo = new ReaderPageInfo();

    @NotNull
    private String title = "";

    public TemplateImportBean() {
        List<TitleModel> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.titleList = emptyList;
        this.id = "";
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final ReaderPageInfo getReaderPageInfo() {
        return this.readerPageInfo;
    }

    @Nullable
    public final String getThumbnailRelativePath() {
        return this.thumbnailRelativePath;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final List<TitleModel> getTitleList() {
        return this.titleList;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setReaderPageInfo(@NotNull ReaderPageInfo readerPageInfo) {
        Intrinsics.checkNotNullParameter(readerPageInfo, "<set-?>");
        this.readerPageInfo = readerPageInfo;
    }

    public final void setThumbnailRelativePath(@Nullable String str) {
        this.thumbnailRelativePath = str;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final void setTitleList(@NotNull List<TitleModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.titleList = list;
    }
}
