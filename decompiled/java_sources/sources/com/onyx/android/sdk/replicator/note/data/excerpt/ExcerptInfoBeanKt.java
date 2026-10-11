package com.onyx.android.sdk.replicator.note.data.excerpt;

import com.onyx.android.sdk.replicator.note.data.annotation.WritingMode;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, m61528d2 = {"isVertical", "", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "sdk-replicator_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ExcerptInfoBeanKt {
    public static final boolean isVertical(@Nullable ExcerptInfoBean excerptInfoBean) {
        WritingMode writingMode;
        if (excerptInfoBean == null || (writingMode = excerptInfoBean.getWritingMode()) == null) {
            return false;
        }
        return writingMode.isVertical();
    }
}
