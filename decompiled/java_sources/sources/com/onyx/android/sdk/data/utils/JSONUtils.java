package com.onyx.android.sdk.data.utils;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\u000e\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ*\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0010\"\u0004\b\u0000\u0010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007J!\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0010\"\u0006\b\u0000\u0010\u0004\u0018\u00012\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0086\bJ\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\fJ)\u0010\u0014\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0015\u001a\u00020\u00162\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007¢\u0006\u0002\u0010\u0017J\u0010\u0010\u0014\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\fJ\"\u0010\u0014\u001a\u0004\u0018\u0001H\u0004\"\u0006\b\u0000\u0010\u0004\u0018\u00012\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0086\b¢\u0006\u0002\u0010\u0019J-\u0010\u0014\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010\u001cJ-\u0010\u0014\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\f2\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u001dJ;\u0010\u0014\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u00042\u0018\u0010\u001e\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u001f2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0007¢\u0006\u0002\u0010 J\u0012\u0010!\u001a\u0004\u0018\u00010\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001J\u0012\u0010\"\u001a\u0004\u0018\u00010\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001J\u0012\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001J/\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00012\u0016\u0010$\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010&0%\"\u0004\u0018\u00010&¢\u0006\u0002\u0010'J\u0014\u0010(\u001a\u00020\f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0\u0010J\u0010\u0010*\u001a\u00020\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001J\f\u0010+\u001a\u00020\f*\u0004\u0018\u00010\u0001J\f\u0010,\u001a\u00020\f*\u0004\u0018\u00010\u0001J\u001a\u0010-\u001a\u00020.*\u00020\u00162\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020.J\u001a\u00101\u001a\u00020\f*\u00020\u00162\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\f¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/JSONUtils;", "", "()V", "clone", "T", "item", "cls", "Ljava/lang/Class;", "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;", "isArrayJSONString", "", "jsonStr", "", "isJSONString", "isObjectJSONString", "parseArray", "", "json", "parseList", "parseListString", "parseObject", "jsonObject", "Lcom/alibaba/fastjson2/JSONObject;", "(Lcom/alibaba/fastjson2/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;", "text", Constants.GET_PARAMETER_SIG, "typeReference", "Lcom/alibaba/fastjson2/TypeReference;", "(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;", "data", "", "(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;", "toJSONObject", "toJSONString", "toJson", GeoConstant.KEY_Features, "", "Lcom/alibaba/fastjson2/JSONWriter$Feature;", "(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;", "toJsonArrayString", "list", "toPrettyJson", "asJson", "asPrettyJson", "getInteger", "", "key", "defaultValue", "getString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nJSONUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1864#2,3:183\n*S KotlinDebug\n*F\n+ 1 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n78#1:183,3\n*E\n"})
/* loaded from: classes7.dex */
public final class JSONUtils {

    @NotNull
    public static final JSONUtils INSTANCE = new JSONUtils();

    static {
        JSON.config(JSONReader.Feature.AllowUnQuotedFieldNames, true);
    }

    private JSONUtils() {
    }

    @NotNull
    public final String asJson(@Nullable Object obj) {
        String json = toJson(obj);
        return json == null ? "" : json;
    }

    @NotNull
    public final String asPrettyJson(@Nullable Object obj) {
        return toPrettyJson(obj);
    }

    @Nullable
    public final <T> T clone(@Nullable Object item, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        return (T) parseObject(toJson(item), cls);
    }

    public final int getInteger(@NotNull JSONObject jSONObject, @NotNull String key, int i) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!jSONObject.containsKey(key)) {
            return i;
        }
        Integer integer = jSONObject.getInteger(key);
        Intrinsics.checkNotNullExpressionValue(integer, "getInteger(...)");
        return integer.intValue();
    }

    @NotNull
    public final String getString(@NotNull JSONObject jSONObject, @NotNull String key, @NotNull String defaultValue) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (!jSONObject.containsKey(key)) {
            return defaultValue;
        }
        String string = jSONObject.getString(key);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public final boolean isArrayJSONString(@Nullable String jsonStr) {
        if (StringUtils.isEmpty(jsonStr)) {
            return false;
        }
        Intrinsics.checkNotNull(jsonStr);
        return StringsKt.startsWith$default(jsonStr, IteratorUtils.f104923a, false, 2, (Object) null) && StringsKt.endsWith$default(jsonStr, IteratorUtils.f104924b, false, 2, (Object) null);
    }

    public final boolean isJSONString(@Nullable String jsonStr) {
        if (StringUtils.isEmpty(jsonStr)) {
            return false;
        }
        return isObjectJSONString(jsonStr) || isArrayJSONString(jsonStr);
    }

    public final boolean isObjectJSONString(@Nullable String jsonStr) {
        if (StringUtils.isEmpty(jsonStr)) {
            return false;
        }
        Intrinsics.checkNotNull(jsonStr);
        return StringsKt.startsWith$default(jsonStr, "{", false, 2, (Object) null) && StringsKt.endsWith$default(jsonStr, "}", false, 2, (Object) null);
    }

    @NotNull
    public final <T> List<T> parseArray(@Nullable String json, @NotNull Class<T> cls) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        if (json == null || json.length() == 0) {
            return new ArrayList();
        }
        try {
            List<T> parseArray = JSON.parseArray(json, (Class) cls);
            Intrinsics.checkNotNull(parseArray);
            return parseArray;
        } catch (Throwable th) {
            th.printStackTrace();
            return new ArrayList();
        }
    }

    public final /* synthetic */ <T> List<T> parseList(String json) {
        Intrinsics.needClassReification();
        List<T> list = (List) parseObject(json, new TypeReference<List<? extends T>>() { // from class: com.onyx.android.sdk.data.utils.JSONUtils$parseList$typeReference$1
        });
        return list == null ? CollectionsKt.emptyList() : list;
    }

    @Nullable
    public final List<String> parseListString(@Nullable String json) {
        return (List) parseObject(json, new TypeReference<List<? extends String>>() { // from class: com.onyx.android.sdk.data.utils.JSONUtils$parseListString$1
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

    @NotNull
    public final String toJsonArrayString(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        StringBuilder sb = new StringBuilder(IteratorUtils.f104923a);
        int size = list.size();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            sb.append((String) obj);
            if (i != size - 1) {
                sb.append(",");
            }
            i = i2;
        }
        sb.append(IteratorUtils.f104924b);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    @NotNull
    public final String toPrettyJson(@Nullable Object data) {
        try {
            String jSONString = JSON.toJSONString(data, JSONWriter.Feature.PrettyFormat);
            Intrinsics.checkNotNullExpressionValue(jSONString, "toJSONString(...)");
            return jSONString;
        } catch (Throwable unused) {
            return "";
        }
    }

    @Nullable
    public final String toJson(@Nullable Object data, @NotNull JSONWriter.Feature... features) {
        Intrinsics.checkNotNullParameter(features, "features");
        try {
            return JSON.toJSONString(data, (JSONWriter.Feature[]) Arrays.copyOf(features, features.length));
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return null;
        }
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

    /* renamed from: parseObject, reason: collision with other method in class */
    public final /* synthetic */ <T> T m72268parseObject(String json) {
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) parseObject(json, Object.class);
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
