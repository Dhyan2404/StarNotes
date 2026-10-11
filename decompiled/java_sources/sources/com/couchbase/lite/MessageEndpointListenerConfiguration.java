package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes4.dex */
public class MessageEndpointListenerConfiguration {

    @NonNull
    private final Set<Collection> collections;

    /* renamed from: db */
    @NonNull
    private final Database f16268db;

    @NonNull
    private final ProtocolType protocolType;

    @Deprecated
    public MessageEndpointListenerConfiguration(@NonNull Database database, @NonNull ProtocolType protocolType) {
        this((Database) Preconditions.assertNotNull(database, "database"), database.getDefaultCollectionAsSet(), protocolType);
    }

    @NonNull
    public Set<Collection> getCollections() {
        return new HashSet(this.collections);
    }

    @NonNull
    @Deprecated
    public Database getDatabase() {
        return getDb();
    }

    @NonNull
    public Database getDb() {
        return this.f16268db;
    }

    @NonNull
    public MessageFraming getMessageFraming() {
        return ProtocolType.getFramingForProtocol(this.protocolType);
    }

    @NonNull
    public ProtocolType getProtocolType() {
        return this.protocolType;
    }

    public MessageEndpointListenerConfiguration(@NonNull Set<Collection> set, @NonNull ProtocolType protocolType) {
        this((Database) Preconditions.assertNotNull(AbstractDatabase.getDbForCollections(set), "collections"), set, protocolType);
    }

    private MessageEndpointListenerConfiguration(@NonNull Database database, @NonNull Set<Collection> set, @NonNull ProtocolType protocolType) {
        this.f16268db = database;
        this.collections = set;
        this.protocolType = (ProtocolType) Preconditions.assertNotNull(protocolType, "protocolType");
    }
}
