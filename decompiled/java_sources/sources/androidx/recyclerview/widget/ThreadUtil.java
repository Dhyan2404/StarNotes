package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes3.dex */
public interface ThreadUtil<T> {

    /* loaded from: classes3.dex */
    public interface BackgroundCallback<T> {
        void loadTile(int i, int i2);

        @SuppressLint({"UnknownNullness"})
        void recycleTile(TileList.Tile<T> tile);

        void refresh(int i);

        void updateRange(int i, int i2, int i3, int i4, int i5);
    }

    /* loaded from: classes3.dex */
    public interface MainThreadCallback<T> {
        @SuppressLint({"UnknownNullness"})
        void addTile(int i, TileList.Tile<T> tile);

        void removeTile(int i, int i2);

        void updateItemCount(int i, int i2);
    }

    /* renamed from: a */
    MainThreadCallback<T> mo6063a(MainThreadCallback<T> mainThreadCallback);

    /* renamed from: b */
    BackgroundCallback<T> mo6064b(BackgroundCallback<T> backgroundCallback);
}
