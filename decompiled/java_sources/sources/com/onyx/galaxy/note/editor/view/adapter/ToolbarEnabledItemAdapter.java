package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.databinding.ItemToolbarCustomBinding;
import com.onyx.galaxy.note.editor.data.ShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.event.ToolbarItemDisableEvent;
import com.onyx.galaxy.note.editor.view.adapter.ToolbarEnabledItemAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00012\u00020\u0005B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001d\u0010\u001eJ(\u0010\u000b\u001a\u00020\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0007H\u0014J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;", "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "fromPosition", "toPosition", "dataMove", "dataRemoveAt", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ToolbarEnabledItemAdapter extends BaseQuickAdapter<ShapeToolType, DataBindingHolder<ItemToolbarCustomBinding>> implements DragAndSwipeDataCallback {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolbarEnabledItemAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    /* renamed from: m */
    public static final void m47719m(ToolbarEnabledItemAdapter this$0, ShapeToolType shapeToolType, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47720n(shapeToolType);
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback
    public void dataMove(int fromPosition, int toPosition) {
        move(fromPosition, toPosition);
    }

    @Override // com.chad.library.adapter4.dragswipe.listener.DragAndSwipeDataCallback
    public void dataRemoveAt(int position) {
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: n */
    public final void m47720n(ShapeToolType item) {
        EditorBundleKt.postEvent(this.editorBundle, new ToolbarItemDisableEvent(item));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemToolbarCustomBinding> holder, int position, @Nullable final ShapeToolType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ShapeDrawableBean drawableRes = item.getDrawableRes();
        ShapeToolType shapeToolType = ShapeToolType.WRITE_PEN_GROUP;
        if (item == shapeToolType) {
            ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, item.getShapeType(), null, 2, null);
            if (shapeToolType$default != null) {
                shapeToolType = shapeToolType$default;
            }
        } else {
            shapeToolType = item;
        }
        holder.getBinding().menuIcon.setShapeTool(shapeToolType);
        if (item.getDefaultDisplayColor() == null) {
            holder.getBinding().menuIcon.clearHintColor();
        } else {
            ShapeIconView shapeIconView = holder.getBinding().menuIcon;
            ResManager resManager = ResManager.INSTANCE;
            Integer defaultDisplayColor = item.getDefaultDisplayColor();
            Intrinsics.checkNotNull(defaultDisplayColor);
            shapeIconView.setHintColor(resManager.getColor(defaultDisplayColor.intValue()));
        }
        holder.getBinding().tvTitle.setText(drawableRes.getTitleRes());
        holder.getBinding().tvTitle.setSelected(true);
        TintImageView icEye = holder.getBinding().icEye;
        Intrinsics.checkNotNullExpressionValue(icEye, "icEye");
        ViewKt.click$default(icEye, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.tjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolbarEnabledItemAdapter.m47719m(ToolbarEnabledItemAdapter.this, item, view);
            }
        }, 1, null);
        com.onyx.android.sdk.base.extension.ViewKt.setViewVisibleOrGone(holder.getBinding().vLine, position < getItemCount() - 1);
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemToolbarCustomBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemToolbarCustomBinding inflate = ItemToolbarCustomBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
