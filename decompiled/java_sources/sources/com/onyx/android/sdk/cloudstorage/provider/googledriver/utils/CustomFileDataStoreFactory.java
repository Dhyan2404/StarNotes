package com.onyx.android.sdk.cloudstorage.provider.googledriver.utils;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Maps;
import com.google.api.client.util.store.AbstractDataStoreFactory;
import com.google.api.client.util.store.AbstractMemoryDataStore;
import com.google.api.client.util.store.DataStore;
import com.google.api.client.util.store.DataStoreFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\b\b\u0000\u0010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/CustomFileDataStoreFactory;", "Lcom/google/api/client/util/store/AbstractDataStoreFactory;", "dataDirectory", "Ljava/io/File;", "(Ljava/io/File;)V", "createDataStore", "Lcom/google/api/client/util/store/DataStore;", "V", "Ljava/io/Serializable;", "id", "", "FileDataStore", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CustomFileDataStoreFactory extends AbstractDataStoreFactory {

    @NotNull
    private File dataDirectory;

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/CustomFileDataStoreFactory$FileDataStore;", "V", "Ljava/io/Serializable;", "Lcom/google/api/client/util/store/AbstractMemoryDataStore;", "dataStore", "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/CustomFileDataStoreFactory;", "dataDirectory", "Ljava/io/File;", "id", "", "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/utils/CustomFileDataStoreFactory;Ljava/io/File;Ljava/lang/String;)V", "dataFile", "getDataStoreFactory", "save", "", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FileDataStore<V extends Serializable> extends AbstractMemoryDataStore<V> {

        @NotNull
        private final File dataFile;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileDataStore(@NotNull CustomFileDataStoreFactory dataStore, @NotNull File dataDirectory, @NotNull String id) {
            super(dataStore, id);
            Intrinsics.checkNotNullParameter(dataStore, "dataStore");
            Intrinsics.checkNotNullParameter(dataDirectory, "dataDirectory");
            Intrinsics.checkNotNullParameter(id, "id");
            File file = new File(dataDirectory, id);
            this.dataFile = file;
            if (IOUtils.isSymbolicLink(file)) {
                throw new IOException("unable to use a symbolic link: " + file);
            }
            if (!file.createNewFile()) {
                this.keyValueMap = (HashMap) IOUtils.deserialize(new FileInputStream(file));
            } else {
                this.keyValueMap = Maps.newHashMap();
                save();
            }
        }

        @Override // com.google.api.client.util.store.AbstractMemoryDataStore
        public void save() throws IOException {
            IOUtils.serialize(this.keyValueMap, new FileOutputStream(this.dataFile));
        }

        @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
        @NotNull
        public CustomFileDataStoreFactory getDataStoreFactory() {
            DataStoreFactory dataStoreFactory = super.getDataStoreFactory();
            Intrinsics.checkNotNull(dataStoreFactory, "null cannot be cast to non-null type com.onyx.android.sdk.cloudstorage.provider.googledriver.utils.CustomFileDataStoreFactory");
            return (CustomFileDataStoreFactory) dataStoreFactory;
        }
    }

    public CustomFileDataStoreFactory(@NotNull File dataDirectory) throws IOException {
        Intrinsics.checkNotNullParameter(dataDirectory, "dataDirectory");
        File canonicalFile = dataDirectory.getCanonicalFile();
        Intrinsics.checkNotNullExpressionValue(canonicalFile, "getCanonicalFile(...)");
        if (IOUtils.isSymbolicLink(canonicalFile)) {
            throw new IOException("unable to use a symbolic link: " + canonicalFile);
        }
        if (canonicalFile.exists() || canonicalFile.mkdirs()) {
            this.dataDirectory = canonicalFile;
            return;
        }
        throw new IOException("unable to create directory: " + canonicalFile);
    }

    @Override // com.google.api.client.util.store.AbstractDataStoreFactory
    @NotNull
    public <V extends Serializable> DataStore<V> createDataStore(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new FileDataStore(this, this.dataDirectory, id);
    }
}
