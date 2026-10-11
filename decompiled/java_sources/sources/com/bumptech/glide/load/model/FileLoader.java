package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class FileLoader<Data> implements ModelLoader<File, Data> {

    /* renamed from: b */
    public static final String f14868b = "FileLoader";

    /* renamed from: a */
    public final FileOpener<Data> f14869a;

    /* loaded from: classes3.dex */
    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {

        /* renamed from: a */
        public final FileOpener<Data> f14870a;

        public Factory(FileOpener<Data> fileOpener) {
            this.f14870a = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        @NonNull
        public final ModelLoader<File, Data> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.f14870a);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final void teardown() {
        }
    }

    /* loaded from: classes3.dex */
    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$FileDescriptorFactory$a */
        /* loaded from: classes3.dex */
        public class C1971a implements FileOpener<ParcelFileDescriptor> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public ParcelFileDescriptor open(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public Class<ParcelFileDescriptor> getDataClass() {
                return ParcelFileDescriptor.class;
            }
        }

        public FileDescriptorFactory() {
            super(new C1971a());
        }
    }

    /* loaded from: classes3.dex */
    public interface FileOpener<Data> {
        void close(Data data) throws IOException;

        Class<Data> getDataClass();

        Data open(File file) throws FileNotFoundException;
    }

    /* loaded from: classes3.dex */
    public static class StreamFactory extends Factory<InputStream> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$StreamFactory$a */
        /* loaded from: classes3.dex */
        public class C1972a implements FileOpener<InputStream> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public InputStream open(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }
        }

        public StreamFactory() {
            super(new C1972a());
        }
    }

    /* renamed from: com.bumptech.glide.load.model.FileLoader$a */
    /* loaded from: classes3.dex */
    public static final class C1973a<Data> implements DataFetcher<Data> {

        /* renamed from: e */
        public final File f14871e;

        /* renamed from: f */
        public final FileOpener<Data> f14872f;

        /* renamed from: g */
        public Data f14873g;

        public C1973a(File file, FileOpener<Data> fileOpener) {
            this.f14871e = file;
            this.f14872f = fileOpener;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public void cleanup() {
            Data data = this.f14873g;
            if (data != null) {
                try {
                    this.f14872f.close(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public Class<Data> getDataClass() {
            return this.f14872f.getDataClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.DataFetcher
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data open = this.f14872f.open(this.f14871e);
                this.f14873g = open;
                dataCallback.onDataReady(open);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable(FileLoader.f14868b, 3)) {
                    Log.d(FileLoader.f14868b, "Failed to open file", e);
                }
                dataCallback.onLoadFailed(e);
            }
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.f14869a = fileOpener;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(@NonNull File file) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> buildLoadData(@NonNull File file, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(file), new C1973a(file, this.f14869a));
    }
}
