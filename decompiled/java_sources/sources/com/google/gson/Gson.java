package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes6.dex */
public final class Gson {

    /* renamed from: A */
    public static final Strictness f36047A = null;

    /* renamed from: C */
    public static final boolean f36049C = true;

    /* renamed from: D */
    public static final boolean f36050D = false;

    /* renamed from: E */
    public static final boolean f36051E = false;

    /* renamed from: F */
    public static final boolean f36052F = false;

    /* renamed from: G */
    public static final boolean f36053G = true;

    /* renamed from: L */
    public static final String f36058L = ")]}'\n";

    /* renamed from: z */
    public static final boolean f36059z = false;

    /* renamed from: a */
    public final ThreadLocal<Map<TypeToken<?>, TypeAdapter<?>>> f36060a;

    /* renamed from: b */
    public final ConcurrentMap<TypeToken<?>, TypeAdapter<?>> f36061b;

    /* renamed from: c */
    public final ConstructorConstructor f36062c;

    /* renamed from: d */
    public final JsonAdapterAnnotationTypeAdapterFactory f36063d;

    /* renamed from: e */
    public final List<TypeAdapterFactory> f36064e;

    /* renamed from: f */
    public final Excluder f36065f;

    /* renamed from: g */
    public final FieldNamingStrategy f36066g;

    /* renamed from: h */
    public final Map<Type, InstanceCreator<?>> f36067h;

    /* renamed from: i */
    public final boolean f36068i;

    /* renamed from: j */
    public final boolean f36069j;

    /* renamed from: k */
    public final boolean f36070k;

    /* renamed from: l */
    public final boolean f36071l;

    /* renamed from: m */
    public final FormattingStyle f36072m;

    /* renamed from: n */
    public final Strictness f36073n;

    /* renamed from: o */
    public final boolean f36074o;

    /* renamed from: p */
    public final boolean f36075p;

    /* renamed from: q */
    public final String f36076q;

    /* renamed from: r */
    public final int f36077r;

    /* renamed from: s */
    public final int f36078s;

    /* renamed from: t */
    public final LongSerializationPolicy f36079t;

    /* renamed from: u */
    public final List<TypeAdapterFactory> f36080u;

    /* renamed from: v */
    public final List<TypeAdapterFactory> f36081v;

    /* renamed from: w */
    public final ToNumberStrategy f36082w;

    /* renamed from: x */
    public final ToNumberStrategy f36083x;

    /* renamed from: y */
    public final List<ReflectionAccessFilter> f36084y;

    /* renamed from: B */
    public static final FormattingStyle f36048B = FormattingStyle.COMPACT;

    /* renamed from: H */
    public static final String f36054H = null;

    /* renamed from: I */
    public static final FieldNamingStrategy f36055I = FieldNamingPolicy.IDENTITY;

    /* renamed from: J */
    public static final ToNumberStrategy f36056J = ToNumberPolicy.DOUBLE;

    /* renamed from: K */
    public static final ToNumberStrategy f36057K = ToNumberPolicy.LAZILY_PARSED_NUMBER;

    /* renamed from: com.google.gson.Gson$a */
    /* loaded from: classes6.dex */
    public class C6489a extends TypeAdapter<Number> {
        public C6489a() {
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Double read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
                return;
            }
            double doubleValue = number.doubleValue();
            Gson.m28207d(doubleValue);
            jsonWriter.value(doubleValue);
        }
    }

    /* renamed from: com.google.gson.Gson$b */
    /* loaded from: classes6.dex */
    public class C6490b extends TypeAdapter<Number> {
        public C6490b() {
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
                return;
            }
            float floatValue = number.floatValue();
            Gson.m28207d(floatValue);
            if (!(number instanceof Float)) {
                number = Float.valueOf(floatValue);
            }
            jsonWriter.value(number);
        }
    }

    /* renamed from: com.google.gson.Gson$c */
    /* loaded from: classes6.dex */
    public class C6491c extends TypeAdapter<Number> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        public Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Long.valueOf(jsonReader.nextLong());
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, Number number) throws IOException {
            if (number == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(number.toString());
            }
        }
    }

    /* renamed from: com.google.gson.Gson$d */
    /* loaded from: classes6.dex */
    public class C6492d extends TypeAdapter<AtomicLong> {

        /* renamed from: a */
        public final /* synthetic */ TypeAdapter f36087a;

        public C6492d(TypeAdapter typeAdapter) {
            this.f36087a = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicLong read(JsonReader jsonReader) throws IOException {
            return new AtomicLong(((Number) this.f36087a.read(jsonReader)).longValue());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
            this.f36087a.write(jsonWriter, Long.valueOf(atomicLong.get()));
        }
    }

    /* renamed from: com.google.gson.Gson$e */
    /* loaded from: classes6.dex */
    public class C6493e extends TypeAdapter<AtomicLongArray> {

        /* renamed from: a */
        public final /* synthetic */ TypeAdapter f36088a;

        public C6493e(TypeAdapter typeAdapter) {
            this.f36088a = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicLongArray read(JsonReader jsonReader) throws IOException {
            ArrayList arrayList = new ArrayList();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(Long.valueOf(((Number) this.f36088a.read(jsonReader)).longValue()));
            }
            jsonReader.endArray();
            int size = arrayList.size();
            AtomicLongArray atomicLongArray = new AtomicLongArray(size);
            for (int i = 0; i < size; i++) {
                atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
            }
            return atomicLongArray;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
            jsonWriter.beginArray();
            int length = atomicLongArray.length();
            for (int i = 0; i < length; i++) {
                this.f36088a.write(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
            }
            jsonWriter.endArray();
        }
    }

    /* renamed from: com.google.gson.Gson$f */
    /* loaded from: classes6.dex */
    public static class C6494f<T> extends SerializationDelegatingTypeAdapter<T> {

        /* renamed from: a */
        public TypeAdapter<T> f36089a = null;

        /* renamed from: a */
        public final TypeAdapter<T> m28217a() {
            TypeAdapter<T> typeAdapter = this.f36089a;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }

        /* renamed from: b */
        public void m28218b(TypeAdapter<T> typeAdapter) {
            if (this.f36089a != null) {
                throw new AssertionError("Delegate is already set");
            }
            this.f36089a = typeAdapter;
        }

        @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
        public TypeAdapter<T> getSerializationDelegate() {
            return m28217a();
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            return m28217a().read(jsonReader);
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            m28217a().write(jsonWriter, t);
        }
    }

    public Gson() {
        this(Excluder.DEFAULT, f36055I, Collections.emptyMap(), false, false, false, true, f36048B, f36047A, false, true, LongSerializationPolicy.DEFAULT, f36054H, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), f36056J, f36057K, Collections.emptyList());
    }

    /* renamed from: a */
    public static void m28204a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() == JsonToken.END_DOCUMENT) {
                } else {
                    throw new JsonSyntaxException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    /* renamed from: b */
    public static TypeAdapter<AtomicLong> m28205b(TypeAdapter<Number> typeAdapter) {
        return new C6492d(typeAdapter).nullSafe();
    }

    /* renamed from: c */
    public static TypeAdapter<AtomicLongArray> m28206c(TypeAdapter<Number> typeAdapter) {
        return new C6493e(typeAdapter).nullSafe();
    }

    /* renamed from: d */
    public static void m28207d(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: g */
    public static TypeAdapter<Number> m28208g(LongSerializationPolicy longSerializationPolicy) {
        return longSerializationPolicy == LongSerializationPolicy.DEFAULT ? TypeAdapters.LONG : new C6491c();
    }

    /* renamed from: e */
    public final TypeAdapter<Number> m28209e(boolean z) {
        return z ? TypeAdapters.DOUBLE : new C6489a();
    }

    @Deprecated
    public Excluder excluder() {
        return this.f36065f;
    }

    /* renamed from: f */
    public final TypeAdapter<Number> m28210f(boolean z) {
        return z ? TypeAdapters.FLOAT : new C6490b();
    }

    public FieldNamingStrategy fieldNamingStrategy() {
        return this.f36066g;
    }

    public <T> T fromJson(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) Primitives.wrap(cls).cast(fromJson(str, TypeToken.get((Class) cls)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
    
        r2.m28218b(r4);
        r0.put(r7, r4);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.google.gson.TypeAdapter<T> getAdapter(com.google.gson.reflect.TypeToken<T> r7) {
        /*
            r6 = this;
            java.lang.String r0 = "type must not be null"
            java.util.Objects.requireNonNull(r7, r0)
            java.util.concurrent.ConcurrentMap<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>> r0 = r6.f36061b
            java.lang.Object r0 = r0.get(r7)
            com.google.gson.TypeAdapter r0 = (com.google.gson.TypeAdapter) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            java.lang.ThreadLocal<java.util.Map<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>>> r0 = r6.f36060a
            java.lang.Object r0 = r0.get()
            java.util.Map r0 = (java.util.Map) r0
            if (r0 != 0) goto L26
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.lang.ThreadLocal<java.util.Map<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>>> r1 = r6.f36060a
            r1.set(r0)
            r1 = 1
            goto L30
        L26:
            java.lang.Object r1 = r0.get(r7)
            com.google.gson.TypeAdapter r1 = (com.google.gson.TypeAdapter) r1
            if (r1 == 0) goto L2f
            return r1
        L2f:
            r1 = 0
        L30:
            com.google.gson.Gson$f r2 = new com.google.gson.Gson$f     // Catch: java.lang.Throwable -> L7f
            r2.<init>()     // Catch: java.lang.Throwable -> L7f
            r0.put(r7, r2)     // Catch: java.lang.Throwable -> L7f
            java.util.List<com.google.gson.TypeAdapterFactory> r3 = r6.f36064e     // Catch: java.lang.Throwable -> L7f
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L7f
            r4 = 0
        L3f:
            boolean r5 = r3.hasNext()     // Catch: java.lang.Throwable -> L7f
            if (r5 == 0) goto L57
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> L7f
            com.google.gson.TypeAdapterFactory r4 = (com.google.gson.TypeAdapterFactory) r4     // Catch: java.lang.Throwable -> L7f
            com.google.gson.TypeAdapter r4 = r4.create(r6, r7)     // Catch: java.lang.Throwable -> L7f
            if (r4 == 0) goto L3f
            r2.m28218b(r4)     // Catch: java.lang.Throwable -> L7f
            r0.put(r7, r4)     // Catch: java.lang.Throwable -> L7f
        L57:
            if (r1 == 0) goto L5e
            java.lang.ThreadLocal<java.util.Map<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>>> r2 = r6.f36060a
            r2.remove()
        L5e:
            if (r4 == 0) goto L68
            if (r1 == 0) goto L67
            java.util.concurrent.ConcurrentMap<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>> r6 = r6.f36061b
            r6.putAll(r0)
        L67:
            return r4
        L68:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "GSON (2.11.0) cannot handle "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            r6.<init>(r7)
            throw r6
        L7f:
            r7 = move-exception
            if (r1 == 0) goto L87
            java.lang.ThreadLocal<java.util.Map<com.google.gson.reflect.TypeToken<?>, com.google.gson.TypeAdapter<?>>> r6 = r6.f36060a
            r6.remove()
        L87:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.Gson.getAdapter(com.google.gson.reflect.TypeToken):com.google.gson.TypeAdapter");
    }

    public <T> TypeAdapter<T> getDelegateAdapter(TypeAdapterFactory typeAdapterFactory, TypeToken<T> typeToken) {
        Objects.requireNonNull(typeAdapterFactory, "skipPast must not be null");
        Objects.requireNonNull(typeToken, "type must not be null");
        if (this.f36063d.isClassJsonAdapterFactory(typeToken, typeAdapterFactory)) {
            typeAdapterFactory = this.f36063d;
        }
        boolean z = false;
        for (TypeAdapterFactory typeAdapterFactory2 : this.f36064e) {
            if (z) {
                TypeAdapter<T> create = typeAdapterFactory2.create(this, typeToken);
                if (create != null) {
                    return create;
                }
            } else if (typeAdapterFactory2 == typeAdapterFactory) {
                z = true;
            }
        }
        if (!z) {
            return getAdapter(typeToken);
        }
        throw new IllegalArgumentException("GSON cannot serialize or deserialize " + typeToken);
    }

    public boolean htmlSafe() {
        return this.f36071l;
    }

    public GsonBuilder newBuilder() {
        return new GsonBuilder(this);
    }

    public JsonReader newJsonReader(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        Strictness strictness = this.f36073n;
        if (strictness == null) {
            strictness = Strictness.LEGACY_STRICT;
        }
        jsonReader.setStrictness(strictness);
        return jsonReader;
    }

    public JsonWriter newJsonWriter(Writer writer) throws IOException {
        if (this.f36070k) {
            writer.write(f36058L);
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        jsonWriter.setFormattingStyle(this.f36072m);
        jsonWriter.setHtmlSafe(this.f36071l);
        Strictness strictness = this.f36073n;
        if (strictness == null) {
            strictness = Strictness.LEGACY_STRICT;
        }
        jsonWriter.setStrictness(strictness);
        jsonWriter.setSerializeNulls(this.f36068i);
        return jsonWriter;
    }

    public boolean serializeNulls() {
        return this.f36068i;
    }

    public String toJson(Object obj) {
        if (obj == null) {
            return toJson((JsonElement) JsonNull.INSTANCE);
        }
        return toJson(obj, obj.getClass());
    }

    public JsonElement toJsonTree(Object obj) {
        if (obj == null) {
            return JsonNull.INSTANCE;
        }
        return toJsonTree(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.f36068i + ",factories:" + this.f36064e + ",instanceCreators:" + this.f36062c + "}";
    }

    public <T> T fromJson(String str, Type type) throws JsonSyntaxException {
        return (T) fromJson(str, TypeToken.get(type));
    }

    public String toJson(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        toJson(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public JsonElement toJsonTree(Object obj, Type type) {
        JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
        toJson(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    public <T> T fromJson(String str, TypeToken<T> typeToken) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) fromJson(new StringReader(str), typeToken);
    }

    public <T> T fromJson(Reader reader, Class<T> cls) throws JsonSyntaxException, JsonIOException {
        return (T) Primitives.wrap(cls).cast(fromJson(reader, TypeToken.get((Class) cls)));
    }

    public void toJson(Object obj, Appendable appendable) throws JsonIOException {
        if (obj != null) {
            toJson(obj, obj.getClass(), appendable);
        } else {
            toJson((JsonElement) JsonNull.INSTANCE, appendable);
        }
    }

    public Gson(Excluder excluder, FieldNamingStrategy fieldNamingStrategy, Map<Type, InstanceCreator<?>> map, boolean z, boolean z2, boolean z3, boolean z4, FormattingStyle formattingStyle, Strictness strictness, boolean z5, boolean z6, LongSerializationPolicy longSerializationPolicy, String str, int i, int i2, List<TypeAdapterFactory> list, List<TypeAdapterFactory> list2, List<TypeAdapterFactory> list3, ToNumberStrategy toNumberStrategy, ToNumberStrategy toNumberStrategy2, List<ReflectionAccessFilter> list4) {
        this.f36060a = new ThreadLocal<>();
        this.f36061b = new ConcurrentHashMap();
        this.f36065f = excluder;
        this.f36066g = fieldNamingStrategy;
        this.f36067h = map;
        ConstructorConstructor constructorConstructor = new ConstructorConstructor(map, z6, list4);
        this.f36062c = constructorConstructor;
        this.f36068i = z;
        this.f36069j = z2;
        this.f36070k = z3;
        this.f36071l = z4;
        this.f36072m = formattingStyle;
        this.f36073n = strictness;
        this.f36074o = z5;
        this.f36075p = z6;
        this.f36079t = longSerializationPolicy;
        this.f36076q = str;
        this.f36077r = i;
        this.f36078s = i2;
        this.f36080u = list;
        this.f36081v = list2;
        this.f36082w = toNumberStrategy;
        this.f36083x = toNumberStrategy2;
        this.f36084y = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
        arrayList.add(ObjectTypeAdapter.getFactory(toNumberStrategy));
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(TypeAdapters.STRING_FACTORY);
        arrayList.add(TypeAdapters.INTEGER_FACTORY);
        arrayList.add(TypeAdapters.BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.BYTE_FACTORY);
        arrayList.add(TypeAdapters.SHORT_FACTORY);
        TypeAdapter<Number> m28208g = m28208g(longSerializationPolicy);
        arrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, m28208g));
        arrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, m28209e(z5)));
        arrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, m28210f(z5)));
        arrayList.add(NumberTypeAdapter.getFactory(toNumberStrategy2));
        arrayList.add(TypeAdapters.ATOMIC_INTEGER_FACTORY);
        arrayList.add(TypeAdapters.ATOMIC_BOOLEAN_FACTORY);
        arrayList.add(TypeAdapters.newFactory(AtomicLong.class, m28205b(m28208g)));
        arrayList.add(TypeAdapters.newFactory(AtomicLongArray.class, m28206c(m28208g)));
        arrayList.add(TypeAdapters.ATOMIC_INTEGER_ARRAY_FACTORY);
        arrayList.add(TypeAdapters.CHARACTER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
        arrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
        arrayList.add(TypeAdapters.newFactory(BigDecimal.class, TypeAdapters.BIG_DECIMAL));
        arrayList.add(TypeAdapters.newFactory(BigInteger.class, TypeAdapters.BIG_INTEGER));
        arrayList.add(TypeAdapters.newFactory(LazilyParsedNumber.class, TypeAdapters.LAZILY_PARSED_NUMBER));
        arrayList.add(TypeAdapters.URL_FACTORY);
        arrayList.add(TypeAdapters.URI_FACTORY);
        arrayList.add(TypeAdapters.UUID_FACTORY);
        arrayList.add(TypeAdapters.CURRENCY_FACTORY);
        arrayList.add(TypeAdapters.LOCALE_FACTORY);
        arrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
        arrayList.add(TypeAdapters.BIT_SET_FACTORY);
        arrayList.add(DefaultDateTypeAdapter.DEFAULT_STYLE_FACTORY);
        arrayList.add(TypeAdapters.CALENDAR_FACTORY);
        if (SqlTypesSupport.SUPPORTS_SQL_TYPES) {
            arrayList.add(SqlTypesSupport.TIME_FACTORY);
            arrayList.add(SqlTypesSupport.DATE_FACTORY);
            arrayList.add(SqlTypesSupport.TIMESTAMP_FACTORY);
        }
        arrayList.add(ArrayTypeAdapter.FACTORY);
        arrayList.add(TypeAdapters.CLASS_FACTORY);
        arrayList.add(new CollectionTypeAdapterFactory(constructorConstructor));
        arrayList.add(new MapTypeAdapterFactory(constructorConstructor, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(constructorConstructor);
        this.f36063d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.ENUM_FACTORY);
        arrayList.add(new ReflectiveTypeAdapterFactory(constructorConstructor, fieldNamingStrategy, excluder, jsonAdapterAnnotationTypeAdapterFactory, list4));
        this.f36064e = Collections.unmodifiableList(arrayList);
    }

    public <T> T fromJson(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        return (T) fromJson(reader, TypeToken.get(type));
    }

    public void toJson(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            toJson(obj, type, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public <T> T fromJson(Reader reader, TypeToken<T> typeToken) throws JsonIOException, JsonSyntaxException {
        JsonReader newJsonReader = newJsonReader(reader);
        T t = (T) fromJson(newJsonReader, typeToken);
        m28204a(t, newJsonReader);
        return t;
    }

    public void toJson(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        TypeAdapter adapter = getAdapter(TypeToken.get(type));
        Strictness strictness = jsonWriter.getStrictness();
        Strictness strictness2 = this.f36073n;
        if (strictness2 != null) {
            jsonWriter.setStrictness(strictness2);
        } else if (jsonWriter.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonWriter.setStrictness(Strictness.LENIENT);
        }
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.f36071l);
        jsonWriter.setSerializeNulls(this.f36068i);
        try {
            try {
                try {
                    adapter.write(jsonWriter, obj);
                } catch (AssertionError e) {
                    throw new AssertionError("AssertionError (GSON 2.11.0): " + e.getMessage(), e);
                }
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        } finally {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }

    public <T> T fromJson(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        return (T) fromJson(jsonReader, TypeToken.get(type));
    }

    public <T> T fromJson(JsonReader jsonReader, TypeToken<T> typeToken) throws JsonIOException, JsonSyntaxException {
        boolean z;
        Strictness strictness = jsonReader.getStrictness();
        Strictness strictness2 = this.f36073n;
        if (strictness2 != null) {
            jsonReader.setStrictness(strictness2);
        } else if (jsonReader.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonReader.setStrictness(Strictness.LENIENT);
        }
        try {
            try {
                try {
                    jsonReader.peek();
                    z = false;
                    try {
                        return getAdapter(typeToken).read(jsonReader);
                    } catch (EOFException e) {
                        e = e;
                        if (z) {
                            jsonReader.setStrictness(strictness);
                            return null;
                        }
                        throw new JsonSyntaxException(e);
                    }
                } finally {
                    jsonReader.setStrictness(strictness);
                }
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
        } catch (IOException e3) {
            throw new JsonSyntaxException(e3);
        } catch (AssertionError e4) {
            throw new AssertionError("AssertionError (GSON 2.11.0): " + e4.getMessage(), e4);
        } catch (IllegalStateException e5) {
            throw new JsonSyntaxException(e5);
        }
    }

    public <T> TypeAdapter<T> getAdapter(Class<T> cls) {
        return getAdapter(TypeToken.get((Class) cls));
    }

    public <T> T fromJson(JsonElement jsonElement, Class<T> cls) throws JsonSyntaxException {
        return (T) Primitives.wrap(cls).cast(fromJson(jsonElement, TypeToken.get((Class) cls)));
    }

    public <T> T fromJson(JsonElement jsonElement, Type type) throws JsonSyntaxException {
        return (T) fromJson(jsonElement, TypeToken.get(type));
    }

    public String toJson(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        toJson(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public <T> T fromJson(JsonElement jsonElement, TypeToken<T> typeToken) throws JsonSyntaxException {
        if (jsonElement == null) {
            return null;
        }
        return (T) fromJson(new JsonTreeReader(jsonElement), typeToken);
    }

    public void toJson(JsonElement jsonElement, Appendable appendable) throws JsonIOException {
        try {
            toJson(jsonElement, newJsonWriter(Streams.writerForAppendable(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public void toJson(JsonElement jsonElement, JsonWriter jsonWriter) throws JsonIOException {
        Strictness strictness = jsonWriter.getStrictness();
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setHtmlSafe(this.f36071l);
        jsonWriter.setSerializeNulls(this.f36068i);
        Strictness strictness2 = this.f36073n;
        if (strictness2 != null) {
            jsonWriter.setStrictness(strictness2);
        } else if (jsonWriter.getStrictness() == Strictness.LEGACY_STRICT) {
            jsonWriter.setStrictness(Strictness.LENIENT);
        }
        try {
            try {
                Streams.write(jsonElement, jsonWriter);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.11.0): " + e2.getMessage(), e2);
            }
        } finally {
            jsonWriter.setStrictness(strictness);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
        }
    }
}
