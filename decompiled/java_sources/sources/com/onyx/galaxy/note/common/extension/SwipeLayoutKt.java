package com.onyx.galaxy.note.common.extension;

import com.aitsuki.swipe.SwipeLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"enableSwipe", "", "Lcom/aitsuki/swipe/SwipeLayout;", "enable", "", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SwipeLayoutKt {
    public static final void enableSwipe(@NotNull SwipeLayout swipeLayout, boolean z) {
        Intrinsics.checkNotNullParameter(swipeLayout, "<this>");
        swipeLayout.setSwipeFlags(z ? 3 : 0);
    }
}
