package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class Collation {
    private boolean ignoreAccents;
    private boolean ignoreCase;
    private final boolean isUnicode;

    @Nullable
    private String locale;

    /* loaded from: classes4.dex */
    public static final class ASCII extends Collation {
        public ASCII() {
            super(false, null);
        }

        @Override // com.couchbase.lite.Collation
        @NonNull
        public ASCII setIgnoreCase(boolean z) {
            return (ASCII) super.setIgnoreCase(z);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Unicode extends Collation {
        public Unicode() {
            super(true, System.getProperty("user.language"));
        }

        @Override // com.couchbase.lite.Collation
        @NonNull
        public Unicode setIgnoreAccents(boolean z) {
            return (Unicode) super.setIgnoreAccents(z);
        }

        @Override // com.couchbase.lite.Collation
        @NonNull
        public Unicode setIgnoreCase(boolean z) {
            return (Unicode) super.setIgnoreCase(z);
        }

        @Override // com.couchbase.lite.Collation
        @NonNull
        public Unicode setLocale(@Nullable String str) {
            return (Unicode) super.setLocale(str);
        }
    }

    public Collation(boolean z, @Nullable String str) {
        this.isUnicode = z;
        this.locale = str;
    }

    @NonNull
    public static ASCII ascii() {
        return new ASCII();
    }

    @NonNull
    public static Unicode unicode() {
        return new Unicode();
    }

    @NonNull
    public Object asJSON() {
        HashMap hashMap = new HashMap();
        hashMap.put("UNICODE", Boolean.valueOf(this.isUnicode));
        hashMap.put("LOCALE", this.locale);
        hashMap.put("CASE", Boolean.valueOf(!this.ignoreCase));
        hashMap.put("DIAC", Boolean.valueOf(!this.ignoreAccents));
        return hashMap;
    }

    @NonNull
    public Collation setIgnoreAccents(boolean z) {
        this.ignoreAccents = z;
        return this;
    }

    @NonNull
    public Collation setIgnoreCase(boolean z) {
        this.ignoreCase = z;
        return this;
    }

    @NonNull
    public Collation setLocale(@Nullable String str) {
        this.locale = str;
        return this;
    }

    @NonNull
    public String toString() {
        return "Collation{" + this.locale + ", " + this.isUnicode + ", " + this.ignoreAccents + ", " + this.ignoreCase + '}';
    }
}
