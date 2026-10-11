package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.reader.FieldReaderAtomicReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class pag<T> extends FieldReaderAtomicReference<T> {

    /* renamed from: p */
    public final boolean f80610p;

    public pag(String str, Type type, Class cls, int i, String str2, Field field) {
        super(str, type, cls, i, 0L, str2, null, field);
        this.f80610p = Modifier.isFinal(field.getModifiers());
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (this.f80610p) {
                ((AtomicReference) this.field.get(t)).set(obj);
            } else {
                this.field.set(t, new AtomicReference(obj));
            }
        } catch (Exception e) {
            throw new JSONException("set " + this.fieldName + " error", e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public boolean isReadOnly() {
        return true;
    }
}
