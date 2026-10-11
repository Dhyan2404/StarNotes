package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.ExifOrientationStream;
import com.sunia.HTREnginev2.nhn;
import com.sunia.HTREnginev2.qhn;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class ThumbFetcher implements DataFetcher<InputStream> {

    /* renamed from: h */
    public static final String f14520h = "MediaStoreThumbFetcher";

    /* renamed from: e */
    public final Uri f14521e;

    /* renamed from: f */
    public final qhn f14522f;

    /* renamed from: g */
    public InputStream f14523g;

    /* renamed from: com.bumptech.glide.load.data.mediastore.ThumbFetcher$a */
    /* loaded from: classes3.dex */
    public static class C1918a implements nhn {

        /* renamed from: b */
        public static final String[] f14524b = {"_data"};

        /* renamed from: c */
        public static final String f14525c = "kind = 1 AND image_id = ?";

        /* renamed from: a */
        public final ContentResolver f14526a;

        public C1918a(ContentResolver contentResolver) {
            this.f14526a = contentResolver;
        }

        @Override // com.sunia.HTREnginev2.nhn
        /* renamed from: a */
        public Cursor mo8688a(Uri uri) {
            return this.f14526a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f14524b, f14525c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* renamed from: com.bumptech.glide.load.data.mediastore.ThumbFetcher$b */
    /* loaded from: classes3.dex */
    public static class C1919b implements nhn {

        /* renamed from: b */
        public static final String[] f14527b = {"_data"};

        /* renamed from: c */
        public static final String f14528c = "kind = 1 AND video_id = ?";

        /* renamed from: a */
        public final ContentResolver f14529a;

        public C1919b(ContentResolver contentResolver) {
            this.f14529a = contentResolver;
        }

        @Override // com.sunia.HTREnginev2.nhn
        /* renamed from: a */
        public Cursor mo8688a(Uri uri) {
            return this.f14529a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f14527b, f14528c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public ThumbFetcher(Uri uri, qhn qhnVar) {
        this.f14521e = uri;
        this.f14522f = qhnVar;
    }

    /* renamed from: a */
    public static ThumbFetcher m8686a(Context context, Uri uri, nhn nhnVar) {
        return new ThumbFetcher(uri, new qhn(Glide.get(context).getRegistry().getImageHeaderParsers(), nhnVar, Glide.get(context).getArrayPool(), context.getContentResolver()));
    }

    public static ThumbFetcher buildImageFetcher(Context context, Uri uri) {
        return m8686a(context, uri, new C1918a(context.getContentResolver()));
    }

    public static ThumbFetcher buildVideoFetcher(Context context, Uri uri) {
        return m8686a(context, uri, new C1919b(context.getContentResolver()));
    }

    /* renamed from: b */
    public final InputStream m8687b() throws FileNotFoundException {
        InputStream m56699d = this.f14522f.m56699d(this.f14521e);
        int m56696a = m56699d != null ? this.f14522f.m56696a(this.f14521e) : -1;
        return m56696a != -1 ? new ExifOrientationStream(m56699d, m56696a) : m56699d;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cleanup() {
        InputStream inputStream = this.f14523g;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        try {
            InputStream m8687b = m8687b();
            this.f14523g = m8687b;
            dataCallback.onDataReady(m8687b);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable(f14520h, 3)) {
                Log.d(f14520h, "Failed to find thumbnail file", e);
            }
            dataCallback.onLoadFailed(e);
        }
    }
}
