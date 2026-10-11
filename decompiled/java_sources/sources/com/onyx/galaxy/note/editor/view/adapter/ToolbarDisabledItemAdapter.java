package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.ItemToolbarCustomBinding;
import com.onyx.galaxy.note.editor.data.ShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.event.ToolbarItemEnableEvent;
import com.onyx.galaxy.note.editor.view.adapter.ToolbarDisabledItemAdapter;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b\u0018\u0010\u0019J(\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemToolbarCustomBinding;", "holder", "", "position", "item", "", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ToolbarDisabledItemAdapter extends BaseQuickAdapter<ShapeToolType, DataBindingHolder<ItemToolbarCustomBinding>> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolbarDisabledItemAdapter(@NotNull EditorBundle editorBundle) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    /* renamed from: m */
    public static final void m47716m(ToolbarDisabledItemAdapter this$0, ShapeToolType shapeToolType, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47717n(shapeToolType);
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    /* renamed from: n */
    public final void m47717n(ShapeToolType item) {
        EditorBundleKt.postEvent(this.editorBundle, new ToolbarItemEnableEvent(item));
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemToolbarCustomBinding> holder, int position, @Nullable final ShapeToolType item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        ShapeDrawableBean drawableRes = item.getDrawableRes();
        holder.getBinding().menuIcon.setShapeTool(item);
        if (item.getDefaultDisplayColor() == null) {
            holder.getBinding().menuIcon.clearHintColor();
        } else {
            ShapeIconView shapeIconView = holder.getBinding().menuIcon;
            ResManager resManager = ResManager.INSTANCE;
            Integer defaultDisplayColor = item.getDefaultDisplayColor();
            Intrinsics.checkNotNull(defaultDisplayColor);
            shapeIconView.setHintColor(resManager.getColor(defaultDisplayColor.intValue()));
        }
        holder.getBinding().menuIcon.setAlpha(0.5f);
        holder.getBinding().icEye.setImageResource(C10651R.drawable.ic_eye_disabled);
        holder.getBinding().tvTitle.setText(drawableRes.getTitleRes());
        ViewKt.setViewVisibleOrGone(holder.getBinding().icDragTag, false);
        TintImageView icEye = holder.getBinding().icEye;
        Intrinsics.checkNotNullExpressionValue(icEye, "icEye");
        com.onyx.android.sdk.extension.ViewKt.click$default(icEye, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.sjn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolbarDisabledItemAdapter.m47716m(ToolbarDisabledItemAdapter.this, item, view);
            }
        }, 1, null);
        ViewKt.setViewVisibleOrGone(holder.getBinding().vLine, position < getItemCount() - 1);
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
