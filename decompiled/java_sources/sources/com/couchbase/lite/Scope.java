package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public class Scope {
    public static final String DEFAULT_NAME = "_default";

    /* renamed from: db */
    @NonNull
    private final Database f16273db;

    @NonNull
    private final String name;

    public Scope(@NonNull Database database) {
        this("_default", database);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        Scope scope = (Scope) obj;
        return this.f16273db == scope.f16273db && this.name.equals(scope.name);
    }

    @Nullable
    public Collection getCollection(@NonNull String str) throws CouchbaseLiteException {
        return this.f16273db.getCollection(str, this.name);
    }

    @NonNull
    public Set<Collection> getCollections() throws CouchbaseLiteException {
        return this.f16273db.getCollections(this.name);
    }

    @NonNull
    public Database getDatabase() {
        return this.f16273db;
    }

    @NonNull
    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.f16273db);
    }

    @NonNull
    public String toString() {
        return this.f16273db.getName() + "." + this.name;
    }

    public Scope(@NonNull String str, @NonNull Database database) {
        this.name = str;
        this.f16273db = database;
    }
}
