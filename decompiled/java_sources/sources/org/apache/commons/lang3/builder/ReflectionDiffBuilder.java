package org.apache.commons.lang3.builder;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.reflect.FieldUtils;

/* loaded from: classes12.dex */
public class ReflectionDiffBuilder implements Builder<DiffResult> {

    /* renamed from: e */
    public final Object f107472e;

    /* renamed from: f */
    public final Object f107473f;

    /* renamed from: g */
    public final DiffBuilder f107474g;

    public <T> ReflectionDiffBuilder(T t, T t2, ToStringStyle toStringStyle) {
        this.f107472e = t;
        this.f107473f = t2;
        this.f107474g = new DiffBuilder(t, t2, toStringStyle);
    }

    /* renamed from: a */
    public final boolean m67283a(Field field) {
        if (field.getName().indexOf(36) == -1 && !Modifier.isTransient(field.getModifiers())) {
            return !Modifier.isStatic(field.getModifiers());
        }
        return false;
    }

    /* renamed from: b */
    public final void m67284b(Class<?> cls) {
        for (Field field : FieldUtils.getAllFields(cls)) {
            if (m67283a(field)) {
                try {
                    this.f107474g.append(field.getName(), FieldUtils.readField(field, this.f107472e, true), FieldUtils.readField(field, this.f107473f, true));
                } catch (IllegalAccessException e) {
                    throw new InternalError("Unexpected IllegalAccessException: " + e.getMessage());
                }
            }
        }
    }

    @Override // org.apache.commons.lang3.builder.Builder
    public DiffResult build() {
        if (this.f107472e.equals(this.f107473f)) {
            return this.f107474g.build();
        }
        m67284b(this.f107472e.getClass());
        return this.f107474g.build();
    }
}
