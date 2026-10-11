package com.onyx.galaxy.note.editor.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, m61528d2 = {"toShortcutType", "Lcom/onyx/galaxy/note/editor/data/ShortcutType;", "Lcom/onyx/galaxy/note/editor/data/SlideBarType;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SlideBarTypeKt {
    @NotNull
    public static final ShortcutType toShortcutType(@NotNull SlideBarType slideBarType) {
        Intrinsics.checkNotNullParameter(slideBarType, "<this>");
        return slideBarType == SlideBarType.SLIDE_MORE_SETTING ? ShortcutType.SHORTCUT_OTHER_SETTINGS : ShortcutType.SHORTCUT_DOC_OVERVIEW;
    }
}
