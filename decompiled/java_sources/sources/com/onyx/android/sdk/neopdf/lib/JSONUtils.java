package com.onyx.android.sdk.neopdf.lib;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.genericshape.GeoConstant;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006J)\u0010\f\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\r0\u0011¢\u0006\u0002\u0010\u0012J\u0010\u0010\f\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006J-\u0010\f\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\r\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016J-\u0010\f\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u0002H\r\u0018\u00010\u0011¢\u0006\u0002\u0010\u0017J;\u0010\f\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\u0018\u0010\u0018\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00192\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\r0\u0011¢\u0006\u0002\u0010\u001aJE\u0010\u001b\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u0002H\r\u0018\u00010\u00112\u0016\u0010\u001c\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u001e0\u001d\"\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010\u001fJ\u0012\u0010 \u001a\u0004\u0018\u00010\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001J\u0012\u0010!\u001a\u0004\u0018\u00010\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00062\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/lib/JSONUtils;", "", "()V", "isArrayJSONString", "", "jsonStr", "", "isJSONString", "isObjectJSONString", "parseListString", "", "json", "parseObject", "T", "jsonObject", "Lcom/alibaba/fastjson2/JSONObject;", "cls", "Ljava/lang/Class;", "(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;", "text", "typeReference", "Lcom/alibaba/fastjson2/TypeReference;", "(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "data", "", "(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;", "parseObjectQuietly", GeoConstant.KEY_Features, "", "Lcom/alibaba/fastjson2/JSONReader$Feature;", "(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;", "toJSONObject", "toJSONString", "toJson", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class JSONUtils {

    @NotNull
    public static final JSONUtils INSTANCE = new JSONUtils();

    public final boolean isArrayJSONString(@Nullable String jsonStr) {
        boolean startsWith$default;
        boolean endsWith$default;
        if (!(jsonStr == null || jsonStr.length() == 0)) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(jsonStr, IteratorUtils.f104923a, false, 2, null);
            if (startsWith$default) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(jsonStr, IteratorUtils.f104924b, false, 2, null);
                if (endsWith$default) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isJSONString(@Nullable String jsonStr) {
        if (StringUtils.isEmpty(jsonStr)) {
            return false;
        }
        return isObjectJSONString(jsonStr) || isArrayJSONString(jsonStr);
    }

    public final boolean isObjectJSONString(@Nullable String jsonStr) {
        boolean startsWith$default;
        boolean endsWith$default;
        if (!(jsonStr == null || jsonStr.length() == 0)) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(jsonStr, "{", false, 2, null);
            if (startsWith$default) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(jsonStr, "}", false, 2, null);
                if (endsWith$default) {
                    return true;
                }
            }
        }
        return false;
    }

    @Nullable
    public final List<String> parseListString(@Nullable String json) {
        return (List) parseObject(json, new TypeReference<List<? extends String>>() { // from class: com.onyx.android.sdk.neopdf.lib.JSONUtils$parseListString$1
        });
    }

    @Nullable
    public final <T> T parseObject(@NotNull JSONObject jsonObject, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(cls, "cls");
        try {
            return (T) jsonObject.toJavaObject((Class) cls, new JSONReader.Feature[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final <T> T parseObjectQuietly(@Nullable String json, @Nullable Class<T> cls, @NotNull JSONReader.Feature... features) {
        Intrinsics.checkNotNullParameter(features, "features");
        try {
            return (T) JSON.parseObject(json, (Class) cls, (JSONReader.Feature[]) Arrays.copyOf(features, features.length));
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final JSONObject toJSONObject(@Nullable Object data) {
        try {
            return (JSONObject) JSON.toJSON(data);
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return null;
        }
    }

    @Nullable
    public final String toJSONString(@Nullable Object data) {
        try {
            return JSON.toJSONString(data);
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return null;
        }
    }

    @Nullable
    public final String toJson(@Nullable Object data) {
        return toJSONString(data);
    }

    @Nullable
    public final <T> T parseObject(@Nullable Map<String, ? extends Object> data, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        return (T) parseObject(new JSONObject(data), (Class) cls);
    }

    @NotNull
    public final JSONObject parseObject(@Nullable String text) {
        JSONObject parseObject = JSON.parseObject(text);
        return parseObject == null ? new JSONObject() : parseObject;
    }

    @Nullable
    public final <T> T parseObject(@Nullable String json, @Nullable Class<T> cls) {
        try {
            return (T) JSON.parseObject(json, (Class) cls);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Nullable
    public final <T> T parseObject(@Nullable String json, @Nullable TypeReference<T> typeReference) {
        if (StringUtils.isEmpty(json)) {
            return null;
        }
        try {
            return (T) JSON.parseObject(json, typeReference, new JSONReader.Feature[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
