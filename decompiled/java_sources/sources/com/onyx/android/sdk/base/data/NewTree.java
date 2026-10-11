package com.onyx.android.sdk.base.data;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001b\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0000¢\u0006\u0002\b\u0014J\u0006\u0010\u0015\u001a\u00020\u0012J%\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0017\u001a\u00028\u00002\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0000¢\u0006\u0002\b\u001bJ)\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0000¢\u0006\u0002\b J#\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\"2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b#J2\u0010$\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00102\"\u0010%\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0004\u0012\u00020\u001d0&j\b\u0012\u0004\u0012\u00028\u0000`'J\u0018\u0010$\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006J6\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\"2\"\u0010%\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0004\u0012\u00020\u001d0&j\b\u0012\u0004\u0012\u00028\u0000`'J8\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00100\"2$\b\u0002\u0010%\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0004\u0012\u00020\u001d0&j\b\u0012\u0004\u0012\u00028\u0000`'J\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010J\u0010\u0010+\u001a\u00020\u001d2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006J\u0006\u0010,\u001a\u00020\u001dJ\u0014\u0010-\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010R:\u0010\u0004\u001a.\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0005j\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007`\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/NewTree;", "T", "", "()V", "entries", "Ljava/util/LinkedHashMap;", "", "Lcom/onyx/android/sdk/base/data/Entry;", "Lkotlin/collections/LinkedHashMap;", "maxDepthLimit", "", "getMaxDepthLimit", "()I", "setMaxDepthLimit", "(I)V", "root", "Lcom/onyx/android/sdk/base/data/TreeNode;", "addNode", "", "node", "addNode$sdk_base_release", Constants.CLEAR_ATTRIBUTES, "createNode", "data", "id", "(Ljava/lang/Object;Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;", "deleteNode", "deleteNode$sdk_base_release", "exceedMaxDepth", "", "appendTree", "targetNode", "exceedMaxDepth$sdk_base_release", "findChildNodes", "", "findChildNodes$sdk_base_release", "findNode", "predication", "Lkotlin/Function1;", "Lcom/onyx/android/sdk/base/data/TreeNodePredication;", "findNodes", "flatten", "getRoot", "hasNode", "isEmpty", "setRoot", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNewTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewTree.kt\ncom/onyx/android/sdk/base/data/NewTree\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1855#2,2:84\n*S KotlinDebug\n*F\n+ 1 NewTree.kt\ncom/onyx/android/sdk/base/data/NewTree\n*L\n63#1:84,2\n*E\n"})
/* loaded from: classes7.dex */
public final class NewTree<T> {

    @NotNull
    private final LinkedHashMap<String, Entry<T>> entries = new LinkedHashMap<>();
    private int maxDepthLimit = Integer.MAX_VALUE;

    @Nullable
    private TreeNode<T> root;

    public static /* synthetic */ TreeNode createNode$default(NewTree newTree, Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = UUID.randomUUID().toString();
        }
        return newTree.createNode(obj, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List flatten$default(NewTree newTree, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = new Function1<TreeNode<T>, Boolean>() { // from class: com.onyx.android.sdk.base.data.NewTree$flatten$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull TreeNode<T> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return newTree.flatten(function1);
    }

    public final void addNode$sdk_base_release(@NotNull TreeNode<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.entries.put(node.getId(), new Entry<>(node, null, 2, null));
    }

    public final void clear() {
        this.entries.clear();
        this.root = null;
    }

    @NotNull
    public final TreeNode<T> createNode(@NotNull T data, @Nullable String id) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new TreeNode<>(this, id, data);
    }

    public final void deleteNode$sdk_base_release(@NotNull TreeNode<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        Iterator<T> it2 = TreeNode.flatten$default(node, null, 1, null).iterator();
        while (it2.hasNext()) {
            this.entries.remove(((TreeNode) it2.next()).getId());
        }
        String id = node.getId();
        TreeNode<T> treeNode = this.root;
        if (Intrinsics.areEqual(id, treeNode != null ? treeNode.getId() : null)) {
            this.root = null;
        }
    }

    public final boolean exceedMaxDepth$sdk_base_release(@NotNull TreeNode<T> appendTree, @NotNull TreeNode<T> targetNode) {
        Intrinsics.checkNotNullParameter(appendTree, "appendTree");
        Intrinsics.checkNotNullParameter(targetNode, "targetNode");
        return appendTree.levelToLeaf() + targetNode.levelToRoot() > this.maxDepthLimit;
    }

    @NotNull
    public final List<TreeNode<T>> findChildNodes$sdk_base_release(@Nullable String id) {
        List<TreeNode<T>> children$sdk_base_release;
        Entry<T> entry = this.entries.get(id);
        return (entry == null || (children$sdk_base_release = entry.getChildren$sdk_base_release()) == null) ? new ArrayList() : children$sdk_base_release;
    }

    @Nullable
    public final TreeNode<T> findNode(@Nullable String id) {
        Entry<T> entry = this.entries.get(id);
        if (entry != null) {
            return entry.getNode$sdk_base_release();
        }
        return null;
    }

    @NotNull
    public final List<TreeNode<T>> findNodes(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        List<TreeNode<T>> findNodes$default;
        Intrinsics.checkNotNullParameter(predication, "predication");
        TreeNode<T> treeNode = this.root;
        return (treeNode == null || (findNodes$default = TreeNode.findNodes$default(treeNode, predication, null, null, 6, null)) == null) ? new ArrayList() : findNodes$default;
    }

    @NotNull
    public final List<TreeNode<T>> flatten(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        List<TreeNode<T>> flatten;
        Intrinsics.checkNotNullParameter(predication, "predication");
        TreeNode<T> treeNode = this.root;
        return (treeNode == null || (flatten = treeNode.flatten(predication)) == null) ? new ArrayList() : flatten;
    }

    public final int getMaxDepthLimit() {
        return this.maxDepthLimit;
    }

    @NotNull
    public final TreeNode<T> getRoot() {
        return (TreeNode) AnyKt.requireNonNull(this.root, NewTreeKt.ERROR_NO_ROOT_NODE);
    }

    public final boolean hasNode(@Nullable String id) {
        return this.entries.containsKey(id);
    }

    public final boolean isEmpty() {
        return this.root == null;
    }

    public final void setMaxDepthLimit(int i) {
        this.maxDepthLimit = i;
    }

    public final void setRoot(@NotNull TreeNode<T> node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.root = node;
    }

    @Nullable
    public final TreeNode<T> findNode(@NotNull Function1<? super TreeNode<T>, Boolean> predication) {
        Intrinsics.checkNotNullParameter(predication, "predication");
        TreeNode<T> treeNode = this.root;
        if (treeNode != null) {
            return treeNode.findNode(predication);
        }
        return null;
    }
}
