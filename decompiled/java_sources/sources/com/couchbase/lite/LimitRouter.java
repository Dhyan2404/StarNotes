package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
interface LimitRouter {
    @NonNull
    Limit limit(@NonNull Expression expression);

    @NonNull
    Limit limit(@NonNull Expression expression, @NonNull Expression expression2);
}
