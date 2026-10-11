package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes3.dex */
public class AsyncListUtil<T> {

    /* renamed from: s */
    public static final String f9190s = "AsyncListUtil";

    /* renamed from: t */
    public static final boolean f9191t = false;

    /* renamed from: a */
    public final Class<T> f9192a;

    /* renamed from: b */
    public final int f9193b;

    /* renamed from: c */
    public final DataCallback<T> f9194c;

    /* renamed from: d */
    public final ViewCallback f9195d;

    /* renamed from: e */
    public final TileList<T> f9196e;

    /* renamed from: f */
    public final ThreadUtil.MainThreadCallback<T> f9197f;

    /* renamed from: g */
    public final ThreadUtil.BackgroundCallback<T> f9198g;

    /* renamed from: k */
    public boolean f9202k;

    /* renamed from: q */
    public final ThreadUtil.MainThreadCallback<T> f9208q;

    /* renamed from: r */
    public final ThreadUtil.BackgroundCallback<T> f9209r;

    /* renamed from: h */
    public final int[] f9199h = new int[2];

    /* renamed from: i */
    public final int[] f9200i = new int[2];

    /* renamed from: j */
    public final int[] f9201j = new int[2];

    /* renamed from: l */
    public int f9203l = 0;

    /* renamed from: m */
    public int f9204m = 0;

    /* renamed from: n */
    public int f9205n = 0;

    /* renamed from: o */
    public int f9206o = 0;

    /* renamed from: p */
    public final SparseIntArray f9207p = new SparseIntArray();

    /* loaded from: classes3.dex */
    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int i, int i2);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int i) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i) {
            int i2 = iArr[1];
            int i3 = iArr[0];
            int i4 = (i2 - i3) + 1;
            int i5 = i4 / 2;
            iArr2[0] = i3 - (i == 1 ? i4 : i5);
            if (i != 2) {
                i4 = i5;
            }
            iArr2[1] = i2 + i4;
        }

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i);
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$a */
    /* loaded from: classes3.dex */
    public class C1311a implements ThreadUtil.MainThreadCallback<T> {
        public C1311a() {
        }

        /* renamed from: a */
        public final boolean m5502a(int i) {
            return i == AsyncListUtil.this.f9206o;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            if (!m5502a(i)) {
                AsyncListUtil.this.f9198g.recycleTile(tile);
                return;
            }
            TileList.Tile<T> m6065a = AsyncListUtil.this.f9196e.m6065a(tile);
            if (m6065a != null) {
                Log.e(AsyncListUtil.f9190s, "duplicate tile @" + m6065a.mStartPosition);
                AsyncListUtil.this.f9198g.recycleTile(m6065a);
            }
            int i2 = tile.mStartPosition + tile.mItemCount;
            int i3 = 0;
            while (i3 < AsyncListUtil.this.f9207p.size()) {
                int keyAt = AsyncListUtil.this.f9207p.keyAt(i3);
                if (tile.mStartPosition > keyAt || keyAt >= i2) {
                    i3++;
                } else {
                    AsyncListUtil.this.f9207p.removeAt(i3);
                    AsyncListUtil.this.f9195d.onItemLoaded(keyAt);
                }
            }
        }

        /* renamed from: b */
        public final void m5503b() {
            for (int i = 0; i < AsyncListUtil.this.f9196e.m6070f(); i++) {
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                asyncListUtil.f9198g.recycleTile(asyncListUtil.f9196e.m6067c(i));
            }
            AsyncListUtil.this.f9196e.m6066b();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            if (m5502a(i)) {
                TileList.Tile<T> m6069e = AsyncListUtil.this.f9196e.m6069e(i2);
                if (m6069e != null) {
                    AsyncListUtil.this.f9198g.recycleTile(m6069e);
                    return;
                }
                Log.e(AsyncListUtil.f9190s, "tile not found @" + i2);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            if (m5502a(i)) {
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                asyncListUtil.f9204m = i2;
                asyncListUtil.f9195d.onDataRefresh();
                AsyncListUtil asyncListUtil2 = AsyncListUtil.this;
                asyncListUtil2.f9205n = asyncListUtil2.f9206o;
                m5503b();
                AsyncListUtil asyncListUtil3 = AsyncListUtil.this;
                asyncListUtil3.f9202k = false;
                asyncListUtil3.m5501c();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.AsyncListUtil$b */
    /* loaded from: classes3.dex */
    public class C1312b implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: a */
        public TileList.Tile<T> f9211a;

        /* renamed from: b */
        public final SparseBooleanArray f9212b = new SparseBooleanArray();

        /* renamed from: c */
        public int f9213c;

        /* renamed from: d */
        public int f9214d;

        /* renamed from: e */
        public int f9215e;

        /* renamed from: f */
        public int f9216f;

        public C1312b() {
        }

        /* renamed from: a */
        public final TileList.Tile<T> m5504a() {
            TileList.Tile<T> tile = this.f9211a;
            if (tile != null) {
                this.f9211a = tile.f9801a;
                return tile;
            }
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            return new TileList.Tile<>(asyncListUtil.f9192a, asyncListUtil.f9193b);
        }

        /* renamed from: b */
        public final void m5505b(TileList.Tile<T> tile) {
            this.f9212b.put(tile.mStartPosition, true);
            AsyncListUtil.this.f9197f.addTile(this.f9213c, tile);
        }

        /* renamed from: c */
        public final void m5506c(int i) {
            int maxCachedTiles = AsyncListUtil.this.f9194c.getMaxCachedTiles();
            while (this.f9212b.size() >= maxCachedTiles) {
                int keyAt = this.f9212b.keyAt(0);
                SparseBooleanArray sparseBooleanArray = this.f9212b;
                int keyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                int i2 = this.f9215e - keyAt;
                int i3 = keyAt2 - this.f9216f;
                if (i2 > 0 && (i2 >= i3 || i == 2)) {
                    m5510g(keyAt);
                } else {
                    if (i3 <= 0) {
                        return;
                    }
                    if (i2 >= i3 && i != 1) {
                        return;
                    } else {
                        m5510g(keyAt2);
                    }
                }
            }
        }

        /* renamed from: d */
        public final int m5507d(int i) {
            return i - (i % AsyncListUtil.this.f9193b);
        }

        /* renamed from: e */
        public final boolean m5508e(int i) {
            return this.f9212b.get(i);
        }

        /* renamed from: f */
        public final void m5509f(String str, Object... objArr) {
            Log.d(AsyncListUtil.f9190s, "[BKGR] " + String.format(str, objArr));
        }

        /* renamed from: g */
        public final void m5510g(int i) {
            this.f9212b.delete(i);
            AsyncListUtil.this.f9197f.removeTile(this.f9213c, i);
        }

        /* renamed from: h */
        public final void m5511h(int i, int i2, int i3, boolean z) {
            int i4 = i;
            while (i4 <= i2) {
                AsyncListUtil.this.f9198g.loadTile(z ? (i2 + i) - i4 : i4, i3);
                i4 += AsyncListUtil.this.f9193b;
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            if (m5508e(i)) {
                return;
            }
            TileList.Tile<T> m5504a = m5504a();
            m5504a.mStartPosition = i;
            int min = Math.min(AsyncListUtil.this.f9193b, this.f9214d - i);
            m5504a.mItemCount = min;
            AsyncListUtil.this.f9194c.fillData(m5504a.mItems, m5504a.mStartPosition, min);
            m5506c(i2);
            m5505b(m5504a);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            AsyncListUtil.this.f9194c.recycleData(tile.mItems, tile.mItemCount);
            tile.f9801a = this.f9211a;
            this.f9211a = tile;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            this.f9213c = i;
            this.f9212b.clear();
            int refreshData = AsyncListUtil.this.f9194c.refreshData();
            this.f9214d = refreshData;
            AsyncListUtil.this.f9197f.updateItemCount(this.f9213c, refreshData);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            if (i > i2) {
                return;
            }
            int m5507d = m5507d(i);
            int m5507d2 = m5507d(i2);
            this.f9215e = m5507d(i3);
            int m5507d3 = m5507d(i4);
            this.f9216f = m5507d3;
            if (i5 == 1) {
                m5511h(this.f9215e, m5507d2, i5, true);
                m5511h(m5507d2 + AsyncListUtil.this.f9193b, this.f9216f, i5, false);
            } else {
                m5511h(m5507d, m5507d3, i5, false);
                m5511h(this.f9215e, m5507d - AsyncListUtil.this.f9193b, i5, true);
            }
        }
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        C1311a c1311a = new C1311a();
        this.f9208q = c1311a;
        C1312b c1312b = new C1312b();
        this.f9209r = c1312b;
        this.f9192a = cls;
        this.f9193b = i;
        this.f9194c = dataCallback;
        this.f9195d = viewCallback;
        this.f9196e = new TileList<>(i);
        C1382g c1382g = new C1382g();
        this.f9197f = c1382g.mo6063a(c1311a);
        this.f9198g = c1382g.mo6064b(c1312b);
        refresh();
    }

    /* renamed from: a */
    public final boolean m5499a() {
        return this.f9206o != this.f9205n;
    }

    /* renamed from: b */
    public void m5500b(String str, Object... objArr) {
        Log.d(f9190s, "[MAIN] " + String.format(str, objArr));
    }

    /* renamed from: c */
    public void m5501c() {
        int i;
        this.f9195d.getItemRangeInto(this.f9199h);
        int[] iArr = this.f9199h;
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (i2 > i3 || i2 < 0 || i3 >= this.f9204m) {
            return;
        }
        if (this.f9202k) {
            int[] iArr2 = this.f9200i;
            if (i2 > iArr2[1] || (i = iArr2[0]) > i3) {
                this.f9203l = 0;
            } else if (i2 < i) {
                this.f9203l = 1;
            } else if (i2 > i) {
                this.f9203l = 2;
            }
        } else {
            this.f9203l = 0;
        }
        int[] iArr3 = this.f9200i;
        iArr3[0] = i2;
        iArr3[1] = i3;
        this.f9195d.extendRangeInto(iArr, this.f9201j, this.f9203l);
        int[] iArr4 = this.f9201j;
        iArr4[0] = Math.min(this.f9199h[0], Math.max(iArr4[0], 0));
        int[] iArr5 = this.f9201j;
        iArr5[1] = Math.max(this.f9199h[1], Math.min(iArr5[1], this.f9204m - 1));
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.f9198g;
        int[] iArr6 = this.f9199h;
        int i4 = iArr6[0];
        int i5 = iArr6[1];
        int[] iArr7 = this.f9201j;
        backgroundCallback.updateRange(i4, i5, iArr7[0], iArr7[1], this.f9203l);
    }

    @Nullable
    public T getItem(int i) {
        if (i < 0 || i >= this.f9204m) {
            throw new IndexOutOfBoundsException(i + " is not within 0 and " + this.f9204m);
        }
        T m6068d = this.f9196e.m6068d(i);
        if (m6068d == null && !m5499a()) {
            this.f9207p.put(i, 0);
        }
        return m6068d;
    }

    public int getItemCount() {
        return this.f9204m;
    }

    public void onRangeChanged() {
        if (m5499a()) {
            return;
        }
        m5501c();
        this.f9202k = true;
    }

    public void refresh() {
        this.f9207p.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.f9198g;
        int i = this.f9206o + 1;
        this.f9206o = i;
        backgroundCallback.refresh(i);
    }
}
