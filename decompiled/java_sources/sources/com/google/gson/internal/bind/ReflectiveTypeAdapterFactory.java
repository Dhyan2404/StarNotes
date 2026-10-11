package com.google.gson.internal.bind;

import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.Primitives;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.TroubleshootingGuide;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes6.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: e */
    public final ConstructorConstructor f36224e;

    /* renamed from: f */
    public final FieldNamingStrategy f36225f;

    /* renamed from: g */
    public final Excluder f36226g;

    /* renamed from: h */
    public final JsonAdapterAnnotationTypeAdapterFactory f36227h;

    /* renamed from: i */
    public final List<ReflectionAccessFilter> f36228i;

    /* loaded from: classes6.dex */
    public static abstract class Adapter<T, A> extends TypeAdapter<T> {

        /* renamed from: a */
        public final C6558e f36229a;

        public Adapter(C6558e c6558e) {
            this.f36229a = c6558e;
        }

        /* renamed from: a */
        public abstract A mo28295a();

        /* renamed from: b */
        public abstract T mo28296b(A a);

        /* renamed from: c */
        public abstract void mo28297c(A a, JsonReader jsonReader, AbstractC6556c abstractC6556c) throws IllegalAccessException, IOException;

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            A mo28295a = mo28295a();
            Map<String, AbstractC6556c> map = this.f36229a.f36243a;
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    AbstractC6556c abstractC6556c = map.get(jsonReader.nextName());
                    if (abstractC6556c == null) {
                        jsonReader.skipValue();
                    } else {
                        mo28297c(mo28295a, jsonReader, abstractC6556c);
                    }
                }
                jsonReader.endObject();
                return mo28296b(mo28295a);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                Iterator<AbstractC6556c> it2 = this.f36229a.f36244b.iterator();
                while (it2.hasNext()) {
                    it2.next().mo28300c(jsonWriter, t);
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$a */
    /* loaded from: classes6.dex */
    public class C6554a<T> extends TypeAdapter<T> {
        public C6554a() {
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            jsonReader.skipValue();
            return null;
        }

        public String toString() {
            return "AnonymousOrNonStaticLocalClassAdapter";
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.nullValue();
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$b */
    /* loaded from: classes6.dex */
    public class C6555b extends AbstractC6556c {

        /* renamed from: d */
        public final /* synthetic */ boolean f36231d;

        /* renamed from: e */
        public final /* synthetic */ Method f36232e;

        /* renamed from: f */
        public final /* synthetic */ TypeAdapter f36233f;

        /* renamed from: g */
        public final /* synthetic */ TypeAdapter f36234g;

        /* renamed from: h */
        public final /* synthetic */ boolean f36235h;

        /* renamed from: i */
        public final /* synthetic */ boolean f36236i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6555b(String str, Field field, boolean z, Method method, TypeAdapter typeAdapter, TypeAdapter typeAdapter2, boolean z2, boolean z3) {
            super(str, field);
            this.f36231d = z;
            this.f36232e = method;
            this.f36233f = typeAdapter;
            this.f36234g = typeAdapter2;
            this.f36235h = z2;
            this.f36236i = z3;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC6556c
        /* renamed from: a */
        public void mo28298a(JsonReader jsonReader, int i, Object[] objArr) throws IOException, JsonParseException {
            Object read = this.f36234g.read(jsonReader);
            if (read != null || !this.f36235h) {
                objArr[i] = read;
                return;
            }
            throw new JsonParseException("null is not allowed as value for record component '" + this.f36240c + "' of primitive type; at path " + jsonReader.getPath());
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC6556c
        /* renamed from: b */
        public void mo28299b(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
            Object read = this.f36234g.read(jsonReader);
            if (read == null && this.f36235h) {
                return;
            }
            if (this.f36231d) {
                ReflectiveTypeAdapterFactory.m28289b(obj, this.f36239b);
            } else if (this.f36236i) {
                throw new JsonIOException("Cannot set value of 'static final' " + ReflectionHelper.getAccessibleObjectDescription(this.f36239b, false));
            }
            this.f36239b.set(obj, read);
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.AbstractC6556c
        /* renamed from: c */
        public void mo28300c(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
            Object obj2;
            if (this.f36231d) {
                Method method = this.f36232e;
                if (method == null) {
                    ReflectiveTypeAdapterFactory.m28289b(obj, this.f36239b);
                } else {
                    ReflectiveTypeAdapterFactory.m28289b(obj, method);
                }
            }
            Method method2 = this.f36232e;
            if (method2 != null) {
                try {
                    obj2 = method2.invoke(obj, new Object[0]);
                } catch (InvocationTargetException e) {
                    throw new JsonIOException("Accessor " + ReflectionHelper.getAccessibleObjectDescription(this.f36232e, false) + " threw exception", e.getCause());
                }
            } else {
                obj2 = this.f36239b.get(obj);
            }
            if (obj2 == obj) {
                return;
            }
            jsonWriter.name(this.f36238a);
            this.f36233f.write(jsonWriter, obj2);
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$c */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6556c {

        /* renamed from: a */
        public final String f36238a;

        /* renamed from: b */
        public final Field f36239b;

        /* renamed from: c */
        public final String f36240c;

        public AbstractC6556c(String str, Field field) {
            this.f36238a = str;
            this.f36239b = field;
            this.f36240c = field.getName();
        }

        /* renamed from: a */
        public abstract void mo28298a(JsonReader jsonReader, int i, Object[] objArr) throws IOException, JsonParseException;

        /* renamed from: b */
        public abstract void mo28299b(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: c */
        public abstract void mo28300c(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$d */
    /* loaded from: classes6.dex */
    public static final class C6557d<T> extends Adapter<T, T> {

        /* renamed from: b */
        public final ObjectConstructor<T> f36241b;

        public C6557d(ObjectConstructor<T> objectConstructor, C6558e c6558e) {
            super(c6558e);
            this.f36241b = objectConstructor;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: a */
        public T mo28295a() {
            return this.f36241b.construct();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: b */
        public T mo28296b(T t) {
            return t;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: c */
        public void mo28297c(T t, JsonReader jsonReader, AbstractC6556c abstractC6556c) throws IllegalAccessException, IOException {
            abstractC6556c.mo28299b(jsonReader, t);
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$e */
    /* loaded from: classes6.dex */
    public static class C6558e {

        /* renamed from: c */
        public static final C6558e f36242c = new C6558e(Collections.emptyMap(), Collections.emptyList());

        /* renamed from: a */
        public final Map<String, AbstractC6556c> f36243a;

        /* renamed from: b */
        public final List<AbstractC6556c> f36244b;

        public C6558e(Map<String, AbstractC6556c> map, List<AbstractC6556c> list) {
            this.f36243a = map;
            this.f36244b = list;
        }
    }

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$f */
    /* loaded from: classes6.dex */
    public static final class C6559f<T> extends Adapter<T, Object[]> {

        /* renamed from: e */
        public static final Map<Class<?>, Object> f36245e = m28301f();

        /* renamed from: b */
        public final Constructor<T> f36246b;

        /* renamed from: c */
        public final Object[] f36247c;

        /* renamed from: d */
        public final Map<String, Integer> f36248d;

        public C6559f(Class<T> cls, C6558e c6558e, boolean z) {
            super(c6558e);
            this.f36248d = new HashMap();
            Constructor<T> canonicalRecordConstructor = ReflectionHelper.getCanonicalRecordConstructor(cls);
            this.f36246b = canonicalRecordConstructor;
            if (z) {
                ReflectiveTypeAdapterFactory.m28289b(null, canonicalRecordConstructor);
            } else {
                ReflectionHelper.makeAccessible(canonicalRecordConstructor);
            }
            String[] recordComponentNames = ReflectionHelper.getRecordComponentNames(cls);
            for (int i = 0; i < recordComponentNames.length; i++) {
                this.f36248d.put(recordComponentNames[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.f36246b.getParameterTypes();
            this.f36247c = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.f36247c[i2] = f36245e.get(parameterTypes[i2]);
            }
        }

        /* renamed from: f */
        public static Map<Class<?>, Object> m28301f() {
            HashMap hashMap = new HashMap();
            hashMap.put(Byte.TYPE, (byte) 0);
            hashMap.put(Short.TYPE, (short) 0);
            hashMap.put(Integer.TYPE, 0);
            hashMap.put(Long.TYPE, 0L);
            hashMap.put(Float.TYPE, Float.valueOf(0.0f));
            hashMap.put(Double.TYPE, Double.valueOf(0.0d));
            hashMap.put(Character.TYPE, (char) 0);
            hashMap.put(Boolean.TYPE, Boolean.FALSE);
            return hashMap;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public Object[] mo28295a() {
            return (Object[]) this.f36247c.clone();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public T mo28296b(Object[] objArr) {
            try {
                return this.f36246b.newInstance(objArr);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (IllegalArgumentException | InstantiationException e2) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.f36246b) + "' with args " + Arrays.toString(objArr), e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.f36246b) + "' with args " + Arrays.toString(objArr), e3.getCause());
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public void mo28297c(Object[] objArr, JsonReader jsonReader, AbstractC6556c abstractC6556c) throws IOException {
            Integer num = this.f36248d.get(abstractC6556c.f36240c);
            if (num != null) {
                abstractC6556c.mo28298a(jsonReader, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + ReflectionHelper.constructorToString(this.f36246b) + "' for field with name '" + abstractC6556c.f36240c + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory, List<ReflectionAccessFilter> list) {
        this.f36224e = constructorConstructor;
        this.f36225f = fieldNamingStrategy;
        this.f36226g = excluder;
        this.f36227h = jsonAdapterAnnotationTypeAdapterFactory;
        this.f36228i = list;
    }

    /* renamed from: b */
    public static <M extends AccessibleObject & Member> void m28289b(Object obj, M m) {
        if (Modifier.isStatic(m.getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.canAccess(m, obj)) {
            return;
        }
        throw new JsonIOException(ReflectionHelper.getAccessibleObjectDescription(m, true) + " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");
    }

    /* renamed from: d */
    public static IllegalArgumentException m28290d(Class<?> cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + ReflectionHelper.fieldToString(field) + CloudStorageConstants.OPERATION_AND + ReflectionHelper.fieldToString(field2) + "\nSee " + TroubleshootingGuide.createUrl("duplicate-fields"));
    }

    /* renamed from: c */
    public final AbstractC6556c m28291c(Gson gson, Field field, Method method, String str, TypeToken<?> typeToken, boolean z, boolean z2) {
        TypeAdapter<?> typeAdapter;
        boolean isPrimitive = Primitives.isPrimitive(typeToken.getRawType());
        int modifiers = field.getModifiers();
        boolean z3 = Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers);
        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
        TypeAdapter<?> m28268c = jsonAdapter != null ? this.f36227h.m28268c(this.f36224e, gson, typeToken, jsonAdapter, false) : null;
        boolean z4 = m28268c != null;
        if (m28268c == null) {
            m28268c = gson.getAdapter(typeToken);
        }
        TypeAdapter<?> typeAdapter2 = m28268c;
        if (z) {
            typeAdapter = z4 ? typeAdapter2 : new C6599a<>(gson, typeAdapter2, typeToken.getType());
        } else {
            typeAdapter = typeAdapter2;
        }
        return new C6555b(str, field, z2, method, typeAdapter, typeAdapter2, isPrimitive, z3);
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        if (ReflectionHelper.isAnonymousOrNonStaticLocal(rawType)) {
            return new C6554a();
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.f36228i, rawType);
        if (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL) {
            boolean z = filterResult == ReflectionAccessFilter.FilterResult.BLOCK_INACCESSIBLE;
            return ReflectionHelper.isRecord(rawType) ? new C6559f(rawType, m28292e(gson, typeToken, rawType, z, true), z) : new C6557d(this.f36224e.get(typeToken), m28292e(gson, typeToken, rawType, z, false));
        }
        throw new JsonIOException("ReflectionAccessFilter does not permit using reflection for " + rawType + ". Register a TypeAdapter for this type or adjust the access filter.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0108  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.C6558e m28292e(com.google.gson.Gson r24, com.google.gson.reflect.TypeToken<?> r25, java.lang.Class<?> r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.m28292e(com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.Class, boolean, boolean):com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$e");
    }

    /* renamed from: f */
    public final List<String> m28293f(Field field) {
        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
        if (serializedName == null) {
            return Collections.singletonList(this.f36225f.translateName(field));
        }
        String value = serializedName.value();
        String[] alternate = serializedName.alternate();
        if (alternate.length == 0) {
            return Collections.singletonList(value);
        }
        ArrayList arrayList = new ArrayList(alternate.length + 1);
        arrayList.add(value);
        Collections.addAll(arrayList, alternate);
        return arrayList;
    }

    /* renamed from: g */
    public final boolean m28294g(Field field, boolean z) {
        return !this.f36226g.excludeField(field, z);
    }
}
