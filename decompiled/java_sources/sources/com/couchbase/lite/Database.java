package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.AbstractDatabase;
import com.couchbase.lite.internal.ImmutableDatabaseConfiguration;
import com.couchbase.lite.internal.utils.Preconditions;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes4.dex */
public final class Database extends AbstractDatabase {

    @NonNull
    public static final Prediction prediction = new Prediction();

    public Database(@NonNull String str) throws CouchbaseLiteException {
        super(str);
    }

    public static void copy(@NonNull File file, @NonNull String str, @NonNull DatabaseConfiguration databaseConfiguration) throws CouchbaseLiteException {
        Preconditions.assertNotNull(databaseConfiguration, AbstractLogger.CONFIG);
        EncryptionKey encryptionKey = databaseConfiguration.getEncryptionKey();
        AbstractDatabase.copy(file, str, databaseConfiguration.getDirectory(), getEncryptionAlgorithm(encryptionKey), getEncryptionKey(encryptionKey));
    }

    private static int getEncryptionAlgorithm(EncryptionKey encryptionKey) {
        return getEncryptionKey(encryptionKey) == null ? 0 : 1;
    }

    @Nullable
    private static byte[] getEncryptionKey(@Nullable EncryptionKey encryptionKey) {
        if (encryptionKey == null) {
            return null;
        }
        return encryptionKey.getKey();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    @Deprecated
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@NonNull DatabaseChangeListener databaseChangeListener) {
        return super.addChangeListener(databaseChangeListener);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    @Deprecated
    public /* bridge */ /* synthetic */ ListenerToken addDocumentChangeListener(@NonNull String str, @NonNull DocumentChangeListener documentChangeListener) {
        return super.addDocumentChangeListener(str, documentChangeListener);
    }

    public void changeEncryptionKey(EncryptionKey encryptionKey) throws CouchbaseLiteException {
        synchronized (getDbLock()) {
            try {
                try {
                    getOpenC4DbLocked().rekey(getEncryptionAlgorithm(encryptionKey), getEncryptionKey(encryptionKey));
                } catch (LiteCoreException e) {
                    throw CouchbaseLiteException.convertException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.couchbase.lite.AbstractDatabase, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() throws CouchbaseLiteException {
        super.close();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ Collection createCollection(@NonNull String str) throws CouchbaseLiteException {
        return super.createCollection(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void createIndex(@NonNull String str, @NonNull Index index) throws CouchbaseLiteException {
        super.createIndex(str, index);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ Query createQuery(@NonNull String str) {
        return super.createQuery(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ void delete() throws CouchbaseLiteException {
        super.delete();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void deleteIndex(@NonNull String str) throws CouchbaseLiteException {
        super.deleteIndex(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    public /* bridge */ /* synthetic */ Blob getBlob(@NonNull Map map) {
        return super.getBlob(map);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    public /* bridge */ /* synthetic */ Collection getCollection(@NonNull String str) throws CouchbaseLiteException {
        return super.getCollection(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ DatabaseConfiguration getConfig() {
        return super.getConfig();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ long getCount() {
        return super.getCount();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public Database getDatabase() {
        return this;
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ Collection getDefaultCollection() throws CouchbaseLiteException {
        return super.getDefaultCollection();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    @Deprecated
    public /* bridge */ /* synthetic */ Document getDocument(@NonNull String str) {
        return super.getDocument(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    @Deprecated
    public /* bridge */ /* synthetic */ Date getDocumentExpiration(@NonNull String str) throws CouchbaseLiteException {
        return super.getDocumentExpiration(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    @Deprecated
    public /* bridge */ /* synthetic */ List getIndexes() throws CouchbaseLiteException {
        return super.getIndexes();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ String getName() {
        return super.getName();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ void inBatch(@NonNull UnitOfWork unitOfWork) throws CouchbaseLiteException, Exception {
        super.inBatch(unitOfWork);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ boolean performMaintenance(MaintenanceType maintenanceType) throws CouchbaseLiteException {
        return super.performMaintenance(maintenanceType);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void purge(@NonNull Document document) throws CouchbaseLiteException {
        super.purge(document);
    }

    public void registerMessageListener(@NonNull final MessageEndpointListener messageEndpointListener) {
        synchronized (getDbLock()) {
            assertOpenUnchecked();
            registerProcess(new AbstractDatabase.ActiveProcess<MessageEndpointListener>(messageEndpointListener) { // from class: com.couchbase.lite.Database.2
                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public boolean isActive() {
                    return !messageEndpointListener.isStopped();
                }

                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public void stop() {
                    messageEndpointListener.stop();
                }
            });
        }
    }

    public void registerUrlListener(@NonNull final URLEndpointListener uRLEndpointListener) {
        synchronized (getDbLock()) {
            assertOpenUnchecked();
            registerProcess(new AbstractDatabase.ActiveProcess<URLEndpointListener>(uRLEndpointListener) { // from class: com.couchbase.lite.Database.1
                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public boolean isActive() {
                    return uRLEndpointListener.isRunning();
                }

                @Override // com.couchbase.lite.AbstractDatabase.ActiveProcess
                public void stop() {
                    uRLEndpointListener.stop();
                }
            });
        }
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void removeChangeListener(@NonNull ListenerToken listenerToken) {
        super.removeChangeListener(listenerToken);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void save(@NonNull MutableDocument mutableDocument) throws CouchbaseLiteException {
        super.save(mutableDocument);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public /* bridge */ /* synthetic */ void saveBlob(@NonNull Blob blob) {
        super.saveBlob(blob);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void setDocumentExpiration(@NonNull String str, @Nullable Date date) throws CouchbaseLiteException {
        super.setDocumentExpiration(str, date);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public void unregisterMessageListener(@NonNull MessageEndpointListener messageEndpointListener) {
        unregisterProcess(messageEndpointListener);
    }

    public void unregisterUrlListener(@NonNull URLEndpointListener uRLEndpointListener) {
        unregisterProcess(uRLEndpointListener);
    }

    public Database(@NonNull String str, @NonNull DatabaseConfiguration databaseConfiguration) throws CouchbaseLiteException {
        super(str, databaseConfiguration);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    @Deprecated
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@Nullable Executor executor, @NonNull DatabaseChangeListener databaseChangeListener) {
        return super.addChangeListener(executor, databaseChangeListener);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @NonNull
    @Deprecated
    public /* bridge */ /* synthetic */ ListenerToken addDocumentChangeListener(@NonNull String str, @Nullable Executor executor, @NonNull DocumentChangeListener documentChangeListener) {
        return super.addDocumentChangeListener(str, executor, documentChangeListener);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void createIndex(@NonNull String str, @NonNull IndexConfiguration indexConfiguration) throws CouchbaseLiteException {
        super.createIndex(str, indexConfiguration);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void delete(@NonNull Document document) throws CouchbaseLiteException {
        super.delete(document);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    public int getEncryptionAlgorithm() {
        return getEncryptionAlgorithm(this.config.getEncryptionKey());
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Nullable
    public byte[] getEncryptionKey() {
        return getEncryptionKey(this.config.getEncryptionKey());
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ void purge(@NonNull String str) throws CouchbaseLiteException {
        super.purge(str);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ boolean save(@NonNull MutableDocument mutableDocument, @NonNull ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        return super.save(mutableDocument, concurrencyControl);
    }

    public Database(@NonNull String str, @NonNull ImmutableDatabaseConfiguration immutableDatabaseConfiguration) throws CouchbaseLiteException {
        super(str, immutableDatabaseConfiguration);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ boolean delete(@NonNull Document document, @NonNull ConcurrencyControl concurrencyControl) throws CouchbaseLiteException {
        return super.delete(document, concurrencyControl);
    }

    @Override // com.couchbase.lite.AbstractDatabase
    @Deprecated
    public /* bridge */ /* synthetic */ boolean save(@NonNull MutableDocument mutableDocument, @NonNull ConflictHandler conflictHandler) throws CouchbaseLiteException {
        return super.save(mutableDocument, conflictHandler);
    }

    public static void copy(@NonNull File file, @NonNull String str, @NonNull ImmutableDatabaseConfiguration immutableDatabaseConfiguration) throws CouchbaseLiteException {
        EncryptionKey encryptionKey = immutableDatabaseConfiguration.getEncryptionKey();
        AbstractDatabase.copy(file, str, immutableDatabaseConfiguration.getDirectory(), getEncryptionAlgorithm(encryptionKey), getEncryptionKey(encryptionKey));
    }
}
