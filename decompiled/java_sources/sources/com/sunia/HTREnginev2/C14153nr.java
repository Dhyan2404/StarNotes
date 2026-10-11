package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* renamed from: com.sunia.HTREnginev2.nr */
/* loaded from: classes3.dex */
public class C14153nr {

    /* renamed from: a */
    public final int f78937a;

    /* renamed from: b */
    @Nullable
    public final CharSequence f78938b;

    public C14153nr(int i, @Nullable CharSequence charSequence) {
        this.f78937a = i;
        this.f78938b = charSequence;
    }

    @Nullable
    /* renamed from: a */
    public static String m55787a(@Nullable CharSequence charSequence) {
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    /* renamed from: b */
    public int m55788b() {
        return this.f78937a;
    }

    @Nullable
    /* renamed from: c */
    public CharSequence m55789c() {
        return this.f78938b;
    }

    /* renamed from: d */
    public final boolean m55790d(@Nullable CharSequence charSequence) {
        String m55787a = m55787a(this.f78938b);
        String m55787a2 = m55787a(charSequence);
        return (m55787a == null && m55787a2 == null) || (m55787a != null && m55787a.equals(m55787a2));
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C14153nr)) {
            return false;
        }
        C14153nr c14153nr = (C14153nr) obj;
        return this.f78937a == c14153nr.f78937a && m55790d(c14153nr.f78938b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f78937a), m55787a(this.f78938b)});
    }
}
