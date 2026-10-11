package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.AbstractReplicator;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.MaintenanceType;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.internal.QueryLanguage;
import com.couchbase.lite.internal.SocketFactory;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.core.C4Database;
import com.couchbase.lite.internal.core.C4Peer;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.impl.NativeC4Database;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSharedKeys;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.sunia.HTREnginev2.cyi;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public abstract class C4Database extends C4Peer {

    @VisibleForTesting
    public static final String DB_EXTENSION = ".cblite2";

    @VisibleForTesting
    static final int DB_FLAGS = 1;

    @NonNull
    private static final Map<MaintenanceType, Integer> MAINTENANCE_TYPE_MAP;

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Database();
    public static final boolean VERSION_VECTORS_ENABLED = false;

    @NonNull
    final AtomicReference<File> dbFile;

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final String name;

    /* loaded from: classes4.dex */
    public static final class ManagedC4Database extends C4Database {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ManagedC4Database(@NonNull final NativeImpl nativeImpl, @NonNull String str, long j) {
            super(nativeImpl, str, j, new C4Peer.PeerCleaner() { // from class: com.sunia.HTREnginev2.dy
                @Override // com.couchbase.lite.internal.core.C4Peer.PeerCleaner
                public final void dispose(long j2) {
                    C4Database.NativeImpl.this.nFree(j2);
                }
            });
            Objects.requireNonNull(nativeImpl);
        }
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nBeginTransaction(long j) throws LiteCoreException;

        void nClose(long j) throws LiteCoreException;

        void nCopy(String str, String str2, String str3, int i, int i2, byte[] bArr) throws LiteCoreException;

        void nDelete(long j) throws LiteCoreException;

        void nDeleteCollection(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

        void nDeleteNamed(@NonNull String str, @NonNull String str2) throws LiteCoreException;

        void nEndTransaction(long j, boolean z) throws LiteCoreException;

        void nFree(long j);

        @NonNull
        Set<String> nGetCollectionNames(long j, @NonNull String str) throws LiteCoreException;

        @Nullable
        String nGetCookies(long j, @NonNull String str) throws LiteCoreException;

        long nGetFLSharedKeys(long j);

        @Nullable
        String nGetPath(long j);

        @NonNull
        byte[] nGetPublicUUID(long j) throws LiteCoreException;

        @NonNull
        Set<String> nGetScopeNames(long j) throws LiteCoreException;

        long nGetSharedFleeceEncoder(long j);

        boolean nHasScope(long j, @NonNull String str);

        boolean nMaintenance(long j, int i) throws LiteCoreException;

        long nOpen(@NonNull String str, @NonNull String str2, int i, int i2, byte[] bArr) throws LiteCoreException;

        void nRekey(long j, int i, byte[] bArr) throws LiteCoreException;

        void nSetCookie(long j, String str, String str2, boolean z) throws LiteCoreException;
    }

    /* loaded from: classes4.dex */
    public static final class UnmanagedC4Database extends C4Database {
        public UnmanagedC4Database(@NonNull NativeImpl nativeImpl, long j) {
            super(nativeImpl, "shell", j, null);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(MaintenanceType.COMPACT, 0);
        hashMap.put(MaintenanceType.REINDEX, 1);
        hashMap.put(MaintenanceType.INTEGRITY_CHECK, 2);
        hashMap.put(MaintenanceType.OPTIMIZE, 3);
        hashMap.put(MaintenanceType.FULL_OPTIMIZE, 4);
        MAINTENANCE_TYPE_MAP = Collections.unmodifiableMap(hashMap);
    }

    public C4Database(@NonNull NativeImpl nativeImpl, @NonNull String str, long j, @Nullable C4Peer.PeerCleaner peerCleaner) {
        super(j, peerCleaner);
        this.dbFile = new AtomicReference<>();
        this.name = str;
        this.impl = nativeImpl;
    }

    public static void copyDb(@NonNull String str, @NonNull String str2, @NonNull String str3, int i, @Nullable byte[] bArr) throws LiteCoreException {
        copyDb(NATIVE_IMPL, str, str2, str3, 1, i, bArr);
    }

    public static void deleteNamedDb(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        NATIVE_IMPL.nDeleteNamed(str2, str);
    }

    @NonNull
    public static C4Database getDatabase(@NonNull String str, @NonNull String str2, boolean z, boolean z2, int i, @Nullable byte[] bArr) throws LiteCoreException {
        int i2 = z ? 129 : 1;
        if (!z2) {
            i2 |= 16;
        }
        return getDatabase(NATIVE_IMPL, str, str2, i2, i, bArr);
    }

    @NonNull
    public static File getDatabaseFile(@NonNull File file, @NonNull String str) {
        return new File(file, str + DB_EXTENSION);
    }

    @Nullable
    private File getDbFile() {
        File file = this.dbFile.get();
        if (file != null) {
            return file;
        }
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        String str = (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.nx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4Database.NativeImpl.this.nGetPath(((Long) obj).longValue());
            }
        });
        if (str == null) {
            return null;
        }
        try {
            cyi.m53538a(this.dbFile, null, new File(str).getCanonicalFile());
        } catch (IOException unused) {
        }
        return this.dbFile.get();
    }

    @NonNull
    public static C4Database getUnmanagedDatabase(long j) {
        return new UnmanagedC4Database(NATIVE_IMPL, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4Replicator lambda$createLocalReplicator$9(Map map, C4Database c4Database, ReplicatorType replicatorType, boolean z, Map map2, C4Replicator.StatusListener statusListener, C4Replicator.DocEndsListener docEndsListener, AbstractReplicator abstractReplicator, Long l) throws LiteCoreException {
        return C4Replicator.createLocalReplicator(map, l.longValue(), c4Database, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4Replicator lambda$createMessageEndpointReplicator$10(Set set, C4Socket c4Socket, Map map, C4Replicator.StatusListener statusListener, Long l) throws LiteCoreException {
        return C4Replicator.createMessageEndpointReplicator(set, l.longValue(), c4Socket, map, statusListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C4Replicator lambda$createRemoteReplicator$8(Map map, String str, String str2, int i, String str3, String str4, MessageFraming messageFraming, ReplicatorType replicatorType, boolean z, Map map2, C4Replicator.StatusListener statusListener, C4Replicator.DocEndsListener docEndsListener, AbstractReplicator abstractReplicator, SocketFactory socketFactory, Long l) throws LiteCoreException {
        return C4Replicator.createRemoteReplicator(map, l.longValue(), str, str2, i, str3, str4, messageFraming, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator, socketFactory);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteCollection$7(String str, String str2, Long l) throws LiteCoreException {
        this.impl.nDeleteCollection(l.longValue(), str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endTransaction$0(boolean z, Long l) throws LiteCoreException {
        this.impl.nEndTransaction(l.longValue(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Set lambda$getCollectionNames$6(String str, Long l) throws LiteCoreException {
        return this.impl.nGetCollectionNames(l.longValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getCookies$4(String str, Long l) throws LiteCoreException {
        return this.impl.nGetCookies(l.longValue(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$hasScope$5(String str, Long l) throws RuntimeException {
        return Boolean.valueOf(this.impl.nHasScope(l.longValue(), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$performMaintenance$2(Integer num, Long l) throws LiteCoreException {
        return Boolean.valueOf(this.impl.nMaintenance(l.longValue(), num.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rekey$1(int i, byte[] bArr, Long l) throws LiteCoreException {
        this.impl.nRekey(l.longValue(), i, bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCookie$3(String str, String str2, boolean z, Long l) throws LiteCoreException {
        this.impl.nSetCookie(l.longValue(), str, str2, z);
    }

    @NonNull
    public C4Collection addCollection(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        return C4Collection.create(this, str, str2);
    }

    public void beginTransaction() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.ay
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.NativeImpl.this.nBeginTransaction(((Long) obj).longValue());
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4Peer, java.lang.AutoCloseable
    public void close() {
        super.close();
    }

    public void closeDb() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.yx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.NativeImpl.this.nClose(((Long) obj).longValue());
            }
        });
        close();
    }

    @NonNull
    public C4Query createJsonQuery(@NonNull String str) throws LiteCoreException {
        return C4Query.create(this, QueryLanguage.JSON, str);
    }

    @NonNull
    public C4Replicator createLocalReplicator(@NonNull final Map<Collection, CollectionConfiguration> map, @NonNull final C4Database c4Database, @NonNull final ReplicatorType replicatorType, final boolean z, @Nullable final Map<String, Object> map2, @NonNull final C4Replicator.StatusListener statusListener, @NonNull final C4Replicator.DocEndsListener docEndsListener, @NonNull final AbstractReplicator abstractReplicator) throws LiteCoreException {
        return (C4Replicator) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ix
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4Replicator lambda$createLocalReplicator$9;
                lambda$createLocalReplicator$9 = C4Database.lambda$createLocalReplicator$9(map, c4Database, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator, (Long) obj);
                return lambda$createLocalReplicator$9;
            }
        });
    }

    @NonNull
    public C4Replicator createMessageEndpointReplicator(@NonNull final Set<Collection> set, @NonNull final C4Socket c4Socket, @Nullable final Map<String, Object> map, @NonNull final C4Replicator.StatusListener statusListener) throws LiteCoreException {
        return (C4Replicator) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.lx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4Replicator lambda$createMessageEndpointReplicator$10;
                lambda$createMessageEndpointReplicator$10 = C4Database.lambda$createMessageEndpointReplicator$10(set, c4Socket, map, statusListener, (Long) obj);
                return lambda$createMessageEndpointReplicator$10;
            }
        });
    }

    @NonNull
    public C4Query createN1qlQuery(@NonNull String str) throws LiteCoreException {
        return C4Query.create(this, QueryLanguage.N1QL, str);
    }

    @NonNull
    public C4Replicator createRemoteReplicator(@NonNull final Map<Collection, CollectionConfiguration> map, @Nullable final String str, @Nullable final String str2, final int i, @Nullable final String str3, @Nullable final String str4, @NonNull final MessageFraming messageFraming, @NonNull final ReplicatorType replicatorType, final boolean z, @Nullable final Map<String, Object> map2, @NonNull final C4Replicator.StatusListener statusListener, @NonNull final C4Replicator.DocEndsListener docEndsListener, @NonNull final AbstractReplicator abstractReplicator, @Nullable final SocketFactory socketFactory) throws LiteCoreException {
        return (C4Replicator) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.kx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                C4Replicator lambda$createRemoteReplicator$8;
                lambda$createRemoteReplicator$8 = C4Database.lambda$createRemoteReplicator$8(map, str, str2, i, str3, str4, messageFraming, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator, socketFactory, (Long) obj);
                return lambda$createRemoteReplicator$8;
            }
        });
    }

    public void deleteCollection(@NonNull final String str, @NonNull final String str2) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.wx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.this.lambda$deleteCollection$7(str, str2, (Long) obj);
            }
        });
    }

    public void deleteDb() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.zx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.NativeImpl.this.nDelete(((Long) obj).longValue());
            }
        });
        close();
    }

    public void endTransaction(final boolean z) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.mx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.this.lambda$endTransaction$0(z, (Long) obj);
            }
        });
    }

    @NonNull
    public C4BlobStore getBlobStore() throws LiteCoreException {
        return (C4BlobStore) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.tx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return C4BlobStore.create(((Long) obj).longValue());
            }
        });
    }

    @Nullable
    public C4Collection getCollection(@NonNull String str, @NonNull String str2) throws LiteCoreException {
        return C4Collection.get(this, str, str2);
    }

    @NonNull
    public Set<String> getCollectionNames(@NonNull final String str) throws LiteCoreException {
        return (Set) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.jx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Set lambda$getCollectionNames$6;
                lambda$getCollectionNames$6 = C4Database.this.lambda$getCollectionNames$6(str, (Long) obj);
                return lambda$getCollectionNames$6;
            }
        });
    }

    @Nullable
    public String getCookies(@NonNull URI uri) throws LiteCoreException {
        final String uri2 = uri.toString();
        return (String) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.xx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                String lambda$getCookies$4;
                lambda$getCookies$4 = C4Database.this.lambda$getCookies$4(uri2, (Long) obj);
                return lambda$getCookies$4;
            }
        });
    }

    @Nullable
    public String getDbDirectory() {
        File dbFile = getDbFile();
        if (dbFile == null) {
            return null;
        }
        return dbFile.getParent();
    }

    @Nullable
    public String getDbFileName() {
        File dbFile = getDbFile();
        if (dbFile == null) {
            return null;
        }
        return dbFile.getName();
    }

    @Nullable
    public String getDbName() {
        String dbFileName = getDbFileName();
        if (dbFileName == null) {
            return null;
        }
        return dbFileName.endsWith(DB_EXTENSION) ? dbFileName.substring(0, dbFileName.length() - 8) : dbFileName;
    }

    @Nullable
    public String getDbPath() {
        File dbFile = getDbFile();
        if (dbFile == null) {
            return null;
        }
        return dbFile.getPath() + File.separator;
    }

    @NonNull
    public final C4Collection getDefaultCollection() throws LiteCoreException {
        return C4Collection.getDefault(this);
    }

    @NonNull
    public FLSharedKeys getFLSharedKeys() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return new FLSharedKeys(((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.rx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Database.NativeImpl.this.nGetFLSharedKeys(((Long) obj).longValue()));
            }
        })).longValue());
    }

    @NonNull
    public byte[] getPublicUUID() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (byte[]) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ox
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return C4Database.NativeImpl.this.nGetPublicUUID(((Long) obj).longValue());
            }
        });
    }

    @NonNull
    public Set<String> getScopeNames() throws LiteCoreException {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (Set) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.vx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return C4Database.NativeImpl.this.nGetScopeNames(((Long) obj).longValue());
            }
        });
    }

    @NonNull
    public FLEncoder getSharedFleeceEncoder() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return FLEncoder.getUnmanagedEncoder(((Long) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.ux
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                return Long.valueOf(C4Database.NativeImpl.this.nGetSharedFleeceEncoder(((Long) obj).longValue()));
            }
        })).longValue());
    }

    public boolean hasScope(@NonNull final String str) {
        return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.cy
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$hasScope$5;
                lambda$hasScope$5 = C4Database.this.lambda$hasScope$5(str, (Long) obj);
                return lambda$hasScope$5;
            }
        })).booleanValue();
    }

    public boolean performMaintenance(MaintenanceType maintenanceType) throws LiteCoreException {
        final Integer num = MAINTENANCE_TYPE_MAP.get(maintenanceType);
        if (num != null) {
            return ((Boolean) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.sx
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                public final Object apply(Object obj) {
                    Boolean lambda$performMaintenance$2;
                    lambda$performMaintenance$2 = C4Database.this.lambda$performMaintenance$2(num, (Long) obj);
                    return lambda$performMaintenance$2;
                }
            })).booleanValue();
        }
        throw new IllegalArgumentException("Unknown maintenance type: " + maintenanceType);
    }

    public void rekey(final int i, final byte[] bArr) throws LiteCoreException {
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.px
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.this.lambda$rekey$1(i, bArr, (Long) obj);
            }
        });
    }

    public void setCookie(@NonNull URI uri, @NonNull final String str, final boolean z) throws LiteCoreException {
        final String uri2 = uri.toString();
        voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.qx
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Database.this.lambda$setCookie$3(uri2, str, z, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4Peer
    @NonNull
    public String toString() {
        return this.name + "@" + super.toString();
    }

    @VisibleForTesting
    public static void copyDb(@NonNull String str, @NonNull String str2, @NonNull String str3, int i) throws LiteCoreException {
        copyDb(NATIVE_IMPL, str, str2, str3, i, 0, null);
    }

    @NonNull
    @VisibleForTesting
    public static C4Database getDatabase(@NonNull String str, @NonNull String str2, int i) throws LiteCoreException {
        return getDatabase(NATIVE_IMPL, str, str2, i, 0, (byte[]) null);
    }

    @VisibleForTesting
    public static void copyDb(@NonNull NativeImpl nativeImpl, @NonNull String str, @NonNull String str2, @NonNull String str3, int i, int i2, @Nullable byte[] bArr) throws LiteCoreException {
        if (str.charAt(str.length() - 1) != File.separatorChar) {
            str = str + File.separator;
        }
        String str4 = str;
        if (str2.charAt(str2.length() - 1) != File.separatorChar) {
            str2 = str2 + File.separator;
        }
        nativeImpl.nCopy(str4, str2, str3, i, i2, bArr);
    }

    @NonNull
    @VisibleForTesting
    public static C4Database getDatabase(@NonNull NativeImpl nativeImpl, @NonNull String str, @NonNull String str2, int i, int i2, @Nullable byte[] bArr) throws LiteCoreException {
        boolean z = false;
        try {
            File file = new File(str);
            str = file.getCanonicalPath();
            if (file.exists()) {
                if (file.isDirectory()) {
                    z = true;
                }
            }
        } catch (IOException unused) {
        }
        String str3 = str;
        if (z) {
            return new ManagedC4Database(nativeImpl, str2, nativeImpl.nOpen(str3, str2, i, i2, bArr));
        }
        throw new LiteCoreException(1, 21, "Parent directory does not exist or is not a directory: " + str3);
    }
}
