package com.oplus.ocs.base.utils;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.HashMap;

/* renamed from: com.oplus.ocs.base.utils.c */
/* loaded from: classes9.dex */
public class C13073c {

    /* renamed from: a */
    public static final String f63146a = "c";

    /* renamed from: b */
    private static final HashMap<ClassLoader, HashMap<String, Parcelable.Creator<?>>> f63147b = new HashMap<>();

    /* renamed from: a */
    public static final <T extends Parcelable> T m52231a(Parcel parcel, ClassLoader classLoader, String str) {
        Parcelable.Creator<?> m52233b = m52233b(parcel, classLoader, str);
        if (m52233b == null) {
            return null;
        }
        if (m52233b instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) m52233b).createFromParcel(parcel, classLoader);
        }
        return (T) m52233b.createFromParcel(parcel);
    }

    /* renamed from: b */
    private static Parcelable.Creator<?> m52233b(Parcel parcel, ClassLoader classLoader, String str) {
        HashMap<String, Parcelable.Creator<?>> hashMap;
        Parcelable.Creator<?> creator;
        if (parcel.readString() == null) {
            return null;
        }
        HashMap<ClassLoader, HashMap<String, Parcelable.Creator<?>>> hashMap2 = f63147b;
        synchronized (hashMap2) {
            hashMap = hashMap2.get(classLoader);
            if (hashMap == null) {
                hashMap = new HashMap<>();
                hashMap2.put(classLoader, hashMap);
            }
            creator = hashMap.get(str);
        }
        if (creator != null) {
            return creator;
        }
        try {
            Class<?> cls = Class.forName(str, false, classLoader);
            if (!Parcelable.class.isAssignableFrom(cls)) {
                throw new BadParcelableException("Parcelable protocol requires subclassing from Parcelable on class ".concat(String.valueOf(str)));
            }
            Field field = cls.getField("CREATOR");
            if ((field.getModifiers() & 8) == 0) {
                throw new BadParcelableException("Parcelable protocol requires the CREATOR object to be static on class ".concat(String.valueOf(str)));
            }
            if (!Parcelable.Creator.class.isAssignableFrom(field.getType())) {
                throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class ".concat(String.valueOf(str)));
            }
            Parcelable.Creator<?> creator2 = (Parcelable.Creator) field.get(null);
            if (creator2 == null) {
                throw new BadParcelableException("Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class ".concat(String.valueOf(str)));
            }
            synchronized (hashMap2) {
                hashMap.put(str, creator2);
            }
            return creator2;
        } catch (ClassNotFoundException e) {
            Log.e(f63146a, "Class not found when unmarshalling: ".concat(String.valueOf(str)), e);
            throw new BadParcelableException("ClassNotFoundException when unmarshalling: ".concat(String.valueOf(str)));
        } catch (IllegalAccessException e2) {
            Log.e(f63146a, "Illegal access when unmarshalling: ".concat(String.valueOf(str)), e2);
            throw new BadParcelableException("IllegalAccessException when unmarshalling: ".concat(String.valueOf(str)));
        } catch (NoSuchFieldException unused) {
            throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: a */
    public static void m52232a(Parcel parcel, Parcelable parcelable, String str) {
        if (parcelable == null) {
            parcel.writeString(null);
        } else {
            parcel.writeString(str);
            parcelable.writeToParcel(parcel, 0);
        }
    }
}
