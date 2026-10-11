package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.function.ToByteFunction;
import com.alibaba.fastjson2.function.ToFloatFunction;
import com.alibaba.fastjson2.function.ToShortFunction;
import com.alibaba.fastjson2.util.ParameterizedTypeImpl;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriters;
import com.sunia.HTREnginev2.ack;
import com.sunia.HTREnginev2.bfg;
import com.sunia.HTREnginev2.gfg;
import com.sunia.HTREnginev2.hck;
import com.sunia.HTREnginev2.kck;
import com.sunia.HTREnginev2.nck;
import com.sunia.HTREnginev2.qck;
import com.sunia.HTREnginev2.tck;
import com.sunia.HTREnginev2.vbk;
import com.sunia.HTREnginev2.wbk;
import com.sunia.HTREnginev2.wck;
import com.sunia.HTREnginev2.xbk;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes3.dex */
public class ObjectWriters {

    /* renamed from: a */
    public static ObjectWriterCreator f12888a = ObjectWriterCreator.INSTANCE;

    /* renamed from: b */
    public static /* synthetic */ int m7631b(ToLongFunction toLongFunction, Object obj) {
        return (int) toLongFunction.applyAsLong(obj);
    }

    public static <T> FieldWriter fieldWriter(String str, ToLongFunction<T> toLongFunction) {
        return f12888a.createFieldWriter(str, toLongFunction);
    }

    public static <T, V> FieldWriter fieldWriterList(String str, Class<V> cls, Function<T, List<V>> function) {
        return f12888a.createFieldWriter(str, cls == String.class ? TypeUtils.PARAM_TYPE_LIST_STR : new ParameterizedTypeImpl(List.class, cls), List.class, function);
    }

    public static <T> FieldWriter fieldWriterListString(String str, Function<T, List<String>> function) {
        return f12888a.createFieldWriter(str, TypeUtils.PARAM_TYPE_LIST_STR, List.class, function);
    }

    public static ObjectWriter objectWriter(Class cls) {
        return f12888a.createObjectWriter(cls);
    }

    /* renamed from: of */
    public static <T> ObjectWriter<T> m7632of(Class<T> cls, FieldWriter... fieldWriterArr) {
        return f12888a.createObjectWriter(cls, fieldWriterArr);
    }

    public static ObjectWriter ofReflect(Class cls) {
        return ObjectWriterCreator.INSTANCE.createObjectWriter(cls);
    }

    public static <T> ObjectWriter ofToBigDecimal(Function<Object, BigDecimal> function) {
        return new vbk(null, function);
    }

    public static <T> ObjectWriter ofToBooleanArray(Function<Object, boolean[]> function) {
        return new wbk(function);
    }

    public static <T> ObjectWriter ofToByteArray(Function<Object, byte[]> function) {
        return new wck(function);
    }

    public static <T> ObjectWriter ofToCharArray(Function<Object, char[]> function) {
        return new ack(function);
    }

    public static <T> ObjectWriter ofToDoubleArray(Function<Object, double[]> function) {
        return new hck(function, null);
    }

    public static <T> ObjectWriter ofToFloatArray(Function<Object, float[]> function) {
        return new kck(function, null);
    }

    public static <T> ObjectWriter ofToInt(ToIntFunction toIntFunction) {
        return f12888a.createObjectWriter(new bfg("toInt", 0, FieldInfo.VALUE_MASK, null, null, null, toIntFunction));
    }

    public static <T> ObjectWriter ofToIntArray(Function<Object, int[]> function) {
        return new qck(function);
    }

    public static <T> ObjectWriter ofToLong(ToLongFunction toLongFunction) {
        return f12888a.createObjectWriter(new gfg("toLong", 0, FieldInfo.VALUE_MASK, null, null, null, toLongFunction));
    }

    public static <T> ObjectWriter ofToLongArray(Function<Object, long[]> function) {
        return new tck(function);
    }

    public static <T> ObjectWriter ofToShortArray(Function<Object, short[]> function) {
        return new nck(function);
    }

    public static <T> ObjectWriter ofToString(Function<T, String> function) {
        ObjectWriterCreator objectWriterCreator = f12888a;
        return objectWriterCreator.createObjectWriter(objectWriterCreator.createFieldWriter(null, null, "toString", 0, FieldInfo.VALUE_MASK, null, null, String.class, String.class, null, function));
    }

    public static <T> FieldWriter fieldWriter(String str, ToIntFunction<T> toIntFunction) {
        return f12888a.createFieldWriter(str, toIntFunction);
    }

    public static ObjectWriter objectWriter(Class cls, FieldWriter... fieldWriterArr) {
        return f12888a.createObjectWriter(cls, fieldWriterArr);
    }

    public static <T> ObjectWriter ofToBooleanArray(ToIntFunction toIntFunction, BiFunction<Object, Integer, Boolean> biFunction) {
        return new xbk(toIntFunction, biFunction);
    }

    public static <T> FieldWriter fieldWriter(String str, ToShortFunction<T> toShortFunction) {
        return f12888a.createFieldWriter(str, toShortFunction);
    }

    public static ObjectWriter objectWriter(Class cls, long j, FieldWriter... fieldWriterArr) {
        return f12888a.createObjectWriter(cls, j, fieldWriterArr);
    }

    public static <T> ObjectWriter ofToBooleanArray(final ToLongFunction toLongFunction, BiFunction<Object, Integer, Boolean> biFunction) {
        return new xbk(new ToIntFunction() { // from class: com.sunia.HTREnginev2.fek
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                int m7631b;
                m7631b = ObjectWriters.m7631b(toLongFunction, obj);
                return m7631b;
            }
        }, biFunction);
    }

    public static <T> FieldWriter fieldWriter(String str, ToByteFunction<T> toByteFunction) {
        return f12888a.createFieldWriter(str, toByteFunction);
    }

    public static ObjectWriter objectWriter(FieldWriter... fieldWriterArr) {
        return f12888a.createObjectWriter(fieldWriterArr);
    }

    public static <T> FieldWriter fieldWriter(String str, ToFloatFunction<T> toFloatFunction) {
        return f12888a.createFieldWriter(str, toFloatFunction);
    }

    public static <T> FieldWriter fieldWriter(String str, ToDoubleFunction<T> toDoubleFunction) {
        return f12888a.createFieldWriter(str, toDoubleFunction);
    }

    public static <T> FieldWriter fieldWriter(String str, Predicate<T> predicate) {
        return f12888a.createFieldWriter(str, predicate);
    }

    public static <T> FieldWriter fieldWriter(String str, Function<T, String> function) {
        return f12888a.createFieldWriter(str, String.class, function);
    }

    public static <T, V> FieldWriter fieldWriter(String str, Class<V> cls, Function<T, V> function) {
        return f12888a.createFieldWriter(str, cls, function);
    }

    public static <T, V> FieldWriter fieldWriter(String str, Type type, Class<V> cls, Function<T, V> function) {
        return f12888a.createFieldWriter(str, type, cls, function);
    }
}
