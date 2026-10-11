package com.onyx.android.sdk.base.data;

import androidx.core.provider.DocumentsContractCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ?*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001?B\u0005¢\u0006\u0002\u0010\u0003J\u001d\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00028\u00002\b\b\u0002\u0010\u001e\u001a\u00020\u0011¢\u0006\u0002\u0010\u001fJ\u0014\u0010\u001b\u001a\u00020\u001c2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u001c\u0010!\u001a\u00020\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010$\u001a\u00020\u0011J\u0012\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0005J\u000e\u0010&\u001a\u00020\"2\u0006\u0010'\u001a\u00020\u0011J\u0006\u0010(\u001a\u00020\"J\"\u0010)\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+J\"\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+J&\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u00052\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+J\u001a\u0010.\u001a\u00020\u00112\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+J\u0006\u0010/\u001a\u00020\u0011J\u0016\u0010/\u001a\u00020\u00112\f\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0002J\u001a\u00101\u001a\u00020\"2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+J\u0006\u00102\u001a\u00020\"J,\u00103\u001a\b\u0012\u0004\u0012\u0002H40\u0005\"\u0004\b\u0001\u001042\u0018\u00105\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0004\u0012\u0002H40+JV\u00106\u001a\u00020\u001c2\f\u00107\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u00108\u001a\u00020\u001126\u0010*\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(<\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(=\u0012\u0004\u0012\u00020\u001c09J\"\u0010>\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00002\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0+R&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0016\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006@"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Tree;", "T", "", "()V", Constants.ELEMNAME_CHILDREN_STRING, "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", "item", "getItem", "()Ljava/lang/Object;", "setItem", "(Ljava/lang/Object;)V", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.OBJECT_SIG, "level", "", "getLevel", "()I", "setLevel", "(I)V", "parent", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.GET_PARENT, "()Lcom/onyx/android/sdk/base/data/Tree;", "setParent", "(Lcom/onyx/android/sdk/base/data/Tree;)V", "addToChildren", "", "node", FirebaseAnalytics.Param.INDEX, "(Ljava/lang/Object;I)V", DocumentsContractCompat.f5557a, "canAdopt", "", "targetBranchNode", "maxLimit", "childrenToList", "exceedMaxLevel", "maxLevel", "exceedMiniLevel", "find", "predicate", "Lkotlin/Function1;", "findChild", "findChildren", "getChildrenCount", "getMaxDepth", "branchNode", "hasChild", "hasChildren", "mapChildren", "R", Constants.ELEMNAME_TRANSFORM_STRING, "reParent", "target", "insertPos", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "originItem", "targetItem", SyncConstant.SYNC_ACTION_REMOVE, "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tree.kt\ncom/onyx/android/sdk/base/data/Tree\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,263:1\n1855#2,2:264\n1855#2,2:266\n1855#2,2:268\n*S KotlinDebug\n*F\n+ 1 Tree.kt\ncom/onyx/android/sdk/base/data/Tree\n*L\n42#1:264,2\n108#1:266,2\n203#1:268,2\n*E\n"})
/* loaded from: classes7.dex */
public final class Tree<T> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int MINI_LEVEL = 1;

    @NotNull
    private List<Tree<T>> children = new ArrayList();

    @Nullable
    private T item;
    private int level;

    @Nullable
    private Tree<T> parent;

    @Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JP\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\b\b\u0001\u0010\u0007*\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u0002H\u0007\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u0002H\u0007\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bJ2\u0010\u000e\u001a\u00020\u000f\"\b\b\u0001\u0010\u0007*\u00020\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00070\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\f0\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Tree$Companion;", "", "()V", "MINI_LEVEL", "", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/base/data/Tree;", "T", "list", "", "keyMap", "Lkotlin/Function1;", "", "parentIdMap", "log", "", DocumentsContractCompat.f5557a, "getText", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTree.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tree.kt\ncom/onyx/android/sdk/base/data/Tree$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n2634#2:264\n2634#2:266\n1855#2,2:268\n1855#2,2:270\n1#3:265\n1#3:267\n*S KotlinDebug\n*F\n+ 1 Tree.kt\ncom/onyx/android/sdk/base/data/Tree$Companion\n*L\n220#1:264\n225#1:266\n242#1:268,2\n251#1:270,2\n220#1:265\n225#1:267\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> Tree<T> create(@NotNull List<? extends T> list, @NotNull Function1<? super T, String> keyMap, @NotNull Function1<? super T, String> parentIdMap) {
            List<Tree<T>> children;
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(keyMap, "keyMap");
            Intrinsics.checkNotNullParameter(parentIdMap, "parentIdMap");
            Tree<T> tree = new Tree<>();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<? extends T> list2 = list;
            for (T t : list2) {
                String invoke = keyMap.invoke(t);
                Tree tree2 = new Tree();
                tree2.setItem(t);
                linkedHashMap.put(invoke, tree2);
            }
            Iterator<T> it2 = list2.iterator();
            while (true) {
                boolean z = true;
                if (!it2.hasNext()) {
                    break;
                }
                T next = it2.next();
                String invoke2 = parentIdMap.invoke(next);
                Tree tree3 = (Tree) linkedHashMap.get(keyMap.invoke(next));
                if (invoke2 != null && invoke2.length() != 0) {
                    z = false;
                }
                Tree<T> tree4 = z ? tree : (Tree) linkedHashMap.get(invoke2);
                if (tree3 != null) {
                    tree3.setParent(tree4);
                }
                CollectionKt.safeAdd(tree4 != null ? tree4.getChildren() : null, tree3);
            }
            LinkedList linkedList = new LinkedList();
            linkedList.add(tree);
            while (!linkedList.isEmpty()) {
                Tree tree5 = (Tree) linkedList.poll();
                if (tree5 != null && (children = tree5.getChildren()) != null) {
                    Iterator<T> it3 = children.iterator();
                    while (it3.hasNext()) {
                        Tree tree6 = (Tree) it3.next();
                        tree6.setLevel(tree5.getLevel() + 1);
                        linkedList.add(tree6);
                    }
                }
            }
            return tree;
        }

        public final <T> void log(@NotNull Tree<T> tree, @NotNull Function1<? super T, String> getText) {
            String str;
            Intrinsics.checkNotNullParameter(tree, "tree");
            Intrinsics.checkNotNullParameter(getText, "getText");
            for (Tree<T> tree2 : tree.getChildren()) {
                int level = tree2.getLevel();
                if (level >= 0) {
                    int i = 0;
                    str = "";
                    while (true) {
                        str = str + '-';
                        if (i == level) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    str = "";
                }
                Debug debug = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("");
                T item = tree2.getItem();
                Intrinsics.checkNotNull(item);
                sb.append(getText.invoke(item));
                debug.m32038d("treeItem", sb.toString(), new Object[0]);
                if (tree2.hasChildren()) {
                    Tree.INSTANCE.log(tree2, getText);
                }
            }
        }

        private Companion() {
        }
    }

    public static /* synthetic */ void addToChildren$default(Tree tree, Object obj, int i, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        tree.addToChildren(obj, i);
    }

    public static /* synthetic */ void reParent$default(Tree tree, Tree tree2, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        tree.reParent(tree2, i, function2);
    }

    public final void addToChildren(@NotNull Tree<T> tree) {
        Intrinsics.checkNotNullParameter(tree, "tree");
        tree.parent = this;
        tree.level = this.level + 1;
        this.children.add(tree);
    }

    public final boolean canAdopt(@NotNull Tree<T> targetBranchNode, int maxLimit) {
        Intrinsics.checkNotNullParameter(targetBranchNode, "targetBranchNode");
        return getMaxDepth() + targetBranchNode.level <= maxLimit;
    }

    @NotNull
    public final List<Tree<T>> childrenToList() {
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(this.children);
        while (!linkedList.isEmpty()) {
            Object poll = linkedList.poll();
            Intrinsics.checkNotNull(poll);
            Tree tree = (Tree) poll;
            arrayList.add(tree);
            if (tree.hasChildren()) {
                linkedList.addAll(0, tree.children);
            }
        }
        return arrayList;
    }

    public final boolean exceedMaxLevel(int maxLevel) {
        return this.level >= maxLevel;
    }

    public final boolean exceedMiniLevel() {
        return this.level <= 1;
    }

    @Nullable
    public final Tree<T> find(@NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        T t = this.item;
        if (t != null) {
            Intrinsics.checkNotNull(t);
            if (predicate.invoke(t).booleanValue()) {
                return this;
            }
        }
        if (!hasChildren()) {
            return null;
        }
        Iterator<T> it2 = this.children.iterator();
        while (it2.hasNext()) {
            Tree<T> find = ((Tree) it2.next()).find(predicate);
            if (find != null) {
                return find;
            }
        }
        return null;
    }

    @Nullable
    public final Tree<T> findChild(@NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Tree<T> tree = null;
        if (this.children.isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(this);
        while (!linkedList.isEmpty()) {
            Object poll = linkedList.poll();
            Intrinsics.checkNotNull(poll);
            Iterator<Tree<T>> it2 = ((Tree) poll).children.iterator();
            while (true) {
                if (it2.hasNext()) {
                    Tree<T> next = it2.next();
                    T t = next.item;
                    Intrinsics.checkNotNull(t);
                    if (predicate.invoke(t).booleanValue()) {
                        tree = next;
                        break;
                    }
                    linkedList.add(next);
                }
            }
        }
        return tree;
    }

    @NotNull
    public final List<Tree<T>> findChildren(@NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList();
        linkedList.add(this);
        while (!linkedList.isEmpty()) {
            Object poll = linkedList.poll();
            Intrinsics.checkNotNull(poll);
            for (Tree<T> tree : ((Tree) poll).children) {
                T t = tree.item;
                Intrinsics.checkNotNull(t);
                if (predicate.invoke(t).booleanValue()) {
                    arrayList.add(tree);
                }
                linkedList.add(tree);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Tree<T>> getChildren() {
        return this.children;
    }

    public final int getChildrenCount(@NotNull Function1<? super T, Boolean> predicate) {
        List<Tree<T>> list;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedList linkedList = new LinkedList();
        linkedList.add(this);
        int i = 0;
        while (!linkedList.isEmpty()) {
            Tree tree = (Tree) linkedList.poll();
            if (tree != null && (list = tree.children) != null) {
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    Tree tree2 = (Tree) it2.next();
                    T t = tree2.item;
                    Intrinsics.checkNotNull(t);
                    if (predicate.invoke(t).booleanValue()) {
                        i++;
                    }
                    linkedList.add(tree2);
                }
            }
        }
        return i;
    }

    @Nullable
    public final T getItem() {
        return this.item;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getMaxDepth() {
        return getMaxDepth(this);
    }

    @Nullable
    public final Tree<T> getParent() {
        return this.parent;
    }

    public final boolean hasChild(@NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return findChild(predicate) != null;
    }

    public final boolean hasChildren() {
        return !this.children.isEmpty();
    }

    @NotNull
    public final <R> List<R> mapChildren(@NotNull Function1<? super Tree<T>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        ArrayList arrayList = new ArrayList();
        LinkedList linkedList = new LinkedList();
        linkedList.addAll(this.children);
        while (!linkedList.isEmpty()) {
            Object poll = linkedList.poll();
            Intrinsics.checkNotNull(poll);
            Tree tree = (Tree) poll;
            arrayList.add(transform.invoke(tree));
            if (tree.hasChildren()) {
                linkedList.addAll(0, tree.children);
            }
        }
        return arrayList;
    }

    public final void reParent(@NotNull Tree<T> target, int insertPos, @NotNull Function2<? super T, ? super T, Unit> predicate) {
        List<Tree<T>> list;
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Tree<T> tree = this.parent;
        if (tree != null && (list = tree.children) != null) {
            list.remove(this);
        }
        this.level = target.level + 1;
        this.parent = target;
        target.children.add(insertPos, this);
        T t = this.item;
        Intrinsics.checkNotNull(t);
        T t2 = target.item;
        Intrinsics.checkNotNull(t2);
        predicate.invoke(t, t2);
    }

    @Nullable
    public final Tree<T> remove(@NotNull Function1<? super T, Boolean> predicate) {
        Tree<T> tree;
        List<Tree<T>> list;
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Tree<T> find = find(predicate);
        if (find != null && (tree = find.parent) != null && (list = tree.children) != null) {
            list.remove(find);
        }
        return find;
    }

    public final void setChildren(@NotNull List<Tree<T>> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.children = list;
    }

    public final void setItem(@Nullable T t) {
        this.item = t;
    }

    public final void setLevel(int i) {
        this.level = i;
    }

    public final void setParent(@Nullable Tree<T> tree) {
        this.parent = tree;
    }

    private final int getMaxDepth(Tree<T> branchNode) {
        Iterator<T> it2 = branchNode.children.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i = Math.max(i, getMaxDepth((Tree) it2.next()));
        }
        return i + 1;
    }

    public final void addToChildren(@NotNull T node, int index) {
        Intrinsics.checkNotNullParameter(node, "node");
        Tree<T> tree = new Tree<>();
        tree.item = node;
        tree.level = this.level + 1;
        tree.parent = this;
        List<Tree<T>> list = this.children;
        list.add(Math.min(index, CollectionKt.getSize(list)), tree);
    }
}
