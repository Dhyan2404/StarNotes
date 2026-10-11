package com.onyx.galaxy.note.category.view.itemtouchcallback;

import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.editor.data.CustomShortcutBarBean;
import com.onyx.galaxy.note.editor.view.adapter.CustomShortcutBarAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0012\u0010\u000e\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u001a\u0010\u0010\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;", "", "position", "", "canDrag", "fromPosition", "toPosition", "canSwap", "", "swap", "canMerge", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "onStartDrag", "performMerge", "onStopDrag", "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;", "a", "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;", "adapter", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ManageCustomShortcutHandlerImpl extends DragTouchCallback.SimpleDragHandler {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final CustomShortcutBarAdapter adapter;

    public ManageCustomShortcutHandlerImpl(@NotNull CustomShortcutBarAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canDrag(int position) {
        CustomShortcutBarBean customShortcutBarBean = this.adapter.getItems().get(position);
        if (customShortcutBarBean.getItemType() != 2) {
            return false;
        }
        return this.adapter.supportShortcutType(customShortcutBarBean.getShortcutType());
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canMerge(int fromPosition, int toPosition) {
        return false;
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public boolean canSwap(int fromPosition, int toPosition) {
        int indexOf = this.adapter.getItems().indexOf(CustomShortcutBarBean.INSTANCE.getSECTION_TITLE_LEFT());
        return indexOf >= 0 && toPosition != indexOf;
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void onStartDrag(@Nullable RecyclerView.ViewHolder viewHolder) {
        this.adapter.onViewHolderStartDrag(viewHolder);
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void onStopDrag(@Nullable RecyclerView.ViewHolder viewHolder, boolean performMerge) {
        this.adapter.onViewHolderEndDrag(viewHolder);
    }

    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.SimpleDragHandler, com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragHandler
    public void swap(int fromPosition, int toPosition) {
        this.adapter.move(fromPosition, toPosition);
    }
}
