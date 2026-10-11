package net.p110sf.saxon.ma.zeno;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class ZenoChainIterator<U> implements Iterator<U> {

    /* renamed from: e */
    public int f100740e = 0;

    /* renamed from: f */
    public int f100741f = 0;

    /* renamed from: g */
    public final ArrayList<ArrayList<U>> f100742g;

    public ZenoChainIterator(ArrayList<ArrayList<U>> arrayList) {
        this.f100742g = arrayList;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f100740e < this.f100742g.size() && this.f100741f < this.f100742g.get(this.f100740e).size();
    }

    @Override // java.util.Iterator
    public U next() {
        ArrayList<U> arrayList = this.f100742g.get(this.f100740e);
        U u = arrayList.get(this.f100741f);
        int i = this.f100741f + 1;
        this.f100741f = i;
        if (i >= arrayList.size()) {
            this.f100740e++;
            this.f100741f = 0;
        }
        return u;
    }
}
