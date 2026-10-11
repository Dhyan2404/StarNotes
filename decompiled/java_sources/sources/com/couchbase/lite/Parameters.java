package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Parameters {

    @NonNull
    private final Map<String, Object> map;
    private final boolean readonly;

    public Parameters() {
        this(null);
    }

    @NonNull
    public FLSliceResult encode() throws LiteCoreException {
        FLEncoder managedEncoder = FLEncoder.getManagedEncoder();
        try {
            managedEncoder.setArg(Blob.ENCODER_ARG_QUERY_PARAM, Boolean.TRUE);
            managedEncoder.write(this.map);
            FLSliceResult finish2 = managedEncoder.finish2();
            managedEncoder.close();
            return finish2;
        } catch (Throwable th) {
            if (managedEncoder != null) {
                try {
                    managedEncoder.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Nullable
    public Object getValue(@NonNull String str) {
        Preconditions.assertNotNull(str, "name");
        return this.map.get(str);
    }

    @NonNull
    public Parameters readonlyCopy() {
        return new Parameters(this, true);
    }

    @NonNull
    public Parameters setArray(@NonNull String str, @Nullable Array array) {
        return setValue(str, array);
    }

    @NonNull
    public Parameters setBlob(@NonNull String str, @Nullable Blob blob) {
        return setValue(str, blob);
    }

    @NonNull
    public Parameters setBoolean(@NonNull String str, boolean z) {
        return setValue(str, Boolean.valueOf(z));
    }

    @NonNull
    public Parameters setDate(@NonNull String str, @Nullable Date date) {
        return setValue(str, date);
    }

    @NonNull
    public Parameters setDictionary(@NonNull String str, @Nullable Dictionary dictionary) {
        return setValue(str, dictionary);
    }

    @NonNull
    public Parameters setDouble(@NonNull String str, double d) {
        return setValue(str, Double.valueOf(d));
    }

    @NonNull
    public Parameters setFloat(@NonNull String str, float f) {
        return setValue(str, Float.valueOf(f));
    }

    @NonNull
    public Parameters setInt(@NonNull String str, int i) {
        return setValue(str, Integer.valueOf(i));
    }

    @NonNull
    public Parameters setLong(@NonNull String str, long j) {
        return setValue(str, Long.valueOf(j));
    }

    @NonNull
    public Parameters setNumber(@NonNull String str, @Nullable Number number) {
        return setValue(str, number);
    }

    @NonNull
    public Parameters setString(@NonNull String str, @Nullable String str2) {
        return setValue(str, str2);
    }

    @NonNull
    public Parameters setValue(@NonNull String str, @Nullable Object obj) {
        Preconditions.assertNotNull(str, "name");
        if (this.readonly) {
            throw new CouchbaseLiteError("Parameters is readonly mode.");
        }
        this.map.put(str, Fleece.toCBLObject(obj));
        return this;
    }

    public Parameters(@Nullable Parameters parameters) {
        this(parameters, false);
    }

    private Parameters(@Nullable Parameters parameters, boolean z) {
        this.map = parameters == null ? new HashMap() : new HashMap(parameters.map);
        this.readonly = z;
    }
}
