package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* loaded from: classes3.dex */
public abstract class vdg extends FieldWriter {

    /* renamed from: r */
    public final byte[] f87390r;

    /* renamed from: s */
    public final byte[] f87391s;

    /* renamed from: t */
    public final byte[] f87392t;

    /* renamed from: u */
    public final byte[] f87393u;

    /* renamed from: v */
    public final char[] f87394v;

    /* renamed from: w */
    public final char[] f87395w;

    /* renamed from: x */
    public final char[] f87396x;

    /* renamed from: y */
    public final char[] f87397y;

    public vdg(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        byte[] bArr = this.f12816f;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length + 4);
        byte[] bArr2 = this.f12816f;
        copyOf[bArr2.length] = 116;
        copyOf[bArr2.length + 1] = 114;
        copyOf[bArr2.length + 2] = UTF8JsonGenerator.f21285e;
        copyOf[bArr2.length + 3] = 101;
        this.f87390r = copyOf;
        byte[] copyOf2 = Arrays.copyOf(bArr2, bArr2.length + 5);
        byte[] bArr3 = this.f12816f;
        copyOf2[bArr3.length] = 102;
        copyOf2[bArr3.length + 1] = 97;
        copyOf2[bArr3.length + 2] = 108;
        copyOf2[bArr3.length + 3] = 115;
        copyOf2[bArr3.length + 4] = 101;
        this.f87391s = copyOf2;
        byte[] copyOf3 = Arrays.copyOf(bArr3, bArr3.length + 1);
        byte[] bArr4 = this.f12816f;
        copyOf3[bArr4.length] = TarConstants.LF_LINK;
        this.f87392t = copyOf3;
        byte[] copyOf4 = Arrays.copyOf(bArr4, bArr4.length + 1);
        copyOf4[this.f12816f.length] = 48;
        this.f87393u = copyOf4;
        char[] cArr = this.f12817g;
        char[] copyOf5 = Arrays.copyOf(cArr, cArr.length + 4);
        char[] cArr2 = this.f12817g;
        copyOf5[cArr2.length] = 't';
        copyOf5[cArr2.length + 1] = 'r';
        copyOf5[cArr2.length + 2] = 'u';
        copyOf5[cArr2.length + 3] = 'e';
        this.f87394v = copyOf5;
        char[] copyOf6 = Arrays.copyOf(cArr2, cArr2.length + 5);
        char[] cArr3 = this.f12817g;
        copyOf6[cArr3.length] = 'f';
        copyOf6[cArr3.length + 1] = 'a';
        copyOf6[cArr3.length + 2] = 'l';
        copyOf6[cArr3.length + 3] = 's';
        copyOf6[cArr3.length + 4] = 'e';
        this.f87395w = copyOf6;
        char[] copyOf7 = Arrays.copyOf(cArr3, cArr3.length + 1);
        char[] cArr4 = this.f12817g;
        copyOf7[cArr4.length] = '1';
        this.f87396x = copyOf7;
        char[] copyOf8 = Arrays.copyOf(cArr4, cArr4.length + 1);
        copyOf8[this.f12817g.length] = '0';
        this.f87397y = copyOf8;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        return ybk.f90568a;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        try {
            Boolean bool = (Boolean) getFieldValue(obj);
            if (bool == null) {
                if (((this.features | jSONWriter.getFeatures()) & (JSONWriter.Feature.WriteNulls.mask | JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullBooleanAsFalse.mask)) == 0) {
                    return false;
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeBooleanNull();
                return true;
            }
            if (this.fieldClass == Boolean.TYPE && !bool.booleanValue() && (jSONWriter.getFeatures(this.features) & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                return false;
            }
            writeBool(jSONWriter, bool.booleanValue());
            return true;
        } catch (RuntimeException e) {
            if (jSONWriter.isIgnoreErrorGetter()) {
                return false;
            }
            throw e;
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public final void writeBool(JSONWriter jSONWriter, boolean z) {
        long features = jSONWriter.getFeatures(this.features);
        if ((JSONWriter.Feature.WriteNonStringValueAsString.mask & features) != 0) {
            writeFieldName(jSONWriter);
            jSONWriter.writeString(z ? "true" : "false");
        } else if (jSONWriter.utf8) {
            jSONWriter.writeNameRaw((features & JSONWriter.Feature.WriteBooleanAsNumber.mask) != 0 ? z ? this.f87392t : this.f87393u : z ? this.f87390r : this.f87391s);
        } else if (jSONWriter.utf16) {
            jSONWriter.writeNameRaw((features & JSONWriter.Feature.WriteBooleanAsNumber.mask) != 0 ? z ? this.f87396x : this.f87397y : z ? this.f87394v : this.f87395w);
        } else {
            writeFieldName(jSONWriter);
            jSONWriter.writeBool(z);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public void writeValue(JSONWriter jSONWriter, Object obj) {
        Boolean bool = (Boolean) getFieldValue(obj);
        if (bool == null) {
            jSONWriter.writeNull();
        } else {
            jSONWriter.writeBool(bool.booleanValue());
        }
    }
}
