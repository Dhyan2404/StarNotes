package com.onyx.android.sdk.base.utils;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 82\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b6\u00107J(\u0010\u0006\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b\u0006\u0010\u0007J\"\u0010\b\u001a\u0004\u0018\u00018\u0000\"\u0006\b\u0000\u0010\u0002\u0018\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0086\b¢\u0006\u0004\b\b\u0010\tJ,\u0010\n\u001a\u00028\u0000\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b\n\u0010\u0007J'\u0010\r\u001a\u00020\f\"\b\b\u0000\u0010\u0002*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0010\u001a\u00020\fJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u0003J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0011J\u0016\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0011J\u0016\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0015J\u0016\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0015J\u0016\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0018J\u0016\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0018J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u001bJ\u0016\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u001bJ\u0018\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u001eJ\u0016\u0010 \u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u001eJ\u0018\u0010!\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003J\u0016\u0010\"\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0003J\u000e\u0010$\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010%\u001a\u00020#2\u0006\u0010\u0004\u001a\u00020\u0003J\u0016\u0010'\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010&\u001a\u00020#J\u000e\u0010)\u001a\u00020(2\u0006\u0010\u0004\u001a\u00020\u0003J\u0016\u0010+\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010*\u001a\u00020(J\u0014\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030,2\u0006\u0010\u0004\u001a\u00020\u0003J\u001c\u0010.\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030,R3\u00105\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010/j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`08\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "", "T", "", "key", "defaultValue", "get", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getOrNull", Constants.GET_PARAMETER_SIG, "getOrPut", "value", "", "put", "(Ljava/lang/String;Ljava/lang/Object;)V", SyncConstant.SYNC_ACTION_REMOVE, Constants.CLEAR_ATTRIBUTES, "", Keywords.FUNC_CONTAINS_STRING, "getBoolean", "putBoolean", "", "getFloat", "putFloat", "", "getDouble", "putDouble", "", "getInt", "putInt", "", "getLong", "putLong", "getString", "putString", "Landroid/graphics/Matrix;", "getMatrix", "getOrPutMatrix", "matrix", "putMatrix", "Landroid/graphics/RectF;", "getRectF", "rect", "putRectF", "", "getStringList", "putStringList", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "a", "Ljava/util/HashMap;", "getRepo", "()Ljava/util/HashMap;", "repo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,148:1\n12#1,4:149\n12#1,4:153\n12#1,4:157\n12#1,4:161\n12#1,4:165\n12#1,4:169\n12#1,4:173\n23#1,5:177\n12#1,4:182\n12#1,4:186\n*S KotlinDebug\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n46#1:149,4\n54#1:153,4\n62#1:157,4\n70#1:161,4\n79#1:165,4\n87#1:169,4\n97#1:173,4\n101#1:177,5\n111#1:182,4\n121#1:186,4\n*E\n"})
/* loaded from: classes7.dex */
public final class OptionsRepo {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, Object> repo = new HashMap<>();

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010JH\u0010\f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000228\b\u0002\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004J\f\u0010\u000e\u001a\u00020\r*\u00020\u0001H\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;", "", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "oldOptions", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "newOptions", "", "key", "", "onCloneObject", "cloneOptionsRepo", "", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nOptionsRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,148:1\n215#2,2:149\n*S KotlinDebug\n*F\n+ 1 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo$Companion\n*L\n133#1:149,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OptionsRepo cloneOptionsRepo$default(Companion companion, OptionsRepo optionsRepo, Function2 function2, int i, Object obj) {
            if ((i & 2) != 0) {
                function2 = new Function2<OptionsRepo, String, Unit>() { // from class: com.onyx.android.sdk.base.utils.OptionsRepo$Companion$cloneOptionsRepo$1
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull OptionsRepo optionsRepo2, @NotNull String str) {
                        Intrinsics.checkNotNullParameter(optionsRepo2, "<anonymous parameter 0>");
                        Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(OptionsRepo optionsRepo2, String str) {
                        invoke2(optionsRepo2, str);
                        return Unit.INSTANCE;
                    }
                };
            }
            return companion.cloneOptionsRepo(optionsRepo, function2);
        }

        /* renamed from: a */
        public final boolean m32107a(Object obj) {
            return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof String);
        }

        @NotNull
        public final OptionsRepo cloneOptionsRepo(@NotNull OptionsRepo oldOptions, @NotNull Function2<? super OptionsRepo, ? super String, Unit> onCloneObject) {
            Intrinsics.checkNotNullParameter(oldOptions, "oldOptions");
            Intrinsics.checkNotNullParameter(onCloneObject, "onCloneObject");
            OptionsRepo optionsRepo = new OptionsRepo();
            for (Map.Entry<String, Object> entry : oldOptions.getRepo().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (OptionsRepo.INSTANCE.m32107a(value)) {
                    optionsRepo.getRepo().put(key, value);
                } else {
                    onCloneObject.invoke(optionsRepo, key);
                }
            }
            return optionsRepo;
        }

        public Companion() {
        }
    }

    public static /* synthetic */ int getInt$default(OptionsRepo optionsRepo, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return optionsRepo.getInt(str, i);
    }

    public static /* synthetic */ long getLong$default(OptionsRepo optionsRepo, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return optionsRepo.getLong(str, j);
    }

    public static /* synthetic */ String getString$default(OptionsRepo optionsRepo, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return optionsRepo.getString(str, str2);
    }

    public final void clear() {
        this.repo.clear();
    }

    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.repo.containsKey(key);
    }

    public final /* synthetic */ <T> T get(String key, T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (getRepo().containsKey(key)) {
            Object obj = getRepo().get(key);
            Intrinsics.reifiedOperationMarker(3, "T");
            if (obj instanceof Object) {
                T t = (T) getRepo().get(key);
                Intrinsics.reifiedOperationMarker(1, "T");
                return t;
            }
        }
        return defaultValue;
    }

    public final boolean getBoolean(@NotNull String key, boolean defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Boolean valueOf = Boolean.valueOf(defaultValue);
        if (getRepo().containsKey(key) && (getRepo().get(key) instanceof Boolean)) {
            Object obj = getRepo().get(key);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
            }
            valueOf = (Boolean) obj;
        }
        return valueOf.booleanValue();
    }

    public final double getDouble(@NotNull String key, double defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Double valueOf = Double.valueOf(defaultValue);
        if (getRepo().containsKey(key) && (getRepo().get(key) instanceof Double)) {
            Object obj = getRepo().get(key);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Double");
            }
            valueOf = (Double) obj;
        }
        return valueOf.doubleValue();
    }

    public final float getFloat(@NotNull String key, float defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Float valueOf = Float.valueOf(defaultValue);
        if (getRepo().containsKey(key) && (getRepo().get(key) instanceof Float)) {
            Object obj = getRepo().get(key);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
            }
            valueOf = (Float) obj;
        }
        return valueOf.floatValue();
    }

    public final int getInt(@NotNull String key, int defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Integer valueOf = Integer.valueOf(defaultValue);
        if (getRepo().containsKey(key) && (getRepo().get(key) instanceof Integer)) {
            Object obj = getRepo().get(key);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
            valueOf = (Integer) obj;
        }
        return valueOf.intValue();
    }

    public final long getLong(@NotNull String key, long defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Long valueOf = Long.valueOf(defaultValue);
        if (getRepo().containsKey(key) && (getRepo().get(key) instanceof Long)) {
            Object obj = getRepo().get(key);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Long");
            }
            valueOf = (Long) obj;
        }
        return valueOf.longValue();
    }

    @NotNull
    public final Matrix getMatrix(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Matrix matrix = new Matrix();
        if (!getRepo().containsKey(key) || !(getRepo().get(key) instanceof Matrix)) {
            return matrix;
        }
        Object obj = getRepo().get(key);
        if (obj != null) {
            return (Matrix) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.graphics.Matrix");
    }

    public final /* synthetic */ <T> T getOrNull(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t = (T) getRepo().get(key);
        Intrinsics.reifiedOperationMarker(2, "T");
        return t;
    }

    public final /* synthetic */ <T> T getOrPut(String key, T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (getRepo().containsKey(key)) {
            Object obj = getRepo().get(key);
            Intrinsics.reifiedOperationMarker(3, "T");
            if (obj instanceof Object) {
                T t = (T) getRepo().get(key);
                Intrinsics.reifiedOperationMarker(1, "T");
                return t;
            }
        }
        getRepo().put(key, defaultValue);
        return defaultValue;
    }

    @NotNull
    public final Matrix getOrPutMatrix(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Matrix matrix = new Matrix();
        if (!getRepo().containsKey(key) || !(getRepo().get(key) instanceof Matrix)) {
            getRepo().put(key, matrix);
            return matrix;
        }
        Object obj = getRepo().get(key);
        if (obj != null) {
            return (Matrix) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.graphics.Matrix");
    }

    @NotNull
    public final RectF getRectF(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        RectF rectF = new RectF();
        if (!getRepo().containsKey(key) || !(getRepo().get(key) instanceof RectF)) {
            return rectF;
        }
        Object obj = getRepo().get(key);
        if (obj != null) {
            return (RectF) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.graphics.RectF");
    }

    @NotNull
    public final HashMap<String, Object> getRepo() {
        return this.repo;
    }

    @NotNull
    public final String getString(@NotNull String key, @NotNull String defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (!getRepo().containsKey(key) || !(getRepo().get(key) instanceof String)) {
            return defaultValue;
        }
        Object obj = getRepo().get(key);
        if (obj != null) {
            return (String) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }

    @NotNull
    public final List<String> getStringList(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList arrayList = new ArrayList();
        if (!getRepo().containsKey(key) || !(getRepo().get(key) instanceof ArrayList)) {
            return arrayList;
        }
        Object obj = getRepo().get(key);
        if (obj != null) {
            return (ArrayList) obj;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.util.ArrayList<kotlin.String>");
    }

    public final <T> void put(@NotNull String key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.repo.put(key, value);
    }

    public final void putBoolean(@NotNull String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        put(key, Boolean.valueOf(value));
    }

    public final void putDouble(@NotNull String key, double value) {
        Intrinsics.checkNotNullParameter(key, "key");
        put(key, Double.valueOf(value));
    }

    public final void putFloat(@NotNull String key, float value) {
        Intrinsics.checkNotNullParameter(key, "key");
        put(key, Float.valueOf(value));
    }

    @NotNull
    public final OptionsRepo putInt(@NotNull String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        put(key, Integer.valueOf(value));
        return this;
    }

    public final void putLong(@NotNull String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        put(key, Long.valueOf(value));
    }

    @NotNull
    public final OptionsRepo putMatrix(@NotNull String key, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        put(key, matrix);
        return this;
    }

    @NotNull
    public final OptionsRepo putRectF(@NotNull String key, @NotNull RectF rect) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(rect, "rect");
        put(key, rect);
        return this;
    }

    @NotNull
    public final OptionsRepo putString(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        put(key, value);
        return this;
    }

    @NotNull
    public final OptionsRepo putStringList(@NotNull String key, @NotNull List<String> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        put(key, value);
        return this;
    }

    public final void remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.repo.remove(key);
    }
}
