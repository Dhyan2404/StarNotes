package javax.imageio.plugins.tiff;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public class TIFFTagSet {

    /* renamed from: a */
    public SortedMap<Integer, TIFFTag> f97954a = new TreeMap();

    /* renamed from: b */
    public SortedMap<String, TIFFTag> f97955b = new TreeMap();

    private TIFFTagSet() {
    }

    public TIFFTag getTag(int i) {
        return this.f97954a.get(Integer.valueOf(i));
    }

    public SortedSet<String> getTagNames() {
        Set<String> keySet = this.f97955b.keySet();
        return Collections.unmodifiableSortedSet(keySet instanceof SortedSet ? (SortedSet) keySet : new TreeSet(keySet));
    }

    public SortedSet<Integer> getTagNumbers() {
        Set<Integer> keySet = this.f97954a.keySet();
        return Collections.unmodifiableSortedSet(keySet instanceof SortedSet ? (SortedSet) keySet : new TreeSet(keySet));
    }

    public TIFFTag getTag(String str) {
        if (str != null) {
            return this.f97955b.get(str);
        }
        throw new IllegalArgumentException("tagName == null!");
    }

    public TIFFTagSet(List<TIFFTag> list) {
        if (list != null) {
            for (TIFFTag tIFFTag : list) {
                if (tIFFTag instanceof TIFFTag) {
                    TIFFTag tIFFTag2 = tIFFTag;
                    this.f97954a.put(Integer.valueOf(tIFFTag2.getNumber()), tIFFTag2);
                    this.f97955b.put(tIFFTag2.getName(), tIFFTag2);
                } else {
                    throw new IllegalArgumentException("tags contains a non-TIFFTag!");
                }
            }
            return;
        }
        throw new IllegalArgumentException("tags == null!");
    }
}
