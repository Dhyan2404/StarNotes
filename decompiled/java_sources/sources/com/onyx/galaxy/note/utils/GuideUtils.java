package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.galaxy.note.common.constant.GuideInfoConst;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/GuideUtils;", "", "()V", "isDragToolGuideNeed", "", "isOpenTwoNotesNeed", "isPageWhiteSpaceGuideNeed", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class GuideUtils {

    @NotNull
    public static final GuideUtils INSTANCE = new GuideUtils();

    public final boolean isDragToolGuideNeed() {
        return !MMKVUtils.INSTANCE.getBoolean(GuideInfoConst.GUIDE_FUN_DRAG_TOOL, false);
    }

    public final boolean isOpenTwoNotesNeed() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        return mMKVUtils.getBoolean(GuideInfoConst.GUIDE_FUN_DRAG_TOOL, false) && !mMKVUtils.getBoolean(GuideInfoConst.GUIDE_FUN_OPEN_TWO_NOTES, false);
    }

    public final boolean isPageWhiteSpaceGuideNeed() {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        return mMKVUtils.getBoolean(GuideInfoConst.GUIDE_FUN_DRAG_TOOL, false) && !mMKVUtils.getBoolean(GuideInfoConst.GUIDE_FUN_PAGE_WHITE_SPACE, false);
    }
}
