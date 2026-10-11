package com.onyx.android.sdk.reader.data;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0006\u001a\u0004\b\u001d\u0010\b\"\u0004\b\u001e\u0010\n¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "", "", "isValid", "", "a", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "path", "b", "getPageId", "setPageId", CouchFieldKey.KEY_TOC_PAGE_ID, "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "getPageOriginSize", "()Landroid/graphics/RectF;", "setPageOriginSize", "(Landroid/graphics/RectF;)V", "pageOriginSize", "d", "getPageSizeWithDpi", "setPageSizeWithDpi", "pageSizeWithDpi", "e", "getPageText", "setPageText", "pageText", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderPageInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String path = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String pageId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public RectF pageOriginSize = new RectF();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public RectF pageSizeWithDpi = new RectF();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String pageText = "";

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final RectF getPageOriginSize() {
        return this.pageOriginSize;
    }

    @NotNull
    public final RectF getPageSizeWithDpi() {
        return this.pageSizeWithDpi;
    }

    @NotNull
    public final String getPageText() {
        return this.pageText;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public final boolean isValid() {
        if (FileUtils.INSTANCE.isFileExist(this.path)) {
            return (!(this.pageId.length() > 0) || RectKt.isNullOrEmpty(this.pageOriginSize) || RectKt.isNullOrEmpty(this.pageSizeWithDpi)) ? false : true;
        }
        return false;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setPageOriginSize(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageOriginSize = rectF;
    }

    public final void setPageSizeWithDpi(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageSizeWithDpi = rectF;
    }

    public final void setPageText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageText = str;
    }

    public final void setPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.path = str;
    }
}
