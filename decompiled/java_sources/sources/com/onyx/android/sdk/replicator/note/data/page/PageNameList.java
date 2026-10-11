package com.onyx.android.sdk.replicator.note.data.page;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J\u0016\u0010\t\u001a\u00020\u00072\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bJ\u0006\u0010\f\u001a\u00020\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0086\u0002J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0086\u0002J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bJ\b\u0010\u0016\u001a\u00020\u0014H\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005J\u0014\u0010\u001b\u001a\u00020\u00072\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u001d\u001a\u00020\u0014R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", "Ljava/io/Serializable;", "()V", CouchFieldKey.KEY_PAGE_NAME_LIST, "", "", "add", "", "name", "addAll", "list", "", Constants.CLEAR_ATTRIBUTES, Keywords.FUNC_CONTAINS_STRING, "", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "get", "i", "", "getPageNameList", "hashCode", "indexOf", "merge", "nameList", SyncConstant.SYNC_ACTION_REMOVE, "setPageNameList", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "size", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageNameList implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private List<String> pageNameList = new ArrayList();

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0006\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0004J.\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\f\u0010\u0012\u001a\u00020\u0013*\u0004\u0018\u00010\u0004J\f\u0010\u0014\u001a\u00020\u000f*\u0004\u0018\u00010\u0004¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;", "", "()V", "clone", "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;", CouchFieldKey.KEY_PAGE_NAME_LIST, "merge", "a", "b", "mergeWithRemove", Constant.SRC_TAG, "dst", "srcRemove", "dstRemove", Keywords.FUNC_CONTAINS_STRING, "", "name", "", "getSize", "", "isEmpty", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageNameList clone(@Nullable PageNameList pageNameList) {
            PageNameList pageNameList2 = new PageNameList();
            if (pageNameList == null) {
                return pageNameList2;
            }
            pageNameList2.addAll(new ArrayList(pageNameList.getPageNameList()));
            return pageNameList2;
        }

        public final boolean contains(@Nullable PageNameList pageNameList, @Nullable String str) {
            return pageNameList != null && pageNameList.contains(str);
        }

        public final int getSize(@Nullable PageNameList pageNameList) {
            List list;
            if (pageNameList == null || (list = pageNameList.pageNameList) == null) {
                return 0;
            }
            return list.size();
        }

        public final boolean isEmpty(@Nullable PageNameList pageNameList) {
            return pageNameList == null || pageNameList.getPageNameList().isEmpty();
        }

        @NotNull
        public final PageNameList merge(@Nullable PageNameList a, @Nullable PageNameList b) {
            PageNameList pageNameList = new PageNameList();
            pageNameList.merge(a);
            pageNameList.merge(b);
            return pageNameList;
        }

        @NotNull
        public final PageNameList mergeWithRemove(@Nullable PageNameList src, @Nullable PageNameList dst, @Nullable PageNameList srcRemove, @Nullable PageNameList dstRemove) {
            PageNameList merge = merge(src, dst);
            merge.remove(merge(srcRemove, dstRemove));
            return merge;
        }

        private Companion() {
        }
    }

    public final void add(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.pageNameList.add(name);
    }

    public final void addAll(@Nullable List<String> list) {
        List<String> list2 = this.pageNameList;
        Intrinsics.checkNotNull(list);
        list2.addAll(list);
    }

    public final void clear() {
        this.pageNameList.clear();
    }

    public final boolean contains(@Nullable String name) {
        Iterator<String> it2 = this.pageNameList.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(it2.next(), name)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PageNameList) && Intrinsics.areEqual(this.pageNameList, ((PageNameList) other).pageNameList);
    }

    @Nullable
    public final String get(int i) {
        Object orNull;
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.pageNameList, i);
        return (String) orNull;
    }

    @NotNull
    public final List<String> getPageNameList() {
        return this.pageNameList;
    }

    public int hashCode() {
        return this.pageNameList.hashCode();
    }

    public final int indexOf(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.pageNameList.indexOf(name);
    }

    public final void merge(@Nullable PageNameList nameList) {
        if (nameList == null || nameList.getPageNameList().isEmpty()) {
            return;
        }
        for (String str : nameList.getPageNameList()) {
            if (!getPageNameList().contains(str)) {
                add(str);
            }
        }
    }

    public final void remove(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.pageNameList.remove(name);
    }

    public final void setPageNameList(@NotNull List<String> set) {
        Intrinsics.checkNotNullParameter(set, "set");
        this.pageNameList = set;
    }

    public final int size() {
        return this.pageNameList.size();
    }

    @NotNull
    public final PageNameList remove(@Nullable PageNameList nameList) {
        if (nameList == null) {
            return this;
        }
        Iterator<String> it2 = nameList.getPageNameList().iterator();
        while (it2.hasNext()) {
            remove(it2.next());
        }
        return this;
    }
}
