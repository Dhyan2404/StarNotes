package com.onyx.android.sdk.data.utils;

import android.content.Context;
import com.alibaba.fastjson2.JSONObject;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J5\u0010\u0006\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\t2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004¢\u0006\u0002\u0010\fJ5\u0010\r\u001a\u0004\u0018\u0001H\u0007\"\u0004\b\u0000\u0010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00070\t2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000b\"\u00020\u0004¢\u0006\u0002\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/ConfigLoader;", "", "()V", "getConfigJSONByName", "", "name", "load", "T", "cls", "Ljava/lang/Class;", "rawNameList", "", "(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;", "loadByConfigJSONList", "configJsonList", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nConfigLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigLoader.kt\ncom/onyx/android/sdk/data/utils/ConfigLoader\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,41:1\n11383#2,9:42\n13309#2:51\n13310#2:53\n11392#2:54\n11065#2:60\n11400#2,3:61\n1#3:52\n766#4:55\n857#4,2:56\n2661#4,7:64\n37#5,2:58\n*S KotlinDebug\n*F\n+ 1 ConfigLoader.kt\ncom/onyx/android/sdk/data/utils/ConfigLoader\n*L\n22#1:42,9\n22#1:51\n22#1:53\n22#1:54\n31#1:60\n31#1:61,3\n22#1:52\n23#1:55\n23#1:56,2\n33#1:64,7\n24#1:58,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ConfigLoader {

    @NotNull
    public static final ConfigLoader INSTANCE = new ConfigLoader();

    private ConfigLoader() {
    }

    private final String getConfigJSONByName(String name) {
        ResManager resManager = ResManager.INSTANCE;
        Context appContext = resManager.getAppContext();
        RawResourceUtil rawResourceUtil = RawResourceUtil.INSTANCE;
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return rawResourceUtil.contentOfRawResource(appContext, resManager.getRawIdentifier(lowerCase));
    }

    @Nullable
    public final <T> T load(@NotNull Class<T> cls, @NotNull String... rawNameList) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(rawNameList, "rawNameList");
        ArrayList arrayList = new ArrayList();
        for (String str : rawNameList) {
            String configJSONByName = INSTANCE.getConfigJSONByName(str);
            if (configJSONByName != null) {
                arrayList.add(configJSONByName);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (T t : arrayList) {
            if (((String) t).length() > 0) {
                arrayList2.add(t);
            }
        }
        String[] strArr = (String[]) arrayList2.toArray(new String[0]);
        return (T) loadByConfigJSONList(cls, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Nullable
    public final <T> T loadByConfigJSONList(@NotNull Class<T> cls, @NotNull String... configJsonList) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(configJsonList, "configJsonList");
        if (configJsonList.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(configJsonList.length);
        for (String str : configJsonList) {
            arrayList.add(JSONUtils.INSTANCE.parseObject(str));
        }
        Iterator<T> it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        T next = it2.next();
        while (it2.hasNext()) {
            JSONObject jSONObject = (JSONObject) it2.next();
            next = (T) next;
            for (String str2 : jSONObject.keySet()) {
                next.put(str2, jSONObject.get(str2));
            }
        }
        return (T) JSONUtils.INSTANCE.parseObject(next, (Class) cls);
    }
}
