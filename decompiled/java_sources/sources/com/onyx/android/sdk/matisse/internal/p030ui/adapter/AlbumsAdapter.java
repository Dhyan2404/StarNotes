package com.onyx.android.sdk.matisse.internal.p030ui.adapter;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;

/* loaded from: classes7.dex */
public class AlbumsAdapter extends CursorAdapter {

    /* renamed from: e */
    public final Drawable f42780e;

    public AlbumsAdapter(Context context, Cursor cursor, boolean z) {
        super(context, cursor, z);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{C7453R.attr.album_thumbnail_placeholder});
        this.f42780e = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        Album valueOf = Album.valueOf(cursor);
        ((TextView) view.findViewById(C7453R.id.album_name)).setText(valueOf.getDisplayName(context));
        ((TextView) view.findViewById(C7453R.id.album_media_count)).setText(String.valueOf(valueOf.getCount()));
        SelectionSpec.getInstance().imageEngine.loadThumbnail(context, context.getResources().getDimensionPixelSize(C7453R.dimen.media_grid_size), this.f42780e, (ImageView) view.findViewById(C7453R.id.album_cover), valueOf.getCoverUri());
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(C7453R.layout.album_list_item, viewGroup, false);
    }

    public AlbumsAdapter(Context context, Cursor cursor, int i) {
        super(context, cursor, i);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{C7453R.attr.album_thumbnail_placeholder});
        this.f42780e = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }
}
