package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.core.C4Document;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.fleece.MRoot;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes4.dex */
public class Document implements DictionaryInterface, Iterable<String> {

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4Document c4Document;

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private Collection collection;

    @Nullable
    @SuppressFBWarnings({"URF_UNREAD_FIELD"})
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private FLDict data;

    /* renamed from: id */
    @NonNull
    private final String f16264id;

    @NonNull
    @SuppressFBWarnings({"NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private Dictionary internalDict;

    @NonNull
    private final Object lock;
    private final boolean mutable;

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private String revId;

    @Nullable
    @SuppressFBWarnings({"URF_UNREAD_FIELD"})
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private MRoot root;

    public Document(@Nullable Collection collection, @NonNull String str, @Nullable C4Document c4Document, boolean z) {
        this.lock = new Object();
        this.collection = collection;
        this.f16264id = (String) Preconditions.assertNotNull(str, "id");
        this.mutable = z;
        setC4Document(c4Document, z);
    }

    @Nullable
    public static Document getDocumentOrNull(@NonNull Collection collection, @NonNull String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(collection, "collection");
        Preconditions.assertNotEmpty(str, "id");
        C4Document c4Document = collection.getC4Document(str);
        if (c4Document == null || c4Document.isDocDeleted()) {
            return null;
        }
        return new Document(collection, str, c4Document, false);
    }

    @NonNull
    public static Document getDocumentWithDeleted(@NonNull Collection collection, @NonNull String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(collection, "collection");
        Preconditions.assertNotEmpty(str, "id");
        C4Document c4Document = collection.getC4Document(str);
        if (c4Document != null) {
            return new Document(collection, str, c4Document, false);
        }
        throw new CouchbaseLiteException("Document not found: " + str, CBLError.Domain.CBLITE, 7);
    }

    @NonNull
    public static Document getDocumentWithRevisions(@NonNull Collection collection, @NonNull String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(collection, "collection");
        Preconditions.assertNotEmpty(str, "id");
        C4Document c4DocumentWithRevs = collection.getC4DocumentWithRevs(str);
        if (c4DocumentWithRevs != null) {
            return new Document(collection, str, c4DocumentWithRevs, false);
        }
        throw new CouchbaseLiteException("Document not found: " + str, CBLError.Domain.CBLITE, 7);
    }

    private void setC4Document(@Nullable C4Document c4Document, boolean z) {
        FLDict fLDict;
        synchronized (this.lock) {
            updateC4DocumentLocked(c4Document);
            if (c4Document != null && !c4Document.isRevDeleted()) {
                fLDict = c4Document.getSelectedBody2();
                setContentLocked(fLDict, z);
            }
            fLDict = null;
            setContentLocked(fLDict, z);
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private void setContentLocked(@Nullable FLDict fLDict, boolean z) {
        this.data = fLDict;
        if (fLDict == null) {
            this.internalDict = z ? new MutableDictionary() : new Dictionary();
            this.root = null;
            return;
        }
        Database database = getDatabase();
        if (database == null) {
            throw new CouchbaseLiteError("document has not been saved to a database");
        }
        MRoot mRoot = new MRoot(new DocContext(database, this.c4Document), fLDict.toFLValue(), z);
        this.internalDict = (Dictionary) Preconditions.assertNotNull(mRoot.asNative(), "root dictionary");
        this.root = mRoot;
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private void updateC4DocumentLocked(@Nullable C4Document c4Document) {
        if (this.c4Document == c4Document) {
            return;
        }
        this.c4Document = c4Document;
        if (c4Document != null) {
            this.revId = null;
        }
    }

    public int compareAge(@NonNull Document document) {
        return Long.compare(getTimestamp(), document.getTimestamp());
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean contains(@NonNull String str) {
        return getContent().contains(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public int count() {
        return getContent().count();
    }

    @NonNull
    public final FLSliceResult encode() throws LiteCoreException {
        Database database = getDatabase();
        if (database == null) {
            throw new CouchbaseLiteError("encode called with null database");
        }
        FLEncoder sharedFleeceEncoder = database.getSharedFleeceEncoder();
        try {
            sharedFleeceEncoder.setArg(Blob.ENCODER_ARG_DB, getDatabase());
            getContent().encodeTo(sharedFleeceEncoder);
            FLSliceResult finish2 = sharedFleeceEncoder.finish2();
            sharedFleeceEncoder.close();
            return finish2;
        } catch (Throwable th) {
            if (sharedFleeceEncoder != null) {
                try {
                    sharedFleeceEncoder.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Document)) {
            return false;
        }
        Document document = (Document) obj;
        if (Objects.equals(getDatabase(), document.getDatabase()) && this.f16264id.equals(document.f16264id)) {
            return getContent().equals(document.getContent());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean exists() {
        boolean z;
        synchronized (this.lock) {
            C4Document c4Document = this.c4Document;
            z = c4Document != null && c4Document.docExists();
        }
        return z;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Blob getBlob(@NonNull String str) {
        return getContent().getBlob(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean getBoolean(@NonNull String str) {
        return getContent().getBoolean(str);
    }

    @Nullable
    public final C4Document getC4doc() {
        C4Document c4Document;
        synchronized (this.lock) {
            c4Document = this.c4Document;
        }
        return c4Document;
    }

    @Nullable
    public Collection getCollection() {
        return this.collection;
    }

    @NonNull
    public final Dictionary getContent() {
        Dictionary dictionary;
        synchronized (this.lock) {
            dictionary = this.internalDict;
        }
        return dictionary;
    }

    @Nullable
    public final Database getDatabase() {
        Database database;
        synchronized (this.lock) {
            Collection collection = this.collection;
            database = collection == null ? null : collection.getDatabase();
        }
        return database;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Date getDate(@NonNull String str) {
        return getContent().getDate(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public double getDouble(@NonNull String str) {
        return getContent().getDouble(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public float getFloat(@NonNull String str) {
        return getContent().getFloat(str);
    }

    @NonNull
    public String getId() {
        return this.f16264id;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public int getInt(@NonNull String str) {
        return getContent().getInt(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public List<String> getKeys() {
        return getContent().getKeys();
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public long getLong(@NonNull String str) {
        return getContent().getLong(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Number getNumber(@NonNull String str) {
        return getContent().getNumber(str);
    }

    @Nullable
    @VisibleForTesting
    public String getRevisionHistory() throws CouchbaseLiteException {
        synchronized (this.lock) {
            if (this.c4Document == null) {
                return null;
            }
            Collection collection = this.collection;
            if (collection == null) {
                throw new CouchbaseLiteException("Document has no collection");
            }
            try {
                return this.c4Document.getRevisionHistory(collection.getOpenC4Collection(), 2147483647L, null);
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
    }

    @Nullable
    public String getRevisionID() {
        String selectedRevID;
        synchronized (this.lock) {
            C4Document c4Document = this.c4Document;
            selectedRevID = c4Document == null ? this.revId : c4Document.getSelectedRevID();
        }
        return selectedRevID;
    }

    public long getSequence() {
        long selectedSequence;
        synchronized (this.lock) {
            C4Document c4Document = this.c4Document;
            selectedSequence = c4Document == null ? 0L : c4Document.getSelectedSequence();
        }
        return selectedSequence;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public String getString(@NonNull String str) {
        return getContent().getString(str);
    }

    public long getTimestamp() {
        long timestamp;
        synchronized (this.lock) {
            C4Document c4Document = this.c4Document;
            timestamp = c4Document == null ? -1L : c4Document.getTimestamp();
        }
        return timestamp;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Object getValue(@NonNull String str) {
        return getContent().getValue(str);
    }

    public int hashCode() {
        String path;
        Database database = getDatabase();
        return (((((database == null || (path = database.getPath()) == null) ? 0 : path.hashCode()) * 31) + this.f16264id.hashCode()) * 31) + getContent().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isDeleted() {
        boolean z;
        synchronized (this.lock) {
            C4Document c4Document = this.c4Document;
            z = c4Document != null && c4Document.isRevDeleted();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isEmpty() {
        return getContent().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isMutable() {
        return this.mutable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isNewDocument() {
        return getRevisionID() == null;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<String> iterator() {
        return this.internalDict.iterator();
    }

    public final void replaceC4Document(@Nullable C4Document c4Document) {
        synchronized (this.lock) {
            updateC4DocumentLocked(c4Document);
        }
    }

    public final boolean selectConflictingRevision() throws LiteCoreException {
        synchronized (this.lock) {
            boolean z = false;
            if (this.c4Document == null) {
                return false;
            }
            while (!z) {
                try {
                    this.c4Document.selectNextLeafRevision(true, true);
                    z = this.c4Document.isRevConflicted();
                } catch (LiteCoreException e) {
                    if (e.code != 0) {
                        throw e;
                    }
                }
            }
            if (z) {
                setC4Document(this.c4Document, isMutable());
            }
            return z;
        }
    }

    public void setCollection(@Nullable Collection collection) {
        synchronized (this.lock) {
            this.collection = collection;
        }
    }

    public final void setContent(@NonNull Dictionary dictionary) {
        Preconditions.assertNotNull(dictionary, "content");
        synchronized (this.lock) {
            this.internalDict = dictionary;
        }
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public String toJSON() {
        try {
            synchronized (this.lock) {
                C4Document c4Document = this.c4Document;
                if (c4Document == null) {
                    return null;
                }
                return c4Document.bodyAsJSON(true);
            }
        } catch (LiteCoreException e) {
            com.couchbase.lite.internal.logging.Log.m9905i(LogDomain.DATABASE, "Failed encoding document as JSON", CouchbaseLiteException.convertException(e));
            return null;
        }
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public Map<String, Object> toMap() {
        return getContent().toMap();
    }

    @NonNull
    public MutableDocument toMutable() {
        synchronized (this.lock) {
            if (this.revId != null) {
                throw new UnsupportedOperationException("Editing replication filter documents not supported");
            }
        }
        return new MutableDocument(this);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("Document{");
        sb.append(ClassUtils.objId(this));
        sb.append(this.f16264id);
        sb.append('@');
        sb.append(getRevisionID());
        sb.append('(');
        sb.append(isMutable() ? PhoneNumberUtil.f36455s : '.');
        sb.append(isDeleted() ? '?' : '.');
        sb.append("):");
        boolean z = true;
        for (String str : getKeys()) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(str);
            sb.append("=>");
            sb.append(getValue(str));
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Array getArray(@NonNull String str) {
        return getContent().getArray(str);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Dictionary getDictionary(@NonNull String str) {
        return getContent().getDictionary(str);
    }

    public Document(@NonNull Collection collection, @NonNull String str, @Nullable String str2, @NonNull FLDict fLDict) {
        this(collection, str, (C4Document) null, false);
        this.revId = str2;
        setContentLocked(fLDict, false);
    }
}
