package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.SymbolTable;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class keg extends FieldWriter {

    /* renamed from: r */
    public final byte[][] f75341r;

    /* renamed from: s */
    public final char[][] f75342s;

    /* renamed from: t */
    public final byte[][] f75343t;

    /* renamed from: u */
    public final char[][] f75344u;

    /* renamed from: v */
    public final Class f75345v;

    /* renamed from: w */
    public final Enum[] f75346w;

    /* renamed from: x */
    public final long[] f75347x;

    /* renamed from: y */
    public final long[] f75348y;

    public keg(String str, int i, long j, String str2, String str3, Type type, Class<? extends Enum> cls, Field field, Method method) {
        super(str, i, j, str2, str3, type, cls, field, method);
        this.f75345v = cls;
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        this.f75346w = enumArr;
        this.f75347x = new long[enumArr.length];
        this.f75348y = new long[enumArr.length];
        int i2 = 0;
        while (true) {
            Enum[] enumArr2 = this.f75346w;
            if (i2 >= enumArr2.length) {
                this.f75341r = new byte[enumArr2.length];
                this.f75342s = new char[enumArr2.length];
                this.f75343t = new byte[enumArr2.length];
                this.f75344u = new char[enumArr2.length];
                return;
            }
            this.f75347x[i2] = Fnv.hashCode64(enumArr2[i2].name());
            i2++;
        }
    }

    /* renamed from: c */
    public final byte[] m55207c(int i) {
        int stringSize = IOUtils.stringSize(i);
        byte[] bArr = this.f12816f;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length + stringSize);
        byte[] copyOf2 = Arrays.copyOf(copyOf, copyOf.length);
        IOUtils.writeInt32(copyOf2, this.f12816f.length, i);
        return copyOf2;
    }

    /* renamed from: d */
    public final char[] m55208d(int i) {
        int stringSize = IOUtils.stringSize(i);
        char[] cArr = this.f12817g;
        char[] copyOf = Arrays.copyOf(cArr, cArr.length + stringSize);
        char[] copyOf2 = Arrays.copyOf(copyOf, copyOf.length);
        IOUtils.writeInt32(copyOf2, 0, i);
        return copyOf2;
    }

    /* renamed from: e */
    public final byte[] m55209e(int i) {
        byte[] bytes = this.f75346w[i].name().getBytes(StandardCharsets.UTF_8);
        byte[] bArr = this.f12816f;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length + bytes.length + 2);
        byte[] bArr2 = this.f12816f;
        copyOf[bArr2.length] = 34;
        int length = bArr2.length + 1;
        int length2 = bytes.length;
        int i2 = 0;
        while (i2 < length2) {
            copyOf[length] = bytes[i2];
            i2++;
            length++;
        }
        copyOf[copyOf.length - 1] = 34;
        return copyOf;
    }

    /* renamed from: f */
    public final char[] m55210f(int i) {
        String name = this.f75346w[i].name();
        char[] cArr = this.f12817g;
        char[] copyOf = Arrays.copyOf(cArr, cArr.length + name.length() + 2);
        copyOf[this.f12817g.length] = '\"';
        name.getChars(0, name.length(), copyOf, this.f12817g.length + 1);
        copyOf[copyOf.length - 1] = '\"';
        return copyOf;
    }

    /* renamed from: g */
    public final void m55211g(JSONWriter jSONWriter, Enum r8, SymbolTable symbolTable) {
        int i;
        if (symbolTable != null) {
            int identityHashCode = System.identityHashCode(symbolTable);
            long j = this.f12819i;
            if (j == 0) {
                i = symbolTable.getOrdinalByHashCode(this.f12815e);
                this.f12819i = (i << 32) | identityHashCode;
            } else if (((int) j) == identityHashCode) {
                i = (int) (j >> 32);
            } else {
                i = symbolTable.getOrdinalByHashCode(this.f12815e);
                this.f12819i = (i << 32) | identityHashCode;
            }
        } else {
            i = -1;
        }
        if (i != -1) {
            jSONWriter.writeSymbol(-i);
        } else {
            jSONWriter.writeNameRaw(this.f12818h, this.f12815e);
        }
        jSONWriter.writeString(r8.toString());
    }

    /* renamed from: h */
    public final boolean m55212h(JSONWriter jSONWriter, int i, SymbolTable symbolTable) {
        int ordinalByHashCode;
        int ordinalByHashCode2;
        int identityHashCode = System.identityHashCode(symbolTable);
        long j = this.f75348y[i];
        if (j == 0) {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(this.f75347x[i]);
            this.f75348y[i] = (ordinalByHashCode << 32) | identityHashCode;
        } else if (((int) j) == identityHashCode) {
            ordinalByHashCode = (int) (j >> 32);
        } else {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(this.f75347x[i]);
            this.f75348y[i] = (ordinalByHashCode << 32) | identityHashCode;
        }
        if (ordinalByHashCode < 0) {
            return false;
        }
        long j2 = this.f12819i;
        if (j2 == 0) {
            ordinalByHashCode2 = symbolTable.getOrdinalByHashCode(this.f12815e);
            if (ordinalByHashCode2 != -1) {
                this.f12819i = (ordinalByHashCode2 << 32) | identityHashCode;
            }
        } else if (((int) j2) == identityHashCode) {
            ordinalByHashCode2 = (int) (j2 >> 32);
        } else {
            ordinalByHashCode2 = symbolTable.getOrdinalByHashCode(this.f12815e);
            this.f12819i = (ordinalByHashCode2 << 32) | identityHashCode;
        }
        if (ordinalByHashCode2 != -1) {
            jSONWriter.writeSymbol(-ordinalByHashCode2);
        } else {
            jSONWriter.writeNameRaw(this.f12818h, this.f12815e);
        }
        jSONWriter.writeRaw(JSONB.Constants.BC_STR_ASCII);
        jSONWriter.writeInt32(-ordinalByHashCode);
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public boolean write(JSONWriter jSONWriter, Object obj) {
        Enum r7 = (Enum) getFieldValue(obj);
        if (r7 != null) {
            if (jSONWriter.jsonb) {
                writeEnumJSONB(jSONWriter, r7);
            } else {
                writeEnum(jSONWriter, r7);
            }
            return true;
        }
        if (((this.features | jSONWriter.getFeatures()) & JSONWriter.Feature.WriteNulls.mask) == 0) {
            return false;
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeNull();
        return true;
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public final void writeEnum(JSONWriter jSONWriter, Enum r12) {
        long features = jSONWriter.getFeatures(this.features);
        if ((JSONWriter.Feature.WriteEnumUsingToString.mask & features) == 0) {
            if (jSONWriter.jsonb) {
                writeEnumJSONB(jSONWriter, r12);
                return;
            }
            boolean z = (JSONWriter.Feature.UnquoteFieldName.mask & features) != 0;
            boolean z2 = jSONWriter.utf8;
            boolean z3 = !z2 && jSONWriter.utf16;
            int ordinal = r12.ordinal();
            if ((features & JSONWriter.Feature.WriteEnumUsingOrdinal.mask) != 0) {
                if (!z) {
                    if (z2) {
                        byte[][] bArr = this.f75343t;
                        byte[] bArr2 = bArr[ordinal];
                        if (bArr2 == null) {
                            bArr2 = m55207c(ordinal);
                            bArr[ordinal] = bArr2;
                        }
                        jSONWriter.writeNameRaw(bArr2);
                        return;
                    }
                    if (z3) {
                        char[][] cArr = this.f75344u;
                        char[] cArr2 = cArr[ordinal];
                        if (cArr2 == null) {
                            cArr2 = m55208d(ordinal);
                            cArr[ordinal] = cArr2;
                        }
                        jSONWriter.writeNameRaw(cArr2);
                        return;
                    }
                }
                writeFieldName(jSONWriter);
                jSONWriter.writeInt32(ordinal);
                return;
            }
            if (!z) {
                if (z2) {
                    byte[][] bArr3 = this.f75341r;
                    byte[] bArr4 = bArr3[ordinal];
                    if (bArr4 == null) {
                        bArr4 = m55209e(ordinal);
                        bArr3[ordinal] = bArr4;
                    }
                    jSONWriter.writeNameRaw(bArr4);
                    return;
                }
                if (z3) {
                    char[][] cArr3 = this.f75342s;
                    char[] cArr4 = cArr3[ordinal];
                    if (cArr4 == null) {
                        cArr4 = m55210f(ordinal);
                        cArr3[ordinal] = cArr4;
                    }
                    jSONWriter.writeNameRaw(cArr4);
                    return;
                }
            }
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeString(r12.toString());
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public final void writeEnumJSONB(JSONWriter jSONWriter, Enum r11) {
        int i;
        if (r11 == null) {
            return;
        }
        long features = jSONWriter.getFeatures(this.features);
        long j = JSONWriter.Feature.WriteEnumUsingToString.mask;
        boolean z = ((JSONWriter.Feature.WriteEnumsUsingName.mask | j) & features) == 0;
        boolean z2 = (features & j) != 0;
        int ordinal = r11.ordinal();
        SymbolTable symbolTable = jSONWriter.symbolTable;
        if (symbolTable == null || !z || z2 || !m55212h(jSONWriter, ordinal, symbolTable)) {
            if (z2) {
                m55211g(jSONWriter, r11, symbolTable);
                return;
            }
            if (!z) {
                writeFieldName(jSONWriter);
                jSONWriter.writeString(r11.name());
                return;
            }
            if (symbolTable != null) {
                int identityHashCode = System.identityHashCode(symbolTable);
                long j2 = this.f12819i;
                if (j2 == 0) {
                    i = symbolTable.getOrdinalByHashCode(this.f12815e);
                    this.f12819i = (i << 32) | identityHashCode;
                } else if (((int) j2) == identityHashCode) {
                    i = (int) (j2 >> 32);
                } else {
                    i = symbolTable.getOrdinalByHashCode(this.f12815e);
                    this.f12819i = (i << 32) | identityHashCode;
                }
            } else {
                i = -1;
            }
            if (i != -1) {
                jSONWriter.writeSymbol(-i);
            } else {
                jSONWriter.writeNameRaw(this.f12818h, this.f12815e);
            }
            jSONWriter.writeInt32(ordinal);
        }
    }

    @Override // com.alibaba.fastjson2.writer.FieldWriter
    public final void writeValue(JSONWriter jSONWriter, Object obj) {
        jSONWriter.writeEnum((Enum) getFieldValue(obj));
    }
}
