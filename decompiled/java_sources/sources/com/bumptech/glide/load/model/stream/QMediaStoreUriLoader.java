package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

@RequiresApi(29)
/* loaded from: classes3.dex */
public final class QMediaStoreUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* renamed from: a */
    public final Context f14953a;

    /* renamed from: b */
    public final ModelLoader<File, DataT> f14954b;

    /* renamed from: c */
    public final ModelLoader<Uri, DataT> f14955c;

    /* renamed from: d */
    public final Class<DataT> f14956d;

    @RequiresApi(29)
    /* loaded from: classes3.dex */
    public static final class FileDescriptorFactory extends AbstractC1985a<ParcelFileDescriptor> {
        public FileDescriptorFactory(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi(29)
    /* loaded from: classes3.dex */
    public static final class InputStreamFactory extends AbstractC1985a<InputStream> {
        public InputStreamFactory(Context context) {
            super(context, InputStream.class);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$a */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1985a<DataT> implements ModelLoaderFactory<Uri, DataT> {

        /* renamed from: a */
        public final Context f14957a;

        /* renamed from: b */
        public final Class<DataT> f14958b;

        public AbstractC1985a(Context context, Class<DataT> cls) {
            this.f14957a = context;
            this.f14958b = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<Uri, DataT> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new QMediaStoreUriLoader(this.f14957a, multiModelLoaderFactory.build(File.class, this.f14958b), multiModelLoaderFactory.build(Uri.class, this.f14958b), this.f14958b);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* renamed from: com.bumptech.glide.load.model.stream.QMediaStoreUriLoader$b */
    /* loaded from: classes3.dex */
    public static final class C1986b<DataT> implements DataFetcher<DataT> {

        /* renamed from: o */
        public static final String[] f14959o = {"_data"};

        /* renamed from: e */
        public final Context f14960e;

        /* renamed from: f */
        public final ModelLoader<File, DataT> f14961f;

        /* renamed from: g */
        public final ModelLoader<Uri, DataT> f14962g;

        /* renamed from: h */
        public final Uri f14963h;

        /* renamed from: i */
        public final int f14964i;

        /* renamed from: j */
        public final int f14965j;

        /* renamed from: k */
        public final Options f14966k;

        /* renamed from: l */
        public final Class<DataT> f14967l;

        /* renamed from: m */
        public volatile boolean f14968m;

        /* renamed from: n */
        @Nullable
        public volatile DataFetcher<DataT> f14969n;

        public C1986b(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Uri uri, int i, int i2, Options options, Class<DataT> cls) {
            this.f14960e = context.getApplicationContext();
            this.f14961f = modelLoader;
            this.f14962g = modelLoader2;
            this.f14963h = uri;
            this.f14964i = i;
            this.f14965j = i2;
            this.f14966k = options;
            this.f14967l = cls;
        }

        @Nullable
        /* renamed from: a */
        public final ModelLoader.LoadData<DataT> m8921a() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.f14961f.buildLoadData(m8924d(this.f14963h), this.f14964i, this.f14965j, this.f14966k);
            }
            return this.f14962g.buildLoadData(m8923c() ? MediaStore.setRequireOriginal(this.f14963h) : this.f14963h, this.f14964i, this.f14965j, this.f14966k);
        }

        @Nullable
        /* renamed from: b */
        public final DataFetcher<DataT> m8922b() throws FileNotFoundException {
            ModelLoader.LoadData<DataT> m8921a = m8921a();
            if (m8921a != null) {
                return m8921a.fetcher;
            }
            return null;
        }

        /* renamed from: c */
        public final boolean m8923c() {
            return this.f14960e.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
            this.f14968m = true;
            DataFetcher<DataT> dataFetcher = this.f14969n;
            if (dataFetcher != null) {
                dataFetcher.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            DataFetcher<DataT> dataFetcher = this.f14969n;
            if (dataFetcher != null) {
                dataFetcher.cleanup();
            }
        }

        @NonNull
        /* renamed from: d */
        public final File m8924d(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.f14960e.getContentResolver().query(uri, f14959o, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                }
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    query.close();
                    return file;
                }
                throw new FileNotFoundException("File path was empty in media store for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<DataT> getDataClass() {
            return this.f14967l;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super DataT> dataCallback) {
            try {
                DataFetcher<DataT> m8922b = m8922b();
                if (m8922b == null) {
                    dataCallback.onLoadFailed(new IllegalArgumentException("Failed to build fetcher for: " + this.f14963h));
                    return;
                }
                this.f14969n = m8922b;
                if (this.f14968m) {
                    cancel();
                } else {
                    m8922b.loadData(priority, dataCallback);
                }
            } catch (FileNotFoundException e) {
                dataCallback.onLoadFailed(e);
            }
        }
    }

    public QMediaStoreUriLoader(Context context, ModelLoader<File, DataT> modelLoader, ModelLoader<Uri, DataT> modelLoader2, Class<DataT> cls) {
        this.f14953a = context.getApplicationContext();
        this.f14954b = modelLoader;
        this.f14955c = modelLoader2;
        this.f14956d = cls;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<DataT> buildLoadData(@NonNull Uri uri, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(uri), new C1986b(this.f14953a, this.f14954b, this.f14955c, uri, i, i2, options, this.f14956d));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull Uri uri) {
        return MediaStoreUtil.isMediaStoreUri(uri);
    }
}
