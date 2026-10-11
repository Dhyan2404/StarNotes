package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.onf;
import com.sunia.HTREnginev2.son;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public abstract class TypeParameter<T> extends son<T> {

    /* renamed from: e */
    public final TypeVariable<?> f35102e;

    public TypeParameter() {
        Type capture = capture();
        Preconditions.checkArgument(capture instanceof TypeVariable, "%s should be a type variable.", capture);
        this.f35102e = (TypeVariable) capture;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof TypeParameter) {
            return this.f35102e.equals(((TypeParameter) obj).f35102e);
        }
        return false;
    }

    public final int hashCode() {
        return this.f35102e.hashCode();
    }

    public String toString() {
        return this.f35102e.toString();
    }
}
