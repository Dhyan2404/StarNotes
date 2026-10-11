package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public class FieldReaderStackTrace extends FieldReaderObject {
    public FieldReaderStackTrace(String str, Type type, Class cls, int i, long j, String str2, Locale locale, Object obj, Method method, Field field, BiConsumer biConsumer) {
        super(str, type, cls, i, j, str2, locale, obj, method, field, biConsumer);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(Object obj, Object obj2) {
        if (obj2 != null || (this.features & JSONReader.Feature.IgnoreSetNullValue.mask) == 0) {
            if (obj2 instanceof Collection) {
                Collection collection = (Collection) obj2;
                Iterator it2 = collection.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    if (it2.next() == null) {
                        i++;
                    }
                }
                if (i == collection.size()) {
                    obj2 = new StackTraceElement[0];
                } else {
                    StackTraceElement[] stackTraceElementArr = new StackTraceElement[collection.size()];
                    collection.toArray(stackTraceElementArr);
                    obj2 = stackTraceElementArr;
                }
            }
            this.function.accept(obj, obj2);
        }
    }
}
