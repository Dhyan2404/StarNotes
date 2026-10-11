package com.onyx.android.sdk.data.utils;

import android.content.Context;
import com.alibaba.fastjson2.TypeReference;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0010JF\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u001b\"\n\b\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u001e\b\n\u0010\u001d\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u001c0\u001fj\b\u0012\u0004\u0012\u0002H\u001c` 0\u001eH\u0086\bø\u0001\u0000J%\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u001c0\u001fj\b\u0012\u0004\u0012\u0002H\u001c` 0\"\"\u0004\b\u0000\u0010\u001cH\u0086\bJ\u001e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0010J6\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u001c0&\"\n\b\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u000e\b\b\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u001eH\u0086\bø\u0001\u0000J\u0016\u0010'\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010(\u001a\u00020\nJ\u0016\u0010)\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u000eJ\u0016\u0010*\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u0010J\u0016\u0010+\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u0012J\u0016\u0010,\u001a\u00020\u00152\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010(\u001a\u00020\bJ\u0016\u0010-\u001a\u00020.2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u0015\u0010/\u001a\b\u0012\u0004\u0012\u0002H\u001c0\"\"\u0004\b\u0000\u0010\u001cH\u0086\bJ3\u00100\u001a\u0002H\u001c\"\u0004\b\u0000\u0010\u001c*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u001c022\u0006\u00103\u001a\u0002H\u001c¢\u0006\u0002\u00104J+\u00105\u001a\u0002H\u001c\"\u0004\b\u0000\u0010\u001c*\u00020\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u0002H\u001c022\u0006\u00103\u001a\u0002H\u001c¢\u0006\u0002\u00106J\u001a\u00107\u001a\u00020\u0015*\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u00108\u001a\u00020\u0001J\u0012\u00109\u001a\u00020\u0015*\u00020\u00042\u0006\u00108\u001a\u00020\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/MMKVUtils;", "", "()V", "mmkv", "Lcom/tencent/mmkv/MMKV;", "booleanOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "key", "", "defaultValue", "", "get", "getBoolean", "getFloat", "", "getInt", "", "getLong", "", "getString", "init", "", "context", "Landroid/content/Context;", "intOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "listOption", "Lcom/onyx/android/sdk/data/utils/JSONListOption;", "T", "defaultValueBuilder", "Lkotlin/Function0;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "listRef", "Lcom/alibaba/fastjson2/TypeReference;", "migrateIntOption", "oldKey", "objectOption", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "putBoolean", "value", "putFloat", "putInt", "putLong", "putString", "stringOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", "typeRef", "getObject", "clazz", "Ljava/lang/Class;", "default", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;", "getObjectByClass", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;", "putObject", "any", "putObjectByClass", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nMMKVUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,461:1\n312#1:462\n316#1:463\n*S KotlinDebug\n*F\n+ 1 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n323#1:462\n330#1:463\n*E\n"})
/* loaded from: classes7.dex */
public final class MMKVUtils {

    @NotNull
    public static final MMKVUtils INSTANCE = new MMKVUtils();
    private static MMKV mmkv;

    private MMKVUtils() {
    }

    public static /* synthetic */ JSONListOption listOption$default(MMKVUtils mMKVUtils, String key, Function0 defaultValueBuilder, int i, Object obj) {
        if ((i & 2) != 0) {
            Intrinsics.needClassReification();
            defaultValueBuilder = MMKVUtils$listOption$1.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValueBuilder, "defaultValueBuilder");
        return new JSONListOption(mMKVUtils.get(), key, new MMKVUtils$listRef$1(), defaultValueBuilder);
    }

    @NotNull
    public final BooleanOption booleanOption(@NotNull String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return new BooleanOption(mmkv2, key, defaultValue);
    }

    @NotNull
    public final MMKV get() {
        MMKV mmkv2 = mmkv;
        if (mmkv2 != null) {
            return mmkv2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mmkv");
        return null;
    }

    public final boolean getBoolean(@NotNull String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return mmkv2.getBoolean(key, defaultValue);
    }

    public final float getFloat(@NotNull String key, float defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return mmkv2.getFloat(key, defaultValue);
    }

    public final int getInt(@NotNull String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return mmkv2.getInt(key, defaultValue);
    }

    public final long getLong(@NotNull String key, long defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return mmkv2.getLong(key, defaultValue);
    }

    public final <T> T getObject(@NotNull MMKV mmkv2, @NotNull String key, @NotNull Class<T> clazz, T t) {
        Intrinsics.checkNotNullParameter(mmkv2, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        try {
            T t2 = (T) JSONUtils.INSTANCE.parseObject(mmkv2.getString(key, ""), clazz);
            Intrinsics.checkNotNull(t2);
            return t2;
        } catch (Throwable unused) {
            return t;
        }
    }

    public final <T> T getObjectByClass(@NotNull MMKV mmkv2, @NotNull Class<T> clazz, T t) {
        Intrinsics.checkNotNullParameter(mmkv2, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String simpleName = clazz.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        return (T) getObject(mmkv2, simpleName, clazz, t);
    }

    @Nullable
    public final String getString(@NotNull String key, @NotNull String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return mmkv2.getString(key, defaultValue);
    }

    public final void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MMKV.initialize(context);
        MMKV defaultMMKV = MMKV.defaultMMKV();
        Intrinsics.checkNotNull(defaultMMKV);
        mmkv = defaultMMKV;
    }

    @NotNull
    public final IntOption intOption(@NotNull String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return new IntOption(mmkv2, key, defaultValue);
    }

    public final /* synthetic */ <T> JSONListOption<T> listOption(String key, Function0<? extends ArrayList<T>> defaultValueBuilder) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValueBuilder, "defaultValueBuilder");
        return new JSONListOption<>(get(), key, new MMKVUtils$listRef$1(), defaultValueBuilder);
    }

    @NotNull
    public final <T> TypeReference<ArrayList<T>> listRef() {
        return new MMKVUtils$listRef$1();
    }

    @NotNull
    public final IntOption migrateIntOption(@NotNull String oldKey, @NotNull String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(oldKey, "oldKey");
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return new MigrateIntOption(mmkv2, oldKey, key, defaultValue);
    }

    public final /* synthetic */ <T> JSONObjectOption<T> objectOption(String key, Function0<? extends T> defaultValueBuilder) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValueBuilder, "defaultValueBuilder");
        return new JSONObjectOption<>(get(), key, new MMKVUtils$typeRef$1(), defaultValueBuilder);
    }

    public final void putBoolean(@NotNull String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        mmkv2.putBoolean(key, value);
    }

    public final void putFloat(@NotNull String key, float value) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        mmkv2.putFloat(key, value);
    }

    public final void putInt(@NotNull String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        mmkv2.putInt(key, value);
    }

    public final void putLong(@NotNull String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        mmkv2.putLong(key, value);
    }

    public final void putObject(@NotNull MMKV mmkv2, @NotNull String key, @NotNull Object any) {
        Intrinsics.checkNotNullParameter(mmkv2, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(any, "any");
        mmkv2.putString(key, JSONUtils.INSTANCE.toJson(any));
    }

    public final void putObjectByClass(@NotNull MMKV mmkv2, @NotNull Object any) {
        Intrinsics.checkNotNullParameter(mmkv2, "<this>");
        Intrinsics.checkNotNullParameter(any, "any");
        String simpleName = any.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        putObject(mmkv2, simpleName, any);
    }

    public final void putString(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        mmkv2.putString(key, value);
    }

    @NotNull
    public final StringOption stringOption(@NotNull String key, @NotNull String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        MMKV mmkv2 = mmkv;
        if (mmkv2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mmkv");
            mmkv2 = null;
        }
        return new StringOption(mmkv2, key, defaultValue);
    }

    @NotNull
    public final <T> TypeReference<T> typeRef() {
        return new MMKVUtils$typeRef$1();
    }
}
