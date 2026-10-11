package com.evernote.thrift;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes4.dex */
public class TBaseHelper {

    /* renamed from: a */
    public static final Comparator f21192a = new C4574b();

    /* renamed from: com.evernote.thrift.TBaseHelper$b */
    /* loaded from: classes4.dex */
    public static class C4574b implements Comparator {
        public C4574b() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            return obj instanceof List ? TBaseHelper.compareTo((List) obj, (List) obj2) : obj instanceof Set ? TBaseHelper.compareTo((Set) obj, (Set) obj2) : obj instanceof Map ? TBaseHelper.compareTo((Map) obj, (Map) obj2) : obj instanceof byte[] ? TBaseHelper.compareTo((byte[]) obj, (byte[]) obj2) : TBaseHelper.compareTo((Comparable) obj, (Comparable) obj2);
        }
    }

    public static int compareTo(byte b, byte b2) {
        if (b < b2) {
            return -1;
        }
        return b2 < b ? 1 : 0;
    }

    public static String paddedByteString(byte b) {
        return Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }

    public static void toString(byte[] bArr, StringBuilder sb) {
        toString(bArr, 0, bArr.length, sb);
    }

    public static int compareTo(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        return d2 < d ? 1 : 0;
    }

    public static void toString(ByteBuffer byteBuffer, StringBuilder sb) {
        toString(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit(), sb);
    }

    public static int compareTo(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i2 < i ? 1 : 0;
    }

    public static int compareTo(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j2 < j ? 1 : 0;
    }

    public static int compareTo(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        return s2 < s ? 1 : 0;
    }

    public static int compareTo(Object obj, Object obj2) {
        if (obj instanceof Comparable) {
            return compareTo((Comparable) obj, (Comparable) obj2);
        }
        if (obj instanceof List) {
            return compareTo((List) obj, (List) obj2);
        }
        if (obj instanceof Set) {
            return compareTo((Set) obj, (Set) obj2);
        }
        if (obj instanceof Map) {
            return compareTo((Map) obj, (Map) obj2);
        }
        if (obj instanceof byte[]) {
            return compareTo((byte[]) obj, (byte[]) obj2);
        }
        throw new IllegalArgumentException("Cannot compare objects of type " + obj.getClass());
    }

    public static void toString(byte[] bArr, int i, int i2, StringBuilder sb) {
        int i3 = i2 - i > 128 ? i + 128 : i2;
        for (int i4 = i; i4 < i3; i4++) {
            if (i4 > i) {
                sb.append(" ");
            }
            sb.append(paddedByteString(bArr[i4]));
        }
        if (i2 != i3) {
            sb.append(RemoveAudioAction.f58149k);
        }
    }

    public static int compareTo(boolean z, boolean z2) {
        return Boolean.valueOf(z).compareTo(Boolean.valueOf(z2));
    }

    public static int compareTo(String str, String str2) {
        return str.compareTo(str2);
    }

    public static int compareTo(byte[] bArr, byte[] bArr2) {
        int compareTo = compareTo(bArr.length, bArr2.length);
        if (compareTo != 0) {
            return compareTo;
        }
        for (int i = 0; i < bArr.length; i++) {
            int compareTo2 = compareTo(bArr[i], bArr2[i]);
            if (compareTo2 != 0) {
                return compareTo2;
            }
        }
        return 0;
    }

    public static int compareTo(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int compareTo(List list, List list2) {
        int compareTo = compareTo(list.size(), list2.size());
        if (compareTo != 0) {
            return compareTo;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f21192a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int compareTo(Set set, Set set2) {
        int compareTo = compareTo(set.size(), set2.size());
        if (compareTo != 0) {
            return compareTo;
        }
        Comparator comparator = f21192a;
        TreeSet treeSet = new TreeSet(comparator);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(comparator);
        treeSet2.addAll(set2);
        Iterator it2 = treeSet.iterator();
        Iterator it3 = treeSet2.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            int compare = f21192a.compare(it2.next(), it3.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int compareTo(Map map, Map map2) {
        int compareTo = compareTo(map.size(), map2.size());
        if (compareTo != 0) {
            return compareTo;
        }
        Comparator comparator = f21192a;
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        Iterator it2 = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(comparator);
        treeMap2.putAll(map2);
        Iterator it3 = treeMap2.entrySet().iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Map.Entry entry2 = (Map.Entry) it3.next();
            Comparator comparator2 = f21192a;
            int compare = comparator2.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = comparator2.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }
}
