package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class BaseReplicatorConfiguration {

    @NonNull
    protected final Map<Collection, CollectionConfiguration> collectionConfigurations;

    @NonNull
    private final Map<Collection, CollectionConfiguration> internalCollectionConfigurations;

    public BaseReplicatorConfiguration(@Nullable Map<Collection, CollectionConfiguration> map) {
        map = map == null ? new HashMap<>() : map;
        this.internalCollectionConfigurations = map;
        this.collectionConfigurations = Collections.unmodifiableMap(map);
    }

    public void addCollectionInternal(@Nullable Collection collection, @Nullable CollectionConfiguration collectionConfiguration) {
        if (collection != null) {
            this.internalCollectionConfigurations.put(collection, collectionConfiguration);
        }
    }

    @NonNull
    public Map<Collection, CollectionConfiguration> getCollectionConfigurations() {
        return this.collectionConfigurations;
    }

    public void removeCollectionInternal(@Nullable Collection collection) {
        if (collection != null) {
            this.internalCollectionConfigurations.remove(collection);
        }
    }
}
