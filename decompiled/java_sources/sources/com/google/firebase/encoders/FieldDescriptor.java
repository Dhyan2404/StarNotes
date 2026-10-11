package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public final class FieldDescriptor {

    /* renamed from: a */
    public final String f35851a;

    /* renamed from: b */
    public final Map<Class<?>, Object> f35852b;

    /* loaded from: classes6.dex */
    public static final class Builder {

        /* renamed from: a */
        public final String f35853a;

        /* renamed from: b */
        public Map<Class<?>, Object> f35854b = null;

        public Builder(String str) {
            this.f35853a = str;
        }

        @NonNull
        public FieldDescriptor build() {
            return new FieldDescriptor(this.f35853a, this.f35854b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.f35854b)));
        }

        @NonNull
        public <T extends Annotation> Builder withProperty(@NonNull T t) {
            if (this.f35854b == null) {
                this.f35854b = new HashMap();
            }
            this.f35854b.put(t.annotationType(), t);
            return this;
        }
    }

    @NonNull
    public static Builder builder(@NonNull String str) {
        return new Builder(str);
    }

    @NonNull
    /* renamed from: of */
    public static FieldDescriptor m28079of(@NonNull String str) {
        return new FieldDescriptor(str, Collections.emptyMap());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldDescriptor)) {
            return false;
        }
        FieldDescriptor fieldDescriptor = (FieldDescriptor) obj;
        return this.f35851a.equals(fieldDescriptor.f35851a) && this.f35852b.equals(fieldDescriptor.f35852b);
    }

    @NonNull
    public String getName() {
        return this.f35851a;
    }

    @Nullable
    public <T extends Annotation> T getProperty(@NonNull Class<T> cls) {
        return (T) this.f35852b.get(cls);
    }

    public int hashCode() {
        return (this.f35851a.hashCode() * 31) + this.f35852b.hashCode();
    }

    @NonNull
    public String toString() {
        return "FieldDescriptor{name=" + this.f35851a + ", properties=" + this.f35852b.values() + "}";
    }

    public FieldDescriptor(String str, Map<Class<?>, Object> map) {
        this.f35851a = str;
        this.f35852b = map;
    }
}
