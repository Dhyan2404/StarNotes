package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class v7k extends bak {

    /* renamed from: a */
    public static final v7k f87227a = new v7k();

    /* renamed from: b */
    public static final long f87228b = Fnv.hashCode64("java.lang.Class");

    public v7k() {
        super(Class.class);
    }

    @Override // com.sunia.HTREnginev2.bak, com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!jSONReader.nextIfMatch(JSONB.Constants.BC_TYPED_ANY) || jSONReader.readTypeHashCode() == f87228b) {
            return readObject(jSONReader, type, obj, j);
        }
        throw new JSONException(jSONReader.info("not support autoType : " + jSONReader.getString()));
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        long readValueHashCode = jSONReader.readValueHashCode();
        JSONReader.Context context = jSONReader.context;
        JSONReader.AutoTypeBeforeHandler contextAutoTypeBeforeHandler = context.getContextAutoTypeBeforeHandler();
        if (contextAutoTypeBeforeHandler != null) {
            Class<?> apply = contextAutoTypeBeforeHandler.apply(readValueHashCode, Class.class, j);
            if (apply == null) {
                apply = contextAutoTypeBeforeHandler.apply(jSONReader.getString(), Class.class, j);
            }
            if (apply != null) {
                return apply;
            }
        }
        String string = jSONReader.getString();
        if (!(((context.features | j) & JSONReader.Feature.SupportClassForName.mask) != 0)) {
            throw new JSONException(jSONReader.info("not support ClassForName : " + string + ", you can config 'JSONReader.Feature.SupportClassForName'"));
        }
        Class mapping = TypeUtils.getMapping(string);
        if (mapping != null) {
            return mapping;
        }
        Class<?> checkAutoType = context.provider.checkAutoType(string, null, JSONReader.Feature.SupportAutoType.mask);
        if (checkAutoType != null) {
            return checkAutoType;
        }
        throw new JSONException(jSONReader.info("class not found " + string));
    }
}
