package net.p110sf.saxon.ma.zeno;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class ZenoChain<T> implements Iterable<T> {

    /* renamed from: e */
    public final ArrayList<ArrayList<T>> f100739e;

    public ZenoChain() {
        this.f100739e = new ArrayList<>(8);
    }

    /* renamed from: a */
    public final ZenoChain<T> m63368a() {
        for (int size = this.f100739e.size() - 2; size >= 1; size--) {
            int i = size - 1;
            int size2 = this.f100739e.get(i).size();
            int size3 = this.f100739e.get(size).size();
            int size4 = this.f100739e.get(size + 1).size();
            if (size3 <= size2 && size3 <= size4) {
                ArrayList<T> arrayList = new ArrayList<>(size2 + size3);
                arrayList.addAll(this.f100739e.get(i));
                arrayList.addAll(this.f100739e.get(size));
                this.f100739e.set(i, arrayList);
                this.f100739e.remove(size);
            }
        }
        return new ZenoChain<>(this.f100739e);
    }

    public ZenoChain<T> add(T t) {
        ArrayList arrayList = new ArrayList(this.f100739e);
        int i = 32;
        if (arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(32);
            arrayList2.add(t);
            arrayList.add(arrayList2);
            return new ZenoChain<>(arrayList);
        }
        int size = arrayList.size() - 1;
        ArrayList arrayList3 = (ArrayList) arrayList.get(size);
        if (arrayList3.size() < 32) {
            ArrayList arrayList4 = new ArrayList(32);
            arrayList4.addAll(arrayList3);
            arrayList4.add(t);
            arrayList.set(size, arrayList4);
            return new ZenoChain<>(arrayList);
        }
        while (true) {
            size--;
            i *= 2;
            if (size < 0) {
                ArrayList arrayList5 = new ArrayList();
                arrayList5.add(t);
                arrayList.add(arrayList5);
                return new ZenoChain<>(arrayList);
            }
            ArrayList arrayList6 = (ArrayList) arrayList.get(size);
            if (arrayList6.size() + arrayList3.size() <= i) {
                ArrayList arrayList7 = new ArrayList(arrayList6.size() + arrayList3.size());
                arrayList7.addAll(arrayList6);
                arrayList7.addAll(arrayList3);
                arrayList.set(size, arrayList7);
                arrayList.remove(size + 1);
                ArrayList arrayList8 = new ArrayList();
                arrayList8.add(t);
                arrayList.add(arrayList8);
                return new ZenoChain<>(arrayList);
            }
            arrayList3 = arrayList6;
        }
    }

    public ZenoChain<T> addAll(Iterable<? extends T> iterable) {
        Iterator<? extends T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            this = this.add(it2.next());
        }
        return this;
    }

    public ZenoChain<T> concat(ZenoChain<T> zenoChain) {
        ArrayList arrayList = new ArrayList(this.f100739e.size() + zenoChain.f100739e.size());
        arrayList.addAll(this.f100739e);
        arrayList.addAll(zenoChain.f100739e);
        return new ZenoChain(arrayList).m63368a();
    }

    public T get(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Index " + i + " is negative");
        }
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            if (next.size() + i2 > i) {
                return next.get(i - i2);
            }
            i2 += next.size();
        }
        throw new IndexOutOfBoundsException("Index " + i + " is too large");
    }

    public ZenoChain<T> insert(int i, T t) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Index " + i + " is negative");
        }
        if (i == 0) {
            return prepend(t);
        }
        int size = size();
        if (i == size) {
            return add(t);
        }
        if (i > size) {
            throw new IndexOutOfBoundsException("Index " + i + " is too large");
        }
        ArrayList arrayList = new ArrayList(this.f100739e.size());
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        boolean z = false;
        int i2 = 0;
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            if (next.size() + i2 <= i || z) {
                arrayList.add(next);
            } else {
                ArrayList arrayList2 = new ArrayList(next.size() + 1);
                int i3 = i - i2;
                arrayList2.addAll(next.subList(0, i3));
                arrayList2.add(t);
                arrayList2.addAll(next.subList(i3, next.size()));
                arrayList.add(arrayList2);
                z = true;
            }
            i2 += next.size();
        }
        if (z) {
            return new ZenoChain<>(arrayList);
        }
        throw new IndexOutOfBoundsException("Index " + i + " is too large");
    }

    public boolean isEmpty() {
        if (this.f100739e.isEmpty()) {
            return true;
        }
        return this.f100739e.size() == 1 && this.f100739e.get(0).isEmpty();
    }

    public boolean isSingleton() {
        return this.f100739e.size() == 1 && this.f100739e.get(0).size() == 1;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new ZenoChainIterator(this.f100739e);
    }

    public ZenoChain<T> prepend(T t) {
        ArrayList arrayList = new ArrayList(this.f100739e);
        if (arrayList.isEmpty()) {
            return add(t);
        }
        ArrayList arrayList2 = (ArrayList) arrayList.get(0);
        int i = 32;
        if (arrayList2.size() < 32) {
            ArrayList arrayList3 = new ArrayList(32);
            arrayList3.add(t);
            arrayList3.addAll(arrayList2);
            arrayList.set(0, arrayList3);
            return new ZenoChain<>(arrayList);
        }
        int i2 = 0;
        while (true) {
            i2++;
            i *= 2;
            if (i2 >= arrayList.size()) {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(t);
                arrayList.add(0, arrayList4);
                return new ZenoChain<>(arrayList);
            }
            ArrayList arrayList5 = (ArrayList) arrayList.get(i2);
            if (arrayList5.size() + arrayList2.size() <= i) {
                ArrayList arrayList6 = new ArrayList();
                arrayList6.addAll(arrayList2);
                arrayList6.addAll(arrayList5);
                arrayList.set(i2, arrayList6);
                arrayList.remove(i2 - 1);
                ArrayList arrayList7 = new ArrayList();
                arrayList7.add(t);
                arrayList.add(0, arrayList7);
                return new ZenoChain<>(arrayList);
            }
            arrayList2 = arrayList5;
        }
    }

    public ZenoChain<T> remove(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Index " + i + " is negative");
        }
        ArrayList arrayList = new ArrayList(this.f100739e.size());
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        boolean z = false;
        int i2 = 0;
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            if (next.size() + i2 <= i || z) {
                arrayList.add(next);
            } else {
                if (next.size() > 1) {
                    ArrayList arrayList2 = new ArrayList(next.size() - 1);
                    int i3 = i - i2;
                    arrayList2.addAll(next.subList(0, i3));
                    arrayList2.addAll(next.subList(i3 + 1, next.size()));
                    arrayList.add(arrayList2);
                }
                z = true;
            }
            i2 += next.size();
        }
        if (z) {
            return new ZenoChain<>(arrayList);
        }
        throw new IndexOutOfBoundsException("Index " + i + " is too large");
    }

    public ZenoChain<T> replace(int i, T t) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Index " + i + " is negative");
        }
        ArrayList arrayList = new ArrayList(this.f100739e.size());
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        boolean z = false;
        int i2 = 0;
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            if (next.size() + i2 <= i || z) {
                arrayList.add(next);
            } else {
                ArrayList arrayList2 = new ArrayList(next.size());
                int i3 = i - i2;
                arrayList2.addAll(next.subList(0, i3));
                arrayList2.add(t);
                arrayList2.addAll(next.subList(i3 + 1, next.size()));
                arrayList.add(arrayList2);
                z = true;
            }
            i2 += next.size();
        }
        if (z) {
            return new ZenoChain<>(arrayList);
        }
        throw new IndexOutOfBoundsException("Index " + i + " is too large");
    }

    public String showMetrics() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().size());
            sb.append(",");
        }
        sb.setCharAt(sb.length() - 1, ')');
        return sb.toString();
    }

    public int size() {
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    public ZenoChain<T> subList(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException("start position for subList is out of range");
        }
        ArrayList arrayList = new ArrayList();
        int i3 = i2 - i;
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        boolean z = false;
        int i4 = 0;
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            if (z) {
                if (i3 <= next.size()) {
                    arrayList.add(new ArrayList(next.subList(0, i3)));
                    return new ZenoChain<>(arrayList);
                }
                i3 -= next.size();
                arrayList.add(next);
            } else if (next.size() + i4 > i) {
                int i5 = i - i4;
                if (i3 <= next.size() - i5) {
                    arrayList.add(new ArrayList(next.subList(i5, i3 + i5)));
                    return new ZenoChain<>(arrayList);
                }
                if (i != 1 || next.size() <= 128) {
                    arrayList.add(new ArrayList(next.subList(i5, next.size())));
                } else {
                    int i6 = i5 + 64;
                    arrayList.add(new ArrayList(next.subList(i5, i6)));
                    arrayList.add(new ArrayList(next.subList(i6, next.size())));
                }
                i3 -= next.size() - i5;
                z = true;
            } else if (i3 == 0) {
                break;
            }
            i4 += next.size();
        }
        if (i3 <= 0) {
            return new ZenoChain<>(arrayList);
        }
        throw new IndexOutOfBoundsException("end position for subList is out of range");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<ArrayList<T>> it2 = this.f100739e.iterator();
        while (it2.hasNext()) {
            ArrayList<T> next = it2.next();
            sb.append(MotionUtils.f31761c);
            Iterator<T> it3 = next.iterator();
            while (it3.hasNext()) {
                sb.append(it3.next());
                sb.append(",");
            }
            sb.setCharAt(sb.length() - 1, ')');
        }
        return sb.toString();
    }

    public ZenoChain(ArrayList<ArrayList<T>> arrayList) {
        this.f100739e = arrayList;
    }
}
