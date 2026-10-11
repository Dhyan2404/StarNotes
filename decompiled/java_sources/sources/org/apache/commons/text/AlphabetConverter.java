package org.apache.commons.text;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes12.dex */
public final class AlphabetConverter {

    /* renamed from: d */
    public static final String f109940d = " -> ";

    /* renamed from: a */
    public final Map<Integer, String> f109941a;

    /* renamed from: b */
    public final Map<String, String> f109942b;

    /* renamed from: c */
    public final int f109943c;

    public AlphabetConverter(Map<Integer, String> map, Map<String, String> map2, int i) {
        this.f109941a = map;
        this.f109942b = map2;
        this.f109943c = i;
    }

    /* renamed from: b */
    public static String m68235b(int i) {
        return Character.charCount(i) == 1 ? String.valueOf((char) i) : new String(Character.toChars(i));
    }

    /* renamed from: c */
    public static Integer[] m68236c(Character[] chArr) {
        if (chArr == null || chArr.length == 0) {
            return new Integer[0];
        }
        Integer[] numArr = new Integer[chArr.length];
        for (int i = 0; i < chArr.length; i++) {
            numArr[i] = Integer.valueOf(chArr[i].charValue());
        }
        return numArr;
    }

    public static AlphabetConverter createConverter(Integer[] numArr, Integer[] numArr2, Integer[] numArr3) {
        Integer num;
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(numArr));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(Arrays.asList(numArr2));
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(Arrays.asList(numArr3));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        HashMap hashMap = new HashMap();
        Iterator it2 = linkedHashSet3.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            if (!linkedHashSet.contains(Integer.valueOf(intValue))) {
                throw new IllegalArgumentException("Can not use 'do not encode' list because original alphabet does not contain '" + m68235b(intValue) + CloudStorageConstants.SINGLE_QUOTES);
            }
            if (!linkedHashSet2.contains(Integer.valueOf(intValue))) {
                throw new IllegalArgumentException("Can not use 'do not encode' list because encoding alphabet does not contain '" + m68235b(intValue) + CloudStorageConstants.SINGLE_QUOTES);
            }
            hashMap.put(Integer.valueOf(intValue), m68235b(intValue));
        }
        if (linkedHashSet2.size() < linkedHashSet.size()) {
            if (linkedHashSet2.size() - linkedHashSet3.size() < 2) {
                throw new IllegalArgumentException("Must have at least two encoding characters (excluding those in the 'do not encode' list), but has " + (linkedHashSet2.size() - linkedHashSet3.size()));
            }
            int size = (linkedHashSet.size() - linkedHashSet3.size()) / (linkedHashSet2.size() - linkedHashSet3.size());
            int i = 1;
            while (size / linkedHashSet2.size() >= 1) {
                size /= linkedHashSet2.size();
                i++;
            }
            int i2 = i + 1;
            AlphabetConverter alphabetConverter = new AlphabetConverter(linkedHashMap, linkedHashMap2, i2);
            alphabetConverter.m68237a(i2, "", linkedHashSet2, linkedHashSet.iterator(), hashMap);
            return alphabetConverter;
        }
        Iterator it3 = linkedHashSet2.iterator();
        Iterator it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            int intValue2 = ((Integer) it4.next()).intValue();
            String m68235b = m68235b(intValue2);
            if (hashMap.containsKey(Integer.valueOf(intValue2))) {
                linkedHashMap.put(Integer.valueOf(intValue2), m68235b);
                linkedHashMap2.put(m68235b, m68235b);
            } else {
                Object next = it3.next();
                while (true) {
                    num = (Integer) next;
                    if (!linkedHashSet3.contains(num)) {
                        break;
                    }
                    next = it3.next();
                }
                String m68235b2 = m68235b(num.intValue());
                linkedHashMap.put(Integer.valueOf(intValue2), m68235b2);
                linkedHashMap2.put(m68235b2, m68235b);
            }
        }
        return new AlphabetConverter(linkedHashMap, linkedHashMap2, 1);
    }

    public static AlphabetConverter createConverterFromChars(Character[] chArr, Character[] chArr2, Character[] chArr3) {
        return createConverter(m68236c(chArr), m68236c(chArr2), m68236c(chArr3));
    }

    public static AlphabetConverter createConverterFromMap(Map<Integer, String> map) {
        Map unmodifiableMap = Collections.unmodifiableMap(map);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 1;
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            linkedHashMap.put(entry.getValue(), m68235b(((Integer) entry.getKey()).intValue()));
            if (((String) entry.getValue()).length() > i) {
                i = ((String) entry.getValue()).length();
            }
        }
        return new AlphabetConverter(unmodifiableMap, linkedHashMap, i);
    }

    /* renamed from: a */
    public final void m68237a(int i, String str, Collection<Integer> collection, Iterator<Integer> it2, Map<Integer, String> map) {
        if (i > 0) {
            Iterator<Integer> it3 = collection.iterator();
            while (it3.hasNext()) {
                int intValue = it3.next().intValue();
                if (!it2.hasNext()) {
                    return;
                }
                if (i != this.f109943c || !map.containsKey(Integer.valueOf(intValue))) {
                    m68237a(i - 1, str + m68235b(intValue), collection, it2, map);
                }
            }
            return;
        }
        Integer next = it2.next();
        while (true) {
            Integer num = next;
            if (!map.containsKey(num)) {
                String m68235b = m68235b(num.intValue());
                this.f109941a.put(num, str);
                this.f109942b.put(str, m68235b);
                return;
            } else {
                String m68235b2 = m68235b(num.intValue());
                this.f109941a.put(num, m68235b2);
                this.f109942b.put(m68235b2, m68235b2);
                if (!it2.hasNext()) {
                    return;
                } else {
                    next = it2.next();
                }
            }
        }
    }

    public String decode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            Integer valueOf = Integer.valueOf(str.codePointAt(i));
            String m68235b = m68235b(valueOf.intValue());
            if (m68235b.equals(this.f109941a.get(valueOf))) {
                sb.append(m68235b);
                i++;
            } else {
                if (this.f109943c + i > str.length()) {
                    throw new UnsupportedEncodingException("Unexpected end of string while decoding " + str);
                }
                String substring = str.substring(i, this.f109943c + i);
                String str2 = this.f109942b.get(substring);
                if (str2 == null) {
                    throw new UnsupportedEncodingException("Unexpected string without decoding (" + substring + ") in " + str);
                }
                sb.append(str2);
                i += this.f109943c;
            }
        }
        return sb.toString();
    }

    public String encode(String str) throws UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            int codePointAt = str.codePointAt(i);
            String str2 = this.f109941a.get(Integer.valueOf(codePointAt));
            if (str2 == null) {
                throw new UnsupportedEncodingException("Couldn't find encoding for '" + m68235b(codePointAt) + "' in " + str);
            }
            sb.append(str2);
            i += Character.charCount(codePointAt);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AlphabetConverter)) {
            return false;
        }
        AlphabetConverter alphabetConverter = (AlphabetConverter) obj;
        return this.f109941a.equals(alphabetConverter.f109941a) && this.f109942b.equals(alphabetConverter.f109942b) && this.f109943c == alphabetConverter.f109943c;
    }

    public int getEncodedCharLength() {
        return this.f109943c;
    }

    public Map<Integer, String> getOriginalToEncoded() {
        return Collections.unmodifiableMap(this.f109941a);
    }

    public int hashCode() {
        return Objects.hash(this.f109941a, this.f109942b, Integer.valueOf(this.f109943c));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Integer, String> entry : this.f109941a.entrySet()) {
            sb.append(m68235b(entry.getKey().intValue()));
            sb.append(f109940d);
            sb.append(entry.getValue());
            sb.append(System.lineSeparator());
        }
        return sb.toString();
    }
}
