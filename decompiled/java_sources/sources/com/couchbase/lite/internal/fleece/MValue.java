package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.MValueConverter;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public class MValue extends MValueConverter implements Encodable {
    static final MValue EMPTY;

    @Nullable
    private FLValue flValue;

    @Nullable
    private Object value;

    static {
        FLValue fLValue = null;
        EMPTY = new MValue(fLValue, fLValue) { // from class: com.couchbase.lite.internal.fleece.MValue.1
            @Override // com.couchbase.lite.internal.fleece.MValue
            public boolean isEmpty() {
                return true;
            }
        };
    }

    @Nullable
    public Object asNative(@Nullable MCollection mCollection) {
        Object obj = this.value;
        if (obj != null || this.flValue == null) {
            return obj;
        }
        MValueConverter.NativeValue<?> nativeValue = toNative(this, mCollection);
        if (nativeValue.cacheIt) {
            this.value = nativeValue.nVal;
        }
        return nativeValue.nVal;
    }

    @Override // com.couchbase.lite.internal.fleece.Encodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        if (isEmpty()) {
            throw new CouchbaseLiteError("MValue is empty.");
        }
        FLValue fLValue = this.flValue;
        if (fLValue != null) {
            fLEncoder.writeValue(fLValue);
            return;
        }
        Object obj = this.value;
        if (obj != null) {
            fLEncoder.writeValue(obj);
        } else {
            fLEncoder.writeNull();
        }
    }

    @Nullable
    public FLValue getValue() {
        return this.flValue;
    }

    public boolean isEmpty() {
        return false;
    }

    public boolean isMutated() {
        return this.flValue == null;
    }

    public void mutate() {
        Preconditions.assertNotNull(this.value, "Native object");
        this.flValue = null;
    }

    public MValue(@Nullable Object obj) {
        this(obj, null);
    }

    public MValue(@Nullable FLValue fLValue) {
        this(null, fLValue);
    }

    private MValue(@Nullable Object obj, @Nullable FLValue fLValue) {
        this.value = obj;
        this.flValue = fLValue;
    }
}
