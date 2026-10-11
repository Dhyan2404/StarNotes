package com.onyx.android.sdk.matisse.internal.p030ui.adapter;

import android.database.Cursor;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;

/* loaded from: classes7.dex */
public abstract class RecyclerViewCursorAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: d */
    public Cursor f42783d;

    /* renamed from: e */
    public int f42784e;

    public RecyclerViewCursorAdapter(Cursor cursor) {
        setHasStableIds(true);
        swapCursor(cursor);
    }

    /* renamed from: b */
    public final boolean m33447b(Cursor cursor) {
        return (cursor == null || cursor.isClosed()) ? false : true;
    }

    public Cursor getCursor() {
        return this.f42783d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (m33447b(this.f42783d)) {
            return this.f42783d.getCount();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (!m33447b(this.f42783d)) {
            throw new IllegalStateException("Cannot lookup item id when cursor is in invalid state.");
        }
        if (this.f42783d.moveToPosition(i)) {
            return this.f42783d.getLong(this.f42784e);
        }
        throw new IllegalStateException("Could not move cursor to position " + i + " when trying to get an item id");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.f42783d.moveToPosition(i)) {
            return getItemViewType(i, this.f42783d);
        }
        throw new IllegalStateException("Could not move cursor to position " + i + " when trying to get item view type.");
    }

    public abstract int getItemViewType(int i, Cursor cursor);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH vh, int i) {
        if (m33447b(this.f42783d)) {
            if (this.f42783d.moveToPosition(i)) {
                onBindViewHolder((RecyclerViewCursorAdapter<VH>) vh, this.f42783d);
                return;
            }
            throw new IllegalStateException("Could not move cursor to position " + i + " when trying to bind view holder");
        }
        throw new IllegalStateException("Cannot bind view holder when cursor is in invalid state.");
    }

    public abstract void onBindViewHolder(VH vh, Cursor cursor);

    public void swapCursor(Cursor cursor) {
        if (cursor == this.f42783d) {
            return;
        }
        if (cursor != null) {
            this.f42783d = cursor;
            this.f42784e = cursor.getColumnIndexOrThrow("_id");
            notifyDataSetChanged();
        } else {
            notifyItemRangeRemoved(0, getItemCount());
            this.f42783d = null;
            this.f42784e = -1;
        }
    }
}
