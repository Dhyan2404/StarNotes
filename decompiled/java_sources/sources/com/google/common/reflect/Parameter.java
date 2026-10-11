package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;
import com.sunia.HTREnginev2.onf;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.AnnotatedType;
import javax.annotation.CheckForNull;

@Beta
@onf
/* loaded from: classes6.dex */
public final class Parameter implements AnnotatedElement {

    /* renamed from: a */
    public final Invokable<?, ?> f35097a;

    /* renamed from: b */
    public final int f35098b;

    /* renamed from: c */
    public final TypeToken<?> f35099c;

    /* renamed from: d */
    public final ImmutableList<Annotation> f35100d;

    /* renamed from: e */
    public final AnnotatedType f35101e;

    public Parameter(Invokable<?, ?> invokable, int i, TypeToken<?> typeToken, Annotation[] annotationArr, AnnotatedType annotatedType) {
        this.f35097a = invokable;
        this.f35098b = i;
        this.f35099c = typeToken;
        this.f35100d = ImmutableList.copyOf(annotationArr);
        this.f35101e = annotatedType;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Parameter)) {
            return false;
        }
        Parameter parameter = (Parameter) obj;
        return this.f35098b == parameter.f35098b && this.f35097a.equals(parameter.f35097a);
    }

    public AnnotatedType getAnnotatedType() {
        return this.f35101e;
    }

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        UnmodifiableIterator<Annotation> it2 = this.f35100d.iterator();
        while (it2.hasNext()) {
            Annotation next = it2.next();
            if (cls.isInstance(next)) {
                return cls.cast(next);
            }
        }
        return null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        Preconditions.checkNotNull(cls);
        return (A) FluentIterable.from(this.f35100d).filter(cls).first().orNull();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public Annotation[] getDeclaredAnnotations() {
        return (Annotation[]) this.f35100d.toArray(new Annotation[0]);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) FluentIterable.from(this.f35100d).filter(cls).toArray(cls));
    }

    public Invokable<?, ?> getDeclaringInvokable() {
        return this.f35097a;
    }

    public TypeToken<?> getType() {
        return this.f35099c;
    }

    public int hashCode() {
        return this.f35098b;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return getAnnotation(cls) != null;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f35099c);
        int i = this.f35098b;
        StringBuilder sb = new StringBuilder(valueOf.length() + 15);
        sb.append(valueOf);
        sb.append(" arg");
        sb.append(i);
        return sb.toString();
    }
}
