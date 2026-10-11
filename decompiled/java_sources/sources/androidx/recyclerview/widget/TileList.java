package androidx.recyclerview.widget;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public class TileList<T> {

    /* renamed from: a */
    public final int f9798a;

    /* renamed from: b */
    public final SparseArray<Tile<T>> f9799b = new SparseArray<>(10);

    /* renamed from: c */
    public Tile<T> f9800c;

    /* loaded from: classes3.dex */
    public static class Tile<T> {

        /* renamed from: a */
        public Tile<T> f9801a;
        public int mItemCount;
        public final T[] mItems;
        public int mStartPosition;

        public Tile(@NonNull Class<T> cls, int i) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        }

        /* renamed from: a */
        public boolean m6071a(int i) {
            int i2 = this.mStartPosition;
            return i2 <= i && i < i2 + this.mItemCount;
        }

        /* renamed from: b */
        public T m6072b(int i) {
            return this.mItems[i - this.mStartPosition];
        }
    }

    public TileList(int i) {
        this.f9798a = i;
    }

    /* renamed from: a */
    public Tile<T> m6065a(Tile<T> tile) {
        int indexOfKey = this.f9799b.indexOfKey(tile.mStartPosition);
        if (indexOfKey < 0) {
            this.f9799b.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> valueAt = this.f9799b.valueAt(indexOfKey);
        this.f9799b.setValueAt(indexOfKey, tile);
        if (this.f9800c == valueAt) {
            this.f9800c = tile;
        }
        return valueAt;
    }

    /* renamed from: b */
    public void m6066b() {
        this.f9799b.clear();
    }

    /* renamed from: c */
    public Tile<T> m6067c(int i) {
        if (i < 0 || i >= this.f9799b.size()) {
            return null;
        }
        return this.f9799b.valueAt(i);
    }

    /* renamed from: d */
    public T m6068d(int i) {
        Tile<T> tile = this.f9800c;
        if (tile == null || !tile.m6071a(i)) {
            int indexOfKey = this.f9799b.indexOfKey(i - (i % this.f9798a));
            if (indexOfKey < 0) {
                return null;
            }
            this.f9800c = this.f9799b.valueAt(indexOfKey);
        }
        return this.f9800c.m6072b(i);
    }

    /* renamed from: e */
    public Tile<T> m6069e(int i) {
        Tile<T> tile = this.f9799b.get(i);
        if (this.f9800c == tile) {
            this.f9800c = null;
        }
        this.f9799b.delete(i);
        return tile;
    }

    /* renamed from: f */
    public int m6070f() {
        return this.f9799b.size();
    }
}
