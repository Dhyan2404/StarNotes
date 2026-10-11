package com.onyx.harfbuzz.graphics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.utils.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes9.dex */
public class TypefaceManager {

    /* renamed from: a */
    @NonNull
    public static final HashMap<Object, HBTypeface> f62785a = new HashMap<>();

    /* renamed from: b */
    @NonNull
    public static final ArrayList<HBTypeface> f62786b = new ArrayList<>();

    /* renamed from: c */
    public static boolean f62787c;

    /* renamed from: com.onyx.harfbuzz.graphics.TypefaceManager$b */
    /* loaded from: classes9.dex */
    public static class C12998b implements Comparator<HBTypeface> {
        public C12998b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(HBTypeface hBTypeface, HBTypeface hBTypeface2) {
            int compareToIgnoreCase = hBTypeface.getFamilyName().compareToIgnoreCase(hBTypeface2.getFamilyName());
            return compareToIgnoreCase == 0 ? hBTypeface.getStyleName().compareToIgnoreCase(hBTypeface2.getStyleName()) : compareToIgnoreCase;
        }
    }

    /* renamed from: a */
    public static void m52077a() {
        if (f62787c) {
            return;
        }
        Collections.sort(f62786b, new C12998b());
        f62787c = true;
    }

    public static void clean() {
        synchronized (TypefaceManager.class) {
            int i = 0;
            while (true) {
                ArrayList<HBTypeface> arrayList = f62786b;
                if (i < arrayList.size()) {
                    HBTypeface hBTypeface = arrayList.get(i);
                    f62785a.remove(hBTypeface.f62768a);
                    hBTypeface.f62768a = null;
                    hBTypeface.dispose();
                    i++;
                } else {
                    arrayList.clear();
                }
            }
        }
    }

    @NonNull
    public static List<TypeFamily> getAvailableFamilies() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        synchronized (TypefaceManager.class) {
            m52077a();
            Iterator<HBTypeface> it2 = f62786b.iterator();
            while (it2.hasNext()) {
                HBTypeface next = it2.next();
                List list = (List) treeMap.get(next.getFamilyName());
                if (list == null) {
                    list = new ArrayList();
                    treeMap.put(next.getFamilyName(), list);
                }
                list.add(next);
            }
        }
        ArrayList arrayList = new ArrayList(treeMap.size());
        for (Map.Entry entry : treeMap.entrySet()) {
            arrayList.add(new TypeFamily((String) entry.getKey(), (List) entry.getValue()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @NonNull
    public static List<HBTypeface> getAvailableTypefaces() {
        List<HBTypeface> unmodifiableList;
        synchronized (TypefaceManager.class) {
            m52077a();
            unmodifiableList = Collections.unmodifiableList(new ArrayList(f62786b));
        }
        return unmodifiableList;
    }

    @Nullable
    public static TypeFamily getTypeFamily(@NonNull String str) {
        ArrayList arrayList = new ArrayList();
        synchronized (TypefaceManager.class) {
            m52077a();
            Iterator<HBTypeface> it2 = f62786b.iterator();
            while (it2.hasNext()) {
                HBTypeface next = it2.next();
                if (next.getFamilyName().equalsIgnoreCase(str)) {
                    arrayList.add(next);
                }
            }
        }
        if (arrayList.size() > 0) {
            return new TypeFamily(str, arrayList);
        }
        return null;
    }

    @Nullable
    public static HBTypeface getTypeface(@NonNull Object obj) {
        HBTypeface hBTypeface;
        Preconditions.checkNotNull(obj, "tag");
        synchronized (TypefaceManager.class) {
            hBTypeface = f62785a.get(obj);
        }
        return hBTypeface;
    }

    @Nullable
    public static HBTypeface getTypefaceByName(@NonNull String str) {
        synchronized (TypefaceManager.class) {
            Iterator<HBTypeface> it2 = f62786b.iterator();
            while (it2.hasNext()) {
                HBTypeface next = it2.next();
                if (next.getFullName().equalsIgnoreCase(str)) {
                    return next;
                }
            }
            return null;
        }
    }

    @Nullable
    public static Object getTypefaceTag(@NonNull HBTypeface hBTypeface) {
        Object obj;
        Preconditions.checkNotNull(hBTypeface, "typeface");
        synchronized (TypefaceManager.class) {
            Preconditions.checkArgument(f62786b.contains(hBTypeface), "This typeface is not registered");
            obj = hBTypeface.f62768a;
        }
        return obj;
    }

    public static void registerTypeface(@NonNull HBTypeface hBTypeface, @Nullable Object obj) {
        Preconditions.checkNotNull(hBTypeface, "typeface");
        synchronized (TypefaceManager.class) {
            ArrayList<HBTypeface> arrayList = f62786b;
            boolean z = true;
            Preconditions.checkArgument(!arrayList.contains(hBTypeface), "This typeface is already registered");
            if (obj != null) {
                HashMap<Object, HBTypeface> hashMap = f62785a;
                if (hashMap.containsKey(obj)) {
                    z = false;
                }
                Preconditions.checkArgument(z, "This tag is already taken");
                hashMap.put(obj, hBTypeface);
                hBTypeface.f62768a = obj;
            }
            f62787c = false;
            arrayList.add(hBTypeface);
        }
    }

    public static void unregisterTypeface(@NonNull HBTypeface hBTypeface) {
        Preconditions.checkNotNull(hBTypeface, "typeface");
        synchronized (TypefaceManager.class) {
            ArrayList<HBTypeface> arrayList = f62786b;
            int indexOf = arrayList.indexOf(hBTypeface);
            Preconditions.checkArgument(indexOf >= 0, "This typeface is not registered");
            arrayList.remove(indexOf);
            f62785a.remove(hBTypeface.f62768a);
            hBTypeface.f62768a = null;
        }
    }
}
