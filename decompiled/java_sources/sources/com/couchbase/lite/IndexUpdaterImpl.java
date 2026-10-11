package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4IndexUpdater;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MRoot;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class IndexUpdaterImpl implements IndexUpdater, AutoCloseable {

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4IndexUpdater c4Updater;

    @NonNull
    private final IndexUpdaterContext context;

    @NonNull
    final Object lock = new Object();

    public IndexUpdaterImpl(@NonNull C4IndexUpdater c4IndexUpdater, @NonNull Database database) {
        this.c4Updater = c4IndexUpdater;
        this.context = new IndexUpdaterContext(database, this);
    }

    private void assertInBounds(int i) {
        if (i < 0 || i >= count()) {
            throw new ArrayIndexOutOfBoundsException("index " + i + " is not 0 <= index < " + count());
        }
    }

    @Nullable
    private FLValue getFLValueAt(int i) {
        FLValue valueAt;
        assertInBounds(i);
        synchronized (this.lock) {
            valueAt = getOpenC4Updater().getValueAt(i);
        }
        return valueAt;
    }

    @NonNull
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4IndexUpdater getOpenC4Updater() {
        C4IndexUpdater c4IndexUpdater = this.c4Updater;
        if (c4IndexUpdater != null) {
            return c4IndexUpdater;
        }
        throw new CouchbaseLiteError("Attempt to use an updater after it has been closed");
    }

    @Nullable
    private Object getValueAt(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        if (fLValueAt == null) {
            return null;
        }
        return new MRoot(this.context, fLValueAt, false).asNative();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finish$2(C4IndexUpdater c4IndexUpdater) throws LiteCoreException {
        c4IndexUpdater.finish();
        release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setVector$0(int i, float[] fArr, C4IndexUpdater c4IndexUpdater) throws LiteCoreException {
        c4IndexUpdater.setVector(i, fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$skipVector$1(int i, C4IndexUpdater c4IndexUpdater) throws RuntimeException {
        c4IndexUpdater.skipVector(i);
    }

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4IndexUpdater release() {
        C4IndexUpdater c4IndexUpdater = this.c4Updater;
        this.c4Updater = null;
        return c4IndexUpdater;
    }

    private <E extends Exception> void withLockedC4Updater(@NonNull InterfaceC2217Fn.ConsumerThrows<C4IndexUpdater, E> consumerThrows) throws Exception {
        synchronized (this.lock) {
            consumerThrows.accept(getOpenC4Updater());
        }
    }

    @Override // com.couchbase.lite.IndexUpdater, java.lang.AutoCloseable
    public void close() {
        C4IndexUpdater release;
        synchronized (this.lock) {
            release = release();
        }
        if (release != null) {
            release.close();
        }
    }

    @Override // com.couchbase.lite.ArrayInterface
    public int count() {
        return getOpenC4Updater().getCount();
    }

    @Override // com.couchbase.lite.IndexUpdater
    public void finish() throws CouchbaseLiteException {
        try {
            synchronized (this.context.getDbLock()) {
                withLockedC4Updater(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.y
                    @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                    public final void accept(Object obj) {
                        IndexUpdaterImpl.this.lambda$finish$2((C4IndexUpdater) obj);
                    }
                });
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public ArrayInterface getArray(int i) {
        Object valueAt = getValueAt(i);
        if (valueAt instanceof ArrayInterface) {
            return (ArrayInterface) valueAt;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Blob getBlob(int i) {
        Object valueAt = getValueAt(i);
        if (valueAt instanceof Blob) {
            return (Blob) valueAt;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public boolean getBoolean(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        return fLValueAt != null && fLValueAt.asBool();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Date getDate(int i) {
        return JSONUtils.toDate(getString(i));
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public DictionaryInterface getDictionary(int i) {
        Object valueAt = getValueAt(i);
        if (valueAt instanceof DictionaryInterface) {
            return (DictionaryInterface) valueAt;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public double getDouble(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        if (fLValueAt == null) {
            return 0.0d;
        }
        return fLValueAt.asDouble();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public float getFloat(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        if (fLValueAt == null) {
            return 0.0f;
        }
        return fLValueAt.asFloat();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public int getInt(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        if (fLValueAt == null) {
            return 0;
        }
        return (int) fLValueAt.asInt();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public long getLong(int i) {
        FLValue fLValueAt = getFLValueAt(i);
        if (fLValueAt == null) {
            return 0L;
        }
        return fLValueAt.asInt();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Number getNumber(int i) {
        return CBLConverter.asNumber(getValueAt(i));
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public String getString(int i) {
        Object valueAt = getValueAt(i);
        if (valueAt instanceof String) {
            return (String) valueAt;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Object getValue(int i) {
        return getValueAt(i);
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this.lock) {
            z = this.c4Updater == null;
        }
        return z;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Object> iterator() {
        return toList().iterator();
    }

    @Override // com.couchbase.lite.IndexUpdater
    public void setVector(@Nullable List<Float> list, final int i) throws CouchbaseLiteException {
        final float[] fArr;
        assertInBounds(i);
        if (list == null) {
            fArr = null;
        } else {
            float[] fArr2 = new float[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                fArr2[i2] = list.get(i2).floatValue();
            }
            fArr = fArr2;
        }
        try {
            withLockedC4Updater(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.x
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    IndexUpdaterImpl.lambda$setVector$0(i, fArr, (C4IndexUpdater) obj);
                }
            });
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @Override // com.couchbase.lite.IndexUpdater
    public void skipVector(final int i) {
        assertInBounds(i);
        withLockedC4Updater(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.w
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                IndexUpdaterImpl.lambda$skipVector$1(i, (C4IndexUpdater) obj);
            }
        });
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public String toJSON() throws CouchbaseLiteException {
        int count = count();
        try {
            FLEncoder.JSONEncoder jSONEncoder = FLEncoder.getJSONEncoder();
            try {
                jSONEncoder.beginArray(count);
                for (int i = 0; i < count; i++) {
                    jSONEncoder.writeValue(getFLValueAt(i));
                }
                jSONEncoder.endArray();
                String finishJSON = jSONEncoder.finishJSON();
                jSONEncoder.close();
                return finishJSON;
            } finally {
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Cannot encode updater: " + this);
        }
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public List<Object> toList() {
        int count = count();
        ArrayList arrayList = new ArrayList(count);
        for (int i = 0; i < count; i++) {
            arrayList.add(getValueAt(i));
        }
        return arrayList;
    }
}
