package com.onyx.engine.sdk;

import com.onyx.engine.sdk.DataList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public abstract class DataList<T> implements Iterable<T> {
    List<T> list;
    int total;

    /* loaded from: classes8.dex */
    public static class StringList extends DataList<String> {
        public static StringList fromJson(String str) {
            return (StringList) JsonUtils.fromJson(str, StringList.class, new Supplier() { // from class: com.sunia.HTREnginev2.lte
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new DataList.StringList();
                }
            });
        }
    }

    public void add(T t) {
        ensureList();
        this.list.add(t);
    }

    public void addAll(DataList<T> dataList) {
        ensureList();
        if (dataList.isEmpty()) {
            return;
        }
        this.list.addAll(dataList.list);
    }

    public void ensureList() {
        if (this.list == null) {
            this.list = new ArrayList();
        }
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super T> consumer) {
        ensureList();
        this.list.forEach(consumer);
    }

    public T get(int i) {
        return this.list.get(i);
    }

    public List<T> getList() {
        return this.list;
    }

    public int getTotal() {
        return this.total;
    }

    public boolean isEmpty() {
        List<T> list = this.list;
        return list == null || list.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        ensureList();
        return this.list.iterator();
    }

    public DataList<T> setList(List<T> list) {
        this.list = list;
        return this;
    }

    public DataList<T> setTotal(int i) {
        this.total = i;
        return this;
    }

    public int size() {
        List<T> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
