package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.reader.FieldReaderList;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zcg<T> extends FieldReaderList<T, Object> {

    /* renamed from: q */
    public final long f91612q;

    public zcg(String str, Type type, Class cls, Type type2, Class cls2, int i, long j, String str2, Locale locale, Collection collection, Field field) {
        super(str, type, cls, type2, cls2, i, j, str2, locale, collection, null, field, null);
        this.f91612q = JDKUtils.UNSAFE.objectFieldOffset(field);
    }

    @Override // com.alibaba.fastjson2.reader.FieldReaderObject, com.alibaba.fastjson2.reader.FieldReader
    public void accept(Object obj, Object obj2) {
        JDKUtils.UNSAFE.putObject(obj, this.f91612q, obj2);
    }
}
