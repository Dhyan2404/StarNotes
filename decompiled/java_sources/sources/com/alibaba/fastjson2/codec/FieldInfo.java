package com.alibaba.fastjson2.codec;

import com.alibaba.fastjson2.reader.ObjectReader;
import java.lang.reflect.Constructor;
import java.util.Locale;

/* loaded from: classes3.dex */
public class FieldInfo {
    public static final long DISABLE_UNSAFE = 36028797018963968L;
    public static final long FIELD_MASK = 4503599627370496L;
    public static final long RAW_VALUE_MASK = 1125899906842624L;
    public static final long READ_ONLY = 72057594037927936L;
    public static final long READ_USING_MASK = 2251799813685248L;
    public static final long UNWRAPPED_MASK = 562949953421312L;
    public static final long VALUE_MASK = 281474976710656L;
    public String[] alternateNames;
    public String defaultValue;
    public long features;
    public boolean fieldClassMixIn;
    public String fieldName;
    public String format;
    public boolean ignore;
    public boolean isTransient;
    public Class<?> keyUsing;
    public String label;
    public Locale locale;
    public int ordinal;
    public Class<?> readUsing;
    public boolean required;
    public String schema;
    public Class<?> valueUsing;
    public Class<?> writeUsing;

    public ObjectReader getInitReader() {
        Class<?> cls = this.readUsing;
        if (cls != null && ObjectReader.class.isAssignableFrom(cls)) {
            try {
                Constructor<?> declaredConstructor = this.readUsing.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                return (ObjectReader) declaredConstructor.newInstance(new Object[0]);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void init() {
        this.fieldName = null;
        this.format = null;
        this.label = null;
        this.ordinal = 0;
        this.features = 0L;
        this.ignore = false;
        this.required = false;
        this.alternateNames = null;
        this.writeUsing = null;
        this.keyUsing = null;
        this.valueUsing = null;
        this.readUsing = null;
        this.fieldClassMixIn = false;
        this.isTransient = false;
        this.defaultValue = null;
        this.locale = null;
    }
}
