package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, m61528d2 = {"hasNext", "", "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", "sdk-readercore_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PaginationChapterInfoKt {
    public static final boolean hasNext(@Nullable PaginationChapterInfo paginationChapterInfo) {
        return (paginationChapterInfo == null || !StringUtils.isNotBlank(paginationChapterInfo.getChapterId()) || paginationChapterInfo.isPaginationComplete()) ? false : true;
    }
}
