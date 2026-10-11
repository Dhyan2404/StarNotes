package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
interface OrderByRouter {
    @NonNull
    OrderBy orderBy(@NonNull Ordering... orderingArr);
}
