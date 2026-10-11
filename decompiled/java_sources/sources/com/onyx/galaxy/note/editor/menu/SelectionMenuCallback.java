package com.onyx.galaxy.note.editor.menu;

import android.view.View;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0016\u0010\b\u001a\u00020\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;", "", "onMenuClick", "", "menu", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "itemView", "Landroid/view/View;", "onMenuUpdated", "menuViews", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface SelectionMenuCallback {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static void onMenuClick(@NotNull SelectionMenuCallback selectionMenuCallback, @NotNull SelectionMenuType menu, @NotNull View itemView) {
            Intrinsics.checkNotNullParameter(menu, "menu");
            Intrinsics.checkNotNullParameter(itemView, "itemView");
        }

        public static void onMenuUpdated(@NotNull SelectionMenuCallback selectionMenuCallback, @NotNull List<View> menuViews) {
            Intrinsics.checkNotNullParameter(menuViews, "menuViews");
        }
    }

    void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView);

    void onMenuUpdated(@NotNull List<View> menuViews);
}
