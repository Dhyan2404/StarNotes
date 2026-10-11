package org.apache.xerces.stax.events;

import java.util.Comparator;
import javax.xml.namespace.QName;

/* renamed from: org.apache.xerces.stax.events.a */
/* loaded from: classes13.dex */
public class C20081a implements Comparator {
    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj.equals(obj2)) {
            return 0;
        }
        return ((QName) obj).toString().compareTo(((QName) obj2).toString());
    }
}
