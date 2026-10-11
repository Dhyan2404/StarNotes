package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.reader.FieldReaderObject;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final class fdg<T, V> extends FieldReaderObject<T> {
    public fdg(String str, Type type, Class<V> cls, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer, ObjectReader objectReader) {
        super(str, type, cls, i, j, str2, locale, obj, method, null, biConsumer);
        this.initReader = objectReader;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        Type type = this.fieldType;
        if (type == Float.class) {
            obj = TypeUtils.toFloat(obj);
        } else if (type == Double.class) {
            obj = TypeUtils.toDouble(obj);
        }
        if (obj == null && this.fieldClass == StackTraceElement[].class) {
            return;
        }
        this.function.accept(t, obj);
    }
}
