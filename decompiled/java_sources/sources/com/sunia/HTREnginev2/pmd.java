package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations;
import com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.AtomicFile;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public class pmd {

    /* renamed from: g */
    public static final String f80938g = "cached_content_index.exi";

    /* renamed from: h */
    public static final int f80939h = 10485760;

    /* renamed from: a */
    public final HashMap<String, omd> f80940a;

    /* renamed from: b */
    public final SparseArray<String> f80941b;

    /* renamed from: c */
    public final SparseBooleanArray f80942c;

    /* renamed from: d */
    public final SparseBooleanArray f80943d;

    /* renamed from: e */
    public InterfaceC14252c f80944e;

    /* renamed from: f */
    @Nullable
    public InterfaceC14252c f80945f;

    /* renamed from: com.sunia.HTREnginev2.pmd$a */
    /* loaded from: classes5.dex */
    public static final class C14250a implements InterfaceC14252c {

        /* renamed from: e */
        public static final String f80946e = "ExoPlayerCacheIndex";

        /* renamed from: f */
        public static final int f80947f = 1;

        /* renamed from: g */
        public static final String f80948g = "id";

        /* renamed from: h */
        public static final String f80949h = "key";

        /* renamed from: i */
        public static final String f80950i = "metadata";

        /* renamed from: j */
        public static final int f80951j = 0;

        /* renamed from: k */
        public static final int f80952k = 1;

        /* renamed from: l */
        public static final int f80953l = 2;

        /* renamed from: m */
        public static final String f80954m = "id = ?";

        /* renamed from: n */
        public static final String[] f80955n = {"id", "key", "metadata"};

        /* renamed from: o */
        public static final String f80956o = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)";

        /* renamed from: a */
        public final DatabaseProvider f80957a;

        /* renamed from: b */
        public final SparseArray<omd> f80958b = new SparseArray<>();

        /* renamed from: c */
        public String f80959c;

        /* renamed from: d */
        public String f80960d;

        public C14250a(DatabaseProvider databaseProvider) {
            this.f80957a = databaseProvider;
        }

        /* renamed from: h */
        public static void m56309h(DatabaseProvider databaseProvider, long j) throws DatabaseIOException {
            m56310i(databaseProvider, Long.toHexString(j));
        }

        /* renamed from: i */
        public static void m56310i(DatabaseProvider databaseProvider, String str) throws DatabaseIOException {
            try {
                String m56312m = m56312m(str);
                SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    VersionTable.removeVersion(writableDatabase, 1, str);
                    m56311k(writableDatabase, m56312m);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        /* renamed from: k */
        public static void m56311k(SQLiteDatabase sQLiteDatabase, String str) {
            String valueOf = String.valueOf(str);
            sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
        }

        /* renamed from: m */
        public static String m56312m(String str) {
            String valueOf = String.valueOf(str);
            return valueOf.length() != 0 ? f80946e.concat(valueOf) : new String(f80946e);
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: a */
        public void mo56313a(omd omdVar) {
            this.f80958b.put(omdVar.f79927a, omdVar);
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: b */
        public void mo56314b(HashMap<String, omd> hashMap, SparseArray<String> sparseArray) throws IOException {
            Assertions.checkState(this.f80958b.size() == 0);
            try {
                if (VersionTable.getVersion(this.f80957a.getReadableDatabase(), 1, (String) Assertions.checkNotNull(this.f80959c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f80957a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        m56322n(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                Cursor m56321l = m56321l();
                while (m56321l.moveToNext()) {
                    try {
                        omd omdVar = new omd(m56321l.getInt(0), (String) Assertions.checkNotNull(m56321l.getString(1)), pmd.m56294s(new DataInputStream(new ByteArrayInputStream(m56321l.getBlob(2)))));
                        hashMap.put(omdVar.f79928b, omdVar);
                        sparseArray.put(omdVar.f79927a, omdVar.f79928b);
                    } finally {
                    }
                }
                m56321l.close();
            } catch (SQLiteException e) {
                hashMap.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: c */
        public void mo56315c(omd omdVar, boolean z) {
            if (z) {
                this.f80958b.delete(omdVar.f79927a);
            } else {
                this.f80958b.put(omdVar.f79927a, null);
            }
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: d */
        public void mo56316d(long j) {
            String hexString = Long.toHexString(j);
            this.f80959c = hexString;
            this.f80960d = m56312m(hexString);
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        public void delete() throws DatabaseIOException {
            m56310i(this.f80957a, (String) Assertions.checkNotNull(this.f80959c));
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: e */
        public void mo56317e(HashMap<String, omd> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.f80957a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    m56322n(writableDatabase);
                    Iterator<omd> it2 = hashMap.values().iterator();
                    while (it2.hasNext()) {
                        m56319g(writableDatabase, it2.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f80958b.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        public boolean exists() throws DatabaseIOException {
            return VersionTable.getVersion(this.f80957a.getReadableDatabase(), 1, (String) Assertions.checkNotNull(this.f80959c)) != -1;
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: f */
        public void mo56318f(HashMap<String, omd> hashMap) throws IOException {
            if (this.f80958b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f80957a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.f80958b.size(); i++) {
                    try {
                        omd valueAt = this.f80958b.valueAt(i);
                        if (valueAt == null) {
                            m56320j(writableDatabase, this.f80958b.keyAt(i));
                        } else {
                            m56319g(writableDatabase, valueAt);
                        }
                    } finally {
                        writableDatabase.endTransaction();
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f80958b.clear();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        /* renamed from: g */
        public final void m56319g(SQLiteDatabase sQLiteDatabase, omd omdVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            pmd.m56295v(omdVar.m56088d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(omdVar.f79927a));
            contentValues.put("key", omdVar.f79928b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((String) Assertions.checkNotNull(this.f80960d), null, contentValues);
        }

        /* renamed from: j */
        public final void m56320j(SQLiteDatabase sQLiteDatabase, int i) {
            sQLiteDatabase.delete((String) Assertions.checkNotNull(this.f80960d), "id = ?", new String[]{Integer.toString(i)});
        }

        /* renamed from: l */
        public final Cursor m56321l() {
            return this.f80957a.getReadableDatabase().query((String) Assertions.checkNotNull(this.f80960d), f80955n, null, null, null, null, null);
        }

        /* renamed from: n */
        public final void m56322n(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            VersionTable.setVersion(sQLiteDatabase, 1, (String) Assertions.checkNotNull(this.f80959c), 1);
            m56311k(sQLiteDatabase, (String) Assertions.checkNotNull(this.f80960d));
            String str = this.f80960d;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("CREATE TABLE ");
            sb.append(str);
            sb.append(" ");
            sb.append(f80956o);
            sQLiteDatabase.execSQL(sb.toString());
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pmd$b */
    /* loaded from: classes5.dex */
    public static class C14251b implements InterfaceC14252c {

        /* renamed from: h */
        public static final int f80961h = 2;

        /* renamed from: i */
        public static final int f80962i = 2;

        /* renamed from: j */
        public static final int f80963j = 1;

        /* renamed from: a */
        public final boolean f80964a;

        /* renamed from: b */
        @Nullable
        public final Cipher f80965b;

        /* renamed from: c */
        @Nullable
        public final SecretKeySpec f80966c;

        /* renamed from: d */
        @Nullable
        public final SecureRandom f80967d;

        /* renamed from: e */
        public final AtomicFile f80968e;

        /* renamed from: f */
        public boolean f80969f;

        /* renamed from: g */
        @Nullable
        public jrl f80970g;

        public C14251b(File file, @Nullable byte[] bArr, boolean z) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            Assertions.checkState((bArr == null && z) ? false : true);
            if (bArr != null) {
                Assertions.checkArgument(bArr.length == 16);
                try {
                    cipher = pmd.m56287a();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                Assertions.checkArgument(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f80964a = z;
            this.f80965b = cipher;
            this.f80966c = secretKeySpec;
            this.f80967d = z ? new SecureRandom() : null;
            this.f80968e = new AtomicFile(file);
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: a */
        public void mo56313a(omd omdVar) {
            this.f80969f = true;
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: b */
        public void mo56314b(HashMap<String, omd> hashMap, SparseArray<String> sparseArray) {
            Assertions.checkState(!this.f80969f);
            if (m56325i(hashMap, sparseArray)) {
                return;
            }
            hashMap.clear();
            sparseArray.clear();
            this.f80968e.delete();
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: c */
        public void mo56315c(omd omdVar, boolean z) {
            this.f80969f = true;
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: d */
        public void mo56316d(long j) {
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        public void delete() {
            this.f80968e.delete();
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: e */
        public void mo56317e(HashMap<String, omd> hashMap) throws IOException {
            m56327k(hashMap);
            this.f80969f = false;
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        public boolean exists() {
            return this.f80968e.exists();
        }

        @Override // com.sunia.HTREnginev2.pmd.InterfaceC14252c
        /* renamed from: f */
        public void mo56318f(HashMap<String, omd> hashMap) throws IOException {
            if (this.f80969f) {
                mo56317e(hashMap);
            }
        }

        /* renamed from: g */
        public final int m56323g(omd omdVar, int i) {
            int i2;
            int hashCode;
            int hashCode2 = (omdVar.f79927a * 31) + omdVar.f79928b.hashCode();
            if (i < 2) {
                long contentLength = ContentMetadata.getContentLength(omdVar.m56088d());
                i2 = hashCode2 * 31;
                hashCode = (int) (contentLength ^ (contentLength >>> 32));
            } else {
                i2 = hashCode2 * 31;
                hashCode = omdVar.m56088d().hashCode();
            }
            return i2 + hashCode;
        }

        /* renamed from: h */
        public final omd m56324h(int i, DataInputStream dataInputStream) throws IOException {
            DefaultContentMetadata m56294s;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i < 2) {
                long readLong = dataInputStream.readLong();
                ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
                ContentMetadataMutations.setContentLength(contentMetadataMutations, readLong);
                m56294s = DefaultContentMetadata.EMPTY.copyWithMutationsApplied(contentMetadataMutations);
            } else {
                m56294s = pmd.m56294s(dataInputStream);
            }
            return new omd(readInt, readUTF, m56294s);
        }

        /* renamed from: i */
        public final boolean m56325i(HashMap<String, omd> hashMap, SparseArray<String> sparseArray) {
            BufferedInputStream bufferedInputStream;
            DataInputStream dataInputStream;
            if (!this.f80968e.exists()) {
                return true;
            }
            DataInputStream dataInputStream2 = null;
            try {
                bufferedInputStream = new BufferedInputStream(this.f80968e.openRead());
                dataInputStream = new DataInputStream(bufferedInputStream);
            } catch (IOException unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                int readInt = dataInputStream.readInt();
                if (readInt >= 0 && readInt <= 2) {
                    if ((dataInputStream.readInt() & 1) != 0) {
                        if (this.f80965b == null) {
                            Util.closeQuietly(dataInputStream);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream.readFully(bArr);
                        try {
                            this.f80965b.init(2, (Key) Util.castNonNull(this.f80966c), new IvParameterSpec(bArr));
                            dataInputStream = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f80965b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    } else if (this.f80964a) {
                        this.f80969f = true;
                    }
                    int readInt2 = dataInputStream.readInt();
                    int i = 0;
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        omd m56324h = m56324h(readInt, dataInputStream);
                        hashMap.put(m56324h.f79928b, m56324h);
                        sparseArray.put(m56324h.f79927a, m56324h.f79928b);
                        i += m56323g(m56324h, readInt);
                    }
                    int readInt3 = dataInputStream.readInt();
                    boolean z = dataInputStream.read() == -1;
                    if (readInt3 == i && z) {
                        Util.closeQuietly(dataInputStream);
                        return true;
                    }
                    Util.closeQuietly(dataInputStream);
                    return false;
                }
                Util.closeQuietly(dataInputStream);
                return false;
            } catch (IOException unused2) {
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    Util.closeQuietly(dataInputStream2);
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    Util.closeQuietly(dataInputStream2);
                }
                throw th;
            }
        }

        /* renamed from: j */
        public final void m56326j(omd omdVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(omdVar.f79927a);
            dataOutputStream.writeUTF(omdVar.f79928b);
            pmd.m56295v(omdVar.m56088d(), dataOutputStream);
        }

        /* renamed from: k */
        public final void m56327k(HashMap<String, omd> hashMap) throws IOException {
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream startWrite = this.f80968e.startWrite();
                jrl jrlVar = this.f80970g;
                if (jrlVar == null) {
                    this.f80970g = new jrl(startWrite);
                } else {
                    jrlVar.m55030f(startWrite);
                }
                jrl jrlVar2 = this.f80970g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(jrlVar2);
                try {
                    dataOutputStream2.writeInt(2);
                    int i = 0;
                    dataOutputStream2.writeInt(this.f80964a ? 1 : 0);
                    if (this.f80964a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) Util.castNonNull(this.f80967d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) Util.castNonNull(this.f80965b)).init(1, (Key) Util.castNonNull(this.f80966c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new DataOutputStream(new CipherOutputStream(jrlVar2, this.f80965b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(hashMap.size());
                    for (omd omdVar : hashMap.values()) {
                        m56326j(omdVar, dataOutputStream2);
                        i += m56323g(omdVar, 2);
                    }
                    dataOutputStream2.writeInt(i);
                    this.f80968e.endWrite(dataOutputStream2);
                    Util.closeQuietly(null);
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    Util.closeQuietly(dataOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.pmd$c */
    /* loaded from: classes5.dex */
    public interface InterfaceC14252c {
        /* renamed from: a */
        void mo56313a(omd omdVar);

        /* renamed from: b */
        void mo56314b(HashMap<String, omd> hashMap, SparseArray<String> sparseArray) throws IOException;

        /* renamed from: c */
        void mo56315c(omd omdVar, boolean z);

        /* renamed from: d */
        void mo56316d(long j);

        void delete() throws IOException;

        /* renamed from: e */
        void mo56317e(HashMap<String, omd> hashMap) throws IOException;

        boolean exists() throws IOException;

        /* renamed from: f */
        void mo56318f(HashMap<String, omd> hashMap) throws IOException;
    }

    public pmd(DatabaseProvider databaseProvider) {
        this(databaseProvider, null, null, false, false);
    }

    /* renamed from: a */
    public static /* synthetic */ Cipher m56287a() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return m56291j();
    }

    @WorkerThread
    /* renamed from: g */
    public static void m56290g(DatabaseProvider databaseProvider, long j) throws DatabaseIOException {
        C14250a.m56309h(databaseProvider, j);
    }

    @SuppressLint({"GetInstance"})
    /* renamed from: j */
    public static Cipher m56291j() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    @VisibleForTesting
    /* renamed from: n */
    public static int m56292n(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (keyAt >= 0) {
            return keyAt;
        }
        while (i < size && i == sparseArray.keyAt(i)) {
            i++;
        }
        return i;
    }

    /* renamed from: q */
    public static boolean m56293q(String str) {
        return str.startsWith(f80938g);
    }

    /* renamed from: s */
    public static DefaultContentMetadata m56294s(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 < 0) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid value size: ");
                sb.append(readInt2);
                throw new IOException(sb.toString());
            }
            int min = Math.min(readInt2, 10485760);
            byte[] bArr = Util.EMPTY_BYTE_ARRAY;
            int i2 = 0;
            while (i2 != readInt2) {
                int i3 = i2 + min;
                bArr = Arrays.copyOf(bArr, i3);
                dataInputStream.readFully(bArr, i2, min);
                min = Math.min(readInt2 - i3, 10485760);
                i2 = i3;
            }
            hashMap.put(readUTF, bArr);
        }
        return new DefaultContentMetadata(hashMap);
    }

    /* renamed from: v */
    public static void m56295v(DefaultContentMetadata defaultContentMetadata, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> entrySet = defaultContentMetadata.entrySet();
        dataOutputStream.writeInt(entrySet.size());
        for (Map.Entry<String, byte[]> entry : entrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    /* renamed from: d */
    public final omd m56296d(String str) {
        int m56292n = m56292n(this.f80941b);
        omd omdVar = new omd(m56292n, str);
        this.f80940a.put(str, omdVar);
        this.f80941b.put(m56292n, str);
        this.f80943d.put(m56292n, true);
        this.f80944e.mo56313a(omdVar);
        return omdVar;
    }

    /* renamed from: e */
    public void m56297e(String str, ContentMetadataMutations contentMetadataMutations) {
        omd m56304o = m56304o(str);
        if (m56304o.m56086b(contentMetadataMutations)) {
            this.f80944e.mo56313a(m56304o);
        }
    }

    /* renamed from: f */
    public int m56298f(String str) {
        return m56304o(str).f79927a;
    }

    @Nullable
    /* renamed from: h */
    public omd m56299h(String str) {
        return this.f80940a.get(str);
    }

    /* renamed from: i */
    public Collection<omd> m56300i() {
        return Collections.unmodifiableCollection(this.f80940a.values());
    }

    /* renamed from: k */
    public ContentMetadata m56301k(String str) {
        omd m56299h = m56299h(str);
        return m56299h != null ? m56299h.m56088d() : DefaultContentMetadata.EMPTY;
    }

    @Nullable
    /* renamed from: l */
    public String m56302l(int i) {
        return this.f80941b.get(i);
    }

    /* renamed from: m */
    public Set<String> m56303m() {
        return this.f80940a.keySet();
    }

    /* renamed from: o */
    public omd m56304o(String str) {
        omd omdVar = this.f80940a.get(str);
        return omdVar == null ? m56296d(str) : omdVar;
    }

    @WorkerThread
    /* renamed from: p */
    public void m56305p(long j) throws IOException {
        InterfaceC14252c interfaceC14252c;
        this.f80944e.mo56316d(j);
        InterfaceC14252c interfaceC14252c2 = this.f80945f;
        if (interfaceC14252c2 != null) {
            interfaceC14252c2.mo56316d(j);
        }
        if (this.f80944e.exists() || (interfaceC14252c = this.f80945f) == null || !interfaceC14252c.exists()) {
            this.f80944e.mo56314b(this.f80940a, this.f80941b);
        } else {
            this.f80945f.mo56314b(this.f80940a, this.f80941b);
            this.f80944e.mo56317e(this.f80940a);
        }
        InterfaceC14252c interfaceC14252c3 = this.f80945f;
        if (interfaceC14252c3 != null) {
            interfaceC14252c3.delete();
            this.f80945f = null;
        }
    }

    /* renamed from: r */
    public void m56306r(String str) {
        omd omdVar = this.f80940a.get(str);
        if (omdVar != null && omdVar.m56091g() && omdVar.m56093i()) {
            this.f80940a.remove(str);
            int i = omdVar.f79927a;
            boolean z = this.f80943d.get(i);
            this.f80944e.mo56315c(omdVar, z);
            if (z) {
                this.f80941b.remove(i);
                this.f80943d.delete(i);
            } else {
                this.f80941b.put(i, null);
                this.f80942c.put(i, true);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public void m56307t() {
        UnmodifiableIterator it2 = ImmutableSet.copyOf((Collection) this.f80940a.keySet()).iterator();
        while (it2.hasNext()) {
            m56306r((String) it2.next());
        }
    }

    @WorkerThread
    /* renamed from: u */
    public void m56308u() throws IOException {
        this.f80944e.mo56318f(this.f80940a);
        int size = this.f80942c.size();
        for (int i = 0; i < size; i++) {
            this.f80941b.remove(this.f80942c.keyAt(i));
        }
        this.f80942c.clear();
        this.f80943d.clear();
    }

    public pmd(@Nullable DatabaseProvider databaseProvider, @Nullable File file, @Nullable byte[] bArr, boolean z, boolean z2) {
        Assertions.checkState((databaseProvider == null && file == null) ? false : true);
        this.f80940a = new HashMap<>();
        this.f80941b = new SparseArray<>();
        this.f80942c = new SparseBooleanArray();
        this.f80943d = new SparseBooleanArray();
        C14250a c14250a = databaseProvider != null ? new C14250a(databaseProvider) : null;
        C14251b c14251b = file != null ? new C14251b(new File(file, f80938g), bArr, z) : null;
        if (c14250a != null && (c14251b == null || !z2)) {
            this.f80944e = c14250a;
            this.f80945f = c14251b;
        } else {
            this.f80944e = (InterfaceC14252c) Util.castNonNull(c14251b);
            this.f80945f = c14250a;
        }
    }
}
