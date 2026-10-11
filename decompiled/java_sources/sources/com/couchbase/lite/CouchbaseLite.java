package com.couchbase.lite;

import android.content.Context;
import androidx.annotation.NonNull;
import com.couchbase.lite.internal.CBLVariantExtensions;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import java.io.File;

/* loaded from: classes4.dex */
public final class CouchbaseLite {
    private CouchbaseLite() {
    }

    public static void enableVectorSearch() throws CouchbaseLiteException {
        CBLVariantExtensions.enableVectorSearch();
    }

    public static void init(@NonNull Context context) {
        init(context, false);
    }

    public static void init(@NonNull Context context, boolean z) {
        init(context, z, context.getFilesDir(), new File(context.getFilesDir(), CouchbaseLiteInternal.SCRATCH_DIR_NAME));
    }

    public static void init(@NonNull Context context, boolean z, @NonNull File file, @NonNull File file2) {
        CouchbaseLiteInternal.init(context, z, file, file2);
    }
}
