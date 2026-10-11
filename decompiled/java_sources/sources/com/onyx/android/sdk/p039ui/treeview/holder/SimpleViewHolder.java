package com.onyx.android.sdk.p039ui.treeview.holder;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.onyx.android.sdk.p039ui.treeview.model.TreeNode;

/* loaded from: classes8.dex */
public class SimpleViewHolder extends TreeNode.BaseNodeViewHolder<Object> {
    public SimpleViewHolder(Context context) {
        super(context);
    }

    @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
    public View createNodeView(TreeNode treeNode, Object obj) {
        TextView textView = new TextView(this.context);
        textView.setText(String.valueOf(obj));
        return textView;
    }

    @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
    public void notifyItemAdd(TreeNode treeNode, TreeNode treeNode2) {
    }

    @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
    public void notifyItemRemove(TreeNode treeNode, TreeNode treeNode2) {
    }

    @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
    public void notifyItemUpdate(TreeNode treeNode, TreeNode treeNode2) {
    }

    @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
    public void toggle(boolean z) {
    }
}
