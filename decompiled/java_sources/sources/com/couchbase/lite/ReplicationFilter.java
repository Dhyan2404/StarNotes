package com.couchbase.lite;

import androidx.annotation.NonNull;
import java.util.EnumSet;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ReplicationFilter {
    boolean filtered(@NonNull Document document, @NonNull EnumSet<DocumentFlag> enumSet);
}
