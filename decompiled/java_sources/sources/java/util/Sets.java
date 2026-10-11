package java.util;

/* loaded from: classes5.dex */
public class Sets {
    /* renamed from: of */
    public static <T> Set<T> m61441of(T... tArr) {
        HashSet hashSet = new HashSet();
        if (tArr != null) {
            for (T t : tArr) {
                hashSet.add(t);
            }
        }
        return hashSet;
    }
}
