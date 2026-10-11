package com.dropbox.core.stone;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.dzn;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class StoneSerializers {

    /* renamed from: com.dropbox.core.stone.StoneSerializers$a */
    /* loaded from: classes4.dex */
    public static final class C2295a extends StoneSerializer<Boolean> {

        /* renamed from: b */
        public static final C2295a f16609b = new C2295a();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            Boolean valueOf = Boolean.valueOf(jsonParser.getBooleanValue());
            jsonParser.nextToken();
            return valueOf;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Boolean bool, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeBoolean(bool.booleanValue());
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$b */
    /* loaded from: classes4.dex */
    public static final class C2296b extends StoneSerializer<byte[]> {

        /* renamed from: b */
        public static final C2296b f16610b = new C2296b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            byte[] binaryValue = jsonParser.getBinaryValue();
            jsonParser.nextToken();
            return binaryValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(byte[] bArr, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeBinary(bArr);
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$c */
    /* loaded from: classes4.dex */
    public static final class C2297c extends StoneSerializer<Date> {

        /* renamed from: b */
        public static final C2297c f16611b = new C2297c();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Date deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = StoneSerializer.getStringValue(jsonParser);
            jsonParser.nextToken();
            try {
                return dzn.m53874b(stringValue);
            } catch (ParseException e) {
                throw new JsonParseException(jsonParser, "Malformed timestamp: '" + stringValue + CloudStorageConstants.SINGLE_QUOTES, e);
            }
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Date date, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(dzn.m53873a(date));
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$d */
    /* loaded from: classes4.dex */
    public static final class C2298d extends StoneSerializer<Double> {

        /* renamed from: b */
        public static final C2298d f16612b = new C2298d();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            Double valueOf = Double.valueOf(jsonParser.getDoubleValue());
            jsonParser.nextToken();
            return valueOf;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Double d, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(d.doubleValue());
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$e */
    /* loaded from: classes4.dex */
    public static final class C2299e extends StoneSerializer<Float> {

        /* renamed from: b */
        public static final C2299e f16613b = new C2299e();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            Float valueOf = Float.valueOf(jsonParser.getFloatValue());
            jsonParser.nextToken();
            return valueOf;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Float f, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(f.floatValue());
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$f */
    /* loaded from: classes4.dex */
    public static final class C2300f extends StoneSerializer<Integer> {

        /* renamed from: b */
        public static final C2300f f16614b = new C2300f();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            Integer valueOf = Integer.valueOf(jsonParser.getIntValue());
            jsonParser.nextToken();
            return valueOf;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Integer num, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(num.intValue());
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$g */
    /* loaded from: classes4.dex */
    public static final class C2301g<T> extends StoneSerializer<List<T>> {

        /* renamed from: b */
        public final StoneSerializer<T> f16615b;

        public C2301g(StoneSerializer<T> stoneSerializer) {
            this.f16615b = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            StoneSerializer.expectStartArray(jsonParser);
            ArrayList arrayList = new ArrayList();
            while (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                arrayList.add(this.f16615b.deserialize(jsonParser));
            }
            StoneSerializer.expectEndArray(jsonParser);
            return arrayList;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(List<T> list, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeStartArray(list.size());
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                this.f16615b.serialize((StoneSerializer<T>) it2.next(), jsonGenerator);
            }
            jsonGenerator.writeEndArray();
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$h */
    /* loaded from: classes4.dex */
    public static final class C2302h extends StoneSerializer<Long> {

        /* renamed from: b */
        public static final C2302h f16616b = new C2302h();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            Long valueOf = Long.valueOf(jsonParser.getLongValue());
            jsonParser.nextToken();
            return valueOf;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Long l, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(l.longValue());
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$i */
    /* loaded from: classes4.dex */
    public static final class C2303i<T> extends StoneSerializer<Map<String, T>> {

        /* renamed from: b */
        public final StoneSerializer<T> f16617b;

        public C2303i(StoneSerializer<T> stoneSerializer) {
            this.f16617b = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<String, T> deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            HashMap hashMap = new HashMap();
            StoneSerializer.expectStartObject(jsonParser);
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                hashMap.put(currentName, this.f16617b.deserialize(jsonParser));
            }
            StoneSerializer.expectEndObject(jsonParser);
            return hashMap;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Map<String, T> map, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeStartObject();
            for (Map.Entry<String, T> entry : map.entrySet()) {
                jsonGenerator.writeFieldName(entry.getKey());
                jsonGenerator.writeRawValue(this.f16617b.serialize(entry.getValue()));
            }
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$j */
    /* loaded from: classes4.dex */
    public static final class C2304j<T> extends StoneSerializer<T> {

        /* renamed from: b */
        public final StoneSerializer<T> f16618b;

        public C2304j(StoneSerializer<T> stoneSerializer) {
            this.f16618b = stoneSerializer;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public T deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
                return this.f16618b.deserialize(jsonParser);
            }
            jsonParser.nextToken();
            return null;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f16618b.serialize((StoneSerializer<T>) t, jsonGenerator);
            }
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$l */
    /* loaded from: classes4.dex */
    public static final class C2306l extends StoneSerializer<String> {

        /* renamed from: b */
        public static final C2306l f16620b = new C2306l();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = StoneSerializer.getStringValue(jsonParser);
            jsonParser.nextToken();
            return stringValue;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(String str, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(str);
        }
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$m */
    /* loaded from: classes4.dex */
    public static final class C2307m extends StoneSerializer<Void> {

        /* renamed from: b */
        public static final C2307m f16621b = new C2307m();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            StoneSerializer.skipValue(jsonParser);
            return null;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Void r1, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNull();
        }
    }

    public static StoneSerializer<Boolean> boolean_() {
        return C2295a.f16609b;
    }

    public static StoneSerializer<byte[]> bytes() {
        return C2296b.f16610b;
    }

    public static StoneSerializer<Float> float32() {
        return C2299e.f16613b;
    }

    public static StoneSerializer<Double> float64() {
        return C2298d.f16612b;
    }

    public static StoneSerializer<Integer> int32() {
        return C2300f.f16614b;
    }

    public static StoneSerializer<Long> int64() {
        return C2302h.f16616b;
    }

    public static <T> StoneSerializer<List<T>> list(StoneSerializer<T> stoneSerializer) {
        return new C2301g(stoneSerializer);
    }

    public static <T> StoneSerializer<Map<String, T>> map(StoneSerializer<T> stoneSerializer) {
        return new C2303i(stoneSerializer);
    }

    public static <T> StoneSerializer<T> nullable(StoneSerializer<T> stoneSerializer) {
        return new C2304j(stoneSerializer);
    }

    public static <T> StructSerializer<T> nullableStruct(StructSerializer<T> structSerializer) {
        return new C2305k(structSerializer);
    }

    public static StoneSerializer<String> string() {
        return C2306l.f16620b;
    }

    public static StoneSerializer<Date> timestamp() {
        return C2297c.f16611b;
    }

    public static StoneSerializer<Long> uInt32() {
        return C2302h.f16616b;
    }

    public static StoneSerializer<Long> uInt64() {
        return C2302h.f16616b;
    }

    public static StoneSerializer<Void> void_() {
        return C2307m.f16621b;
    }

    /* renamed from: com.dropbox.core.stone.StoneSerializers$k */
    /* loaded from: classes4.dex */
    public static final class C2305k<T> extends StructSerializer<T> {

        /* renamed from: b */
        public final StructSerializer<T> f16619b;

        public C2305k(StructSerializer<T> structSerializer) {
            this.f16619b = structSerializer;
        }

        @Override // com.dropbox.core.stone.StructSerializer, com.dropbox.core.stone.StoneSerializer
        public T deserialize(JsonParser jsonParser) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                jsonParser.nextToken();
                return null;
            }
            return this.f16619b.deserialize(jsonParser);
        }

        @Override // com.dropbox.core.stone.StructSerializer, com.dropbox.core.stone.StoneSerializer
        public void serialize(T t, JsonGenerator jsonGenerator) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f16619b.serialize((StructSerializer<T>) t, jsonGenerator);
            }
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f16619b.serialize((StructSerializer<T>) t, jsonGenerator, z);
            }
        }

        @Override // com.dropbox.core.stone.StructSerializer
        public T deserialize(JsonParser jsonParser, boolean z) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                jsonParser.nextToken();
                return null;
            }
            return this.f16619b.deserialize(jsonParser, z);
        }
    }
}
