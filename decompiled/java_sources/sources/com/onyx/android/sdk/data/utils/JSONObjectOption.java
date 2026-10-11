package com.onyx.android.sdk.data.utils;

import com.alibaba.fastjson2.TypeReference;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B3\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012J\u000b\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012J\u001c\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00150\u0017J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007J\u0015\u0010\u0019\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u001bR\u0012\u0010\r\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "T", "", "Lcom/onyx/android/sdk/data/utils/BaseOption;", "parent", "Lcom/tencent/mmkv/MMKV;", "key", "", "typeRef", "Lcom/alibaba/fastjson2/TypeReference;", "defaultValue", "Lkotlin/Function0;", "(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V", "data", Constants.OBJECT_SIG, "stringOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", "forceGet", "()Ljava/lang/Object;", "get", "getAndPut", "", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function1;", "getString", "put", "value", "(Ljava/lang/Object;)V", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class JSONObjectOption<T> extends BaseOption {

    @Nullable
    private T data;

    @NotNull
    private final Function0<T> defaultValue;

    @NotNull
    private final StringOption stringOption;

    @NotNull
    private final TypeReference<T> typeRef;

    public /* synthetic */ JSONObjectOption(MMKV mmkv, String str, TypeReference typeReference, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MMKVUtils.INSTANCE.get() : mmkv, str, typeReference, function0);
    }

    @NotNull
    public final T forceGet() {
        String str = this.stringOption.get();
        T invoke = str == null || str.length() == 0 ? this.defaultValue.invoke() : (T) JSONUtils.INSTANCE.parseObject(str, this.typeRef);
        if (invoke == null) {
            invoke = this.defaultValue.invoke();
        }
        this.data = invoke;
        Intrinsics.checkNotNull(invoke);
        return invoke;
    }

    @NotNull
    public final T get() {
        T t = this.data;
        if (t == null) {
            return forceGet();
        }
        Intrinsics.checkNotNull(t);
        return t;
    }

    public final void getAndPut(@NotNull Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        T t = get();
        block.invoke(t);
        put(t);
    }

    @Nullable
    public final String getString() {
        return this.stringOption.get();
    }

    public final void put(@Nullable T value) {
        this.data = value;
        this.stringOption.put(String.valueOf(JSONUtils.INSTANCE.toJson(value)));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JSONObjectOption(@NotNull MMKV parent, @NotNull String key, @NotNull TypeReference<T> typeRef, @NotNull Function0<? extends T> defaultValue) {
        super(parent, key);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(typeRef, "typeRef");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        this.typeRef = typeRef;
        this.defaultValue = defaultValue;
        this.stringOption = new StringOption(parent, key, "");
    }
}
