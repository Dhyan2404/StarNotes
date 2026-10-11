package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.core.C2183C4;
import com.couchbase.lite.internal.core.CBLVersion;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public final class CouchbaseLiteException extends Exception {
    private final int code;

    @NonNull
    private final String domain;

    @Nullable
    private final Map<String, Object> info;

    public CouchbaseLiteException(@NonNull String str) {
        this(str, null, null, 0, null);
    }

    @NonNull
    public static CouchbaseLiteException convertException(@Nullable LiteCoreException liteCoreException) {
        if (liteCoreException == null) {
            return new CouchbaseLiteException("Unknown LiteCore exception");
        }
        return toCouchbaseLiteException(liteCoreException.domain, liteCoreException.code, null, liteCoreException);
    }

    @NonNull
    public static String getErrorMessage(@Nullable String str, @Nullable Exception exc) {
        if (str == null && exc != null) {
            str = exc.getMessage();
        }
        return com.couchbase.lite.internal.logging.Log.lookupStandardMessage(str);
    }

    public static boolean isConflict(@Nullable CouchbaseLiteException couchbaseLiteException) {
        return couchbaseLiteException != null && CBLError.Domain.CBLITE.equals(couchbaseLiteException.getDomain()) && 8 == couchbaseLiteException.getCode();
    }

    @NonNull
    public static CouchbaseLiteException toCouchbaseLiteException(int i, int i2, int i3) {
        if (i != 0 && i2 != 0) {
            return toCouchbaseLiteException(i, i2, C2183C4.getMessage(i, i2, i3), null);
        }
        return toCouchbaseLiteException(i, i2, null, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CouchbaseLiteException)) {
            return false;
        }
        CouchbaseLiteException couchbaseLiteException = (CouchbaseLiteException) obj;
        return this.code == couchbaseLiteException.code && this.domain.equals(couchbaseLiteException.domain);
    }

    public int getCode() {
        return this.code;
    }

    @NonNull
    public String getDomain() {
        return this.domain;
    }

    @Nullable
    public Map<String, Object> getInfo() {
        return this.info;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return super.getMessage() + " (" + this.domain + ", " + this.code + ")  [" + CBLVersion.getVersionInfo() + IteratorUtils.f104924b;
    }

    public int hashCode() {
        return (this.domain.hashCode() * 37) + this.code;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String toString() {
        return "CouchbaseLiteException{" + this.domain + ", " + this.code + ": " + super.getMessage();
    }

    @Deprecated
    public CouchbaseLiteException(@NonNull Exception exc) {
        this(null, exc, null, 0, null);
    }

    public CouchbaseLiteException(@NonNull String str, @NonNull Exception exc) {
        this(str, exc, null, 0, null);
    }

    @NonNull
    public static CouchbaseLiteException convertException(@Nullable LiteCoreException liteCoreException, @NonNull String str) {
        if (liteCoreException == null) {
            return new CouchbaseLiteException(str);
        }
        return toCouchbaseLiteException(liteCoreException.domain, liteCoreException.code, str, liteCoreException);
    }

    @NonNull
    public static CouchbaseLiteException toCouchbaseLiteException(int i, int i2, @Nullable String str, @Nullable Exception exc) {
        if (exc instanceof LiteCoreException) {
            com.couchbase.lite.internal.logging.Log.m9909w(LogDomain.DATABASE, "Lite Core exception", exc);
        }
        String str2 = CBLError.Domain.CBLITE;
        switch (i) {
            case 1:
                break;
            case 2:
                str2 = CBLError.Domain.POSIX;
                break;
            case 3:
                str2 = CBLError.Domain.SQLITE;
                break;
            case 4:
                str2 = CBLError.Domain.FLEECE;
                break;
            case 5:
                i2 += 5000;
                break;
            case 6:
                i2 += 10000;
                break;
            default:
                com.couchbase.lite.internal.logging.Log.m9911w(LogDomain.DATABASE, "Unable to map C4Error(%d,%d) to an CouchbaseLiteException", Integer.valueOf(i), Integer.valueOf(i2));
                break;
        }
        return new CouchbaseLiteException(str, exc, str2, i2, null);
    }

    @Deprecated
    public CouchbaseLiteException(@NonNull String str, int i) {
        this(null, null, str, i, null);
    }

    public CouchbaseLiteException(@NonNull String str, @NonNull String str2, int i) {
        this(str, null, str2, i, null);
    }

    @Deprecated
    public CouchbaseLiteException(@NonNull String str, int i, @NonNull Exception exc) {
        this(null, exc, str, i, null);
    }

    @Deprecated
    public CouchbaseLiteException(@NonNull String str, int i, @Nullable Map<String, Object> map) {
        this(null, null, str, i, map);
    }

    public CouchbaseLiteException(@NonNull String str, @NonNull Exception exc, @NonNull String str2, int i) {
        this(str, exc, str2, i, null);
    }

    public CouchbaseLiteException(@Nullable String str, @Nullable Exception exc, @Nullable String str2, int i, @Nullable Map<String, Object> map) {
        super(getErrorMessage(str, exc), exc);
        this.domain = str2 == null ? CBLError.Domain.CBLITE : str2;
        this.code = i <= 0 ? 10 : i;
        this.info = map;
    }
}
