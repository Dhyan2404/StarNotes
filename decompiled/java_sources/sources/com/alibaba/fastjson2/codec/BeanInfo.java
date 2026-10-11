package com.alibaba.fastjson2.codec;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.filter.Filter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes3.dex */
public class BeanInfo {
    public boolean alphabetic = true;
    public Class<? extends JSONReader.AutoTypeBeforeHandler> autoTypeBeforeHandler;
    public Method buildMethod;
    public Class builder;
    public String builderWithPrefix;
    public Method createMethod;
    public String[] createParameterNames;
    public Constructor creatorConstructor;
    public Class deserializer;
    public String format;
    public String[] ignores;
    public String[] includes;

    /* renamed from: kotlin, reason: collision with root package name */
    public boolean f116569kotlin;
    public Locale locale;
    public Constructor markerConstructor;
    public boolean mixIn;
    public String namingStrategy;
    public String objectReaderFieldName;
    public String objectWriterFieldName;
    public String[] orders;
    public long readerFeatures;
    public Class[] seeAlso;
    public Class seeAlsoDefault;
    public String[] seeAlsoNames;
    public Class<? extends Filter>[] serializeFilters;
    public Class serializer;
    public String typeKey;
    public String typeName;
    public boolean writeEnumAsJavaBean;
    public long writerFeatures;
}
