package com.onyx.galaxy.note.editor.menu;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/UniversalShapeSelectionHandler;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "", "updateUniversalShapeSelection", "", "c", "Ljava/util/List;", "d", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;", "manager", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UniversalShapeSelectionHandler extends SelectionMenuHandler {

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<Shape> shapes;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public BoxInfo virtualPageBoxInfo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UniversalShapeSelectionHandler(@NotNull SelectionMenuHandlerManager manager) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.shapes = new ArrayList();
        this.virtualPageBoxInfo = new BoxInfo();
    }

    @Override // com.onyx.galaxy.note.editor.menu.BaseSelectionMenuHandler
    public void updateUniversalShapeSelection(@NotNull BoxInfo virtualPageBoxInfo, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(virtualPageBoxInfo, "virtualPageBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        super.updateUniversalShapeSelection(virtualPageBoxInfo, shapes);
        this.shapes.clear();
        this.shapes.addAll(shapes);
        updateSelectedShapes(this.shapes);
        this.virtualPageBoxInfo = virtualPageBoxInfo;
    }
}
