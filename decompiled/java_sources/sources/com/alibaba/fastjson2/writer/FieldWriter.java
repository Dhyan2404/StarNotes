package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.SymbolTable;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.JdbcSupport;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sunia.HTREnginev2.adk;
import com.sunia.HTREnginev2.bdk;
import com.sunia.HTREnginev2.cdk;
import com.sunia.HTREnginev2.fck;
import com.sunia.HTREnginev2.fdk;
import com.sunia.HTREnginev2.hdk;
import com.sunia.HTREnginev2.jbk;
import com.sunia.HTREnginev2.lck;
import com.sunia.HTREnginev2.pdk;
import com.sunia.HTREnginev2.vbk;
import com.sunia.HTREnginev2.zbk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoField;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public abstract class FieldWriter<T> implements Comparable {

    /* renamed from: q */
    public static final AtomicReferenceFieldUpdater<FieldWriter, ObjectWriter> f12814q = AtomicReferenceFieldUpdater.newUpdater(FieldWriter.class, ObjectWriter.class, "p");
    public final DecimalFormat decimalFormat;

    /* renamed from: e */
    public final long f12815e;

    /* renamed from: f */
    public final byte[] f12816f;
    public final long features;
    public final Field field;
    public final Class fieldClass;
    public final String fieldName;
    protected final long fieldOffset;
    public final Type fieldType;
    public final String format;

    /* renamed from: g */
    public final char[] f12817g;

    /* renamed from: h */
    public final byte[] f12818h;

    /* renamed from: i */
    public long f12819i;

    /* renamed from: j */
    public final boolean f12820j;

    /* renamed from: k */
    public final JSONWriter.Path f12821k;

    /* renamed from: l */
    public final boolean f12822l;
    public final String label;

    /* renamed from: m */
    public final boolean f12823m;
    public final Method method;

    /* renamed from: n */
    public final boolean f12824n;

    /* renamed from: o */
    public transient JSONWriter.Path f12825o;
    public final int ordinal;

    /* renamed from: p */
    public volatile ObjectWriter f12826p;
    protected final boolean primitive;

    public FieldWriter(String str, int i, long j, String str2, String str3, Type type, Class cls, Field field, Method method) {
        int i2;
        if ("string".equals(str2) && cls != String.class) {
            j |= JSONWriter.Feature.WriteNonStringValueAsString.mask;
        }
        this.fieldName = str;
        this.ordinal = i;
        this.format = str2;
        this.label = str3;
        this.f12815e = Fnv.hashCode64(str);
        this.features = j;
        this.fieldType = TypeUtils.intern(type);
        this.fieldClass = cls;
        this.f12820j = cls != null && (Serializable.class.isAssignableFrom(cls) || !Modifier.isFinal(cls.getModifiers()));
        this.field = field;
        this.method = method;
        this.primitive = cls.isPrimitive();
        this.f12818h = JSONB.toBytes(str);
        this.decimalFormat = (str2 == null || !(cls == Float.TYPE || cls == float[].class || cls == Float.class || cls == Float[].class || cls == Double.TYPE || cls == double[].class || cls == Double.class || cls == Double[].class || cls == BigDecimal.class || cls == BigDecimal[].class)) ? null : new DecimalFormat(str2);
        this.fieldOffset = field != null ? JDKUtils.UNSAFE.objectFieldOffset(field) : -1L;
        this.f12822l = "symbol".equals(str2);
        this.f12823m = "trim".equals(str2);
        this.f12824n = (j & 1125899906842624L) != 0;
        this.f12821k = new JSONWriter.Path(JSONWriter.Path.ROOT, str);
        int length = str.length();
        int i3 = length + 3;
        int i4 = i3;
        for (int i5 = 0; i5 < length; i5++) {
            char charAt = str.charAt(i5);
            if (charAt < 1 || charAt > 127) {
                i4 = charAt > 2047 ? i4 + 2 : i4 + 1;
            }
        }
        byte[] bArr = new byte[i4];
        bArr[0] = 34;
        int i6 = 1;
        for (int i7 = 0; i7 < length; i7++) {
            char charAt2 = str.charAt(i7);
            if (charAt2 >= 1 && charAt2 <= 127) {
                i2 = i6 + 1;
                bArr[i6] = (byte) charAt2;
            } else if (charAt2 > 2047) {
                int i8 = i6 + 1;
                bArr[i6] = (byte) (((charAt2 >> '\f') & 15) | 224);
                int i9 = i8 + 1;
                bArr[i8] = (byte) (((charAt2 >> 6) & 63) | 128);
                i2 = i9 + 1;
                bArr[i9] = (byte) ((charAt2 & '?') | 128);
            } else {
                int i10 = i6 + 1;
                bArr[i6] = (byte) (((charAt2 >> 6) & 31) | 192);
                i6 = i10 + 1;
                bArr[i10] = (byte) ((charAt2 & '?') | 128);
            }
            i6 = i2;
        }
        bArr[i6] = 34;
        bArr[i6 + 1] = 58;
        this.f12816f = bArr;
        char[] cArr = new char[i3];
        cArr[0] = '\"';
        str.getChars(0, str.length(), cArr, 1);
        cArr[i3 - 2] = '\"';
        cArr[i3 - 1] = ':';
        this.f12817g = cArr;
    }

    /* renamed from: a */
    public static ObjectWriter m7602a(Type type, Class cls, String str, Locale locale, Class cls2) {
        if (Map.class.isAssignableFrom(cls2)) {
            return cls.isAssignableFrom(cls2) ? ObjectWriterImplMap.m7617of(type, cls2) : ObjectWriterImplMap.m7615of(cls2);
        }
        if (Calendar.class.isAssignableFrom(cls2)) {
            return (str == null || str.isEmpty()) ? zbk.f91590b : new zbk(str, locale);
        }
        if (ZonedDateTime.class.isAssignableFrom(cls2)) {
            return (str == null || str.isEmpty()) ? pdk.f80694c : new pdk(str, locale);
        }
        if (OffsetDateTime.class.isAssignableFrom(cls2)) {
            return (str == null || str.isEmpty()) ? fdk.f69909b : fdk.m54081a(str, locale);
        }
        if (LocalDateTime.class.isAssignableFrom(cls2)) {
            ObjectWriter objectWriter = JSONFactory.getDefaultObjectWriterProvider().getObjectWriter(LocalDateTime.class);
            return (objectWriter == null || objectWriter == bdk.f65657b) ? (str == null || str.isEmpty()) ? bdk.f65657b : new bdk(str, locale) : objectWriter;
        }
        if (LocalDate.class.isAssignableFrom(cls2)) {
            ObjectWriter objectWriter2 = JSONFactory.getDefaultObjectWriterProvider().getObjectWriter(LocalDate.class);
            return (objectWriter2 == null || objectWriter2 == adk.f64588b) ? adk.m53000a(str, locale) : objectWriter2;
        }
        if (LocalTime.class.isAssignableFrom(cls2)) {
            ObjectWriter objectWriter3 = JSONFactory.getDefaultObjectWriterProvider().getObjectWriter(LocalTime.class);
            return (objectWriter3 == null || objectWriter3 == cdk.f66730b) ? (str == null || str.isEmpty()) ? cdk.f66730b : new cdk(str, locale) : objectWriter3;
        }
        if (Instant.class == cls2) {
            return (str == null || str.isEmpty()) ? lck.f76348b : new lck(str, locale);
        }
        if (BigDecimal.class == cls2) {
            return (str == null || str.isEmpty()) ? vbk.f87339c : new vbk(new DecimalFormat(str), null);
        }
        if (BigDecimal[].class == cls2) {
            return (str == null || str.isEmpty()) ? new jbk(BigDecimal.class, null) : new jbk(BigDecimal.class, new DecimalFormat(str));
        }
        if (Optional.class == cls2) {
            return hdk.m54451a(str, locale);
        }
        String name = cls2.getName();
        if (name.equals("java.sql.Date")) {
            return new fck(str, locale);
        }
        if (name.equals("java.sql.Time")) {
            return JdbcSupport.TimeWriter.m7593of(str);
        }
        if (name.equals("java.sql.Timestamp")) {
            return new JdbcSupport.TimestampWriter(str);
        }
        return null;
    }

    /* renamed from: b */
    public final boolean m7603b(JSONWriter jSONWriter, SymbolTable symbolTable) {
        int ordinalByHashCode;
        int identityHashCode = System.identityHashCode(symbolTable);
        long j = this.f12819i;
        if (j == 0) {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(this.f12815e);
            this.f12819i = (ordinalByHashCode << 32) | identityHashCode;
        } else if (((int) j) == identityHashCode) {
            ordinalByHashCode = (int) (j >> 32);
        } else {
            ordinalByHashCode = symbolTable.getOrdinalByHashCode(this.f12815e);
            this.f12819i = (ordinalByHashCode << 32) | identityHashCode;
        }
        if (ordinalByHashCode == -1) {
            return false;
        }
        jSONWriter.writeSymbol(-ordinalByHashCode);
        return true;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Class<?> declaringClass;
        Class<?> declaringClass2;
        FieldWriter fieldWriter = (FieldWriter) obj;
        int i = this.ordinal;
        int i2 = fieldWriter.ordinal;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int compareTo = this.fieldName.compareTo(fieldWriter.fieldName);
        if (compareTo != 0) {
            return compareTo;
        }
        Member member = this.field;
        if (member == null) {
            member = this.method;
        }
        Member member2 = fieldWriter.field;
        if (member2 == null) {
            member2 = fieldWriter.method;
        }
        if (member != null && member2 != null && (declaringClass2 = member.getDeclaringClass()) != (declaringClass = member2.getDeclaringClass())) {
            if (declaringClass2.isAssignableFrom(declaringClass)) {
                return 1;
            }
            if (declaringClass.isAssignableFrom(declaringClass2)) {
                return -1;
            }
        }
        if ((member instanceof Field) && (member2 instanceof Method)) {
            return -1;
        }
        boolean z = member instanceof Method;
        if (z && (member2 instanceof Field)) {
            return 1;
        }
        Class cls = fieldWriter.fieldClass;
        Class<?> cls2 = this.fieldClass;
        if (cls2 != cls && cls2 != null && cls != null) {
            if (cls2.isAssignableFrom(cls)) {
                return 1;
            }
            if (cls.isAssignableFrom(cls2)) {
                return -1;
            }
        }
        Class cls3 = Boolean.TYPE;
        if (cls2 == cls3 && cls != cls3) {
            return 1;
        }
        if (cls2 == Boolean.class && cls == Boolean.class && z && (member2 instanceof Method)) {
            String name = member.getName();
            String name2 = member2.getName();
            if (name.startsWith("is") && name2.startsWith("get")) {
                return 1;
            }
            if (name.startsWith("get") && name2.startsWith("is")) {
                return -1;
            }
        }
        if (z && (member2 instanceof Method)) {
            String name3 = member.getName();
            String name4 = member2.getName();
            if (!name3.equals(name4)) {
                String str = BeanUtils.getterName(name3, null);
                String str2 = BeanUtils.getterName(name4, null);
                if (this.fieldName.equals(str) && !fieldWriter.fieldName.equals(str2)) {
                    return 1;
                }
                if (this.fieldName.equals(str2) && !fieldWriter.fieldName.equals(str)) {
                    return -1;
                }
            }
        }
        return compareTo;
    }

    public Object getFieldValue(T t) {
        if (t == null) {
            throw new JSONException("field.get error, " + this.fieldName);
        }
        Field field = this.field;
        if (field == null) {
            throw new UnsupportedOperationException();
        }
        try {
            long j = this.fieldOffset;
            return (j == -1 || this.primitive) ? field.get(t) : JDKUtils.UNSAFE.getObject(t, j);
        } catch (IllegalAccessException | IllegalArgumentException e) {
            throw new JSONException("field.get error, " + this.fieldName, e);
        }
    }

    public ObjectWriter getInitWriter() {
        return null;
    }

    public Class getItemClass() {
        return null;
    }

    public Type getItemType() {
        return null;
    }

    public ObjectWriter getItemWriter(JSONWriter jSONWriter, Type type) {
        return jSONWriter.getObjectWriter(type, null);
    }

    public ObjectWriter getObjectWriter(JSONWriter jSONWriter, Class cls) {
        return cls == Float[].class ? this.decimalFormat != null ? new jbk(Float.class, this.decimalFormat) : jbk.f74134g : cls == Double[].class ? this.decimalFormat != null ? new jbk(Double.class, this.decimalFormat) : jbk.f74135h : cls == BigDecimal[].class ? this.decimalFormat != null ? new jbk(BigDecimal.class, this.decimalFormat) : jbk.f74136i : jSONWriter.getObjectWriter(cls);
    }

    public final JSONWriter.Path getPath(JSONWriter.Path path) {
        JSONWriter.Path path2 = this.f12825o;
        if (path2 != null) {
            return path2.parent == path ? path2 : new JSONWriter.Path(path, this.fieldName);
        }
        JSONWriter.Path path3 = new JSONWriter.Path(path, this.fieldName);
        this.f12825o = path3;
        return path3;
    }

    public final JSONWriter.Path getRootParentPath() {
        return this.f12821k;
    }

    public boolean isDateFormatISO8601() {
        return false;
    }

    public boolean isDateFormatMillis() {
        return false;
    }

    public boolean isFieldClassSerializable() {
        return this.f12820j;
    }

    public String toString() {
        return this.fieldName;
    }

    public boolean unwrapped() {
        return false;
    }

    public abstract boolean write(JSONWriter jSONWriter, T t);

    public void writeBinary(JSONWriter jSONWriter, byte[] bArr) {
        if (bArr == null) {
            if (jSONWriter.isWriteNulls()) {
                writeFieldName(jSONWriter);
                jSONWriter.writeArrayNull();
                return;
            }
            return;
        }
        writeFieldName(jSONWriter);
        if ("base64".equals(this.format) || (this.format == null && (jSONWriter.getFeatures(this.features) & JSONWriter.Feature.WriteByteArrayAsBase64.mask) != 0)) {
            jSONWriter.writeBase64(bArr);
            return;
        }
        if ("hex".equals(this.format)) {
            jSONWriter.writeHex(bArr);
            return;
        }
        if (!"gzip,base64".equals(this.format) && !"gzip".equals(this.format)) {
            jSONWriter.writeBinary(bArr);
            return;
        }
        GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = bArr.length < 512 ? new GZIPOutputStream(byteArrayOutputStream, bArr.length) : new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                IOUtils.close(gZIPOutputStream);
                jSONWriter.writeBase64(byteArray);
            } catch (IOException e) {
                throw new JSONException("write gzipBytes error", e);
            }
        } catch (Throwable th) {
            IOUtils.close(gZIPOutputStream);
            throw th;
        }
    }

    public void writeBool(JSONWriter jSONWriter, boolean z) {
        throw new UnsupportedOperationException();
    }

    public void writeDate(JSONWriter jSONWriter, boolean z, Date date) {
        if (date == null) {
            if (z) {
                writeFieldName(jSONWriter);
            }
            jSONWriter.writeNull();
            return;
        }
        writeDate(jSONWriter, z, date.getTime());
    }

    public void writeDouble(JSONWriter jSONWriter, double d) {
        writeFieldName(jSONWriter);
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeDouble(d, decimalFormat);
        } else {
            jSONWriter.writeDouble(d);
        }
    }

    public void writeEnum(JSONWriter jSONWriter, Enum r2) {
        writeFieldName(jSONWriter);
        jSONWriter.writeEnum(r2);
    }

    public void writeEnumJSONB(JSONWriter jSONWriter, Enum r2) {
        throw new UnsupportedOperationException();
    }

    public final void writeFieldName(JSONWriter jSONWriter) {
        if (jSONWriter.jsonb) {
            SymbolTable symbolTable = jSONWriter.symbolTable;
            if (symbolTable == null || !m7603b(jSONWriter, symbolTable)) {
                jSONWriter.writeNameRaw(this.f12818h, this.f12815e);
                return;
            }
            return;
        }
        if (!jSONWriter.useSingleQuote && (jSONWriter.context.getFeatures() & JSONWriter.Feature.UnquoteFieldName.mask) == 0) {
            if (jSONWriter.utf8) {
                jSONWriter.writeNameRaw(this.f12816f);
                return;
            } else if (jSONWriter.utf16) {
                jSONWriter.writeNameRaw(this.f12817g);
                return;
            }
        }
        jSONWriter.writeName(this.fieldName);
        jSONWriter.writeColon();
    }

    public void writeFloat(JSONWriter jSONWriter, float f) {
        writeFieldName(jSONWriter);
        DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat != null) {
            jSONWriter.writeFloat(f, decimalFormat);
        } else {
            jSONWriter.writeFloat(f);
        }
    }

    public void writeInt16(JSONWriter jSONWriter, short[] sArr) {
        if (sArr != null || jSONWriter.isWriteNulls()) {
            writeFieldName(jSONWriter);
            jSONWriter.writeInt16(sArr);
        }
    }

    public void writeInt32(JSONWriter jSONWriter, int i) {
        writeFieldName(jSONWriter);
        jSONWriter.writeInt32(i);
    }

    public void writeInt64(JSONWriter jSONWriter, long j) {
        writeFieldName(jSONWriter);
        if ((this.features & JSONWriter.Feature.WriteNonStringValueAsString.mask) != 0) {
            jSONWriter.writeString(Long.toString(j));
        } else {
            jSONWriter.writeInt64(j);
        }
    }

    public void writeList(JSONWriter jSONWriter, boolean z, List list) {
        throw new UnsupportedOperationException();
    }

    public void writeListStr(JSONWriter jSONWriter, boolean z, List<String> list) {
        throw new UnsupportedOperationException();
    }

    public void writeString(JSONWriter jSONWriter, String str) {
        writeFieldName(jSONWriter);
        if (str == null && (this.features & (JSONWriter.Feature.NullAsDefaultValue.mask | JSONWriter.Feature.WriteNullStringAsEmpty.mask)) != 0) {
            jSONWriter.writeString("");
            return;
        }
        if (this.f12823m && str != null) {
            str = str.trim();
        }
        if (this.f12822l && jSONWriter.jsonb) {
            jSONWriter.writeSymbol(str);
        } else if (this.f12824n) {
            jSONWriter.writeRaw(str);
        } else {
            jSONWriter.writeString(str);
        }
    }

    public abstract void writeValue(JSONWriter jSONWriter, T t);

    public void writeBool(JSONWriter jSONWriter, boolean[] zArr) {
        if (zArr != null || jSONWriter.isWriteNulls()) {
            writeFieldName(jSONWriter);
            jSONWriter.writeBool(zArr);
        }
    }

    public void writeDate(JSONWriter jSONWriter, long j) {
        writeDate(jSONWriter, true, j);
    }

    public void writeDate(JSONWriter jSONWriter, boolean z, long j) {
        long j2;
        if (jSONWriter.jsonb) {
            jSONWriter.writeMillis(j);
            return;
        }
        JSONWriter.Context context = jSONWriter.context;
        if (!isDateFormatMillis() && !context.isDateFormatMillis()) {
            ZoneId zoneId = context.getZoneId();
            if (context.getDateFormat() == null) {
                long epochSecond = Instant.ofEpochMilli(j).getEpochSecond() + zoneId.getRules().getOffset(r1).getTotalSeconds();
                long floorDiv = Math.floorDiv(epochSecond, 86400L);
                int floorMod = (int) Math.floorMod(epochSecond, 86400L);
                long j3 = (floorDiv + 719528) - 60;
                if (j3 < 0) {
                    long j4 = ((j3 + 1) / 146097) - 1;
                    j2 = j4 * 400;
                    j3 += (-j4) * 146097;
                } else {
                    j2 = 0;
                }
                long j5 = ((j3 * 400) + 591) / 146097;
                long j6 = j3 - ((((j5 * 365) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
                if (j6 < 0) {
                    j5--;
                    j6 = j3 - ((((365 * j5) + (j5 / 4)) - (j5 / 100)) + (j5 / 400));
                }
                int i = (int) j6;
                int i2 = ((i * 5) + 2) / 153;
                int i3 = ((i2 + 2) % 12) + 1;
                int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
                int checkValidIntValue = ChronoField.YEAR.checkValidIntValue(j5 + j2 + (i2 / 10));
                long j7 = floorMod;
                ChronoField.SECOND_OF_DAY.checkValidValue(j7);
                int i5 = (int) (j7 / 3600);
                long j8 = j7 - (i5 * 3600);
                int i6 = (int) (j8 / 60);
                int i7 = (int) (j8 - (i6 * 60));
                if (z) {
                    writeFieldName(jSONWriter);
                }
                jSONWriter.writeDateTime19(checkValidIntValue, i3, i4, i5, i6, i7);
                return;
            }
            ZonedDateTime ofInstant = ZonedDateTime.ofInstant(Instant.ofEpochMilli(j), zoneId);
            if (!isDateFormatISO8601() && !context.isDateFormatISO8601()) {
                String format = context.getDateFormatter().format(ofInstant);
                if (z) {
                    writeFieldName(jSONWriter);
                }
                jSONWriter.writeString(format);
                return;
            }
            jSONWriter.writeDateTimeISO8601(ofInstant.getYear(), ofInstant.getMonthValue(), ofInstant.getDayOfMonth(), ofInstant.getHour(), ofInstant.getMinute(), ofInstant.getSecond(), ofInstant.getNano() / 1000000, ofInstant.getOffset().getTotalSeconds(), true);
            return;
        }
        if (z) {
            writeFieldName(jSONWriter);
        }
        jSONWriter.writeInt64(j);
    }

    public void writeDouble(JSONWriter jSONWriter, double[] dArr) {
        if (dArr != null || jSONWriter.isWriteNulls()) {
            writeFieldName(jSONWriter);
            jSONWriter.writeDouble(dArr);
        }
    }

    public void writeFloat(JSONWriter jSONWriter, float[] fArr) {
        if (fArr != null || jSONWriter.isWriteNulls()) {
            writeFieldName(jSONWriter);
            jSONWriter.writeFloat(fArr);
        }
    }

    public void writeDouble(JSONWriter jSONWriter, Double d) {
        if (d == null) {
            long features = jSONWriter.getFeatures(this.features);
            if ((JSONWriter.Feature.WriteNulls.mask & features) == 0 || (features & JSONWriter.Feature.NotWriteDefaultValue.mask) != 0) {
                return;
            }
            writeFieldName(jSONWriter);
            jSONWriter.writeNumberNull();
            return;
        }
        writeFieldName(jSONWriter);
        jSONWriter.writeDouble(d.doubleValue());
    }

    public void writeString(JSONWriter jSONWriter, char[] cArr) {
        if (cArr != null || jSONWriter.isWriteNulls()) {
            writeFieldName(jSONWriter);
            if (cArr == null) {
                jSONWriter.writeStringNull();
            } else {
                jSONWriter.writeString(cArr, 0, cArr.length);
            }
        }
    }
}
