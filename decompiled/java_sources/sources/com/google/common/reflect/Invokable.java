package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.onf;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.AnnotatedType;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@Beta
@onf
/* loaded from: classes6.dex */
public abstract class Invokable<T, R> implements AnnotatedElement, Member {

    /* renamed from: a */
    public final AccessibleObject f35090a;

    /* renamed from: b */
    public final Member f35091b;

    /* renamed from: com.google.common.reflect.Invokable$a */
    /* loaded from: classes6.dex */
    public static class C6261a<T> extends Invokable<T, T> {

        /* renamed from: c */
        public final Constructor<?> f35092c;

        public C6261a(Constructor<?> constructor) {
            super(constructor);
            this.f35092c = constructor;
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: a */
        public AnnotatedType[] mo27447a() {
            return this.f35092c.getAnnotatedParameterTypes();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: b */
        public Type[] mo27448b() {
            return this.f35092c.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: c */
        public Type[] mo27449c() {
            Type[] genericParameterTypes = this.f35092c.getGenericParameterTypes();
            if (genericParameterTypes.length > 0 && m27455i()) {
                Class<?>[] parameterTypes = this.f35092c.getParameterTypes();
                if (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) {
                    return (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                }
            }
            return genericParameterTypes;
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: d */
        public Type mo27450d() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            return typeParameters.length > 0 ? Types.m27523l(declaringClass, typeParameters) : declaringClass;
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: e */
        public final Annotation[][] mo27451e() {
            return this.f35092c.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: f */
        public final Object mo27452f(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            try {
                return this.f35092c.newInstance(objArr);
            } catch (InstantiationException e) {
                String valueOf = String.valueOf(this.f35092c);
                StringBuilder sb = new StringBuilder(valueOf.length() + 8);
                sb.append(valueOf);
                sb.append(" failed.");
                throw new RuntimeException(sb.toString(), e);
            }
        }

        @Override // com.google.common.reflect.Invokable
        public AnnotatedType getAnnotatedReturnType() {
            return this.f35092c.getAnnotatedReturnType();
        }

        @Override // com.google.common.reflect.Invokable
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.f35092c.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        /* renamed from: i */
        public final boolean m27455i() {
            Class<?> declaringClass = this.f35092c.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            return declaringClass.getEnclosingMethod() != null ? !Modifier.isStatic(r0.getModifiers()) : (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return false;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.f35092c.isVarArgs();
        }
    }

    /* renamed from: com.google.common.reflect.Invokable$b */
    /* loaded from: classes6.dex */
    public static class C6262b<T> extends Invokable<T, Object> {

        /* renamed from: c */
        public final Method f35093c;

        public C6262b(Method method) {
            super(method);
            this.f35093c = method;
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: a */
        public AnnotatedType[] mo27447a() {
            return this.f35093c.getAnnotatedParameterTypes();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: b */
        public Type[] mo27448b() {
            return this.f35093c.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: c */
        public Type[] mo27449c() {
            return this.f35093c.getGenericParameterTypes();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: d */
        public Type mo27450d() {
            return this.f35093c.getGenericReturnType();
        }

        @Override // com.google.common.reflect.Invokable
        /* renamed from: e */
        public final Annotation[][] mo27451e() {
            return this.f35093c.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Invokable
        @CheckForNull
        /* renamed from: f */
        public final Object mo27452f(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            return this.f35093c.invoke(obj, objArr);
        }

        @Override // com.google.common.reflect.Invokable
        public AnnotatedType getAnnotatedReturnType() {
            return this.f35093c.getAnnotatedReturnType();
        }

        @Override // com.google.common.reflect.Invokable
        public final TypeVariable<?>[] getTypeParameters() {
            return this.f35093c.getTypeParameters();
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return (isFinal() || isPrivate() || isStatic() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.f35093c.isVarArgs();
        }
    }

    public <M extends AccessibleObject & Member> Invokable(M m) {
        Preconditions.checkNotNull(m);
        this.f35090a = m;
        this.f35091b = m;
    }

    public static Invokable<?, Object> from(Method method) {
        return new C6262b(method);
    }

    /* renamed from: a */
    public abstract AnnotatedType[] mo27447a();

    /* renamed from: b */
    public abstract Type[] mo27448b();

    /* renamed from: c */
    public abstract Type[] mo27449c();

    /* renamed from: d */
    public abstract Type mo27450d();

    /* renamed from: e */
    public abstract Annotation[][] mo27451e();

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Invokable)) {
            return false;
        }
        Invokable invokable = (Invokable) obj;
        return getOwnerType().equals(invokable.getOwnerType()) && this.f35091b.equals(invokable.f35091b);
    }

    @CheckForNull
    /* renamed from: f */
    public abstract Object mo27452f(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException;

    /* renamed from: g */
    public final boolean m27453g() {
        return Modifier.isTransient(getModifiers());
    }

    public abstract AnnotatedType getAnnotatedReturnType();

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f35090a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f35090a.getAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f35090a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) this.f35091b.getDeclaringClass();
    }

    public final ImmutableList<TypeToken<? extends Throwable>> getExceptionTypes() {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : mo27448b()) {
            builder.add((ImmutableList.Builder) TypeToken.m27495of(type));
        }
        return builder.build();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f35091b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f35091b.getName();
    }

    public TypeToken<T> getOwnerType() {
        return TypeToken.m27494of((Class) getDeclaringClass());
    }

    public final ImmutableList<Parameter> getParameters() {
        Type[] mo27449c = mo27449c();
        Annotation[][] mo27451e = mo27451e();
        AnnotatedType[] mo27447a = mo27447a();
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < mo27449c.length; i++) {
            builder.add((ImmutableList.Builder) new Parameter(this, i, TypeToken.m27495of(mo27449c[i]), mo27451e[i], mo27447a[i]));
        }
        return builder.build();
    }

    public final TypeToken<? extends R> getReturnType() {
        return (TypeToken<? extends R>) TypeToken.m27495of(mo27450d());
    }

    public abstract TypeVariable<?>[] getTypeParameters();

    /* renamed from: h */
    public final boolean m27454h() {
        return Modifier.isVolatile(getModifiers());
    }

    public int hashCode() {
        return this.f35091b.hashCode();
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public final R invoke(@CheckForNull T t, Object... objArr) throws InvocationTargetException, IllegalAccessException {
        return (R) mo27452f(t, (Object[]) Preconditions.checkNotNull(objArr));
    }

    public final boolean isAbstract() {
        return Modifier.isAbstract(getModifiers());
    }

    public final boolean isAccessible() {
        return this.f35090a.isAccessible();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f35090a.isAnnotationPresent(cls);
    }

    public final boolean isFinal() {
        return Modifier.isFinal(getModifiers());
    }

    public final boolean isNative() {
        return Modifier.isNative(getModifiers());
    }

    public abstract boolean isOverridable();

    public final boolean isPackagePrivate() {
        return (isPrivate() || isPublic() || isProtected()) ? false : true;
    }

    public final boolean isPrivate() {
        return Modifier.isPrivate(getModifiers());
    }

    public final boolean isProtected() {
        return Modifier.isProtected(getModifiers());
    }

    public final boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }

    public final boolean isStatic() {
        return Modifier.isStatic(getModifiers());
    }

    public final boolean isSynchronized() {
        return Modifier.isSynchronized(getModifiers());
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f35091b.isSynthetic();
    }

    public abstract boolean isVarArgs();

    public final <R1 extends R> Invokable<T, R1> returning(Class<R1> cls) {
        return returning(TypeToken.m27494of((Class) cls));
    }

    public final void setAccessible(boolean z) {
        this.f35090a.setAccessible(z);
    }

    public String toString() {
        return this.f35091b.toString();
    }

    public final boolean trySetAccessible() {
        try {
            this.f35090a.setAccessible(true);
            return true;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public static <T> Invokable<T, T> from(Constructor<T> constructor) {
        return new C6261a(constructor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> Invokable<T, R1> returning(TypeToken<R1> typeToken) {
        if (typeToken.isSupertypeOf(getReturnType())) {
            return this;
        }
        String valueOf = String.valueOf(getReturnType());
        String valueOf2 = String.valueOf(typeToken);
        StringBuilder sb = new StringBuilder(valueOf.length() + 35 + valueOf2.length());
        sb.append("Invokable is known to return ");
        sb.append(valueOf);
        sb.append(", not ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }
}
