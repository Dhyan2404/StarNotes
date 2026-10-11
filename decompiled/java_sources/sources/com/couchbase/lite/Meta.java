package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class Meta {

    /* renamed from: id */
    @NonNull
    public static final MetaExpression f16269id = new MetaExpression("_id");

    @NonNull
    public static final MetaExpression revisionID = new MetaExpression("_revisionID");

    @NonNull
    public static final MetaExpression sequence = new MetaExpression("_sequence");

    @NonNull
    public static final MetaExpression deleted = new MetaExpression("_deleted");

    @NonNull
    public static final MetaExpression expiration = new MetaExpression("_expiration");

    private Meta() {
    }
}
