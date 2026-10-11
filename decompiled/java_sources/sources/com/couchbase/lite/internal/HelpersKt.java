package com.couchbase.lite.internal;

import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000¨\u0006\u0006"}, m61528d2 = {"getCollectionConfigs", "", "Lcom/couchbase/lite/Collection;", "Lcom/couchbase/lite/CollectionConfiguration;", AbstractLogger.CONFIG, "Lcom/couchbase/lite/internal/BaseReplicatorConfiguration;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class HelpersKt {
    @Nullable
    public static final Map<Collection, CollectionConfiguration> getCollectionConfigs(@Nullable BaseReplicatorConfiguration baseReplicatorConfiguration) {
        Map<Collection, CollectionConfiguration> map = baseReplicatorConfiguration != null ? baseReplicatorConfiguration.collectionConfigurations : null;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return map;
    }
}
