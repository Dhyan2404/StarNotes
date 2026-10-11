package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.annotation.JSONType;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReaderAdapter;
import java.util.Arrays;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class gbk<T> extends ObjectReaderAdapter<T> {
    public gbk(Class cls, Supplier<T> supplier, String str, Class[] clsArr, String[] strArr, Class cls2, FieldReader... fieldReaderArr) {
        super(cls, str, null, JSONReader.Feature.SupportAutoType.mask, supplier, null, clsArr, strArr, cls2, fieldReaderArr);
    }

    /* renamed from: a */
    public gbk m54250a(Class cls, String str) {
        JSONType jSONType;
        for (Class cls2 : this.f12639h) {
            if (cls2 == cls) {
                return this;
            }
        }
        Class[] clsArr = this.f12639h;
        Class[] clsArr2 = (Class[]) Arrays.copyOf(clsArr, clsArr.length + 1);
        String[] strArr = this.f12640i;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
        clsArr2[clsArr2.length - 1] = cls;
        if (str == null && (jSONType = (JSONType) cls.getAnnotation(JSONType.class)) != null) {
            str = jSONType.typeName();
        }
        if (str != null) {
            strArr2[strArr2.length - 1] = str;
        }
        return new gbk(this.objectClass, this.creator, this.typeKey, clsArr2, strArr2, this.f12641j, this.fieldReaders);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(long j) {
        Supplier<T> supplier = this.creator;
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0179  */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T readObject(com.alibaba.fastjson2.JSONReader r25, java.lang.reflect.Type r26, java.lang.Object r27, long r28) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.gbk.readObject(com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type, java.lang.Object, long):java.lang.Object");
    }
}
