package com.onyx.android.sdk.p039ui.treeview.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import com.onyx.android.sdk.p039ui.treeview.holder.SimpleViewHolder;
import com.onyx.android.sdk.p039ui.treeview.model.TreeNode;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.android.sdk.uicommon.C8044R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes8.dex */
public class AndroidTreeView {

    /* renamed from: k */
    public static final String f47214k = ";";

    /* renamed from: a */
    public Context f47215a;

    /* renamed from: b */
    public boolean f47216b;

    /* renamed from: e */
    public TreeNode.TreeNodeClickListener f47219e;

    /* renamed from: f */
    public TreeNode.TreeNodeLongClickListener f47220f;

    /* renamed from: g */
    public boolean f47221g;
    protected TreeNode mRoot;

    /* renamed from: c */
    public int f47217c = 0;

    /* renamed from: d */
    public Class<? extends TreeNode.BaseNodeViewHolder> f47218d = SimpleViewHolder.class;

    /* renamed from: h */
    public boolean f47222h = false;

    /* renamed from: i */
    public boolean f47223i = false;

    /* renamed from: j */
    public boolean f47224j = true;

    /* renamed from: com.onyx.android.sdk.ui.treeview.view.AndroidTreeView$a */
    /* loaded from: classes8.dex */
    public class C8038a extends TreeNode.BaseNodeViewHolder {

        /* renamed from: b */
        public final /* synthetic */ LinearLayout f47225b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8038a(Context context, LinearLayout linearLayout) {
            super(context);
            this.f47225b = linearLayout;
        }

        @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
        public View createNodeView(TreeNode treeNode, Object obj) {
            return null;
        }

        @Override // com.onyx.android.sdk.ui.treeview.model.TreeNode.BaseNodeViewHolder
        public ViewGroup getNodeItemsView() {
            return this.f47225b;
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
    }

    /* renamed from: com.onyx.android.sdk.ui.treeview.view.AndroidTreeView$b */
    /* loaded from: classes8.dex */
    public class C8039b extends Animation {

        /* renamed from: e */
        public final /* synthetic */ View f47227e;

        /* renamed from: f */
        public final /* synthetic */ int f47228f;

        public C8039b(View view, int i) {
            this.f47227e = view;
            this.f47228f = i;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            this.f47227e.getLayoutParams().height = f == 1.0f ? -2 : (int) (this.f47228f * f);
            this.f47227e.requestLayout();
        }

        @Override // android.view.animation.Animation
        public boolean willChangeBounds() {
            return true;
        }
    }

    /* renamed from: com.onyx.android.sdk.ui.treeview.view.AndroidTreeView$c */
    /* loaded from: classes8.dex */
    public class C8040c extends Animation {

        /* renamed from: e */
        public final /* synthetic */ View f47229e;

        /* renamed from: f */
        public final /* synthetic */ int f47230f;

        public C8040c(View view, int i) {
            this.f47229e = view;
            this.f47230f = i;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            if (f == 1.0f) {
                this.f47229e.setVisibility(8);
                return;
            }
            ViewGroup.LayoutParams layoutParams = this.f47229e.getLayoutParams();
            int i = this.f47230f;
            layoutParams.height = i - ((int) (i * f));
            this.f47229e.requestLayout();
        }

        @Override // android.view.animation.Animation
        public boolean willChangeBounds() {
            return true;
        }
    }

    public AndroidTreeView(Context context) {
        this.f47215a = context;
    }

    /* renamed from: d */
    public static void m36432d(View view) {
        C8040c c8040c = new C8040c(view, view.getMeasuredHeight());
        c8040c.setDuration((int) (r0 / view.getContext().getResources().getDisplayMetrics().density));
        view.startAnimation(c8040c);
    }

    /* renamed from: f */
    public static void m36433f(View view) {
        view.measure(-1, -2);
        int measuredHeight = view.getMeasuredHeight();
        view.getLayoutParams().height = 0;
        view.setVisibility(0);
        C8039b c8039b = new C8039b(view, measuredHeight);
        c8039b.setDuration((int) (measuredHeight / view.getContext().getResources().getDisplayMetrics().density));
        view.startAnimation(c8039b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m36434l(TreeNode treeNode, View view) {
        if (treeNode.getClickListener() != null) {
            treeNode.getClickListener().onClick(treeNode, treeNode.getValue());
        } else {
            TreeNode.TreeNodeClickListener treeNodeClickListener = this.f47219e;
            if (treeNodeClickListener != null) {
                treeNodeClickListener.onClick(treeNode, treeNode.getValue());
            }
        }
        if (this.f47224j) {
            toggleNode(treeNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ boolean m36435m(TreeNode treeNode, View view) {
        if (treeNode.getLongClickListener() != null) {
            return treeNode.getLongClickListener().onLongClick(treeNode, treeNode.getValue());
        }
        TreeNode.TreeNodeLongClickListener treeNodeLongClickListener = this.f47220f;
        if (treeNodeLongClickListener != null) {
            return treeNodeLongClickListener.onLongClick(treeNode, treeNode.getValue());
        }
        if (!this.f47224j) {
            return false;
        }
        toggleNode(treeNode);
        return false;
    }

    public void addNode(@NonNull TreeNode treeNode, int i, TreeNode treeNode2) {
        boolean z = treeNode2.getParent() == treeNode;
        if (!z) {
            treeNode.addChild(treeNode2, i);
        }
        if (treeNode.isExpanded()) {
            m36436c(m36442k(treeNode).getNodeItemsView(), i, treeNode2);
        }
        if (z) {
            treeNode.getViewHolder().notifyItemUpdate(treeNode, treeNode2);
        } else {
            treeNode.getViewHolder().notifyItemAdd(treeNode, treeNode2);
        }
    }

    /* renamed from: c */
    public final void m36436c(ViewGroup viewGroup, int i, final TreeNode treeNode) {
        TreeNode.BaseNodeViewHolder m36442k = m36442k(treeNode);
        View view = m36442k.getView();
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            removeNode(treeNode);
            ((ViewGroup) parent).removeView(view);
        }
        if (i < 0 || viewGroup.getChildCount() == 0 || i == viewGroup.getChildCount()) {
            viewGroup.addView(view);
        } else {
            viewGroup.addView(view, Math.min(i, viewGroup.getChildCount() - 1));
        }
        boolean z = this.f47221g;
        if (z) {
            m36442k.toggleSelectionMode(z);
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.va
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AndroidTreeView.this.m36434l(treeNode, view2);
            }
        });
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sunia.HTREnginev2.wa
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean m36435m;
                m36435m = AndroidTreeView.this.m36435m(treeNode, view2);
                return m36435m;
            }
        });
    }

    public void collapseAll() {
        Iterator<TreeNode> it2 = this.mRoot.getChildren().iterator();
        while (it2.hasNext()) {
            m36437e(it2.next(), true);
        }
    }

    public void collapseNode(TreeNode treeNode) {
        m36437e(treeNode, false);
    }

    public void deselectAll() {
        m36443n(false, false);
    }

    /* renamed from: e */
    public final void m36437e(TreeNode treeNode, boolean z) {
        treeNode.setExpanded(false);
        TreeNode.BaseNodeViewHolder m36442k = m36442k(treeNode);
        if (this.f47222h) {
            m36432d(m36442k.getNodeItemsView());
        } else {
            m36442k.getNodeItemsView().setVisibility(8);
        }
        m36442k.toggle(false);
        if (z) {
            Iterator<TreeNode> it2 = treeNode.getChildren().iterator();
            while (it2.hasNext()) {
                m36437e(it2.next(), z);
            }
        }
    }

    public void expandAll() {
        m36439h(this.mRoot, true);
    }

    public void expandLevel(int i) {
        Iterator<TreeNode> it2 = this.mRoot.getChildren().iterator();
        while (it2.hasNext()) {
            m36438g(it2.next(), i);
        }
    }

    public void expandNode(TreeNode treeNode) {
        m36439h(treeNode, false);
    }

    /* renamed from: g */
    public final void m36438g(TreeNode treeNode, int i) {
        if (treeNode.getLevel() <= i) {
            m36439h(treeNode, false);
        }
        Iterator<TreeNode> it2 = treeNode.getChildren().iterator();
        while (it2.hasNext()) {
            m36438g(it2.next(), i);
        }
    }

    public String getSaveState() {
        StringBuilder sb = new StringBuilder();
        m36440i(this.mRoot, sb);
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public List<TreeNode> getSelected() {
        return this.f47221g ? m36441j(this.mRoot) : new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E> List<E> getSelectedValues(Class<E> cls) {
        ArrayList arrayList = new ArrayList();
        Iterator<TreeNode> it2 = getSelected().iterator();
        while (it2.hasNext()) {
            Object value = it2.next().getValue();
            if (value != null && value.getClass().equals(cls)) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public View getView(int i) {
        FrameLayout twoDScrollView;
        if (i > 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.f47215a, i);
            twoDScrollView = this.f47223i ? new TwoDScrollView(contextThemeWrapper) : new ScrollView(contextThemeWrapper);
        } else {
            twoDScrollView = this.f47223i ? new TwoDScrollView(this.f47215a) : new ScrollView(this.f47215a);
        }
        Context context = this.f47215a;
        if (this.f47217c != 0 && this.f47216b) {
            context = new ContextThemeWrapper(this.f47215a, this.f47217c);
        }
        LinearLayout linearLayout = new LinearLayout(context, null, this.f47217c);
        linearLayout.setId(C8044R.id.tree_items);
        linearLayout.setOrientation(1);
        twoDScrollView.addView(linearLayout);
        this.mRoot.setViewHolder(new C8038a(this.f47215a, linearLayout));
        m36439h(this.mRoot, false);
        return twoDScrollView;
    }

    /* renamed from: h */
    public final void m36439h(TreeNode treeNode, boolean z) {
        treeNode.setExpanded(true);
        TreeNode.BaseNodeViewHolder m36442k = m36442k(treeNode);
        m36442k.getNodeItemsView().removeAllViews();
        m36442k.toggle(true);
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            m36436c(m36442k.getNodeItemsView(), -1, treeNode2);
            if (treeNode2.isExpanded() || z) {
                m36439h(treeNode2, z);
            }
        }
        if (this.f47222h) {
            m36433f(m36442k.getNodeItemsView());
        } else {
            m36442k.getNodeItemsView().setVisibility(0);
        }
    }

    /* renamed from: i */
    public final void m36440i(TreeNode treeNode, StringBuilder sb) {
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (treeNode2.isExpanded()) {
                sb.append(treeNode2.getPath());
                sb.append(f47214k);
                m36440i(treeNode2, sb);
            }
        }
    }

    public boolean is2dScrollEnabled() {
        return this.f47223i;
    }

    public boolean isAutoToggleEnabled() {
        return this.f47224j;
    }

    public boolean isSelectionModeEnabled() {
        return this.f47221g;
    }

    /* renamed from: j */
    public final List<TreeNode> m36441j(TreeNode treeNode) {
        ArrayList arrayList = new ArrayList();
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (treeNode2.isSelected()) {
                arrayList.add(treeNode2);
            }
            arrayList.addAll(m36441j(treeNode2));
        }
        return arrayList;
    }

    /* renamed from: k */
    public final TreeNode.BaseNodeViewHolder m36442k(TreeNode treeNode) {
        TreeNode.BaseNodeViewHolder viewHolder = treeNode.getViewHolder();
        if (viewHolder == null) {
            try {
                viewHolder = this.f47218d.getConstructor(Context.class).newInstance(this.f47215a);
                treeNode.setViewHolder(viewHolder);
            } catch (Exception unused) {
                throw new RuntimeException("Could not instantiate class " + this.f47218d);
            }
        }
        if (viewHolder.getContainerStyle() <= 0) {
            viewHolder.setContainerStyle(this.f47217c);
        }
        if (viewHolder.getTreeView() == null) {
            viewHolder.setTreeViev(this);
        }
        return viewHolder;
    }

    /* renamed from: n */
    public final void m36443n(boolean z, boolean z2) {
        if (this.f47221g) {
            Iterator<TreeNode> it2 = this.mRoot.getChildren().iterator();
            while (it2.hasNext()) {
                m36445p(it2.next(), z, z2);
            }
        }
    }

    /* renamed from: o */
    public final void m36444o(TreeNode treeNode, Set<String> set) {
        for (TreeNode treeNode2 : treeNode.getChildren()) {
            if (set.contains(treeNode2.getPath())) {
                expandNode(treeNode2);
                m36444o(treeNode2, set);
            }
        }
    }

    /* renamed from: p */
    public final void m36445p(TreeNode treeNode, boolean z, boolean z2) {
        treeNode.setSelected(z);
        m36447r(treeNode, true);
        if (z2 ? treeNode.isExpanded() : true) {
            Iterator<TreeNode> it2 = treeNode.getChildren().iterator();
            while (it2.hasNext()) {
                m36445p(it2.next(), z, z2);
            }
        }
    }

    /* renamed from: q */
    public final void m36446q(TreeNode treeNode, boolean z) {
        m36447r(treeNode, z);
        if (treeNode.isExpanded()) {
            Iterator<TreeNode> it2 = treeNode.getChildren().iterator();
            while (it2.hasNext()) {
                m36446q(it2.next(), z);
            }
        }
    }

    /* renamed from: r */
    public final void m36447r(TreeNode treeNode, boolean z) {
        if (m36442k(treeNode).isInitialized()) {
            m36442k(treeNode).toggleSelectionMode(z);
        }
    }

    public void removeNode(TreeNode treeNode) {
        if (treeNode.getParent() != null) {
            TreeNode parent = treeNode.getParent();
            int deleteChild = parent.deleteChild(treeNode);
            treeNode.reParent(null);
            if (parent.isExpanded() && deleteChild >= 0) {
                TreeNode.BaseNodeViewHolder m36442k = m36442k(parent);
                View childAt = m36442k.getNodeItemsView().getChildAt(deleteChild);
                if (childAt != null) {
                    m36442k.getNodeItemsView().removeView(childAt);
                }
            }
            parent.getViewHolder().notifyItemRemove(parent, treeNode);
        }
    }

    public void restoreState(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        collapseAll();
        m36444o(this.mRoot, new HashSet(Arrays.asList(str.split(f47214k))));
    }

    public void selectAll(boolean z) {
        m36443n(true, z);
    }

    public void selectNode(TreeNode treeNode, boolean z) {
        if (this.f47221g) {
            treeNode.setSelected(z);
            m36447r(treeNode, true);
        }
    }

    public void setDefaultAnimation(boolean z) {
        this.f47222h = z;
    }

    public void setDefaultContainerStyle(int i) {
        setDefaultContainerStyle(i, false);
    }

    public void setDefaultNodeClickListener(TreeNode.TreeNodeClickListener treeNodeClickListener) {
        this.f47219e = treeNodeClickListener;
    }

    public void setDefaultNodeLongClickListener(TreeNode.TreeNodeLongClickListener treeNodeLongClickListener) {
        this.f47220f = treeNodeLongClickListener;
    }

    public void setDefaultViewHolder(Class<? extends TreeNode.BaseNodeViewHolder> cls) {
        this.f47218d = cls;
    }

    public void setRoot(TreeNode treeNode) {
        this.mRoot = treeNode;
    }

    public void setSelectionModeEnabled(boolean z) {
        if (!z) {
            deselectAll();
        }
        this.f47221g = z;
        Iterator<TreeNode> it2 = this.mRoot.getChildren().iterator();
        while (it2.hasNext()) {
            m36446q(it2.next(), z);
        }
    }

    public void setUse2dScroll(boolean z) {
        this.f47223i = z;
    }

    public void setUseAutoToggle(boolean z) {
        this.f47224j = z;
    }

    public void toggleNode(TreeNode treeNode) {
        if (treeNode.isExpanded()) {
            m36437e(treeNode, false);
        } else {
            m36439h(treeNode, false);
        }
    }

    public void setDefaultContainerStyle(int i, boolean z) {
        this.f47217c = i;
        this.f47216b = z;
    }

    public AndroidTreeView(Context context, TreeNode treeNode) {
        this.mRoot = treeNode;
        this.f47215a = context;
    }

    public View getView() {
        return getView(-1);
    }
}
