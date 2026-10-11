package com.onyx.android.sdk.matisse.internal.model;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.loader.AlbumMediaLoader;
import java.lang.ref.WeakReference;

/* loaded from: classes7.dex */
public class AlbumMediaCollection implements LoaderManager.LoaderCallbacks<Cursor> {

    /* renamed from: e */
    public static final String f42737e = "args_album";

    /* renamed from: f */
    public static final String f42738f = "args_enable_capture";

    /* renamed from: a */
    public int f42739a;

    /* renamed from: b */
    public WeakReference<Context> f42740b;

    /* renamed from: c */
    public LoaderManager f42741c;

    /* renamed from: d */
    public AlbumMediaCallbacks f42742d;

    /* loaded from: classes7.dex */
    public interface AlbumMediaCallbacks {
        void onAlbumMediaLoad(Cursor cursor);

        void onAlbumMediaReset();
    }

    public AlbumMediaCollection() {
        this.f42739a = 2;
    }

    public void load(@Nullable Album album) {
        load(album, false);
    }

    public void onCreate(@NonNull FragmentActivity fragmentActivity, @NonNull AlbumMediaCallbacks albumMediaCallbacks) {
        this.f42740b = new WeakReference<>(fragmentActivity);
        this.f42741c = fragmentActivity.getSupportLoaderManager();
        this.f42742d = albumMediaCallbacks;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Album album;
        Context context = this.f42740b.get();
        if (context == null || (album = (Album) bundle.getParcelable(f42737e)) == null) {
            return null;
        }
        boolean z = false;
        if (album.isAll() && bundle.getBoolean(f42738f, false)) {
            z = true;
        }
        return AlbumMediaLoader.newInstance(context, album, z);
    }

    public void onDestroy() {
        LoaderManager loaderManager = this.f42741c;
        if (loaderManager != null) {
            loaderManager.destroyLoader(this.f42739a);
        }
        this.f42742d = null;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        if (this.f42740b.get() == null) {
            return;
        }
        this.f42742d.onAlbumMediaReset();
    }

    public void load(@Nullable Album album, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(f42737e, album);
        bundle.putBoolean(f42738f, z);
        this.f42741c.initLoader(this.f42739a, bundle, this);
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        if (this.f42740b.get() == null) {
            return;
        }
        this.f42742d.onAlbumMediaLoad(cursor);
    }

    public AlbumMediaCollection(int i) {
        this.f42739a = i;
    }
}
