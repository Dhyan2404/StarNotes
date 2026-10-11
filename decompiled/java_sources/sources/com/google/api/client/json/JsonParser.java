package com.google.api.client.json;

import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.util.Beta;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import com.google.api.client.util.Types;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes6.dex */
public abstract class JsonParser implements Closeable {
    private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap<>();
    private static final Lock lock = new ReentrantLock();

    /* renamed from: com.google.api.client.json.JsonParser$1 */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C55911 {
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$json$JsonToken;

        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$api$client$json$JsonToken = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private static Field getCachedTypemapFieldFor(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock2 = lock;
        lock2.lock();
        try {
            if (cachedTypemapFields.containsKey(cls)) {
                Field field2 = cachedTypemapFields.get(cls);
                lock2.unlock();
                return field2;
            }
            Iterator<FieldInfo> it2 = ClassInfo.m25754of(cls).getFieldInfos().iterator();
            while (it2.hasNext()) {
                Field field3 = it2.next().getField();
                JsonPolymorphicTypeMap jsonPolymorphicTypeMap = (JsonPolymorphicTypeMap) field3.getAnnotation(JsonPolymorphicTypeMap.class);
                if (jsonPolymorphicTypeMap != null) {
                    Preconditions.checkArgument(field == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    Preconditions.checkArgument(Data.isPrimitive(field3.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field3.getType());
                    JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = jsonPolymorphicTypeMap.typeDefinitions();
                    HashSet newHashSet = Sets.newHashSet();
                    Preconditions.checkArgument(typeDefinitions.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (JsonPolymorphicTypeMap.TypeDef typeDef : typeDefinitions) {
                        Preconditions.checkArgument(newHashSet.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                    }
                    field = field3;
                }
            }
            cachedTypemapFields.put(cls, field);
            return field;
        } finally {
            lock.unlock();
        }
    }

    private void parseMap(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(map, text)) {
                return;
            }
            map.put(text, parseValue(field, type, arrayList, map, customizeJsonParser, true));
            startParsingObjectOrArray = nextToken();
        }
    }

    private final Object parseValue(Field field, Type type, ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser, boolean z) throws IOException {
        boolean z2;
        Class<?> cls;
        Type resolveWildcardTypeOrTypeVariable = Data.resolveWildcardTypeOrTypeVariable(arrayList, type);
        Type type2 = null;
        Class<?> cls2 = resolveWildcardTypeOrTypeVariable instanceof Class ? (Class) resolveWildcardTypeOrTypeVariable : null;
        if (resolveWildcardTypeOrTypeVariable instanceof ParameterizedType) {
            cls2 = Types.getRawClass((ParameterizedType) resolveWildcardTypeOrTypeVariable);
        }
        if (cls2 == Void.class) {
            skipChildren();
            return null;
        }
        JsonToken currentToken = getCurrentToken();
        try {
        } catch (IllegalArgumentException e) {
            e = e;
        }
        try {
            switch (C55911.$SwitchMap$com$google$api$client$json$JsonToken[currentToken.ordinal()]) {
                case 1:
                case 4:
                case 5:
                    Preconditions.checkArgument(!Types.isArray(resolveWildcardTypeOrTypeVariable), "expected object or map type but got %s", resolveWildcardTypeOrTypeVariable);
                    Field cachedTypemapFieldFor = z ? getCachedTypemapFieldFor(cls2) : null;
                    Object newInstanceForObject = (cls2 == null || customizeJsonParser == null) ? null : customizeJsonParser.newInstanceForObject(obj, cls2);
                    boolean z3 = cls2 != null && Types.isAssignableToOrFrom(cls2, Map.class);
                    if (cachedTypemapFieldFor != null) {
                        newInstanceForObject = new GenericJson();
                    } else if (newInstanceForObject == null) {
                        if (!z3 && cls2 != null) {
                            newInstanceForObject = Types.newInstance(cls2);
                        }
                        newInstanceForObject = Data.newMapInstance(cls2);
                    }
                    Object obj2 = newInstanceForObject;
                    int size = arrayList.size();
                    if (resolveWildcardTypeOrTypeVariable != null) {
                        arrayList.add(resolveWildcardTypeOrTypeVariable);
                    }
                    if (z3 && !GenericData.class.isAssignableFrom(cls2)) {
                        Type mapValueParameter = Map.class.isAssignableFrom(cls2) ? Types.getMapValueParameter(resolveWildcardTypeOrTypeVariable) : null;
                        if (mapValueParameter != null) {
                            parseMap(field, (Map) obj2, mapValueParameter, arrayList, customizeJsonParser);
                            return obj2;
                        }
                    }
                    parse(arrayList, obj2, customizeJsonParser);
                    if (resolveWildcardTypeOrTypeVariable != null) {
                        arrayList.remove(size);
                    }
                    if (cachedTypemapFieldFor == null) {
                        return obj2;
                    }
                    Object obj3 = ((GenericJson) obj2).get(cachedTypemapFieldFor.getName());
                    Preconditions.checkArgument(obj3 != null, "No value specified for @JsonPolymorphicTypeMap field");
                    String obj4 = obj3.toString();
                    JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = ((JsonPolymorphicTypeMap) cachedTypemapFieldFor.getAnnotation(JsonPolymorphicTypeMap.class)).typeDefinitions();
                    int length = typeDefinitions.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            JsonPolymorphicTypeMap.TypeDef typeDef = typeDefinitions[i];
                            if (typeDef.key().equals(obj4)) {
                                cls = typeDef.ref();
                            } else {
                                i++;
                            }
                        } else {
                            cls = null;
                        }
                    }
                    Preconditions.checkArgument(cls != null, "No TypeDef annotation found with key: " + obj4);
                    JsonFactory factory = getFactory();
                    JsonParser createJsonParser = factory.createJsonParser(factory.toString(obj2));
                    createJsonParser.startParsing();
                    return createJsonParser.parseValue(field, cls, arrayList, null, null, false);
                case 2:
                case 3:
                    boolean isArray = Types.isArray(resolveWildcardTypeOrTypeVariable);
                    if (resolveWildcardTypeOrTypeVariable == null || isArray || (cls2 != null && Types.isAssignableToOrFrom(cls2, Collection.class))) {
                        z2 = true;
                    }
                    Preconditions.checkArgument(z2, "expected collection or array type but got %s", resolveWildcardTypeOrTypeVariable);
                    Collection<Object> newInstanceForArray = (customizeJsonParser == null || field == null) ? null : customizeJsonParser.newInstanceForArray(obj, field);
                    if (newInstanceForArray == null) {
                        newInstanceForArray = Data.newCollectionInstance(resolveWildcardTypeOrTypeVariable);
                    }
                    Collection<Object> collection = newInstanceForArray;
                    if (isArray) {
                        type2 = Types.getArrayComponentType(resolveWildcardTypeOrTypeVariable);
                    } else if (cls2 != null && Iterable.class.isAssignableFrom(cls2)) {
                        type2 = Types.getIterableParameter(resolveWildcardTypeOrTypeVariable);
                    }
                    Type resolveWildcardTypeOrTypeVariable2 = Data.resolveWildcardTypeOrTypeVariable(arrayList, type2);
                    parseArray(field, collection, resolveWildcardTypeOrTypeVariable2, arrayList, customizeJsonParser);
                    return isArray ? Types.toArray(collection, Types.getRawArrayComponentType(arrayList, resolveWildcardTypeOrTypeVariable2)) : collection;
                case 6:
                case 7:
                    if (resolveWildcardTypeOrTypeVariable == null || cls2 == Boolean.TYPE || (cls2 != null && cls2.isAssignableFrom(Boolean.class))) {
                        z2 = true;
                    }
                    Preconditions.checkArgument(z2, "expected type Boolean or boolean but got %s", resolveWildcardTypeOrTypeVariable);
                    return currentToken == JsonToken.VALUE_TRUE ? Boolean.TRUE : Boolean.FALSE;
                case 8:
                case 9:
                    Preconditions.checkArgument(field == null || field.getAnnotation(JsonString.class) == null, "number type formatted as a JSON number cannot use @JsonString annotation");
                    if (cls2 != null && !cls2.isAssignableFrom(BigDecimal.class)) {
                        if (cls2 == BigInteger.class) {
                            return getBigIntegerValue();
                        }
                        if (cls2 != Double.class && cls2 != Double.TYPE) {
                            if (cls2 != Long.class && cls2 != Long.TYPE) {
                                if (cls2 != Float.class && cls2 != Float.TYPE) {
                                    if (cls2 != Integer.class && cls2 != Integer.TYPE) {
                                        if (cls2 != Short.class && cls2 != Short.TYPE) {
                                            if (cls2 != Byte.class && cls2 != Byte.TYPE) {
                                                throw new IllegalArgumentException("expected numeric type but got " + resolveWildcardTypeOrTypeVariable);
                                            }
                                            return Byte.valueOf(getByteValue());
                                        }
                                        return Short.valueOf(getShortValue());
                                    }
                                    return Integer.valueOf(getIntValue());
                                }
                                return Float.valueOf(getFloatValue());
                            }
                            return Long.valueOf(getLongValue());
                        }
                        return Double.valueOf(getDoubleValue());
                    }
                    return getDecimalValue();
                case 10:
                    String lowerCase = getText().trim().toLowerCase(Locale.US);
                    if ((cls2 != Float.TYPE && cls2 != Float.class && cls2 != Double.TYPE && cls2 != Double.class) || (!lowerCase.equals("nan") && !lowerCase.equals(Constants.ATTRNAME_INFINITY) && !lowerCase.equals("-infinity"))) {
                        if (cls2 == null || !Number.class.isAssignableFrom(cls2) || (field != null && field.getAnnotation(JsonString.class) != null)) {
                            z2 = true;
                        }
                        Preconditions.checkArgument(z2, "number field formatted as a JSON string must use the @JsonString annotation");
                    }
                    return Data.parsePrimitiveValue(resolveWildcardTypeOrTypeVariable, getText());
                case 11:
                    Preconditions.checkArgument(cls2 == null || !cls2.isPrimitive(), "primitive number field but found a JSON null");
                    if (cls2 != null && (cls2.getModifiers() & 1536) != 0) {
                        if (Types.isAssignableToOrFrom(cls2, Collection.class)) {
                            return Data.nullOf(Data.newCollectionInstance(resolveWildcardTypeOrTypeVariable).getClass());
                        }
                        if (Types.isAssignableToOrFrom(cls2, Map.class)) {
                            return Data.nullOf(Data.newMapInstance(cls2).getClass());
                        }
                    }
                    return Data.nullOf(Types.getRawArrayComponentType(arrayList, resolveWildcardTypeOrTypeVariable));
                default:
                    throw new IllegalArgumentException("unexpected JSON node type: " + currentToken);
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            StringBuilder sb = new StringBuilder();
            String currentName = getCurrentName();
            if (currentName != null) {
                sb.append("key ");
                sb.append(currentName);
            }
            if (field != null) {
                if (currentName != null) {
                    sb.append(", ");
                }
                sb.append("field ");
                sb.append(field);
            }
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    private JsonToken startParsing() throws IOException {
        JsonToken currentToken = getCurrentToken();
        if (currentToken == null) {
            currentToken = nextToken();
        }
        Preconditions.checkArgument(currentToken != null, "no JSON input found");
        return currentToken;
    }

    private JsonToken startParsingObjectOrArray() throws IOException {
        JsonToken startParsing = startParsing();
        int i = C55911.$SwitchMap$com$google$api$client$json$JsonToken[startParsing.ordinal()];
        boolean z = true;
        if (i != 1) {
            return i != 2 ? startParsing : nextToken();
        }
        JsonToken nextToken = nextToken();
        if (nextToken != JsonToken.FIELD_NAME && nextToken != JsonToken.END_OBJECT) {
            z = false;
        }
        Preconditions.checkArgument(z, nextToken);
        return nextToken;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public abstract byte getByteValue() throws IOException;

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public abstract JsonFactory getFactory();

    public abstract float getFloatValue() throws IOException;

    public abstract int getIntValue() throws IOException;

    public abstract long getLongValue() throws IOException;

    public abstract short getShortValue() throws IOException;

    public abstract String getText() throws IOException;

    public abstract JsonToken nextToken() throws IOException;

    public final <T> T parse(Class<T> cls) throws IOException {
        return (T) parse((Class) cls, (CustomizeJsonParser) null);
    }

    public final <T> T parseAndClose(Class<T> cls) throws IOException {
        return (T) parseAndClose((Class) cls, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2) throws IOException {
        return parseArray(cls, cls2, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2) throws IOException {
        return parseArrayAndClose(cls, cls2, (CustomizeJsonParser) null);
    }

    public abstract JsonParser skipChildren() throws IOException;

    public final void skipToKey(String str) throws IOException {
        skipToKey(Collections.singleton(str));
    }

    @Beta
    public final <T> T parse(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        return (T) parse((Type) cls, false, customizeJsonParser);
    }

    @Beta
    public final <T> T parseAndClose(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            return (T) parse((Class) cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    @Beta
    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) throws IOException {
        Collection<T> collection = (Collection<T>) Data.newCollectionInstance(cls);
        parseArray(collection, cls2, customizeJsonParser);
        return collection;
    }

    @Beta
    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            return parseArray(cls, cls2, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final String skipToKey(Set<String> set) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (set.contains(text)) {
                return text;
            }
            skipChildren();
            startParsingObjectOrArray = nextToken();
        }
        return null;
    }

    public Object parse(Type type, boolean z) throws IOException {
        return parse(type, z, (CustomizeJsonParser) null);
    }

    @Beta
    public Object parse(Type type, boolean z, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            if (!Void.class.equals(type)) {
                startParsing();
            }
            return parseValue(null, type, new ArrayList<>(), null, customizeJsonParser, true);
        } finally {
            if (z) {
                close();
            }
        }
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls) throws IOException {
        parseArray(collection, cls, (CustomizeJsonParser) null);
    }

    public final void parseAndClose(Object obj) throws IOException {
        parseAndClose(obj, (CustomizeJsonParser) null);
    }

    @Beta
    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        parseArray(null, collection, cls, new ArrayList<>(), customizeJsonParser);
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls) throws IOException {
        parseArrayAndClose(collection, cls, (CustomizeJsonParser) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void parseArray(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray != JsonToken.END_ARRAY) {
            collection.add(parseValue(field, type, arrayList, collection, customizeJsonParser, true));
            startParsingObjectOrArray = nextToken();
        }
    }

    @Beta
    public final void parseAndClose(Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            parse(obj, customizeJsonParser);
        } finally {
            close();
        }
    }

    @Beta
    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            parseArray(collection, cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final void parse(Object obj) throws IOException {
        parse(obj, (CustomizeJsonParser) null);
    }

    @Beta
    public final void parse(Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        ArrayList<Type> arrayList = new ArrayList<>();
        arrayList.add(obj.getClass());
        parse(arrayList, obj, customizeJsonParser);
    }

    private void parse(ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        if (obj instanceof GenericJson) {
            ((GenericJson) obj).setFactory(getFactory());
        }
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        Class<?> cls = obj.getClass();
        ClassInfo m25754of = ClassInfo.m25754of(cls);
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
            parseMap(null, (Map) obj, Types.getMapValueParameter(cls), arrayList, customizeJsonParser);
            return;
        }
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(obj, text)) {
                return;
            }
            FieldInfo fieldInfo = m25754of.getFieldInfo(text);
            if (fieldInfo != null) {
                if (fieldInfo.isFinal() && !fieldInfo.isPrimitive()) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field field = fieldInfo.getField();
                int size = arrayList.size();
                arrayList.add(field.getGenericType());
                Object parseValue = parseValue(field, fieldInfo.getGenericType(), arrayList, obj, customizeJsonParser, true);
                arrayList.remove(size);
                fieldInfo.setValue(obj, parseValue);
            } else if (isAssignableFrom) {
                ((GenericData) obj).set(text, parseValue(null, null, arrayList, obj, customizeJsonParser, true));
            } else {
                if (customizeJsonParser != null) {
                    customizeJsonParser.handleUnrecognizedKey(obj, text);
                }
                skipChildren();
            }
            startParsingObjectOrArray = nextToken();
        }
    }
}
