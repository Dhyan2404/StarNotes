package com.onyx.galaxy.note.editor.view;

import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0005H&J\b\u0010\t\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u0005H&¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "", "enableShapeView", "", "enable", "", "getViewShapeType", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "isViewSelected", "isVipType", "setDockType", "dockType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "setHintColor", "color", "", "setViewSelect", "isSelected", "isFromClick", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface IShapeViewOpt {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void setViewSelect$default(IShapeViewOpt iShapeViewOpt, boolean z, boolean z2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setViewSelect");
            }
            if ((i & 2) != 0) {
                z2 = false;
            }
            iShapeViewOpt.setViewSelect(z, z2);
        }
    }

    void enableShapeView(boolean enable);

    @NotNull
    ShapeToolType getViewShapeType();

    boolean isViewSelected();

    boolean isVipType();

    void setDockType(@NotNull DockType dockType);

    void setHintColor(int color);

    void setViewSelect(boolean isSelected, boolean isFromClick);
}
