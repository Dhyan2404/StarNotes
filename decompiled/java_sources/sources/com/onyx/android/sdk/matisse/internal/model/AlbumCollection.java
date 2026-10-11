package com.onyx.android.sdk.matisse.internal.model;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.onyx.android.sdk.matisse.internal.loader.AlbumLoader;
import java.lang.ref.WeakReference;

/* loaded from: classes7.dex */
public class AlbumCollection implements LoaderManager.LoaderCallbacks<Cursor> {

    /* renamed from: f */
    public static final int f42730f = 1;

    /* renamed from: g */
    public static final String f42731g = "state_current_selection";

    /* renamed from: a */
    public WeakReference<Context> f42732a;

    /* renamed from: b */
    public LoaderManager f42733b;

    /* renamed from: c */
    public AlbumCallbacks f42734c;

    /* renamed from: d */
    public int f42735d;

    /* renamed from: e */
    public boolean f42736e;

    /* loaded from: classes7.dex */
    public interface AlbumCallbacks {
        void onAlbumLoad(Cursor cursor);

        void onAlbumReset();
    }

    public int getCurrentSelection() {
        return this.f42735d;
    }

    public void loadAlbums() {
        this.f42733b.initLoader(1, null, this);
    }

    public void onCreate(FragmentActivity fragmentActivity, AlbumCallbacks albumCallbacks) {
        this.f42732a = new WeakReference<>(fragmentActivity);
        this.f42733b = fragmentActivity.getSupportLoaderManager();
        this.f42734c = albumCallbacks;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Context context = this.f42732a.get();
        if (context == null) {
            return null;
        }
        this.f42736e = false;
        return AlbumLoader.newInstance(context);
    }

    public void onDestroy() {
        LoaderManager loaderManager = this.f42733b;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
        }
        this.f42734c = null;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        if (this.f42732a.get() == null) {
            return;
        }
        this.f42734c.onAlbumReset();
    }

    public void onRestoreInstanceState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.f42735d = bundle.getInt(f42731g);
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(f42731g, this.f42735d);
    }

    public void setStateCurrentSelection(int i) {
        this.f42735d = i;
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        if (this.f42732a.get() == null || this.f42736e) {
            return;
        }
        this.f42736e = true;
        this.f42734c.onAlbumLoad(cursor);
    }
}
