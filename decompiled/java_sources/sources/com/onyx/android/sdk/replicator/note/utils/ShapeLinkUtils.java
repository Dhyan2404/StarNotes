package com.onyx.android.sdk.replicator.note.utils;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.C7594R;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/utils/ShapeLinkUtils;", "", "()V", "getLinkNoteDisplayTitle", "", "title", "pageIndex", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeLinkUtils {

    @NotNull
    public static final ShapeLinkUtils INSTANCE = new ShapeLinkUtils();

    @Nullable
    public final String getLinkNoteDisplayTitle(@Nullable String title, int pageIndex) {
        if (pageIndex < 0) {
            return title;
        }
        return title + ResManager.INSTANCE.getString(C7594R.string.link_page_default_remark, Integer.valueOf(pageIndex + 1));
    }
}
