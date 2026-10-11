package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Method;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class bgg<T> extends FieldWriter<T> {

    /* renamed from: r */
    public final Function<T, String> f65748r;

    /* renamed from: s */
    public final boolean f65749s;

    /* renamed from: t */
    public final boolean f65750t;

    /* renamed from: u */
    public final boolean f65751u;

    public bgg(String str, int i, long j, String str2, String str3, Method method, Function<T, String> function) {
        super(str, i, j, str2, str3, String.class, String.class, null, method);
        this.f65748r = function;
        this.f65749s = "symbol".equals(str2);
        this.f65750t = "trim".equals(str2);
        this.f65751u = (j & 1125899906842624L) != 0;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public Object getFieldValue(T t) {
        return this.f65748r.apply(t);
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, T t) {
        try {
            String apply = this.f65748r.apply(t);
            if (apply == null && ((this.features | jSONWriter.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) == 0) {
                return false;
            }
            writeFieldName(jSONWriter);
            if (apply == null && (this.features & (JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) != 0) {
                jSONWriter.writeString("");
                return true;
            }
            if (this.f65750t && apply != null) {
                apply = apply.trim();
            }
            if (this.f65749s && jSONWriter.jsonb) {
                jSONWriter.writeSymbol(apply);
            } else if (this.f65751u) {
                jSONWriter.writeRaw(apply);
            } else {
                jSONWriter.writeString(apply);
            }
            return true;
        } catch (RuntimeException e) {
            if ((jSONWriter.getFeatures(this.features) | JSONWriter.Feature.IgnoreNonFieldGetter.mask) != 0) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, T t) {
        String apply = this.f65748r.apply(t);
        if (this.f65750t && apply != null) {
            apply = apply.trim();
        }
        if (this.f65749s && jSONWriter.jsonb) {
            jSONWriter.writeSymbol(apply);
        } else if (this.f65751u) {
            jSONWriter.writeRaw(apply);
        } else {
            jSONWriter.writeString(apply);
        }
    }
}
