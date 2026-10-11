package com.onegravity.rteditor.fonts;

import java.util.Iterator;
import java.util.TreeSet;

/* loaded from: classes7.dex */
public class RTTypefaceSet extends TreeSet<RTTypeface> {
    private RTTypeface tmp = new RTTypeface();

    public boolean contains(String str) {
        this.tmp.setName(str);
        return contains(this.tmp);
    }

    public RTTypeface get(String str) {
        if (!contains(str)) {
            return null;
        }
        Iterator<RTTypeface> it2 = iterator();
        while (it2.hasNext()) {
            RTTypeface next = it2.next();
            if (next.getName().equals(str)) {
                return next;
            }
        }
        return null;
    }
}
