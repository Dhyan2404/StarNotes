package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@SuppressLint({"ApplySharedPref"})
/* loaded from: classes3.dex */
public final class SPUtils {

    /* renamed from: b */
    public static final Map<String, SPUtils> f13964b = new HashMap();

    /* renamed from: a */
    public SharedPreferences f13965a;

    public SPUtils(String str) {
        this.f13965a = Utils.getApp().getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    public static boolean m8305a(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static SPUtils getInstance() {
        return getInstance("", 0);
    }

    public void clear() {
        clear(false);
    }

    public boolean contains(@NonNull String str) {
        return this.f13965a.contains(str);
    }

    public Map<String, ?> getAll() {
        return this.f13965a.getAll();
    }

    public boolean getBoolean(@NonNull String str) {
        return getBoolean(str, false);
    }

    public float getFloat(@NonNull String str) {
        return getFloat(str, -1.0f);
    }

    public int getInt(@NonNull String str) {
        return getInt(str, -1);
    }

    public long getLong(@NonNull String str) {
        return getLong(str, -1L);
    }

    public String getString(@NonNull String str) {
        return getString(str, "");
    }

    public Set<String> getStringSet(@NonNull String str) {
        return getStringSet(str, Collections.emptySet());
    }

    public void put(@NonNull String str, String str2) {
        put(str, str2, false);
    }

    public void remove(@NonNull String str) {
        remove(str, false);
    }

    public static SPUtils getInstance(int i) {
        return getInstance("", i);
    }

    public void clear(boolean z) {
        if (z) {
            this.f13965a.edit().clear().commit();
        } else {
            this.f13965a.edit().clear().apply();
        }
    }

    public boolean getBoolean(@NonNull String str, boolean z) {
        return this.f13965a.getBoolean(str, z);
    }

    public float getFloat(@NonNull String str, float f) {
        return this.f13965a.getFloat(str, f);
    }

    public int getInt(@NonNull String str, int i) {
        return this.f13965a.getInt(str, i);
    }

    public long getLong(@NonNull String str, long j) {
        return this.f13965a.getLong(str, j);
    }

    public String getString(@NonNull String str, String str2) {
        return this.f13965a.getString(str, str2);
    }

    public Set<String> getStringSet(@NonNull String str, Set<String> set) {
        return this.f13965a.getStringSet(str, set);
    }

    public void put(@NonNull String str, String str2, boolean z) {
        if (z) {
            this.f13965a.edit().putString(str, str2).commit();
        } else {
            this.f13965a.edit().putString(str, str2).apply();
        }
    }

    public void remove(@NonNull String str, boolean z) {
        if (z) {
            this.f13965a.edit().remove(str).commit();
        } else {
            this.f13965a.edit().remove(str).apply();
        }
    }

    public SPUtils(String str, int i) {
        this.f13965a = Utils.getApp().getSharedPreferences(str, i);
    }

    public static SPUtils getInstance(String str) {
        return getInstance(str, 0);
    }

    public static SPUtils getInstance(String str, int i) {
        if (m8305a(str)) {
            str = "spUtils";
        }
        Map<String, SPUtils> map = f13964b;
        SPUtils sPUtils = map.get(str);
        if (sPUtils == null) {
            synchronized (SPUtils.class) {
                sPUtils = map.get(str);
                if (sPUtils == null) {
                    sPUtils = new SPUtils(str, i);
                    map.put(str, sPUtils);
                }
            }
        }
        return sPUtils;
    }

    public void put(@NonNull String str, int i) {
        put(str, i, false);
    }

    public void put(@NonNull String str, int i, boolean z) {
        if (z) {
            this.f13965a.edit().putInt(str, i).commit();
        } else {
            this.f13965a.edit().putInt(str, i).apply();
        }
    }

    public void put(@NonNull String str, long j) {
        put(str, j, false);
    }

    public void put(@NonNull String str, long j, boolean z) {
        if (z) {
            this.f13965a.edit().putLong(str, j).commit();
        } else {
            this.f13965a.edit().putLong(str, j).apply();
        }
    }

    public void put(@NonNull String str, float f) {
        put(str, f, false);
    }

    public void put(@NonNull String str, float f, boolean z) {
        if (z) {
            this.f13965a.edit().putFloat(str, f).commit();
        } else {
            this.f13965a.edit().putFloat(str, f).apply();
        }
    }

    public void put(@NonNull String str, boolean z) {
        put(str, z, false);
    }

    public void put(@NonNull String str, boolean z, boolean z2) {
        if (z2) {
            this.f13965a.edit().putBoolean(str, z).commit();
        } else {
            this.f13965a.edit().putBoolean(str, z).apply();
        }
    }

    public void put(@NonNull String str, Set<String> set) {
        put(str, set, false);
    }

    public void put(@NonNull String str, Set<String> set, boolean z) {
        if (z) {
            this.f13965a.edit().putStringSet(str, set).commit();
        } else {
            this.f13965a.edit().putStringSet(str, set).apply();
        }
    }
}
