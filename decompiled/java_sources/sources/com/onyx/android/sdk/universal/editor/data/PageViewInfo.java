package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;", "", "()V", "colorTheme", "", "getColorTheme", "()I", "setColorTheme", "(I)V", CouchFieldKey.KEY_CONTENT_TYPE, "", "getContentType", "()Ljava/lang/String;", "setContentType", "(Ljava/lang/String;)V", "pageIndex", "getPageIndex", "setPageIndex", "pageLabel", "getPageLabel", "setPageLabel", "copy", CouchFieldKey.KEY_PAGE_NUMBER, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageViewInfo {
    private int colorTheme;
    private int pageIndex;

    @NotNull
    private String pageLabel = "";

    @NotNull
    private String contentType = "";

    @NotNull
    public final PageViewInfo copy() {
        PageViewInfo pageViewInfo = new PageViewInfo();
        pageViewInfo.pageIndex = this.pageIndex;
        pageViewInfo.pageLabel = this.pageLabel;
        pageViewInfo.contentType = this.contentType;
        return pageViewInfo;
    }

    public final int getColorTheme() {
        return this.colorTheme;
    }

    @NotNull
    public final String getContentType() {
        return this.contentType;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final String getPageLabel() {
        return this.pageLabel;
    }

    public final int pageNumber() {
        return this.pageIndex + 1;
    }

    public final void setColorTheme(int i) {
        this.colorTheme = i;
    }

    public final void setContentType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.contentType = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageLabel = str;
    }
}
