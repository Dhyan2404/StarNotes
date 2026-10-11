package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes9.dex */
public final class Headers {

    /* renamed from: a */
    public final String[] f63525a;

    /* renamed from: a */
    public static String m52516a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* renamed from: of */
    public static Headers m52518of(String... strArr) {
        if (strArr != null && strArr.length % 2 == 0) {
            String[] strArr2 = (String[]) strArr.clone();
            for (int i = 0; i < strArr2.length; i++) {
                String str = strArr2[i];
                if (str != null) {
                    strArr2[i] = str.trim();
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
                String str2 = strArr2[i2];
                String str3 = strArr2[i2 + 1];
                if (str2.length() == 0 || str2.indexOf(0) != -1 || str3.indexOf(0) != -1) {
                    throw new IllegalArgumentException("Unexpected header: " + str2 + ": " + str3);
                }
            }
            return new Headers(strArr2);
        }
        throw new IllegalArgumentException("Expected alternating header names and values");
    }

    public String get(String str) {
        return m52516a(this.f63525a, str);
    }

    public Date getDate(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return HttpDate.parse(str2);
        }
        return null;
    }

    public String name(int i) {
        int i2 = i * 2;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f63525a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public Set<String> names() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        Collections.addAll(builder.f63526a, this.f63525a);
        return builder;
    }

    public int size() {
        return this.f63525a.length / 2;
    }

    public Map<String, List<String>> toMultimap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            List list = (List) linkedHashMap.get(name);
            if (list == null) {
                list = new ArrayList(2);
                linkedHashMap.put(name, list);
            }
            list.add(value(i));
        }
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i));
            sb.append(": ");
            sb.append(value(i));
            sb.append("\n");
        }
        return sb.toString();
    }

    public String value(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.f63525a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    public List<String> values(String str) {
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(name(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public Headers(Builder builder) {
        this.f63525a = (String[]) builder.f63526a.toArray(new String[builder.f63526a.size()]);
    }

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public final List<String> f63526a = new ArrayList(20);

        public Builder add(String str) {
            int indexOf = str.indexOf(":");
            if (indexOf != -1) {
                return add(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        /* renamed from: b */
        public Builder m52520b(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? m52521c(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? m52521c("", str.substring(1)) : m52521c("", str);
        }

        public Headers build() {
            return new Headers(this);
        }

        /* renamed from: c */
        public Builder m52521c(String str, String str2) {
            this.f63526a.add(str);
            this.f63526a.add(str2.trim());
            return this;
        }

        public String get(String str) {
            for (int size = this.f63526a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f63526a.get(size))) {
                    return this.f63526a.get(size + 1);
                }
            }
            return null;
        }

        public Builder removeAll(String str) {
            int i = 0;
            while (i < this.f63526a.size()) {
                if (str.equalsIgnoreCase(this.f63526a.get(i))) {
                    this.f63526a.remove(i);
                    this.f63526a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public Builder set(String str, String str2) {
            removeAll(str);
            add(str, str2);
            return this;
        }

        public Builder add(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (str2 != null) {
                if (str.length() != 0 && str.indexOf(0) == -1 && str2.indexOf(0) == -1) {
                    return m52521c(str, str2);
                }
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
            throw new IllegalArgumentException("value == null");
        }
    }

    public Headers(String[] strArr) {
        this.f63525a = strArr;
    }

    /* renamed from: of */
    public static Headers m52517of(Map<String, String> map) {
        if (map != null) {
            String[] strArr = new String[map.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    String trim = entry.getKey().trim();
                    String trim2 = entry.getValue().trim();
                    if (trim.length() != 0 && trim.indexOf(0) == -1 && trim2.indexOf(0) == -1) {
                        strArr[i] = trim;
                        strArr[i + 1] = trim2;
                        i += 2;
                    } else {
                        throw new IllegalArgumentException("Unexpected header: " + trim + ": " + trim2);
                    }
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            return new Headers(strArr);
        }
        throw new IllegalArgumentException("Expected map with header names and values");
    }
}
