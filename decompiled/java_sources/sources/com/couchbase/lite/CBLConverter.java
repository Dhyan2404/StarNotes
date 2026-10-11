package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.ClassUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class CBLConverter {
    private CBLConverter() {
    }

    public static boolean asBoolean(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : ((obj instanceof Number) && ((Number) obj).intValue() == 0) ? false : true;
    }

    public static double asDouble(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        FLValue value = mValue.getValue();
        if (value != null) {
            return value.asDouble();
        }
        Number asNumber = asNumber(mValue.asNative(mCollection));
        if (asNumber != null) {
            return asNumber.doubleValue();
        }
        return 0.0d;
    }

    public static float asFloat(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        FLValue value = mValue.getValue();
        if (value != null) {
            return value.asFloat();
        }
        Number asNumber = asNumber(mValue.asNative(mCollection));
        if (asNumber != null) {
            return asNumber.floatValue();
        }
        return 0.0f;
    }

    public static int asInteger(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        FLValue value = mValue.getValue();
        if (value != null) {
            return (int) value.asInt();
        }
        Number asNumber = asNumber(mValue.asNative(mCollection));
        if (asNumber != null) {
            return asNumber.intValue();
        }
        return 0;
    }

    public static long asLong(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        FLValue value = mValue.getValue();
        if (value != null) {
            return value.asInt();
        }
        Number asNumber = asNumber(mValue.asNative(mCollection));
        if (asNumber != null) {
            return asNumber.longValue();
        }
        return 0L;
    }

    @Nullable
    public static Number asNumber(@Nullable Object obj) {
        return obj instanceof Boolean ? Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0) : (Number) ClassUtils.castOrNull(Number.class, obj);
    }
}
