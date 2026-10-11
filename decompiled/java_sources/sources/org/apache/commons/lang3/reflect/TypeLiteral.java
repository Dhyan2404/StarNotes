package org.apache.commons.lang3.reflect;

import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Map;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public abstract class TypeLiteral<T> implements Typed<T> {

    /* renamed from: b */
    public static final TypeVariable<Class<TypeLiteral>> f107548b = TypeLiteral.class.getTypeParameters()[0];

    /* renamed from: a */
    public final String f107549a;
    public final Type value;

    public TypeLiteral() {
        Map<TypeVariable<?>, Type> typeArguments = TypeUtils.getTypeArguments(getClass(), TypeLiteral.class);
        TypeVariable<Class<TypeLiteral>> typeVariable = f107548b;
        Type type = (Type) Validate.notNull(typeArguments.get(typeVariable), "%s does not assign type parameter %s", getClass(), TypeUtils.toLongString(typeVariable));
        this.value = type;
        this.f107549a = String.format("%s<%s>", TypeLiteral.class.getSimpleName(), TypeUtils.toString(type));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TypeLiteral) {
            return TypeUtils.equals(this.value, ((TypeLiteral) obj).value);
        }
        return false;
    }

    @Override // org.apache.commons.lang3.reflect.Typed
    public Type getType() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode() | 592;
    }

    public String toString() {
        return this.f107549a;
    }
}
