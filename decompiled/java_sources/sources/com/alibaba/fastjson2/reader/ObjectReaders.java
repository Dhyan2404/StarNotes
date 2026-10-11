package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.function.ObjBoolConsumer;
import com.alibaba.fastjson2.function.ObjByteConsumer;
import com.alibaba.fastjson2.function.ObjCharConsumer;
import com.alibaba.fastjson2.function.ObjFloatConsumer;
import com.alibaba.fastjson2.function.ObjShortConsumer;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sunia.HTREnginev2.abg;
import com.sunia.HTREnginev2.acg;
import com.sunia.HTREnginev2.adg;
import com.sunia.HTREnginev2.c8k;
import com.sunia.HTREnginev2.ebg;
import com.sunia.HTREnginev2.f8k;
import com.sunia.HTREnginev2.fdg;
import com.sunia.HTREnginev2.hbk;
import com.sunia.HTREnginev2.i8k;
import com.sunia.HTREnginev2.icg;
import com.sunia.HTREnginev2.nbg;
import com.sunia.HTREnginev2.o7k;
import com.sunia.HTREnginev2.qcg;
import com.sunia.HTREnginev2.t7k;
import com.sunia.HTREnginev2.tbg;
import com.sunia.HTREnginev2.xcg;
import com.sunia.HTREnginev2.z7k;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReaders {
    public static FieldReader fieldReader(String str, Class cls) {
        return ObjectReaderCreator.INSTANCE.createFieldReader((Class) null, str, cls, cls, (Method) null);
    }

    public static <T> FieldReader fieldReaderBool(String str, ObjBoolConsumer<T> objBoolConsumer) {
        return new abg(str, 0, null, objBoolConsumer);
    }

    public static <T> FieldReader fieldReaderByte(String str, ObjByteConsumer<T> objByteConsumer) {
        return new xcg(str, 0, null, objByteConsumer);
    }

    public static <T> FieldReader fieldReaderChar(String str, ObjCharConsumer<T> objCharConsumer) {
        return new ebg(str, 0, null, null, null, objCharConsumer);
    }

    public static <T> FieldReader fieldReaderDouble(String str, ObjDoubleConsumer<T> objDoubleConsumer) {
        return new nbg(str, 0, null, null, objDoubleConsumer);
    }

    public static <T> FieldReader fieldReaderFloat(String str, ObjFloatConsumer<T> objFloatConsumer) {
        return new tbg(str, 0, null, null, objFloatConsumer);
    }

    public static <T> FieldReader fieldReaderInt(String str, ObjIntConsumer<T> objIntConsumer) {
        return new icg(str, 0, null, null, objIntConsumer);
    }

    public static <T, V> FieldReader fieldReaderList(String str, Type type, Supplier<List<V>> supplier, BiConsumer<T, List<V>> biConsumer, ObjectReader<V> objectReader) {
        return new adg(supplier, objectReader, biConsumer, type, str);
    }

    public static <T> FieldReader fieldReaderListStr(String str, BiConsumer<T, List<String>> biConsumer) {
        return new adg(new hbk(), null, biConsumer, String.class, str);
    }

    public static <T> FieldReader fieldReaderLong(String str, ObjLongConsumer<T> objLongConsumer) {
        return new qcg(str, 0, null, null, objLongConsumer);
    }

    public static <T, V> FieldReader fieldReaderMap(String str, Class cls, Type type, Type type2, BiConsumer<T, Map> biConsumer) {
        return new FieldReaderObject(str, TypeReference.parametricType((Class<?>) cls, type, type2), cls, 0, 0L, null, null, null, null, null, biConsumer);
    }

    public static <T> FieldReader fieldReaderShort(String str, ObjShortConsumer<T> objShortConsumer) {
        return new acg(str, 0, 0L, null, null, null, null, objShortConsumer);
    }

    public static <T> FieldReader fieldReaderString(String str, BiConsumer<T, String> biConsumer) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, String.class, String.class, (Method) null, biConsumer);
    }

    public static FieldReader fieldReaderWithField(String str, Class cls) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, BeanUtils.getDeclaredField(cls, str));
    }

    public static FieldReader fieldReaderWithMethod(String str, Class cls, String str2) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, BeanUtils.getSetter(cls, str2));
    }

    public static <T> ObjectReader<T> fromBigDecimal(Function<BigDecimal, Object> function) {
        return new o7k(function);
    }

    public static <T> ObjectReader<T> fromByteArray(Function<byte[], Object> function) {
        return new i8k(function, "base64");
    }

    public static <T> ObjectReader<T> fromCharArray(Function<char[], Object> function) {
        return new t7k(function);
    }

    public static <T> ObjectReader<T> fromDoubleArray(Function<double[], Object> function) {
        return new z7k(function);
    }

    public static <T> ObjectReader<T> fromFloatArray(Function<float[], Object> function) {
        return new c8k(function);
    }

    public static <T> ObjectReader<T> fromIntArray(Function<int[], Object> function) {
        return new ObjectReaderImplInt32ValueArray(null, function);
    }

    public static <T> ObjectReader<T> fromLongArray(Function<long[], Object> function) {
        return new ObjectReaderImplInt64ValueArray(null, function);
    }

    public static <T> ObjectReader<T> fromShortArray(Function<short[], Object> function) {
        return new f8k(function);
    }

    public static <T> ObjectReader<T> objectReader(Class<T> cls, Supplier<T> supplier, FieldReader... fieldReaderArr) {
        return ObjectReaderCreator.INSTANCE.createObjectReader(cls, supplier, fieldReaderArr);
    }

    /* renamed from: of */
    public static <T> ObjectReader<T> m7550of(Supplier<T> supplier, FieldReader... fieldReaderArr) {
        return ObjectReaderCreator.INSTANCE.createObjectReader(null, supplier, fieldReaderArr);
    }

    public static <T> ObjectReader<T> ofInt(IntFunction<T> intFunction) {
        return new ObjectReaderImplFromInt(null, intFunction);
    }

    public static <T> ObjectReader<T> ofLong(LongFunction<T> longFunction) {
        return new ObjectReaderImplFromLong(null, longFunction);
    }

    public static <T> ObjectReader<T> ofReflect(Class<T> cls) {
        return ObjectReaderCreator.INSTANCE.createObjectReader((Class) cls);
    }

    public static <T> ObjectReader<T> ofString(Function<String, T> function) {
        return new ObjectReaderImplFromString(null, function);
    }

    public static FieldReader fieldReader(String str, Type type, Class cls) {
        return ObjectReaderCreator.INSTANCE.createFieldReader((Class) null, str, type, cls, (Method) null);
    }

    public static <T, V> FieldReader fieldReaderList(String str, Type type, Supplier<List<V>> supplier, BiConsumer<T, List<V>> biConsumer) {
        return new adg(supplier, null, biConsumer, type, str);
    }

    public static <T> ObjectReader<T> objectReader(Function<Map<Long, Object>, T> function, FieldReader... fieldReaderArr) {
        return ObjectReaderCreator.INSTANCE.createObjectReaderNoneDefaultConstructor(null, function, fieldReaderArr);
    }

    /* renamed from: of */
    public static <T> ObjectReader<T> m7549of(Class<T> cls, Supplier<T> supplier, FieldReader... fieldReaderArr) {
        return ObjectReaderCreator.INSTANCE.createObjectReader(cls, supplier, fieldReaderArr);
    }

    public static <T, V> FieldReader fieldReader(String str, Class<V> cls, BiConsumer<T, V> biConsumer) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, cls, cls, (Method) null, biConsumer);
    }

    public static <T, V> FieldReader fieldReaderList(String str, Type type, BiConsumer<T, List<V>> biConsumer) {
        return fieldReaderList(str, type, new hbk(), biConsumer);
    }

    public static FieldReader fieldReaderWithField(String str, Class cls, String str2) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, BeanUtils.getDeclaredField(cls, str2));
    }

    /* renamed from: of */
    public static <T> ObjectReader<T> m7548of(Class<T> cls) {
        return ObjectReaderCreator.INSTANCE.createObjectReader((Class) cls);
    }

    public static <T, V> FieldReader fieldReader(String str, Type type, Class<V> cls, BiConsumer<T, V> biConsumer) {
        return ObjectReaderCreator.INSTANCE.createFieldReader(str, type, cls, (Method) null, biConsumer);
    }

    public static <T, V> FieldReader fieldReader(String str, Type type, BiConsumer<T, V> biConsumer, ObjectReader<V> objectReader) {
        return new fdg(str, type, TypeUtils.getClass(type), 0, 0L, null, null, null, null, biConsumer, objectReader);
    }
}
