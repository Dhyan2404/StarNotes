package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.PropertyFilter;
import com.alibaba.fastjson2.filter.PropertyPreFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public interface ObjectWriter<T> {
    default long getFeatures() {
        return 0L;
    }

    default FieldWriter getFieldWriter(long j) {
        return null;
    }

    default List<FieldWriter> getFieldWriters() {
        return Collections.emptyList();
    }

    default boolean hasFilter(JSONWriter jSONWriter) {
        return jSONWriter.hasFilter(JSONWriter.Feature.IgnoreNonFieldGetter.mask);
    }

    default void setFilter(Filter filter) {
        if (filter instanceof PropertyFilter) {
            setPropertyFilter((PropertyFilter) filter);
        }
        if (filter instanceof ValueFilter) {
            setValueFilter((ValueFilter) filter);
        }
        if (filter instanceof NameFilter) {
            setNameFilter((NameFilter) filter);
        }
        if (filter instanceof PropertyPreFilter) {
            setPropertyPreFilter((PropertyPreFilter) filter);
        }
    }

    default void setNameFilter(NameFilter nameFilter) {
    }

    default void setPropertyFilter(PropertyFilter propertyFilter) {
    }

    default void setPropertyPreFilter(PropertyPreFilter propertyPreFilter) {
    }

    default void setValueFilter(ValueFilter valueFilter) {
    }

    default void write(JSONWriter jSONWriter, Object obj) {
        write(jSONWriter, obj, null, null, 0L);
    }

    void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j);

    default void writeArrayMapping(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.jsonb) {
            writeArrayMappingJSONB(jSONWriter, obj, obj2, type, j);
            return;
        }
        List<FieldWriter> fieldWriters = getFieldWriters();
        jSONWriter.startArray();
        int i = 0;
        if (hasFilter(jSONWriter)) {
            JSONWriter.Context context = jSONWriter.context;
            PropertyPreFilter propertyPreFilter = context.getPropertyPreFilter();
            ValueFilter valueFilter = context.getValueFilter();
            PropertyFilter propertyFilter = context.getPropertyFilter();
            int size = fieldWriters.size();
            while (i < size) {
                if (i != 0) {
                    jSONWriter.writeComma();
                }
                FieldWriter fieldWriter = fieldWriters.get(i);
                if (propertyPreFilter == null || propertyPreFilter.process(jSONWriter, obj, fieldWriter.fieldName)) {
                    Object fieldValue = fieldWriter.getFieldValue(obj);
                    if (propertyFilter != null && !propertyFilter.apply(obj, fieldWriter.fieldName, fieldValue)) {
                        jSONWriter.writeNull();
                    } else if (valueFilter != null) {
                        Object apply = valueFilter.apply(obj, fieldWriter.fieldName, fieldValue);
                        if (apply == null) {
                            jSONWriter.writeNull();
                        } else {
                            fieldWriter.getObjectWriter(jSONWriter, apply.getClass()).write(jSONWriter, fieldValue);
                        }
                    } else if (fieldValue == null) {
                        jSONWriter.writeNull();
                    } else {
                        fieldWriter.getObjectWriter(jSONWriter, fieldValue.getClass()).write(jSONWriter, fieldValue);
                    }
                } else {
                    jSONWriter.writeNull();
                }
                i++;
            }
        } else {
            int size2 = fieldWriters.size();
            while (i < size2) {
                if (i != 0) {
                    jSONWriter.writeComma();
                }
                fieldWriters.get(i).writeValue(jSONWriter, obj);
                i++;
            }
        }
        jSONWriter.endArray();
    }

    default void writeArrayMappingJSONB(JSONWriter jSONWriter, Object obj) {
        writeArrayMappingJSONB(jSONWriter, obj, null, null, 0L);
    }

    default void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        write(jSONWriter, obj, obj2, type, j);
    }

    default boolean writeTypeInfo(JSONWriter jSONWriter) {
        return false;
    }

    default void writeWithFilter(JSONWriter jSONWriter, Object obj) {
        writeWithFilter(jSONWriter, obj, null, null, 0L);
    }

    default FieldWriter getFieldWriter(String str) {
        long hashCode64 = Fnv.hashCode64(str);
        FieldWriter fieldWriter = getFieldWriter(hashCode64);
        if (fieldWriter != null) {
            return fieldWriter;
        }
        long hashCode64LCase = Fnv.hashCode64LCase(str);
        return hashCode64LCase != hashCode64 ? getFieldWriter(hashCode64LCase) : fieldWriter;
    }

    default void writeArrayMappingJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        List<FieldWriter> fieldWriters = getFieldWriters();
        int size = fieldWriters.size();
        jSONWriter.startArray(size);
        for (int i = 0; i < size; i++) {
            fieldWriters.get(i).writeValue(jSONWriter, obj);
        }
    }

    default void writeWithFilter(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        throw new UnsupportedOperationException();
    }
}
