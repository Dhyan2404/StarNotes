package com.sunia.HTREnginev2;

import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;

@onf
/* loaded from: classes6.dex */
public abstract class bpn {

    /* renamed from: a */
    public final Set<Type> f66012a = Sets.newHashSet();

    /* renamed from: a */
    public final void m53317a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f66012a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        mo27478e((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        mo27479f((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        mo27477d((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        mo27475b((Class) type);
                    } else {
                        if (!(type instanceof GenericArrayType)) {
                            String valueOf = String.valueOf(type);
                            StringBuilder sb = new StringBuilder(valueOf.length() + 14);
                            sb.append("Unknown type: ");
                            sb.append(valueOf);
                            throw new AssertionError(sb.toString());
                        }
                        mo27476c((GenericArrayType) type);
                    }
                } catch (Throwable th) {
                    this.f66012a.remove(type);
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public void mo27475b(Class<?> cls) {
    }

    /* renamed from: c */
    public void mo27476c(GenericArrayType genericArrayType) {
    }

    /* renamed from: d */
    public void mo27477d(ParameterizedType parameterizedType) {
    }

    /* renamed from: e */
    public void mo27478e(TypeVariable<?> typeVariable) {
    }

    /* renamed from: f */
    public void mo27479f(WildcardType wildcardType) {
    }
}
