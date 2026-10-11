package androidx.work;

import androidx.core.graphics.drawable.IconCompat;
import androidx.work.Data;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0005\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002J&\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J\u001e\u0010\u000f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002¨\u0006\u0012"}, m61528d2 = {"Landroidx/work/ArrayCreatingInputMerger;", "Landroidx/work/InputMerger;", "", "Landroidx/work/Data;", "inputs", "merge", "", "array1", "array2", "b", "array", IconCompat.f5434l, "Ljava/lang/Class;", "valueClass", "a", "c", Constants.CONSTRUCTOR_NAME, "()V", "work-runtime_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ArrayCreatingInputMerger extends InputMerger {
    /* renamed from: a */
    public final Object m6950a(Object array, Object obj, Class<?> valueClass) {
        int length = Array.getLength(array);
        Object newArray = Array.newInstance(valueClass, length + 1);
        System.arraycopy(array, 0, newArray, 0, length);
        Array.set(newArray, length, obj);
        Intrinsics.checkNotNullExpressionValue(newArray, "newArray");
        return newArray;
    }

    /* renamed from: b */
    public final Object m6951b(Object array1, Object array2) {
        int length = Array.getLength(array1);
        int length2 = Array.getLength(array2);
        Class<?> componentType = array1.getClass().getComponentType();
        Intrinsics.checkNotNull(componentType);
        Object newArray = Array.newInstance(componentType, length + length2);
        System.arraycopy(array1, 0, newArray, 0, length);
        System.arraycopy(array2, 0, newArray, length, length2);
        Intrinsics.checkNotNullExpressionValue(newArray, "newArray");
        return newArray;
    }

    /* renamed from: c */
    public final Object m6952c(Object obj, Class<?> valueClass) {
        Object newArray = Array.newInstance(valueClass, 1);
        Array.set(newArray, 0, obj);
        Intrinsics.checkNotNullExpressionValue(newArray, "newArray");
        return newArray;
    }

    @Override // androidx.work.InputMerger
    @NotNull
    public Data merge(@NotNull List<Data> inputs) {
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        Data.Builder builder = new Data.Builder();
        HashMap hashMap = new HashMap();
        Iterator<Data> it2 = inputs.iterator();
        while (it2.hasNext()) {
            Map<String, Object> keyValueMap = it2.next().getKeyValueMap();
            Intrinsics.checkNotNullExpressionValue(keyValueMap, "input.keyValueMap");
            for (Map.Entry<String, Object> entry : keyValueMap.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class cls = value != null ? value.getClass() : String.class;
                Object obj = hashMap.get(key);
                Intrinsics.checkNotNullExpressionValue(key, "key");
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (Intrinsics.areEqual(cls2, cls)) {
                        Intrinsics.checkNotNullExpressionValue(value, "value");
                        value = m6951b(obj, value);
                    } else {
                        if (!Intrinsics.areEqual(cls2.getComponentType(), cls)) {
                            throw new IllegalArgumentException();
                        }
                        value = m6950a(obj, value, cls);
                    }
                } else if (!cls.isArray()) {
                    value = m6952c(value, cls);
                }
                Intrinsics.checkNotNullExpressionValue(value, "if (existingValue == nul…      }\n                }");
                hashMap.put(key, value);
            }
        }
        builder.putAll(hashMap);
        Data build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "output.build()");
        return build;
    }
}
