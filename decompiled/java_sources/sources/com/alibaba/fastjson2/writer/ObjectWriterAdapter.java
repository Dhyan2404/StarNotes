package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.SymbolTable;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.PropertyFilter;
import com.alibaba.fastjson2.filter.PropertyPreFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sunia.HTREnginev2.dck;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ObjectWriterAdapter<T> implements ObjectWriter<T> {

    /* renamed from: t */
    public static final String f12832t = "@type";

    /* renamed from: a */
    public boolean f12833a;

    /* renamed from: b */
    public PropertyPreFilter f12834b;

    /* renamed from: c */
    public PropertyFilter f12835c;

    /* renamed from: d */
    public NameFilter f12836d;

    /* renamed from: e */
    public ValueFilter f12837e;

    /* renamed from: f */
    public final Class f12838f;
    protected final FieldWriter[] fieldWriterArray;

    /* renamed from: g */
    public final List<FieldWriter> f12839g;

    /* renamed from: h */
    public final String f12840h;

    /* renamed from: i */
    public byte[] f12841i;

    /* renamed from: j */
    public String f12842j;

    /* renamed from: k */
    public byte[] f12843k;

    /* renamed from: l */
    public char[] f12844l;

    /* renamed from: m */
    public final long f12845m;

    /* renamed from: n */
    public final long[] f12846n;

    /* renamed from: o */
    public final short[] f12847o;

    /* renamed from: p */
    public final boolean f12848p;

    /* renamed from: q */
    public final boolean f12849q;

    /* renamed from: r */
    public final boolean f12850r;

    /* renamed from: s */
    public final boolean f12851s;
    protected long typeNameHash;
    protected byte[] typeNameJSONB;
    protected long typeNameSymbolCache;

    public ObjectWriterAdapter(Class<T> cls, List<FieldWriter> list) {
        this(cls, null, null, 0L, list);
    }

    /* renamed from: a */
    public final boolean m7608a(JSONWriter jSONWriter, SymbolTable symbolTable) {
        int ordinalByHashCode;
        int identityHashCode = System.identityHashCode(symbolTable);
        long j = this.typeNameSymbolCache;
        if (j == 0) {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(getTypeNameHash());
            if (ordinalByHashCode != -1) {
                this.typeNameSymbolCache = (ordinalByHashCode << 32) | identityHashCode;
            }
        } else if (((int) j) == identityHashCode) {
            ordinalByHashCode = (int) (j >> 32);
        } else {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(getTypeNameHash());
            if (ordinalByHashCode != -1) {
                this.typeNameSymbolCache = (ordinalByHashCode << 32) | identityHashCode;
            }
        }
        if (ordinalByHashCode == -1) {
            return false;
        }
        jSONWriter.writeRaw(JSONB.Constants.BC_TYPED_ANY);
        jSONWriter.writeInt32(-ordinalByHashCode);
        return true;
    }

    public void errorOnNoneSerializable() {
        throw new JSONException("not support none serializable class " + this.f12838f.getName());
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public long getFeatures() {
        return this.f12845m;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public FieldWriter getFieldWriter(long j) {
        int binarySearch = Arrays.binarySearch(this.f12846n, j);
        if (binarySearch < 0) {
            return null;
        }
        return this.fieldWriterArray[this.f12847o[binarySearch]];
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public List<FieldWriter> getFieldWriters() {
        return this.f12839g;
    }

    public String getTypeName() {
        Class cls;
        if (this.f12842j == null && (cls = this.f12838f) != null) {
            if (!Enum.class.isAssignableFrom(cls) || this.f12838f.isEnum()) {
                this.f12842j = TypeUtils.getTypeName(this.f12838f);
            } else {
                this.f12842j = this.f12838f.getSuperclass().getName();
            }
        }
        return this.f12842j;
    }

    public long getTypeNameHash() {
        String typeName;
        if (this.typeNameHash == 0 && (typeName = getTypeName()) != null) {
            this.typeNameHash = Fnv.hashCode64(typeName);
        }
        return this.typeNameHash;
    }

    public byte[] getTypeNameJSONB() {
        String typeName;
        if (this.typeNameJSONB == null && (typeName = getTypeName()) != null) {
            this.typeNameJSONB = JSONB.toBytes(typeName);
        }
        return this.typeNameJSONB;
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public final boolean hasFilter(JSONWriter jSONWriter) {
        return this.f12833a || jSONWriter.hasFilter(this.f12850r);
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void setNameFilter(NameFilter nameFilter) {
        this.f12836d = nameFilter;
        if (nameFilter != null) {
            this.f12833a = true;
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void setPropertyFilter(PropertyFilter propertyFilter) {
        this.f12835c = propertyFilter;
        if (propertyFilter != null) {
            this.f12833a = true;
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void setPropertyPreFilter(PropertyPreFilter propertyPreFilter) {
        this.f12834b = propertyPreFilter;
        if (propertyPreFilter != null) {
            this.f12833a = true;
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void setValueFilter(ValueFilter valueFilter) {
        this.f12837e = valueFilter;
        if (valueFilter != null) {
            this.f12833a = true;
        }
    }

    public JSONObject toJSONObject(T t) {
        return toJSONObject(t, 0L);
    }

    public Map<String, Object> toMap(Object obj) {
        JSONObject jSONObject = new JSONObject(this.f12839g.size());
        for (int i = 0; i < this.f12839g.size(); i++) {
            FieldWriter fieldWriter = this.f12839g.get(i);
            jSONObject.put(fieldWriter.fieldName, fieldWriter.getFieldValue(obj));
        }
        return jSONObject;
    }

    public String toString() {
        return this.f12838f.getName();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void write(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (this.f12848p) {
            this.fieldWriterArray[0].writeValue(jSONWriter, obj);
            return;
        }
        long features = this.f12845m | j | jSONWriter.getFeatures();
        boolean z = (JSONWriter.Feature.BeanToArray.mask & features) != 0;
        if (jSONWriter.jsonb) {
            if (z) {
                writeArrayMappingJSONB(jSONWriter, obj, obj2, type, j);
                return;
            } else {
                writeJSONB(jSONWriter, obj, obj2, type, j);
                return;
            }
        }
        if (this.f12851s) {
            dck.f67724c.write(jSONWriter, (Collection) obj, obj2, type, j);
            return;
        }
        if (z) {
            writeArrayMapping(jSONWriter, obj, obj2, type, j);
            return;
        }
        if (!this.f12849q) {
            if ((JSONWriter.Feature.ErrorOnNoneSerializable.mask & features) != 0) {
                errorOnNoneSerializable();
                return;
            } else if ((features & JSONWriter.Feature.IgnoreNoneSerializable.mask) != 0) {
                jSONWriter.writeNull();
                return;
            }
        }
        if (hasFilter(jSONWriter)) {
            writeWithFilter(jSONWriter, obj, obj2, type, j);
            return;
        }
        jSONWriter.startObject();
        if (((this.f12845m | j) & JSONWriter.Feature.WriteClassName.mask) != 0 || jSONWriter.isWriteTypeInfo(obj, j)) {
            writeTypeInfo(jSONWriter);
        }
        int size = this.f12839g.size();
        for (int i = 0; i < size; i++) {
            this.f12839g.get(i).write(jSONWriter, obj);
        }
        jSONWriter.endObject();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeArrayMappingJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            writeClassInfo(jSONWriter);
        }
        int size = this.f12839g.size();
        jSONWriter.startArray(size);
        for (int i = 0; i < size; i++) {
            this.f12839g.get(i).writeValue(jSONWriter, obj);
        }
    }

    public final void writeClassInfo(JSONWriter jSONWriter) {
        SymbolTable symbolTable = jSONWriter.symbolTable;
        if (symbolTable == null || !m7608a(jSONWriter, symbolTable)) {
            jSONWriter.writeTypeName(getTypeNameJSONB(), getTypeNameHash());
        }
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public void writeJSONB(JSONWriter jSONWriter, Object obj, Object obj2, Type type, long j) {
        long features = this.f12845m | j | jSONWriter.getFeatures();
        if (!this.f12849q) {
            if ((JSONWriter.Feature.ErrorOnNoneSerializable.mask & features) != 0) {
                errorOnNoneSerializable();
                return;
            } else if ((JSONWriter.Feature.IgnoreNoneSerializable.mask & features) != 0) {
                jSONWriter.writeNull();
                return;
            }
        }
        if ((features & JSONWriter.Feature.IgnoreNoneSerializable.mask) != 0) {
            writeWithFilter(jSONWriter, obj, obj2, type, j);
            return;
        }
        int length = this.fieldWriterArray.length;
        if (jSONWriter.isWriteTypeInfo(obj, type, j)) {
            writeClassInfo(jSONWriter);
        }
        jSONWriter.startObject();
        for (int i = 0; i < length; i++) {
            this.f12839g.get(i).write(jSONWriter, obj);
        }
        jSONWriter.endObject();
    }

    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    public boolean writeTypeInfo(JSONWriter jSONWriter) {
        String typeName = getTypeName();
        if (jSONWriter.utf8) {
            if (this.f12843k == null) {
                int length = this.f12840h.length();
                int length2 = typeName.length();
                int i = length + length2;
                byte[] bArr = new byte[i + 5];
                bArr[0] = 34;
                this.f12840h.getBytes(0, length, bArr, 1);
                bArr[length + 1] = 34;
                bArr[length + 2] = 58;
                bArr[length + 3] = 34;
                typeName.getBytes(0, length2, bArr, length + 4);
                bArr[i + 4] = 34;
                this.f12843k = bArr;
            }
            jSONWriter.writeNameRaw(this.f12843k);
            return true;
        }
        if (!jSONWriter.utf16) {
            if (!jSONWriter.jsonb) {
                jSONWriter.writeString(this.f12840h);
                jSONWriter.writeColon();
                jSONWriter.writeString(typeName);
                return true;
            }
            if (this.f12841i == null) {
                this.f12841i = JSONB.toBytes(this.f12840h);
            }
            jSONWriter.writeRaw(this.f12841i);
            jSONWriter.writeRaw(this.typeNameJSONB);
            return true;
        }
        if (this.f12844l == null) {
            int length3 = this.f12840h.length();
            int length4 = typeName.length();
            int i2 = length3 + length4;
            char[] cArr = new char[i2 + 5];
            cArr[0] = '\"';
            this.f12840h.getChars(0, length3, cArr, 1);
            cArr[length3 + 1] = '\"';
            cArr[length3 + 2] = ':';
            cArr[length3 + 3] = '\"';
            typeName.getChars(0, length4, cArr, length3 + 4);
            cArr[i2 + 4] = '\"';
            this.f12844l = cArr;
        }
        jSONWriter.writeNameRaw(this.f12844l);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b7, code lost:
    
        if ((r0.features & 4503599627370496L) == 0) goto L52;
     */
    @Override // com.alibaba.fastjson2.writer.ObjectWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeWithFilter(com.alibaba.fastjson2.JSONWriter r43, java.lang.Object r44, java.lang.Object r45, java.lang.reflect.Type r46, long r47) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterAdapter.writeWithFilter(com.alibaba.fastjson2.JSONWriter, java.lang.Object, java.lang.Object, java.lang.reflect.Type, long):void");
    }

    public ObjectWriterAdapter(Class<T> cls, String str, String str2, long j, List<FieldWriter> list) {
        this.f12838f = cls;
        this.f12842j = str2;
        this.f12840h = (str == null || str.isEmpty()) ? f12832t : str;
        this.f12845m = j;
        this.f12839g = list;
        this.f12849q = cls == null || Serializable.class.isAssignableFrom(cls);
        this.f12851s = "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList".equals(str2) || "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet".equals(str2);
        FieldWriter[] fieldWriterArr = new FieldWriter[list.size()];
        this.fieldWriterArray = fieldWriterArr;
        list.toArray(fieldWriterArr);
        this.f12848p = fieldWriterArr.length == 1 && (fieldWriterArr[0].features & FieldInfo.VALUE_MASK) != 0;
        int length = fieldWriterArr.length;
        long[] jArr = new long[length];
        int i = 0;
        boolean z = false;
        while (true) {
            FieldWriter[] fieldWriterArr2 = this.fieldWriterArray;
            if (i >= fieldWriterArr2.length) {
                break;
            }
            FieldWriter fieldWriter = fieldWriterArr2[i];
            jArr[i] = Fnv.hashCode64(fieldWriter.fieldName);
            if (fieldWriter.method != null && (fieldWriter.features & 4503599627370496L) == 0) {
                z = true;
            }
            i++;
        }
        this.f12850r = z;
        long[] copyOf = Arrays.copyOf(jArr, length);
        this.f12846n = copyOf;
        Arrays.sort(copyOf);
        this.f12847o = new short[copyOf.length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f12847o[Arrays.binarySearch(this.f12846n, jArr[i2])] = (short) i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JSONObject toJSONObject(T t, long j) {
        JSONObject jSONObject = new JSONObject();
        for (FieldWriter fieldWriter : this.f12839g) {
            Object fieldValue = fieldWriter.getFieldValue(t);
            Class cls = fieldWriter.fieldClass;
            if ((fieldWriter.features & FieldInfo.UNWRAPPED_MASK) == 0) {
                if (fieldValue != null) {
                    String name = fieldValue.getClass().getName();
                    if (Collection.class.isAssignableFrom(cls) && fieldValue.getClass() != JSONObject.class && !name.equals("com.alibaba.fastjson.JSONObject")) {
                        Collection collection = (Collection) fieldValue;
                        JSONArray jSONArray = new JSONArray(collection.size());
                        Iterator it2 = collection.iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            jSONArray.add(next == t ? jSONObject : JSON.toJSON(next));
                        }
                        fieldValue = jSONArray;
                    }
                }
                if (fieldValue != null || ((this.f12845m | j) & JSONWriter.Feature.WriteNulls.mask) != 0) {
                    if (fieldValue == t) {
                        fieldValue = jSONObject;
                    }
                    jSONObject.put(fieldWriter.fieldName, fieldValue);
                }
            } else if (fieldValue instanceof Map) {
                jSONObject.putAll((Map) fieldValue);
            } else {
                ObjectWriter initWriter = fieldWriter.getInitWriter();
                if (initWriter == null) {
                    initWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter(fieldWriter.fieldClass);
                }
                for (FieldWriter fieldWriter2 : initWriter.getFieldWriters()) {
                    jSONObject.put(fieldWriter2.fieldName, fieldWriter2.getFieldValue(fieldValue));
                }
            }
        }
        return jSONObject;
    }
}
