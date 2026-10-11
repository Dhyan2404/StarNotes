package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class AbstractIndexBuilder {
    @NonNull
    public static FullTextIndex fullTextIndex(@NonNull FullTextIndexItem... fullTextIndexItemArr) {
        Preconditions.assertNotZero(fullTextIndexItemArr.length, FirebaseAnalytics.Param.ITEMS);
        return new FullTextIndex(fullTextIndexItemArr);
    }

    @NonNull
    public static ValueIndex valueIndex(@NonNull ValueIndexItem... valueIndexItemArr) {
        Preconditions.assertNotZero(valueIndexItemArr.length, FirebaseAnalytics.Param.ITEMS);
        return new ValueIndex(valueIndexItemArr);
    }
}
