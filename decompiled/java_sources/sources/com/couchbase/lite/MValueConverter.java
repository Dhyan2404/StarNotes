package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.couchbase.lite.internal.DbContext;
import com.couchbase.lite.internal.fleece.FLDict;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MContext;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public abstract class MValueConverter {

    /* loaded from: classes4.dex */
    public static final class NativeValue<T> {
        public final boolean cacheIt;

        @Nullable
        public final T nVal;

        public NativeValue(@Nullable T t, boolean z) {
            this.cacheIt = z;
            this.nVal = t;
        }
    }

    private boolean isOldAttachment(@NonNull FLDict fLDict) {
        boolean z = (fLDict.get("digest") == null || fLDict.get("length") == null || fLDict.get("stub") == null || fLDict.get("revpos") == null) ? false : true;
        if (z) {
            com.couchbase.lite.internal.logging.Log.m9904i(LogDomain.DATABASE, "Old style blob: " + fLDict.asDict());
        }
        return z;
    }

    @NonNull
    private NativeValue<?> mValueToDictionary(@NonNull MValue mValue, @NonNull MCollection mCollection) {
        MContext context = mCollection.getContext();
        if (!(context instanceof DbContext)) {
            throw new CouchbaseLiteError("Context is not DbContext: " + context);
        }
        DbContext dbContext = (DbContext) context;
        FLDict asFLDict = ((FLValue) Preconditions.assertNotNull(mValue.getValue(), "MValue")).asFLDict();
        FLValue fLValue = asFLDict.get(ObjectWriterAdapter.f12832t);
        String asString = fLValue == null ? null : fLValue.asString();
        if ("blob".equals(asString) || (asString == null && isOldAttachment(asFLDict))) {
            return new NativeValue<>(new Blob((BaseDatabase) Preconditions.assertNotNull(dbContext.getDatabase(), "database"), asFLDict.asDict()), true);
        }
        return new NativeValue<>(mCollection.hasMutableChildren() ? new MutableDictionary(mValue, mCollection) : new Dictionary(mValue, mCollection), true);
    }

    @NonNull
    public NativeValue<?> toNative(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        FLValue fLValue = (FLValue) Preconditions.assertNotNull(mValue.getValue(), "value");
        int type = fLValue.getType();
        if (type == 4) {
            return new NativeValue<>(new Blob("application/octet-stream", fLValue.asData()), false);
        }
        if (type != 5) {
            return type != 6 ? new NativeValue<>(fLValue.asObject(), false) : mValueToDictionary(mValue, (MCollection) Preconditions.assertNotNull(mCollection, "parent"));
        }
        return new NativeValue<>((mCollection == null || !mCollection.hasMutableChildren()) ? new Array(mValue, mCollection) : new MutableArray(mValue, mCollection), true);
    }
}
