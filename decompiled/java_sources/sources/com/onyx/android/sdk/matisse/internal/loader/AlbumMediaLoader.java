package com.onyx.android.sdk.matisse.internal.loader;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.loader.content.CursorLoader;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import com.onyx.android.sdk.matisse.internal.entity.Album;
import com.onyx.android.sdk.matisse.internal.entity.Item;
import com.onyx.android.sdk.matisse.internal.entity.SelectionSpec;
import com.onyx.android.sdk.matisse.internal.utils.MediaStoreCompat;

/* loaded from: classes7.dex */
public class AlbumMediaLoader extends CursorLoader {

    /* renamed from: C */
    public static final String f42721C = "(media_type=? OR media_type=?) AND _size>0";

    /* renamed from: E */
    public static final String f42723E = "media_type=? AND _size>0";

    /* renamed from: F */
    public static final String f42724F = "(media_type=? OR media_type=?) AND  bucket_id=? AND _size>0";

    /* renamed from: G */
    public static final String f42725G = "media_type=? AND  bucket_id=? AND _size>0";

    /* renamed from: H */
    public static final String f42726H = "media_type=? AND mime_type=? AND _size>0";

    /* renamed from: I */
    public static final String f42727I = "media_type=? AND  bucket_id=? AND mime_type=? AND _size>0";

    /* renamed from: J */
    public static final String f42728J = "date_modified DESC";

    /* renamed from: z */
    public final boolean f42729z;

    /* renamed from: A */
    public static final Uri f42719A = MediaStore.Files.getContentUri("external");

    /* renamed from: B */
    public static final String[] f42720B = {"_id", "_display_name", DefaultDownloadIndex.f24934i, "_size", "duration"};

    /* renamed from: D */
    public static final String[] f42722D = {String.valueOf(1), String.valueOf(3)};

    public AlbumMediaLoader(Context context, String str, String[] strArr, boolean z) {
        super(context, f42719A, f42720B, str, strArr, "date_modified DESC");
        this.f42729z = z;
    }

    /* renamed from: d */
    public static String[] m33421d(String str) {
        return new String[]{String.valueOf(1), String.valueOf(3), str};
    }

    /* renamed from: e */
    public static String[] m33422e(int i, String str) {
        return new String[]{String.valueOf(i), str, "image/gif"};
    }

    /* renamed from: f */
    public static String[] m33423f(int i, String str) {
        return new String[]{String.valueOf(i), str};
    }

    /* renamed from: g */
    public static String[] m33424g(int i) {
        return new String[]{String.valueOf(i), "image/gif"};
    }

    /* renamed from: h */
    public static String[] m33425h(int i) {
        return new String[]{String.valueOf(i)};
    }

    public static CursorLoader newInstance(Context context, Album album, boolean z) {
        String str;
        String[] m33421d;
        String str2;
        if (!album.isAll()) {
            if (SelectionSpec.getInstance().onlyShowGif()) {
                m33421d = m33422e(1, album.getId());
                str2 = f42727I;
            } else {
                boolean onlyShowImages = SelectionSpec.getInstance().onlyShowImages();
                str = f42725G;
                if (onlyShowImages) {
                    m33421d = m33423f(1, album.getId());
                } else if (SelectionSpec.getInstance().onlyShowVideos()) {
                    m33421d = m33423f(3, album.getId());
                } else {
                    m33421d = m33421d(album.getId());
                    str2 = f42724F;
                }
                z = false;
            }
            str = str2;
            z = false;
        } else if (SelectionSpec.getInstance().onlyShowGif()) {
            m33421d = m33424g(1);
            str = f42726H;
        } else {
            str = "media_type=? AND _size>0";
            if (SelectionSpec.getInstance().onlyShowImages()) {
                m33421d = m33425h(1);
            } else if (SelectionSpec.getInstance().onlyShowVideos()) {
                m33421d = m33425h(3);
            } else {
                m33421d = f42722D;
                str = "(media_type=? OR media_type=?) AND _size>0";
            }
        }
        return new AlbumMediaLoader(context, str, m33421d, z);
    }

    @Override // androidx.loader.content.Loader
    public void onContentChanged() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.CursorLoader, androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        Cursor loadInBackground = super.loadInBackground();
        if (!this.f42729z || !MediaStoreCompat.hasCameraFeature(getContext())) {
            return loadInBackground;
        }
        MatrixCursor matrixCursor = new MatrixCursor(f42720B);
        matrixCursor.addRow(new Object[]{-1L, Item.ITEM_DISPLAY_NAME_CAPTURE, "", 0, 0});
        return new MergeCursor(new Cursor[]{matrixCursor, loadInBackground});
    }
}
