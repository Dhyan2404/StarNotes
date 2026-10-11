package com.onegravity.rteditor.toolbar.spinner;

import com.onegravity.rteditor.toolbar.spinner.SpinnerItem;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes7.dex */
public class SpinnerItems<T extends SpinnerItem> {

    /* renamed from: a */
    public List<T> f40578a;

    /* renamed from: b */
    public int f40579b;

    public SpinnerItems() {
        this.f40578a = new ArrayList();
        this.f40579b = -1;
    }

    /* renamed from: a */
    public final synchronized List<T> m31794a() {
        if (this.f40578a == null) {
            this.f40578a = new ArrayList();
        }
        return this.f40578a;
    }

    public synchronized void add(T t) {
        m31794a().add(t);
    }

    public synchronized void clear() {
        m31794a().clear();
    }

    public synchronized List<T> getItems() {
        return m31794a();
    }

    public int getSelectedItem() {
        return this.f40579b;
    }

    public synchronized void setItems(List<T> list) {
        this.f40578a = list;
    }

    public void setSelectedItem(int i) {
        this.f40579b = i;
    }

    public synchronized int size() {
        return m31794a().size();
    }

    public SpinnerItems(List<T> list, int i) {
        new ArrayList();
        this.f40578a = list;
        this.f40579b = i;
    }
}
