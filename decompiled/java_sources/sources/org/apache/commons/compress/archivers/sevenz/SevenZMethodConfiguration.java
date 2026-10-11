package org.apache.commons.compress.archivers.sevenz;

import java.util.Objects;

/* loaded from: classes12.dex */
public class SevenZMethodConfiguration {

    /* renamed from: a */
    public final SevenZMethod f105658a;

    /* renamed from: b */
    public final Object f105659b;

    public SevenZMethodConfiguration(SevenZMethod sevenZMethod) {
        this(sevenZMethod, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SevenZMethodConfiguration sevenZMethodConfiguration = (SevenZMethodConfiguration) obj;
        return Objects.equals(this.f105658a, sevenZMethodConfiguration.f105658a) && Objects.equals(this.f105659b, sevenZMethodConfiguration.f105659b);
    }

    public SevenZMethod getMethod() {
        return this.f105658a;
    }

    public Object getOptions() {
        return this.f105659b;
    }

    public int hashCode() {
        SevenZMethod sevenZMethod = this.f105658a;
        if (sevenZMethod == null) {
            return 0;
        }
        return sevenZMethod.hashCode();
    }

    public SevenZMethodConfiguration(SevenZMethod sevenZMethod, Object obj) {
        this.f105658a = sevenZMethod;
        this.f105659b = obj;
        if (obj == null || Coders.m66199c(sevenZMethod).m57270a(obj)) {
            return;
        }
        throw new IllegalArgumentException("The " + sevenZMethod + " method doesn't support options of type " + obj.getClass());
    }
}
