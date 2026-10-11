package com.blankj.utilcode.util;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.blankj.utilcode.constant.CacheConstants;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class CacheDoubleUtils implements CacheConstants {

    /* renamed from: c */
    public static final Map<String, CacheDoubleUtils> f13686c = new HashMap();

    /* renamed from: a */
    public final CacheMemoryUtils f13687a;

    /* renamed from: b */
    public final CacheDiskUtils f13688b;

    public CacheDoubleUtils(CacheMemoryUtils cacheMemoryUtils, CacheDiskUtils cacheDiskUtils) {
        this.f13687a = cacheMemoryUtils;
        this.f13688b = cacheDiskUtils;
    }

    public static CacheDoubleUtils getInstance() {
        return getInstance(CacheMemoryUtils.getInstance(), CacheDiskUtils.getInstance());
    }

    public void clear() {
        this.f13687a.clear();
        this.f13688b.clear();
    }

    public Bitmap getBitmap(@NonNull String str) {
        return getBitmap(str, null);
    }

    public byte[] getBytes(@NonNull String str) {
        return getBytes(str, null);
    }

    public int getCacheDiskCount() {
        return this.f13688b.getCacheCount();
    }

    public long getCacheDiskSize() {
        return this.f13688b.getCacheSize();
    }

    public int getCacheMemoryCount() {
        return this.f13687a.getCacheCount();
    }

    public Drawable getDrawable(@NonNull String str) {
        return getDrawable(str, null);
    }

    public JSONArray getJSONArray(@NonNull String str) {
        return getJSONArray(str, null);
    }

    public JSONObject getJSONObject(@NonNull String str) {
        return getJSONObject(str, null);
    }

    public <T> T getParcelable(@NonNull String str, @NonNull Parcelable.Creator<T> creator) {
        return (T) getParcelable(str, creator, null);
    }

    public Object getSerializable(@NonNull String str) {
        return getSerializable(str, null);
    }

    public String getString(@NonNull String str) {
        return getString(str, null);
    }

    public void put(@NonNull String str, byte[] bArr) {
        put(str, bArr, -1);
    }

    public void remove(@NonNull String str) {
        this.f13687a.remove(str);
        this.f13688b.remove(str);
    }

    public static CacheDoubleUtils getInstance(@NonNull CacheMemoryUtils cacheMemoryUtils, @NonNull CacheDiskUtils cacheDiskUtils) {
        String str = cacheDiskUtils.toString() + "_" + cacheMemoryUtils.toString();
        Map<String, CacheDoubleUtils> map = f13686c;
        CacheDoubleUtils cacheDoubleUtils = map.get(str);
        if (cacheDoubleUtils == null) {
            synchronized (CacheDoubleUtils.class) {
                cacheDoubleUtils = map.get(str);
                if (cacheDoubleUtils == null) {
                    cacheDoubleUtils = new CacheDoubleUtils(cacheMemoryUtils, cacheDiskUtils);
                    map.put(str, cacheDoubleUtils);
                }
            }
        }
        return cacheDoubleUtils;
    }

    public Bitmap getBitmap(@NonNull String str, Bitmap bitmap) {
        Bitmap bitmap2 = (Bitmap) this.f13687a.get(str);
        if (bitmap2 != null) {
            return bitmap2;
        }
        Bitmap bitmap3 = this.f13688b.getBitmap(str);
        if (bitmap3 == null) {
            return bitmap;
        }
        this.f13687a.put(str, bitmap3);
        return bitmap3;
    }

    public byte[] getBytes(@NonNull String str, byte[] bArr) {
        byte[] bArr2 = (byte[]) this.f13687a.get(str);
        if (bArr2 != null) {
            return bArr2;
        }
        byte[] bytes = this.f13688b.getBytes(str);
        if (bytes == null) {
            return bArr;
        }
        this.f13687a.put(str, bytes);
        return bytes;
    }

    public Drawable getDrawable(@NonNull String str, Drawable drawable) {
        Drawable drawable2 = (Drawable) this.f13687a.get(str);
        if (drawable2 != null) {
            return drawable2;
        }
        Drawable drawable3 = this.f13688b.getDrawable(str);
        if (drawable3 == null) {
            return drawable;
        }
        this.f13687a.put(str, drawable3);
        return drawable3;
    }

    public JSONArray getJSONArray(@NonNull String str, JSONArray jSONArray) {
        JSONArray jSONArray2 = (JSONArray) this.f13687a.get(str);
        if (jSONArray2 != null) {
            return jSONArray2;
        }
        JSONArray jSONArray3 = this.f13688b.getJSONArray(str);
        if (jSONArray3 == null) {
            return jSONArray;
        }
        this.f13687a.put(str, jSONArray3);
        return jSONArray3;
    }

    public JSONObject getJSONObject(@NonNull String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = (JSONObject) this.f13687a.get(str);
        if (jSONObject2 != null) {
            return jSONObject2;
        }
        JSONObject jSONObject3 = this.f13688b.getJSONObject(str);
        if (jSONObject3 == null) {
            return jSONObject;
        }
        this.f13687a.put(str, jSONObject3);
        return jSONObject3;
    }

    public <T> T getParcelable(@NonNull String str, @NonNull Parcelable.Creator<T> creator, T t) {
        T t2 = (T) this.f13687a.get(str);
        if (t2 != null) {
            return t2;
        }
        T t3 = (T) this.f13688b.getParcelable(str, creator);
        if (t3 == null) {
            return t;
        }
        this.f13687a.put(str, t3);
        return t3;
    }

    public Object getSerializable(@NonNull String str, Object obj) {
        Object obj2 = this.f13687a.get(str);
        if (obj2 != null) {
            return obj2;
        }
        Object serializable = this.f13688b.getSerializable(str);
        if (serializable == null) {
            return obj;
        }
        this.f13687a.put(str, serializable);
        return serializable;
    }

    public String getString(@NonNull String str, String str2) {
        String str3 = (String) this.f13687a.get(str);
        if (str3 != null) {
            return str3;
        }
        String string = this.f13688b.getString(str);
        if (string == null) {
            return str2;
        }
        this.f13687a.put(str, string);
        return string;
    }

    public void put(@NonNull String str, byte[] bArr, int i) {
        this.f13687a.put(str, bArr, i);
        this.f13688b.put(str, bArr, i);
    }

    public void put(@NonNull String str, String str2) {
        put(str, str2, -1);
    }

    public void put(@NonNull String str, String str2, int i) {
        this.f13687a.put(str, str2, i);
        this.f13688b.put(str, str2, i);
    }

    public void put(@NonNull String str, JSONObject jSONObject) {
        put(str, jSONObject, -1);
    }

    public void put(@NonNull String str, JSONObject jSONObject, int i) {
        this.f13687a.put(str, jSONObject, i);
        this.f13688b.put(str, jSONObject, i);
    }

    public void put(@NonNull String str, JSONArray jSONArray) {
        put(str, jSONArray, -1);
    }

    public void put(@NonNull String str, JSONArray jSONArray, int i) {
        this.f13687a.put(str, jSONArray, i);
        this.f13688b.put(str, jSONArray, i);
    }

    public void put(@NonNull String str, Bitmap bitmap) {
        put(str, bitmap, -1);
    }

    public void put(@NonNull String str, Bitmap bitmap, int i) {
        this.f13687a.put(str, bitmap, i);
        this.f13688b.put(str, bitmap, i);
    }

    public void put(@NonNull String str, Drawable drawable) {
        put(str, drawable, -1);
    }

    public void put(@NonNull String str, Drawable drawable, int i) {
        this.f13687a.put(str, drawable, i);
        this.f13688b.put(str, drawable, i);
    }

    public void put(@NonNull String str, Parcelable parcelable) {
        put(str, parcelable, -1);
    }

    public void put(@NonNull String str, Parcelable parcelable, int i) {
        this.f13687a.put(str, parcelable, i);
        this.f13688b.put(str, parcelable, i);
    }

    public void put(@NonNull String str, Serializable serializable) {
        put(str, serializable, -1);
    }

    public void put(@NonNull String str, Serializable serializable, int i) {
        this.f13687a.put(str, serializable, i);
        this.f13688b.put(str, serializable, i);
    }
}
