package com.onyx.android.sdk.base.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0006\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B)\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0006¢\u0006\u0002\u0010\u0007R \u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Entry;", "T", "", "node", "Lcom/onyx/android/sdk/base/data/TreeNode;", Constants.ELEMNAME_CHILDREN_STRING, "", "(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/util/List;)V", "getChildren$sdk_base_release", "()Ljava/util/List;", "getNode$sdk_base_release", "()Lcom/onyx/android/sdk/base/data/TreeNode;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class Entry<T> {

    @NotNull
    private final List<TreeNode<T>> children;

    @NotNull
    private final TreeNode<T> node;

    public Entry(@NotNull TreeNode<T> node, @NotNull List<TreeNode<T>> children) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(children, "children");
        this.node = node;
        this.children = children;
    }

    @NotNull
    public final List<TreeNode<T>> getChildren$sdk_base_release() {
        return this.children;
    }

    @NotNull
    public final TreeNode<T> getNode$sdk_base_release() {
        return this.node;
    }

    public /* synthetic */ Entry(TreeNode treeNode, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(treeNode, (i & 2) != 0 ? new ArrayList() : list);
    }
}
