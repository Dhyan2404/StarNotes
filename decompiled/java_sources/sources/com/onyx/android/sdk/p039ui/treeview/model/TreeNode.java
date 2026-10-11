package com.onyx.android.sdk.p039ui.treeview.model;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.android.sdk.p039ui.treeview.view.TreeNodeWrapperView;
import com.onyx.android.sdk.uicommon.C8044R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes8.dex */
public class TreeNode {
    public static final String NODES_ID_SEPARATOR = ":";

    /* renamed from: a */
    public int f47202a;

    /* renamed from: b */
    public int f47203b;

    /* renamed from: c */
    public TreeNode f47204c;

    /* renamed from: d */
    public boolean f47205d;

    /* renamed from: e */
    public boolean f47206e = true;

    /* renamed from: f */
    public final List<TreeNode> f47207f = new ArrayList();

    /* renamed from: g */
    public BaseNodeViewHolder f47208g;

    /* renamed from: h */
    public TreeNodeClickListener f47209h;

    /* renamed from: i */
    public TreeNodeLongClickListener f47210i;

    /* renamed from: j */
    public Object f47211j;

    /* renamed from: k */
    public boolean f47212k;

    /* loaded from: classes8.dex */
    public static abstract class BaseNodeViewHolder<E> {

        /* renamed from: a */
        public View f47213a;
        protected int containerStyle;
        protected Context context;
        protected TreeNode mNode;
        protected AndroidTreeView tView;

        public BaseNodeViewHolder(Context context) {
            this.context = context;
        }

        public abstract View createNodeView(TreeNode treeNode, E e);

        public int getContainerStyle() {
            return this.containerStyle;
        }

        public ViewGroup getNodeItemsView() {
            return (ViewGroup) getView().findViewById(C8044R.id.node_items);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public View getNodeView() {
            TreeNode treeNode = this.mNode;
            return createNodeView(treeNode, treeNode.getValue());
        }

        public AndroidTreeView getTreeView() {
            return this.tView;
        }

        public View getView() {
            View view = this.f47213a;
            if (view != null) {
                return view;
            }
            View nodeView = getNodeView();
            TreeNodeWrapperView treeNodeWrapperView = new TreeNodeWrapperView(nodeView.getContext(), getContainerStyle());
            treeNodeWrapperView.insertNodeView(nodeView);
            this.f47213a = treeNodeWrapperView;
            return treeNodeWrapperView;
        }

        public boolean isInitialized() {
            return this.f47213a != null;
        }

        public abstract void notifyItemAdd(TreeNode treeNode, TreeNode treeNode2);

        public abstract void notifyItemRemove(TreeNode treeNode, TreeNode treeNode2);

        public abstract void notifyItemUpdate(TreeNode treeNode, TreeNode treeNode2);

        public void setContainerStyle(int i) {
            this.containerStyle = i;
        }

        public void setTreeViev(AndroidTreeView androidTreeView) {
            this.tView = androidTreeView;
        }

        public void toggle(boolean z) {
        }

        public void toggleSelectionMode(boolean z) {
        }
    }

    /* loaded from: classes8.dex */
    public interface TreeNodeClickListener {
        void onClick(TreeNode treeNode, Object obj);
    }

    /* loaded from: classes8.dex */
    public interface TreeNodeLongClickListener {
        boolean onLongClick(TreeNode treeNode, Object obj);
    }

    public TreeNode(Object obj) {
        this.f47211j = obj;
    }

    public static TreeNode root() {
        TreeNode treeNode = new TreeNode(null);
        treeNode.setSelectable(false);
        return treeNode;
    }

    /* renamed from: a */
    public final int m36429a() {
        int i = this.f47203b + 1;
        this.f47203b = i;
        return i;
    }

    public TreeNode addChild(TreeNode treeNode) {
        treeNode.f47204c = this;
        treeNode.f47202a = m36429a();
        this.f47207f.add(treeNode);
        return this;
    }

    public TreeNode addChildren(TreeNode... treeNodeArr) {
        for (TreeNode treeNode : treeNodeArr) {
            addChild(treeNode);
        }
        return this;
    }

    public int deleteChild(TreeNode treeNode) {
        for (int i = 0; i < this.f47207f.size(); i++) {
            if (treeNode.f47202a == this.f47207f.get(i).f47202a) {
                this.f47207f.remove(i);
                return i;
            }
        }
        return -1;
    }

    public List<TreeNode> getChildren() {
        return Collections.unmodifiableList(this.f47207f);
    }

    public TreeNodeClickListener getClickListener() {
        return this.f47209h;
    }

    public int getId() {
        return this.f47202a;
    }

    public int getLevel() {
        int i = 0;
        while (true) {
            this = this.f47204c;
            if (this == null) {
                return i;
            }
            i++;
        }
    }

    public TreeNodeLongClickListener getLongClickListener() {
        return this.f47210i;
    }

    @Nullable
    public TreeNode getParent() {
        return this.f47204c;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        while (this.f47204c != null) {
            sb.append(this.getId());
            this = this.f47204c;
            if (this.f47204c != null) {
                sb.append(":");
            }
        }
        return sb.toString();
    }

    public TreeNode getRoot() {
        while (true) {
            TreeNode treeNode = this.f47204c;
            if (treeNode == null) {
                return this;
            }
            this = treeNode;
        }
    }

    public Object getValue() {
        return this.f47211j;
    }

    public BaseNodeViewHolder getViewHolder() {
        return this.f47208g;
    }

    public boolean isExpanded() {
        return this.f47212k;
    }

    public boolean isFirstChild() {
        return !isRoot() && this.f47204c.f47207f.get(0).f47202a == this.f47202a;
    }

    public boolean isLastChild() {
        int size;
        return !isRoot() && (size = this.f47204c.f47207f.size()) > 0 && this.f47204c.f47207f.get(size - 1).f47202a == this.f47202a;
    }

    public boolean isLeaf() {
        return size() == 0;
    }

    public boolean isRoot() {
        return this.f47204c == null;
    }

    public boolean isSelectable() {
        return this.f47206e;
    }

    public boolean isSelected() {
        return this.f47206e && this.f47205d;
    }

    public void reParent(@Nullable TreeNode treeNode) {
        this.f47204c = treeNode;
    }

    public TreeNode setClickListener(TreeNodeClickListener treeNodeClickListener) {
        this.f47209h = treeNodeClickListener;
        return this;
    }

    public TreeNode setExpanded(boolean z) {
        this.f47212k = z;
        return this;
    }

    public TreeNode setLongClickListener(TreeNodeLongClickListener treeNodeLongClickListener) {
        this.f47210i = treeNodeLongClickListener;
        return this;
    }

    public void setSelectable(boolean z) {
        this.f47206e = z;
    }

    public void setSelected(boolean z) {
        this.f47205d = z;
    }

    public TreeNode setViewHolder(BaseNodeViewHolder baseNodeViewHolder) {
        this.f47208g = baseNodeViewHolder;
        if (baseNodeViewHolder != null) {
            baseNodeViewHolder.mNode = this;
        }
        return this;
    }

    public int size() {
        return this.f47207f.size();
    }

    public TreeNode addChildren(Collection<TreeNode> collection) {
        Iterator<TreeNode> it2 = collection.iterator();
        while (it2.hasNext()) {
            addChild(it2.next());
        }
        return this;
    }

    public TreeNode addChild(TreeNode treeNode, int i) {
        treeNode.f47204c = this;
        treeNode.f47202a = m36429a();
        if (i >= 0 && !this.f47207f.isEmpty() && i != this.f47207f.size()) {
            this.f47207f.add(Math.min(i, r0.size() - 1), treeNode);
        } else {
            this.f47207f.add(treeNode);
        }
        return this;
    }
}
