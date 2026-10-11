package com.onyx.galaxy.note.editor.menu;

import android.view.View;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.fragment.app.FragmentManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001a¢\u0006\u0004\b.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0016\u0010\r\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u001e\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0014\u0010-\u001a\u00020(8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", "", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "requireMenuView", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "", "onMenuClick", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "updateSelectedShapes", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", PrivilegedApp.f6532i, "updateTextSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "updateAnnotationSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "args", "updateExcerptSelection", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "updateEditTextShapeSelection", "updateUniversalShapeSelection", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "a", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "getManager", "()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", "Landroidx/fragment/app/FragmentManager;", "getFragmentManager$note_overseasRelease", "()Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle$note_overseasRelease", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "getOffsetX$note_overseasRelease", "()I", "offsetX", "getOffsetY$note_overseasRelease", "offsetY", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class BaseSelectionMenuHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final SelectionMenuHandlerManager manager;

    public BaseSelectionMenuHandler(@NotNull SelectionMenuHandlerManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.manager = manager;
    }

    @NotNull
    public final EditorBundle getEditorBundle$note_overseasRelease() {
        return this.manager.getEditorBundle$note_overseasRelease();
    }

    @NotNull
    public final FragmentManager getFragmentManager$note_overseasRelease() {
        return this.manager.getFragmentManager$note_overseasRelease();
    }

    @NotNull
    public final SelectionMenuHandlerManager getManager() {
        return this.manager;
    }

    public final int getOffsetX$note_overseasRelease() {
        return this.manager.getOffsetX();
    }

    public final int getOffsetY$note_overseasRelease() {
        return this.manager.getOffsetY();
    }

    public abstract void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView);

    @NotNull
    public final PagedSelectionMenu requireMenuView() {
        return this.manager.requireMenuView();
    }

    public void updateAnnotationSelection(@NotNull AnnotationSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
    }

    public void updateEditTextShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
    }

    public void updateExcerptSelection(@NotNull ShowExcerptPopupArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
    }

    public void updateSelectedShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
    }

    public void updateTextSelection(@NotNull TextSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
    }

    public void updateUniversalShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
    }
}
