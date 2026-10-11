package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.JSONUtils;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class Fleece {
    private static final String SUPPORTED_TYPES = "MutableDictionary, Dictionary, Map, MutableArray, Array, List, Blob, Date, String, Number, Boolean and null";

    private Fleece() {
    }

    @Nullable
    public static Object toCBLObject(@Nullable Object obj) {
        if (obj == null || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof String) || (obj instanceof Blob) || (obj instanceof MutableArray) || (obj instanceof MutableDictionary)) {
            return obj;
        }
        if (obj instanceof Map) {
            return new MutableDictionary((Map<String, Object>) obj);
        }
        if (obj instanceof Dictionary) {
            return ((Dictionary) obj).toMutable();
        }
        if (obj instanceof List) {
            return new MutableArray((List<Object>) obj);
        }
        if (obj instanceof Array) {
            return ((Array) obj).toMutable();
        }
        if (obj instanceof Date) {
            return JSONUtils.toJSONString((Date) obj);
        }
        throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("InvalidCouchbaseObjType", obj.getClass().getSimpleName(), SUPPORTED_TYPES));
    }

    @Nullable
    public static Object toObject(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof Dictionary ? ((Dictionary) obj).toMap() : obj instanceof Array ? ((Array) obj).toList() : obj;
    }

    public static boolean willMutate(Object obj, @NonNull MValue mValue, MCollection mCollection) {
        FLValue value = mValue.getValue();
        int type = value != null ? value.getType() : -1;
        return type == -1 || type == 6 || (obj instanceof Dictionary) || type == 5 || (obj instanceof Array) || !Objects.equals(obj, mValue.asNative(mCollection));
    }
}
