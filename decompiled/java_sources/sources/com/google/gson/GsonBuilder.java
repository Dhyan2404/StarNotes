package com.google.gson;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.InlineMe;
import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes6.dex */
public final class GsonBuilder {

    /* renamed from: a */
    public Excluder f36090a;

    /* renamed from: b */
    public LongSerializationPolicy f36091b;

    /* renamed from: c */
    public FieldNamingStrategy f36092c;

    /* renamed from: d */
    public final Map<Type, InstanceCreator<?>> f36093d;

    /* renamed from: e */
    public final List<TypeAdapterFactory> f36094e;

    /* renamed from: f */
    public final List<TypeAdapterFactory> f36095f;

    /* renamed from: g */
    public boolean f36096g;

    /* renamed from: h */
    public String f36097h;

    /* renamed from: i */
    public int f36098i;

    /* renamed from: j */
    public int f36099j;

    /* renamed from: k */
    public boolean f36100k;

    /* renamed from: l */
    public boolean f36101l;

    /* renamed from: m */
    public boolean f36102m;

    /* renamed from: n */
    public FormattingStyle f36103n;

    /* renamed from: o */
    public boolean f36104o;

    /* renamed from: p */
    public Strictness f36105p;

    /* renamed from: q */
    public boolean f36106q;

    /* renamed from: r */
    public ToNumberStrategy f36107r;

    /* renamed from: s */
    public ToNumberStrategy f36108s;

    /* renamed from: t */
    public final ArrayDeque<ReflectionAccessFilter> f36109t;

    public GsonBuilder() {
        this.f36090a = Excluder.DEFAULT;
        this.f36091b = LongSerializationPolicy.DEFAULT;
        this.f36092c = FieldNamingPolicy.IDENTITY;
        this.f36093d = new HashMap();
        this.f36094e = new ArrayList();
        this.f36095f = new ArrayList();
        this.f36096g = false;
        this.f36097h = Gson.f36054H;
        this.f36098i = 2;
        this.f36099j = 2;
        this.f36100k = false;
        this.f36101l = false;
        this.f36102m = true;
        this.f36103n = Gson.f36048B;
        this.f36104o = false;
        this.f36105p = Gson.f36047A;
        this.f36106q = true;
        this.f36107r = Gson.f36056J;
        this.f36108s = Gson.f36057K;
        this.f36109t = new ArrayDeque<>();
    }

    /* renamed from: a */
    public static void m28219a(String str, int i, int i2, List<TypeAdapterFactory> list) {
        TypeAdapterFactory typeAdapterFactory;
        TypeAdapterFactory typeAdapterFactory2;
        boolean z = SqlTypesSupport.SUPPORTS_SQL_TYPES;
        TypeAdapterFactory typeAdapterFactory3 = null;
        if (str != null && !str.trim().isEmpty()) {
            typeAdapterFactory = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(str);
            if (z) {
                typeAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(str);
                typeAdapterFactory2 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(str);
            }
            typeAdapterFactory2 = null;
        } else {
            if (i == 2 && i2 == 2) {
                return;
            }
            TypeAdapterFactory createAdapterFactory = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(i, i2);
            if (z) {
                typeAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(i, i2);
                TypeAdapterFactory createAdapterFactory2 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(i, i2);
                typeAdapterFactory = createAdapterFactory;
                typeAdapterFactory2 = createAdapterFactory2;
            } else {
                typeAdapterFactory = createAdapterFactory;
                typeAdapterFactory2 = null;
            }
        }
        list.add(typeAdapterFactory);
        if (z) {
            list.add(typeAdapterFactory3);
            list.add(typeAdapterFactory2);
        }
    }

    /* renamed from: b */
    public static int m28220b(int i) {
        if (i >= 0 && i <= 3) {
            return i;
        }
        throw new IllegalArgumentException("Invalid style: " + i);
    }

    /* renamed from: c */
    public static boolean m28221c(Type type) {
        return (type instanceof Class) && (type == Object.class || JsonElement.class.isAssignableFrom((Class) type));
    }

    @CanIgnoreReturnValue
    public GsonBuilder addDeserializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        Objects.requireNonNull(exclusionStrategy);
        this.f36090a = this.f36090a.withExclusionStrategy(exclusionStrategy, false, true);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder addReflectionAccessFilter(ReflectionAccessFilter reflectionAccessFilter) {
        Objects.requireNonNull(reflectionAccessFilter);
        this.f36109t.addFirst(reflectionAccessFilter);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        Objects.requireNonNull(exclusionStrategy);
        this.f36090a = this.f36090a.withExclusionStrategy(exclusionStrategy, true, false);
        return this;
    }

    public Gson create() {
        ArrayList arrayList = new ArrayList(this.f36094e.size() + this.f36095f.size() + 3);
        arrayList.addAll(this.f36094e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f36095f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        m28219a(this.f36097h, this.f36098i, this.f36099j, arrayList);
        return new Gson(this.f36090a, this.f36092c, new HashMap(this.f36093d), this.f36096g, this.f36100k, this.f36104o, this.f36102m, this.f36103n, this.f36105p, this.f36101l, this.f36106q, this.f36091b, this.f36097h, this.f36098i, this.f36099j, new ArrayList(this.f36094e), new ArrayList(this.f36095f), arrayList, this.f36107r, this.f36108s, new ArrayList(this.f36109t));
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableHtmlEscaping() {
        this.f36102m = false;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableInnerClassSerialization() {
        this.f36090a = this.f36090a.disableInnerClassSerialization();
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder disableJdkUnsafe() {
        this.f36106q = false;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder enableComplexMapKeySerialization() {
        this.f36100k = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder excludeFieldsWithModifiers(int... iArr) {
        Objects.requireNonNull(iArr);
        this.f36090a = this.f36090a.withModifiers(iArr);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder excludeFieldsWithoutExposeAnnotation() {
        this.f36090a = this.f36090a.excludeFieldsWithoutExposeAnnotation();
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder generateNonExecutableJson() {
        this.f36104o = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeAdapter(Type type, Object obj) {
        Objects.requireNonNull(type);
        boolean z = obj instanceof JsonSerializer;
        C$Gson$Preconditions.checkArgument(z || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator) || (obj instanceof TypeAdapter));
        if (m28221c(type)) {
            throw new IllegalArgumentException("Cannot override built-in adapter for " + type);
        }
        if (obj instanceof InstanceCreator) {
            this.f36093d.put(type, (InstanceCreator) obj);
        }
        if (z || (obj instanceof JsonDeserializer)) {
            this.f36094e.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.f36094e.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
        }
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeAdapterFactory);
        this.f36094e.add(typeAdapterFactory);
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder registerTypeHierarchyAdapter(Class<?> cls, Object obj) {
        Objects.requireNonNull(cls);
        boolean z = obj instanceof JsonSerializer;
        C$Gson$Preconditions.checkArgument(z || (obj instanceof JsonDeserializer) || (obj instanceof TypeAdapter));
        if (JsonElement.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Cannot override built-in adapter for " + cls);
        }
        if ((obj instanceof JsonDeserializer) || z) {
            this.f36095f.add(TreeTypeAdapter.newTypeHierarchyFactory(cls, obj));
        }
        if (obj instanceof TypeAdapter) {
            this.f36094e.add(TypeAdapters.newTypeHierarchyFactory(cls, (TypeAdapter) obj));
        }
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder serializeNulls() {
        this.f36096g = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder serializeSpecialFloatingPointValues() {
        this.f36101l = true;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setDateFormat(String str) {
        if (str != null) {
            try {
                new SimpleDateFormat(str);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("The date pattern '" + str + "' is not valid", e);
            }
        }
        this.f36097h = str;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setExclusionStrategies(ExclusionStrategy... exclusionStrategyArr) {
        Objects.requireNonNull(exclusionStrategyArr);
        for (ExclusionStrategy exclusionStrategy : exclusionStrategyArr) {
            this.f36090a = this.f36090a.withExclusionStrategy(exclusionStrategy, true, true);
        }
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldNamingPolicy) {
        return setFieldNamingStrategy(fieldNamingPolicy);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldNamingStrategy) {
        Objects.requireNonNull(fieldNamingStrategy);
        this.f36092c = fieldNamingStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setFormattingStyle(FormattingStyle formattingStyle) {
        Objects.requireNonNull(formattingStyle);
        this.f36103n = formattingStyle;
        return this;
    }

    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.gson.Strictness"}, replacement = "this.setStrictness(Strictness.LENIENT)")
    @Deprecated
    public GsonBuilder setLenient() {
        return setStrictness(Strictness.LENIENT);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longSerializationPolicy) {
        Objects.requireNonNull(longSerializationPolicy);
        this.f36091b = longSerializationPolicy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setNumberToNumberStrategy(ToNumberStrategy toNumberStrategy) {
        Objects.requireNonNull(toNumberStrategy);
        this.f36108s = toNumberStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setObjectToNumberStrategy(ToNumberStrategy toNumberStrategy) {
        Objects.requireNonNull(toNumberStrategy);
        this.f36107r = toNumberStrategy;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setPrettyPrinting() {
        return setFormattingStyle(FormattingStyle.PRETTY);
    }

    @CanIgnoreReturnValue
    public GsonBuilder setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.f36105p = strictness;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setVersion(double d) {
        if (!Double.isNaN(d) && d >= 0.0d) {
            this.f36090a = this.f36090a.withVersion(d);
            return this;
        }
        throw new IllegalArgumentException("Invalid version: " + d);
    }

    @CanIgnoreReturnValue
    @Deprecated
    public GsonBuilder setDateFormat(int i) {
        this.f36098i = m28220b(i);
        this.f36097h = null;
        return this;
    }

    @CanIgnoreReturnValue
    public GsonBuilder setDateFormat(int i, int i2) {
        this.f36098i = m28220b(i);
        this.f36099j = m28220b(i2);
        this.f36097h = null;
        return this;
    }

    public GsonBuilder(Gson gson) {
        this.f36090a = Excluder.DEFAULT;
        this.f36091b = LongSerializationPolicy.DEFAULT;
        this.f36092c = FieldNamingPolicy.IDENTITY;
        HashMap hashMap = new HashMap();
        this.f36093d = hashMap;
        ArrayList arrayList = new ArrayList();
        this.f36094e = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f36095f = arrayList2;
        this.f36096g = false;
        this.f36097h = Gson.f36054H;
        this.f36098i = 2;
        this.f36099j = 2;
        this.f36100k = false;
        this.f36101l = false;
        this.f36102m = true;
        this.f36103n = Gson.f36048B;
        this.f36104o = false;
        this.f36105p = Gson.f36047A;
        this.f36106q = true;
        this.f36107r = Gson.f36056J;
        this.f36108s = Gson.f36057K;
        ArrayDeque<ReflectionAccessFilter> arrayDeque = new ArrayDeque<>();
        this.f36109t = arrayDeque;
        this.f36090a = gson.f36065f;
        this.f36092c = gson.f36066g;
        hashMap.putAll(gson.f36067h);
        this.f36096g = gson.f36068i;
        this.f36100k = gson.f36069j;
        this.f36104o = gson.f36070k;
        this.f36102m = gson.f36071l;
        this.f36103n = gson.f36072m;
        this.f36105p = gson.f36073n;
        this.f36101l = gson.f36074o;
        this.f36091b = gson.f36079t;
        this.f36097h = gson.f36076q;
        this.f36098i = gson.f36077r;
        this.f36099j = gson.f36078s;
        arrayList.addAll(gson.f36080u);
        arrayList2.addAll(gson.f36081v);
        this.f36106q = gson.f36075p;
        this.f36107r = gson.f36082w;
        this.f36108s = gson.f36083x;
        arrayDeque.addAll(gson.f36084y);
    }
}
