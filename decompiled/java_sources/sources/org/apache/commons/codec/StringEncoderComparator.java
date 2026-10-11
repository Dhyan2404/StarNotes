package org.apache.commons.codec;

import java.util.Comparator;

/* loaded from: classes9.dex */
public class StringEncoderComparator implements Comparator {

    /* renamed from: e */
    public final StringEncoder f104564e;

    @Deprecated
    public StringEncoderComparator() {
        this.f104564e = null;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        try {
            return ((Comparable) this.f104564e.encode(obj)).compareTo((Comparable) this.f104564e.encode(obj2));
        } catch (EncoderException unused) {
            return 0;
        }
    }

    public StringEncoderComparator(StringEncoder stringEncoder) {
        this.f104564e = stringEncoder;
    }
}
