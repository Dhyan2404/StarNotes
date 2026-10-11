package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class CollectionConfiguration {

    @Nullable
    private List<String> channels;

    @Nullable
    private ConflictResolver conflictResolver;

    @Nullable
    private List<String> documentIDs;

    @Nullable
    private ReplicationFilter pullFilter;

    @Nullable
    private ReplicationFilter pushFilter;

    public CollectionConfiguration() {
    }

    @Nullable
    public final List<String> getChannels() {
        if (this.channels == null) {
            return null;
        }
        return new ArrayList(this.channels);
    }

    @Nullable
    public ConflictResolver getConflictResolver() {
        return this.conflictResolver;
    }

    @Nullable
    public final List<String> getDocumentIDs() {
        if (this.documentIDs == null) {
            return null;
        }
        return new ArrayList(this.documentIDs);
    }

    @Nullable
    public ReplicationFilter getPullFilter() {
        return this.pullFilter;
    }

    @Nullable
    public ReplicationFilter getPushFilter() {
        return this.pushFilter;
    }

    @NonNull
    public final CollectionConfiguration setChannels(@Nullable List<String> list) {
        this.channels = list == null ? null : new ArrayList(list);
        return this;
    }

    @NonNull
    public final CollectionConfiguration setConflictResolver(@Nullable ConflictResolver conflictResolver) {
        this.conflictResolver = conflictResolver;
        return this;
    }

    @NonNull
    public final CollectionConfiguration setDocumentIDs(@Nullable List<String> list) {
        this.documentIDs = list == null ? null : new ArrayList(list);
        return this;
    }

    @NonNull
    public final CollectionConfiguration setPullFilter(@Nullable ReplicationFilter replicationFilter) {
        this.pullFilter = replicationFilter;
        return this;
    }

    @NonNull
    public final CollectionConfiguration setPushFilter(@Nullable ReplicationFilter replicationFilter) {
        this.pushFilter = replicationFilter;
        return this;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CollectionConfiguration{(");
        sb.append(this.pullFilter != null ? "<" : "");
        sb.append(this.conflictResolver != null ? "!" : "");
        sb.append(this.pushFilter != null ? ">" : "");
        sb.append("): ");
        sb.append(this.channels);
        sb.append(", ");
        sb.append(this.documentIDs);
        sb.append("}");
        return sb.toString();
    }

    public CollectionConfiguration(@Nullable List<String> list, @Nullable List<String> list2, @Nullable ReplicationFilter replicationFilter, @Nullable ReplicationFilter replicationFilter2, @Nullable ConflictResolver conflictResolver) {
        this.channels = list;
        this.documentIDs = list2;
        this.pullFilter = replicationFilter;
        this.pushFilter = replicationFilter2;
        this.conflictResolver = conflictResolver;
    }

    public CollectionConfiguration(@NonNull CollectionConfiguration collectionConfiguration) {
        this(collectionConfiguration.channels, collectionConfiguration.documentIDs, collectionConfiguration.pullFilter, collectionConfiguration.pushFilter, collectionConfiguration.conflictResolver);
    }
}
