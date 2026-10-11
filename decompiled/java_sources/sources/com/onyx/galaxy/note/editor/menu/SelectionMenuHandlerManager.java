package com.onyx.galaxy.note.editor.menu;

import android.view.View;
import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.fragment.app.FragmentManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.events.note.AnnotationSelectionInfo;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.TextSelectionInfo;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000f\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007¢\u0006\u0004\bK\u0010LJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0006J\b\u0010\r\u001a\u0004\u0018\u00010\bJ\u0016\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010J\u0014\u0010\u0016\u001a\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017J\u001c\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u001dJ\u000e\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fJ\u001c\u0010\"\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\b\u0010#\u001a\u00020\u0002H\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010%R\u0016\u0010)\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R$\u00100\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00102\u001a\u0002018\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00109\u001a\u0002088\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010F\u001a\u00020?8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\"\u0010J\u001a\u00020?8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bG\u0010A\u001a\u0004\bH\u0010C\"\u0004\bI\u0010E¨\u0006N"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "", "", "release", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "requireMenuView", "", "key", "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;", Constants.TRANSLET_OUTPUT_PNAME, "registerHandler", CouchFieldKey.KEY_PROVIDER_NAME, "activeProvider", "getActiveHandler", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "menu", "Landroid/view/View;", "itemView", "onMenuClick", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "updateSelectedShapes", "Lcom/onyx/android/sdk/universal/editor/events/note/TextSelectionInfo;", PrivilegedApp.f6532i, "updateTextSelection", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "updateEditTextShapeSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;", "updateAnnotationSelection", "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "args", "updateExcerptSelection", "updateUniversalShapeSelection", "a", "", "Ljava/util/Map;", "handlerMap", "b", Constants.STRING_SIG, "activeProviderName", "c", "Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "getMenuView$note_overseasRelease", "()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;", "setMenuView$note_overseasRelease", "(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V", "menuView", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "getFragmentManager$note_overseasRelease", "()Landroidx/fragment/app/FragmentManager;", "setFragmentManager$note_overseasRelease", "(Landroidx/fragment/app/FragmentManager;)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle$note_overseasRelease", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle$note_overseasRelease", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "", "d", "I", "getOffsetX$note_overseasRelease", "()I", "setOffsetX$note_overseasRelease", "(I)V", "offsetX", "e", "getOffsetY$note_overseasRelease", "setOffsetY$note_overseasRelease", "offsetY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SelectionMenuHandlerManager {

    @NotNull
    public static final String ANNOTATION_SELECTION = "annotation_selection";

    @NotNull
    public static final String EDIT_TEXT_SHAPE_SELECTION = "edit_text_shape_selection";

    @NotNull
    public static final String EXCERPT_SELECTION = "excerpt_selection";

    @NotNull
    public static final String SHAPE_SELECTION = "shape_selection";

    @NotNull
    public static final String TEXT_SELECTION = "text_selection";

    @NotNull
    public static final String UNIVERSAL_SHAPE_SELECTION = "universal_shape_selection";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, BaseSelectionMenuHandler> handlerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String activeProviderName = SHAPE_SELECTION;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public PagedSelectionMenu menuView;

    /* renamed from: d, reason: from kotlin metadata */
    public int offsetX;

    /* renamed from: e, reason: from kotlin metadata */
    public int offsetY;
    public EditorBundle editorBundle;
    public FragmentManager fragmentManager;

    public SelectionMenuHandlerManager() {
        m46442a();
    }

    /* renamed from: a */
    public final void m46442a() {
        registerHandler(SHAPE_SELECTION, new SelectionMenuHandler(this));
        registerHandler(TEXT_SELECTION, new TextSelectionMenuHandler(this));
        registerHandler(ANNOTATION_SELECTION, new AnnotationSelectionMenuHandler(this));
        registerHandler(EXCERPT_SELECTION, new ExcerptSelectionMenuHandler(this));
        registerHandler(EDIT_TEXT_SHAPE_SELECTION, new EditTextShapeSelectionHandler(this));
        registerHandler(UNIVERSAL_SHAPE_SELECTION, new UniversalShapeSelectionHandler(this));
    }

    public final void activeProvider(@NotNull String providerName) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.activeProviderName = providerName;
    }

    @Nullable
    public final BaseSelectionMenuHandler getActiveHandler() {
        return this.handlerMap.get(this.activeProviderName);
    }

    @NotNull
    public final EditorBundle getEditorBundle$note_overseasRelease() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    @NotNull
    public final FragmentManager getFragmentManager$note_overseasRelease() {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fragmentManager");
        return null;
    }

    @Nullable
    /* renamed from: getMenuView$note_overseasRelease, reason: from getter */
    public final PagedSelectionMenu getMenuView() {
        return this.menuView;
    }

    /* renamed from: getOffsetX$note_overseasRelease, reason: from getter */
    public final int getOffsetX() {
        return this.offsetX;
    }

    /* renamed from: getOffsetY$note_overseasRelease, reason: from getter */
    public final int getOffsetY() {
        return this.offsetY;
    }

    public final void onMenuClick(@NotNull SelectionMenuType menu, @NotNull View itemView) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.onMenuClick(menu, itemView);
        }
    }

    public final void registerHandler(@NotNull String key, @NotNull BaseSelectionMenuHandler handler) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handlerMap.put(key, handler);
    }

    public final void release() {
        this.menuView = null;
        this.handlerMap.clear();
    }

    @NotNull
    public final PagedSelectionMenu requireMenuView() {
        PagedSelectionMenu pagedSelectionMenu = this.menuView;
        Intrinsics.checkNotNull(pagedSelectionMenu);
        return pagedSelectionMenu;
    }

    public final void setEditorBundle$note_overseasRelease(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setFragmentManager$note_overseasRelease(@NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<set-?>");
        this.fragmentManager = fragmentManager;
    }

    public final void setMenuView$note_overseasRelease(@Nullable PagedSelectionMenu pagedSelectionMenu) {
        this.menuView = pagedSelectionMenu;
    }

    public final void setOffsetX$note_overseasRelease(int i) {
        this.offsetX = i;
    }

    public final void setOffsetY$note_overseasRelease(int i) {
        this.offsetY = i;
    }

    public final void updateAnnotationSelection(@NotNull AnnotationSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateAnnotationSelection(info);
        }
    }

    public final void updateEditTextShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateEditTextShapeSelection(virtualPageBoxInfo, shapes);
        }
    }

    public final void updateExcerptSelection(@NotNull ShowExcerptPopupArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateExcerptSelection(args);
        }
    }

    public final void updateSelectedShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateSelectedShapes(shapes);
        }
    }

    public final void updateTextSelection(@NotNull TextSelectionInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateTextSelection(info);
        }
    }

    public final void updateUniversalShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        BaseSelectionMenuHandler activeHandler = getActiveHandler();
        if (activeHandler != null) {
            activeHandler.updateUniversalShapeSelection(virtualPageBoxInfo, shapes);
        }
    }
}
