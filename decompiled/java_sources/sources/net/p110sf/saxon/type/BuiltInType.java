package net.p110sf.saxon.type;

import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.p111z.IntHashMap;

/* loaded from: classes11.dex */
public abstract class BuiltInType {

    /* renamed from: a */
    public static final IntHashMap<SchemaType> f102779a = new IntHashMap<>(100);

    /* renamed from: b */
    public static final Map<String, SchemaType> f102780b = new HashMap(100);

    static {
        register(StandardNames.XS_ANY_SIMPLE_TYPE, AnySimpleType.getInstance());
        register(572, AnyType.getInstance());
        register(630, Untyped.getInstance());
        register(575, ErrorType.getInstance());
    }

    public static SchemaType getSchemaType(int i) {
        IntHashMap<SchemaType> intHashMap = f102779a;
        SchemaType schemaType = intHashMap.get(i);
        if (schemaType != null) {
            return schemaType;
        }
        if (BuiltInAtomicType.DOUBLE != null) {
            BuiltInListType builtInListType = BuiltInListType.NMTOKENS;
        }
        return intHashMap.get(i);
    }

    public static SchemaType getSchemaTypeByLocalName(String str) {
        Map<String, SchemaType> map = f102780b;
        SchemaType schemaType = map.get(str);
        if (schemaType != null) {
            return schemaType;
        }
        if (BuiltInAtomicType.DOUBLE != null) {
            BuiltInListType builtInListType = BuiltInListType.NMTOKENS;
        }
        return map.get(str);
    }

    public static void register(int i, SchemaType schemaType) {
        f102779a.put(i, schemaType);
        f102780b.put(schemaType.getName(), schemaType);
    }
}
