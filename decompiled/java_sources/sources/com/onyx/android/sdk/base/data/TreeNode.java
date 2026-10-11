package com.onyx.android.sdk.base.data;

import androidx.core.provider.DocumentsContractCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b)\u0018\u0000 a*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001aB'\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0000¢\u0006\u0002\u0010\bJ$\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\u001c\u0010 \u001a\u00020\u000f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\"\u001a\u00020\u001fJ\u0014\u0010#\u001a\u00020\u000f2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010%\u001a\u00020&J%\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00028\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010(J%\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0007\u001a\u00028\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010(J\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u000e\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u001fJ\u0010\u0010.\u001a\u00020\u000f2\b\b\u0002\u0010/\u001a\u00020\u001fJ\u0006\u0010\u000e\u001a\u00020&J\u0006\u00100\u001a\u00020&J\u0012\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002J\u0012\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000004J\u001a\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000042\u0006\u00105\u001a\u00020\u0006J2\u00106\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\"\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`9J\u0018\u00106\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006JB\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\f\u0010;\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\"\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`9H\u0002Jf\u0010<\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000022\"\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`92$\b\u0002\u0010=\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`92\b\b\u0002\u00105\u001a\u00020\u0006J8\u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000022$\b\u0002\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`9J\u0006\u0010?\u001a\u00020\u001fJ\u0014\u0010@\u001a\u00020\u001f2\f\u0010A\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u000e\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000604J\u0012\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002J\u0006\u0010E\u001a\u00020\u000fJ\u0006\u0010F\u001a\u00020\u000fJ\u0014\u0010G\u001a\u00020\u000f2\f\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010I\u001a\u00020\u000fJ\u0006\u0010J\u001a\u00020\u000fJ\u0014\u0010K\u001a\u00020\u000f2\f\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0006\u0010L\u001a\u00020\u000fJ\u0006\u0010M\u001a\u00020\u001fJ\u0006\u0010N\u001a\u00020\u001fJ$\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\u001a\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J2\u0010R\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\"\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`9J*\u0010S\u001a\u00020&2\"\u00107\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u00020\u000f08j\b\u0012\u0004\u0012\u00028\u0000`9J$\u0010T\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u001fJ\b\u0010U\u001a\u00020\u0006H\u0016J\u0006\u0010V\u001a\u00020&J\u0019\u0010W\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002H\u0000¢\u0006\u0002\bXJ0\u0010Y\u001a\u00020&2\u0012\u0010Z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000022\u0012\u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002H\u0002J\u0019\u0010\\\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002H\u0000¢\u0006\u0002\b]J\u001c\u0010^\u001a\u00020&2\u0012\u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000002H\u0002J!\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000022\u0006\u00105\u001a\u00020\u0006H\u0000¢\u0006\u0002\b`R\u001c\u0010\u0007\u001a\u00028\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0015\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TreeNode;", "T", "", DocumentsContractCompat.f5557a, "Lcom/onyx/android/sdk/base/data/NewTree;", "id", "", "data", "(Lcom/onyx/android/sdk/base/data/NewTree;Ljava/lang/String;Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", Constants.OBJECT_SIG, "expand", "", "getExpand", Constants.BOOLEAN_VALUE_SIG, "setExpand", "(Z)V", "getId", "()Ljava/lang/String;", CouchFieldKey.KEY_PARENT_ID, "getParentId$sdk_base_release", "setParentId$sdk_base_release", "(Ljava/lang/String;)V", "getTree", "()Lcom/onyx/android/sdk/base/data/NewTree;", "addChild", "child", FirebaseAnalytics.Param.INDEX, "", "canAdopt", "targetBranchNode", "maxLimit", "canReparent", "newParent", "collapse", "", "createChild", "(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;", "createNode", "detachChild", "detachFromParent", "exceedMaxLevel", "maxLevel", "exceedMiniLevel", "minLevel", "expandChildren", "findChildren", "", "findChildrenNodes", "", "strategy", "findNode", "predication", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/data/TreeNodePredication;", "findNodeInternal", "parentNode", "findNodes", "breakCondition", "flatten", "getChildCount", "getMaxDepth", "branchNode", Constants.GET_PARENT, "getParentIds", "getPathNoteTreeNodes", "hasChild", "hasParent", "isParent", "node", "isParentAllExpand", "isRootNode", "isSibling", "isTop", "levelToLeaf", "levelToRoot", "parent", "removeChild", "removeFromParent", "removeNode", "removeNodes", "reparent", "toString", "toggleExpand", "traverseByBreadth", "traverseByBreadth$sdk_base_release", "traverseByBreadthInternal", "levelNodes", "list", "traverseByDepth", "traverseByDepth$sdk_base_release", "traverseByDepthInternal", "traverseByStrategy", "traverseByStrategy$sdk_base_release", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTreeNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1855#2,2:353\n1855#2,2:355\n766#2:357\n857#2,2:358\n1855#2,2:360\n1855#2,2:362\n1855#2,2:364\n1855#2,2:366\n1855#2,2:368\n*S KotlinDebug\n*F\n+ 1 TreeNode.kt\ncom/onyx/android/sdk/base/data/TreeNode\n*L\n164#1:353,2\n190#1:355,2\n202#1:357\n202#1:358,2\n217#1:360,2\n259#1:362,2\n297#1:364,2\n339#1:366,2\n348#1:368,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TreeNode<T> {
    public static final int MINI_LEVEL = 2;
    public static final int ROOT_LEVEL = 1;

    @NotNull
    private T data;
    private boolean expand;

    @Nullable
    private final String id;

    @Nullable
    private String parentId;

    @NotNull
    private final NewTree<T> tree;

    public TreeNode(@NotNull NewTree<T> tree, @Nullable String str, @NotNull T data) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        Intrinsics.checkNotNullParameter(data, "data");
        this.parentId = "";
        this.tree = tree;
        this.id = str;
        this.data = data;
        tree.addNode$sdk_base_release(this);
    }

    public static /* synthetic */ TreeNode addChild$default(TreeNode treeNode, TreeNode treeNode2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return treeNode.addChild(treeNode2, i);
    }

    public static /* synthetic */ TreeNode createChild$default(TreeNode treeNode, Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = UUID.randomUUID().toString();
        }
        return treeNode.createChild(obj, str);
    }

    public static /* synthetic */ TreeNode createNode$default(TreeNode treeNode, Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = UUID.randomUUID().toString();
        }
        return treeNode.createNode(obj, str);
    }

    public static /* synthetic */ boolean exceedMiniLevel$default(TreeNode treeNode, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return treeNode.exceedMiniLevel(i);
    }

    private final TreeNode<T> findNodeInternal(TreeNode<T> parentNode, Function1<? super TreeNode<T>, Boolean> predication) {
        if (predication.invoke(parentNode).booleanValue()) {
            return parentNode;
        }
        Iterator<T> it2 = parentNode.findChildren().iterator();
        while (it2.hasNext()) {
            TreeNode<T> findNodeInternal = findNodeInternal((TreeNode) it2.next(), predication);
            if (findNodeInternal != null) {
                return findNodeInternal;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List findNodes$default(TreeNode treeNode, Function1 function1, Function1 function12, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            function12 = new Function1<TreeNode<T>, Boolean>() { // from class: com.onyx.android.sdk.base.data.TreeNode$findNodes$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<T> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.FALSE;
                }
            };
        }
        if ((i & 4) != 0) {
            str = NewTreeKt.STRATEGY_BREADTH_FIRST;
        }
        return treeNode.findNodes(function1, function12, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List flatten$default(TreeNode treeNode, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<TreeNode<T>, Boolean>() { // from class: com.onyx.android.sdk.base.data.TreeNode$flatten$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<T> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return treeNode.flatten(function1);
    }

    public static /* synthetic */ TreeNode parent$default(TreeNode treeNode, TreeNode treeNode2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return treeNode.parent(treeNode2, i);
    }

    public static /* synthetic */ TreeNode reparent$default(TreeNode treeNode, TreeNode treeNode2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return treeNode.reparent(treeNode2, i);
    }

    private final void traverseByBreadthInternal(List<TreeNode<T>> levelNodes, List<TreeNode<T>> list) {
        while (true) {
            Collection<? extends TreeNode<T>> collection = levelNodes;
            if (!(!collection.isEmpty())) {
                return;
            }
            list.addAll(collection);
            ArrayList arrayList = new ArrayList();
            Iterator<TreeNode<T>> it2 = levelNodes.iterator();
            while (it2.hasNext()) {
                arrayList.addAll(it2.next().findChildren());
            }
            levelNodes = arrayList;
        }
    }

    private final void traverseByDepthInternal(List<TreeNode<T>> list) {
        List reversed;
        LinkedList linkedList = new LinkedList();
        linkedList.push(this);
        while (!linkedList.isEmpty()) {
            TreeNode<T> treeNode = (TreeNode) linkedList.pop();
            Intrinsics.checkNotNull(treeNode);
            list.add(treeNode);
            reversed = CollectionsKt___CollectionsKt.reversed(treeNode.findChildren());
            Iterator<T> it2 = reversed.iterator();
            while (it2.hasNext()) {
                linkedList.push((TreeNode) it2.next());
            }
        }
    }

    @NotNull
    public final TreeNode<T> addChild(@NotNull TreeNode<T> child, int index) {
        Intrinsics.checkNotNullParameter(child, "child");
        child.parentId = this.id;
        List<TreeNode<T>> findChildren = findChildren();
        if (CollectionKt.isOutOfRange(findChildren, index)) {
            findChildren.add(child);
        } else {
            findChildren.add(index, child);
        }
        return this;
    }

    public final boolean canAdopt(@NotNull TreeNode<T> targetBranchNode, int maxLimit) {
        Intrinsics.checkNotNullParameter(targetBranchNode, "targetBranchNode");
        return getMaxDepth(this) + targetBranchNode.levelToRoot() <= maxLimit;
    }

    public final boolean canReparent(@NotNull final TreeNode<T> newParent) {
        Intrinsics.checkNotNullParameter(newParent, "newParent");
        return (CollectionKt.contains(flatten$default(this, null, 1, null), new Function1<TreeNode<T>, Boolean>(newParent) { // from class: com.onyx.android.sdk.base.data.TreeNode$canReparent$1
            final /* synthetic */ TreeNode<T> $newParent;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.$newParent = newParent;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<T> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.getId(), this.$newParent.getId()));
            }
        }) || this.tree.exceedMaxDepth$sdk_base_release(this, newParent)) ? false : true;
    }

    public final void collapse() {
        this.expand = false;
    }

    @NotNull
    public final TreeNode<T> createChild(@NotNull T data, @Nullable String id) {
        Intrinsics.checkNotNullParameter(data, "data");
        TreeNode<T> createNode = createNode(data, id);
        addChild$default(this, createNode, 0, 2, null);
        return createNode;
    }

    @NotNull
    public final TreeNode<T> createNode(@NotNull T data, @Nullable String id) {
        Intrinsics.checkNotNullParameter(data, "data");
        return this.tree.createNode(data, id);
    }

    @NotNull
    public final TreeNode<T> detachChild(@NotNull TreeNode<T> child) {
        Intrinsics.checkNotNullParameter(child, "child");
        findChildren().remove(child);
        child.parentId = "";
        return this;
    }

    @NotNull
    public final TreeNode<T> detachFromParent() {
        if (hasParent()) {
            getParent().detachChild(this);
        }
        return this;
    }

    public final boolean exceedMaxLevel(int maxLevel) {
        return levelToRoot() >= maxLevel;
    }

    public final boolean exceedMiniLevel(int minLevel) {
        return levelToRoot() <= minLevel;
    }

    public final void expand() {
        this.expand = true;
    }

    public final void expandChildren() {
        Iterator<T> it2 = findChildrenNodes().iterator();
        while (it2.hasNext()) {
            TreeNode treeNode = (TreeNode) it2.next();
            treeNode.expand = treeNode.hasChild();
        }
    }

    @NotNull
    public final List<TreeNode<T>> findChildren() {
        return this.tree.findChildNodes$sdk_base_release(this.id);
    }

    @NotNull
    public final List<TreeNode<T>> findChildrenNodes() {
        return findNodes$default(this, new Function1<TreeNode<T>, Boolean>(this) { // from class: com.onyx.android.sdk.base.data.TreeNode$findChildrenNodes$1
            final /* synthetic */ TreeNode<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<T> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(it2, this.this$0));
            }
        }, null, null, 6, null);
    }

    @Nullable
    public final TreeNode<T> findNode(@Nullable final String id) {
        return findNode(new Function1<TreeNode<T>, Boolean>() { // from class: com.onyx.android.sdk.base.data.TreeNode$findNode$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<T> node) {
                Intrinsics.checkNotNullParameter(node, "node");
                return Boolean.valueOf(Intrinsics.areEqual(node.getId(), id));
            }
        });
    }

    @NotNull
    public final List<TreeNode<T>> findNodes(@NotNull Function1<? super TreeNode<T>, Boolean> predication, @NotNull Function1<? super TreeNode<T>, Boolean> breakCondition, @NotNull String strategy) {
        List<TreeNode<T>> mutableList;
        Intrinsics.checkNotNullParameter(predication, "predication");
        Intrinsics.checkNotNullParameter(breakCondition, "breakCondition");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        List<TreeNode<T>> traverseByStrategy$sdk_base_release = traverseByStrategy$sdk_base_release(strategy);
        ArrayList arrayList = new ArrayList();
        for (T t : traverseByStrategy$sdk_base_release) {
            if (predication.invoke((TreeNode) t).booleanValue()) {
                arrayList.add(t);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }

    @NotNull
    public final List<TreeNode<T>> flatten(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(predication, "predication");
        return findNodes$default(this, predication, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null);
    }

    public final int getChildCount() {
        return findChildren().size();
    }

    @NotNull
    public final T getData() {
        return this.data;
    }

    public final boolean getExpand() {
        return this.expand;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    public final int getMaxDepth(@NotNull TreeNode<T> branchNode) {
        Intrinsics.checkNotNullParameter(branchNode, "branchNode");
        Iterator<T> it2 = branchNode.findChildren().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i = Math.max(i, getMaxDepth((TreeNode) it2.next()));
        }
        return i + 1;
    }

    @NotNull
    public final TreeNode<T> getParent() {
        return (TreeNode) AnyKt.requireNonNull$default(this.tree.findNode(this.parentId), null, 1, null);
    }

    @Nullable
    /* renamed from: getParentId$sdk_base_release, reason: from getter */
    public final String getParentId() {
        return this.parentId;
    }

    @NotNull
    public final List<String> getParentIds() {
        ArrayList arrayList = new ArrayList();
        while (this.hasParent()) {
            arrayList.add(this.parentId);
            this = this.getParent();
        }
        return arrayList;
    }

    @NotNull
    public final List<TreeNode<T>> getPathNoteTreeNodes() {
        ArrayList arrayList = new ArrayList();
        if (!isRootNode()) {
            for (TreeNode<T> parent = getParent(); !parent.isRootNode(); parent = parent.getParent()) {
                arrayList.add(0, parent);
            }
            arrayList.add(this);
            Iterator<T> it2 = findNodes$default(this, new Function1<TreeNode<T>, Boolean>(this) { // from class: com.onyx.android.sdk.base.data.TreeNode$getPathNoteTreeNodes$1
                final /* synthetic */ TreeNode<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<T> it3) {
                    Intrinsics.checkNotNullParameter(it3, "it");
                    return Boolean.valueOf(!Intrinsics.areEqual(it3, this.this$0));
                }
            }, null, NewTreeKt.STRATEGY_DEPTH_FIRST, 2, null).iterator();
            while (it2.hasNext()) {
                arrayList.add((TreeNode) it2.next());
            }
        }
        return arrayList;
    }

    @NotNull
    public final NewTree<T> getTree() {
        return this.tree;
    }

    public final boolean hasChild() {
        return !findChildren().isEmpty();
    }

    public final boolean hasParent() {
        return this.tree.findNode(this.parentId) != null;
    }

    public final boolean isParent(@NotNull TreeNode<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        return Intrinsics.areEqual(this.parentId, node.id);
    }

    public final boolean isParentAllExpand() {
        while (this.hasParent()) {
            this = this.getParent();
            if (!this.expand) {
                return false;
            }
        }
        return true;
    }

    public final boolean isRootNode() {
        return Intrinsics.areEqual(this, this.tree.getRoot());
    }

    public final boolean isSibling(@NotNull TreeNode<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        return Intrinsics.areEqual(this.parentId, node.parentId);
    }

    public final boolean isTop() {
        return levelToRoot() <= 2;
    }

    public final int levelToLeaf() {
        Iterator<T> it2 = findChildren().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i = Math.max(i, ((TreeNode) it2.next()).levelToLeaf());
        }
        return i + 1;
    }

    public final int levelToRoot() {
        int i = 1;
        while (this.hasParent()) {
            this = this.getParent();
            i++;
        }
        return i;
    }

    @NotNull
    public final TreeNode<T> parent(@NotNull TreeNode<T> newParent, int index) {
        Intrinsics.checkNotNullParameter(newParent, "newParent");
        newParent.addChild(this, index);
        this.parentId = newParent.id;
        return this;
    }

    @NotNull
    public final TreeNode<T> removeChild(@NotNull TreeNode<T> child) {
        Intrinsics.checkNotNullParameter(child, "child");
        detachChild(child);
        this.tree.deleteNode$sdk_base_release(child);
        return this;
    }

    @NotNull
    public final TreeNode<T> removeFromParent() {
        if (hasParent()) {
            getParent().removeChild(this);
        } else {
            this.tree.deleteNode$sdk_base_release(this);
        }
        this.parentId = "";
        return this;
    }

    @Nullable
    public final TreeNode<T> removeNode(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(predication, "predication");
        TreeNode<T> findNode = findNode(predication);
        if (findNode != null) {
            return findNode.removeFromParent();
        }
        return null;
    }

    public final void removeNodes(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(predication, "predication");
        Iterator<T> it2 = findNodes$default(this, predication, null, null, 6, null).iterator();
        while (it2.hasNext()) {
            this.tree.deleteNode$sdk_base_release((TreeNode) it2.next());
        }
    }

    @NotNull
    public final TreeNode<T> reparent(@NotNull TreeNode<T> newParent, int index) {
        Intrinsics.checkNotNullParameter(newParent, "newParent");
        if (!canReparent(newParent)) {
            throw OnyxException.INSTANCE.m31891of(NewTreeKt.ERROR_CANNOT_REPARENT);
        }
        detachFromParent();
        newParent.addChild(this, index);
        this.parentId = newParent.id;
        return this;
    }

    public final void setData(@NotNull T t) {
        Intrinsics.checkNotNullParameter(t, "<set-?>");
        this.data = t;
    }

    public final void setExpand(boolean z) {
        this.expand = z;
    }

    public final void setParentId$sdk_base_release(@Nullable String str) {
        this.parentId = str;
    }

    @NotNull
    public String toString() {
        return this.data.toString();
    }

    public final void toggleExpand() {
        this.expand = !this.expand;
    }

    @NotNull
    public final List<TreeNode<T>> traverseByBreadth$sdk_base_release() {
        List<TreeNode<T>> mutableListOf;
        ArrayList arrayList = new ArrayList();
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this);
        traverseByBreadthInternal(mutableListOf, arrayList);
        return arrayList;
    }

    @NotNull
    public final List<TreeNode<T>> traverseByDepth$sdk_base_release() {
        ArrayList arrayList = new ArrayList();
        traverseByDepthInternal(arrayList);
        return arrayList;
    }

    @NotNull
    public final List<TreeNode<T>> traverseByStrategy$sdk_base_release(@NotNull String strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        if (!Intrinsics.areEqual(strategy, NewTreeKt.STRATEGY_BREADTH_FIRST) && Intrinsics.areEqual(strategy, NewTreeKt.STRATEGY_DEPTH_FIRST)) {
            return traverseByDepth$sdk_base_release();
        }
        return traverseByBreadth$sdk_base_release();
    }

    @NotNull
    public final List<TreeNode<T>> findChildrenNodes(@NotNull String strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        return findNodes$default(this, new Function1<TreeNode<T>, Boolean>(this) { // from class: com.onyx.android.sdk.base.data.TreeNode$findChildrenNodes$2
            final /* synthetic */ TreeNode<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull TreeNode<T> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(it2, this.this$0));
            }
        }, null, strategy, 2, null);
    }

    @Nullable
    public final TreeNode<T> findNode(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(predication, "predication");
        return findNodeInternal(this, predication);
    }
}
