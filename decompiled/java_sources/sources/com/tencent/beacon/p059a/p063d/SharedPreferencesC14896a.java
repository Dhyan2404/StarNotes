package com.tencent.beacon.p059a.p063d;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

/* renamed from: com.tencent.beacon.a.d.a */
/* loaded from: classes10.dex */
public class SharedPreferencesC14896a implements SharedPreferences {

    /* renamed from: a */
    private static volatile SharedPreferencesC14896a f92638a;

    /* renamed from: b */
    private boolean f92639b;

    /* renamed from: c */
    private C14902g f92640c;

    /* renamed from: d */
    private a f92641d;

    /* renamed from: e */
    private SharedPreferences f92642e;

    /* renamed from: com.tencent.beacon.a.d.a$a */
    /* loaded from: classes10.dex */
    public static class a implements SharedPreferences.Editor {

        /* renamed from: a */
        private C14902g f92643a;

        public a(C14902g c14902g) {
            this.f92643a = c14902g;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f92643a.m59109a();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(@NonNull String str, boolean z) {
            this.f92643a.m59113b(str, Boolean.valueOf(z));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(@NonNull String str, float f) {
            this.f92643a.m59113b(str, Float.valueOf(f));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(@NonNull String str, int i) {
            this.f92643a.m59113b(str, Integer.valueOf(i));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(@NonNull String str, long j) {
            this.f92643a.m59113b(str, Long.valueOf(j));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(@NonNull String str, @NonNull String str2) {
            this.f92643a.m59113b(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(@NonNull String str, @NonNull Set<String> set) {
            this.f92643a.m59114b(str, (Set) set);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f92643a.m59112b(str);
            return this;
        }
    }

    private SharedPreferencesC14896a() {
    }

    /* renamed from: a */
    public static SharedPreferencesC14896a m59084a() {
        if (f92638a == null) {
            synchronized (SharedPreferencesC14896a.class) {
                if (f92638a == null) {
                    f92638a = new SharedPreferencesC14896a();
                }
            }
        }
        return f92638a;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f92640c.m59110a(str);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.f92640c.m59111b();
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(@NonNull String str, boolean z) {
        Object m59085a = m59085a(str, Boolean.valueOf(z));
        return m59085a instanceof Boolean ? ((Boolean) m59085a).booleanValue() : z;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(@NonNull String str, float f) {
        Object m59085a = m59085a(str, Float.valueOf(f));
        return m59085a instanceof Number ? ((Number) m59085a).floatValue() : f;
    }

    @Override // android.content.SharedPreferences
    public int getInt(@NonNull String str, int i) {
        Object m59085a = m59085a(str, Integer.valueOf(i));
        return m59085a instanceof Number ? ((Number) m59085a).intValue() : i;
    }

    @Override // android.content.SharedPreferences
    public long getLong(@NonNull String str, long j) {
        Object m59085a = m59085a(str, Long.valueOf(j));
        return m59085a instanceof Number ? ((Number) m59085a).longValue() : j;
    }

    @Override // android.content.SharedPreferences
    public String getString(@NonNull String str, @NonNull String str2) {
        Object m59085a = m59085a(str, str2);
        return m59085a instanceof String ? (String) m59085a : str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(@NonNull String str, @Nullable Set<String> set) {
        return !this.f92639b ? set : this.f92640c.m59108a(str, (Set) set);
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // android.content.SharedPreferences
    public a edit() {
        if (!this.f92639b) {
            C14959h.m59413a("BeaconProperties has not init!");
            m59086a(C14888c.m58989c().m58997b());
        }
        return this.f92641d;
    }

    /* renamed from: a */
    public synchronized void m59086a(Context context) {
        if (this.f92639b || context == null) {
            return;
        }
        try {
            String replace = C14887b.m58979c(context).replace(context.getPackageName(), "");
            StringBuilder sb = new StringBuilder();
            sb.append("prop_");
            sb.append(replace);
            C14902g m59090a = C14902g.m59090a(context, sb.toString());
            this.f92640c = m59090a;
            this.f92641d = new a(m59090a);
            this.f92639b = true;
        } catch (IOException e) {
            C14954c.m59393a(e);
            C14882j.m58961e().m58954a("504", "[properties] PropertiesFile create error!", e);
            this.f92639b = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <T> Object m59085a(@NonNull String str, T t) {
        if (!this.f92639b) {
            return t;
        }
        Object m59107a = this.f92640c.m59107a(str, (String) t);
        if (m59107a == null || m59107a == t) {
            Context m58997b = C14888c.m58989c().m58997b();
            if (this.f92642e == null) {
                this.f92642e = m58997b.getSharedPreferences("DENGTA_META", 0);
            }
            if (t instanceof Boolean) {
                m59107a = Boolean.valueOf(this.f92642e.getBoolean(str, ((Boolean) t).booleanValue()));
            } else if (t instanceof String) {
                m59107a = this.f92642e.getString(str, (String) t);
            } else if (t instanceof Integer) {
                m59107a = Integer.valueOf(this.f92642e.getInt(str, ((Integer) t).intValue()));
            } else if (t instanceof Long) {
                m59107a = Long.valueOf(this.f92642e.getLong(str, ((Long) t).longValue()));
            } else if (t instanceof Float) {
                m59107a = Float.valueOf(this.f92642e.getFloat(str, ((Float) t).floatValue()));
            }
            if (m59107a != null && m59107a != t) {
                this.f92640c.m59113b(str, m59107a);
            }
        }
        return m59107a == null ? t : m59107a;
    }
}
