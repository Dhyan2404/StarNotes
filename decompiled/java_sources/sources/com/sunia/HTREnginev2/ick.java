package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import java.lang.Enum;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class ick<E extends Enum<E>> extends ObjectWriterPrimitiveImpl {

    /* renamed from: a */
    public final Member f73118a;

    /* renamed from: b */
    public final Class f73119b;

    /* renamed from: c */
    public final Class f73120c;

    /* renamed from: d */
    public final long f73121d;

    /* renamed from: e */
    public byte[] f73122e;

    /* renamed from: f */
    public long f73123f;

    /* renamed from: g */
    public final Enum[] f73124g;

    /* renamed from: h */
    public final String[] f73125h;

    /* renamed from: i */
    public final long[] f73126i;

    /* renamed from: j */
    public byte[][] f73127j;

    /* renamed from: k */
    public String[] f73128k;

    /* JADX WARN: Multi-variable type inference failed */
    public ick(Class cls, Class cls2, Member member, String[] strArr, long j) {
        this.f73119b = cls;
        this.f73120c = cls2;
        this.f73121d = j;
        this.f73118a = member;
        if (member instanceof AccessibleObject) {
            try {
                ((AccessibleObject) member).setAccessible(true);
            } catch (Throwable unused) {
            }
        }
        Enum[] enumArr = (Enum[]) cls2.getEnumConstants();
        this.f73124g = enumArr;
        this.f73125h = new String[enumArr.length];
        this.f73126i = new long[enumArr.length];
        int i = 0;
        while (true) {
            Enum[] enumArr2 = this.f73124g;
            if (i >= enumArr2.length) {
                this.f73128k = strArr;
                return;
            }
            String name = enumArr2[i].name();
            this.f73125h[i] = name;
            this.f73126i[i] = Fnv.hashCode64(name);
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson2.JSONWriter r1, java.lang.Object r2, java.lang.Object r3, java.lang.reflect.Type r4, long r5) {
        /*
            r0 = this;
            r3 = r2
            java.lang.Enum r3 = (java.lang.Enum) r3
            if (r3 != 0) goto L9
            r1.writeNull()
            return
        L9:
            java.lang.reflect.Member r4 = r0.f73118a
            if (r4 == 0) goto L30
            boolean r5 = r4 instanceof java.lang.reflect.Field     // Catch: java.lang.Exception -> L27
            if (r5 == 0) goto L18
            java.lang.reflect.Field r4 = (java.lang.reflect.Field) r4     // Catch: java.lang.Exception -> L27
            java.lang.Object r4 = r4.get(r2)     // Catch: java.lang.Exception -> L27
            goto L21
        L18:
            java.lang.reflect.Method r4 = (java.lang.reflect.Method) r4     // Catch: java.lang.Exception -> L27
            r5 = 0
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Exception -> L27
            java.lang.Object r4 = r4.invoke(r2, r5)     // Catch: java.lang.Exception -> L27
        L21:
            if (r4 == r2) goto L30
            r1.writeAny(r4)     // Catch: java.lang.Exception -> L27
            return
        L27:
            r0 = move-exception
            com.alibaba.fastjson2.JSONException r1 = new com.alibaba.fastjson2.JSONException
            java.lang.String r2 = "getEnumValue error"
            r1.<init>(r2, r0)
            throw r1
        L30:
            com.alibaba.fastjson2.JSONWriter$Feature r2 = com.alibaba.fastjson2.JSONWriter.Feature.WriteEnumUsingToString
            boolean r2 = r1.isEnabled(r2)
            if (r2 == 0) goto L40
            java.lang.String r0 = r3.toString()
            r1.writeString(r0)
            return
        L40:
            java.lang.String[] r2 = r0.f73128k
            if (r2 == 0) goto L50
            int r2 = r3.ordinal()
            java.lang.String[] r0 = r0.f73128k
            int r4 = r0.length
            if (r2 >= r4) goto L50
            r0 = r0[r2]
            goto L51
        L50:
            r0 = 0
        L51:
            if (r0 != 0) goto L57
            java.lang.String r0 = r3.name()
        L57:
            r1.writeString(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ick.write(com.alibaba.fastjson2.JSONWriter, java.lang.Object, java.lang.Object, java.lang.reflect.Type, long):void");
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            if (this.f73122e == null) {
                String typeName = TypeUtils.getTypeName(this.f73120c);
                this.f73122e = JSONB.toBytes(typeName);
                this.f73123f = Fnv.hashCode64(typeName);
            }
            jSONWriter.writeTypeName(this.f73122e, this.f73123f);
        }
        Enum r2 = (Enum) obj;
        if (jSONWriter.isEnabled(JSONWriter.Feature.WriteEnumUsingToString)) {
            jSONWriter.writeString(r2.toString());
            return;
        }
        if (this.f73127j == null) {
            this.f73127j = new byte[this.f73125h.length];
        }
        int ordinal = r2.ordinal();
        byte[] bArr = this.f73127j[ordinal];
        if (bArr == null) {
            bArr = JSONB.toBytes(this.f73125h[ordinal]);
            this.f73127j[ordinal] = bArr;
        }
        jSONWriter.writeRaw(bArr);
    }
}
