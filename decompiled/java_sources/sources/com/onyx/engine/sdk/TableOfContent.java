package com.onyx.engine.sdk;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.engine.sdk.TableOfContent;
import java.util.ArrayDeque;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class TableOfContent {
    private boolean loadPosition = false;
    private TableOfContentEntry root = new TableOfContentEntry("root");

    /* loaded from: classes8.dex */
    public static class EntryList extends DataList<TableOfContentEntry> {
        public String title;

        public static EntryList fromJson(String str) {
            return (EntryList) JsonUtils.fromJson(str, EntryList.class, new Supplier() { // from class: com.sunia.HTREnginev2.k8n
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new TableOfContent.EntryList();
                }
            });
        }
    }

    /* loaded from: classes8.dex */
    public static class TocParameter extends BatchParameter {
        public boolean loadRootTitle;

        @JSONField(deserialize = false, serialize = false)
        public boolean recursive;
        public ArrayDeque<Integer> path = new ArrayDeque<>();
        public boolean loadPosition = true;
    }

    public static TableOfContent fromJson(String str) {
        return (TableOfContent) JsonUtils.fromJson(str, TableOfContent.class);
    }

    public TableOfContentEntry getRoot() {
        return this.root;
    }

    public boolean isEmpty() {
        return this.root.isEmpty();
    }

    public boolean isLoadPosition() {
        return this.loadPosition;
    }

    public TableOfContent setLoadPosition(boolean z) {
        this.loadPosition = z;
        return this;
    }

    public TableOfContent setRoot(TableOfContentEntry tableOfContentEntry) {
        this.root = tableOfContentEntry;
        return this;
    }

    public int size() {
        return this.root.size();
    }
}
