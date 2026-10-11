package org.apache.commons.compress.harmony.pack200;

import com.google.android.material.motion.MotionUtils;
import java.util.List;

/* loaded from: classes12.dex */
public class CPSignature extends ConstantPoolEntry implements Comparable {

    /* renamed from: f */
    public final CPUTF8 f106505f;

    /* renamed from: g */
    public final List<CPClass> f106506g;

    /* renamed from: h */
    public final String f106507h;

    /* renamed from: i */
    public final boolean f106508i;

    public CPSignature(String str, CPUTF8 cputf8, List<CPClass> list) {
        this.f106507h = str;
        this.f106505f = cputf8;
        this.f106506g = list;
        this.f106508i = cputf8.toString().startsWith(MotionUtils.f31761c);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        CPSignature cPSignature = (CPSignature) obj;
        if (this.f106507h.equals(cPSignature.f106507h)) {
            return 0;
        }
        boolean z = this.f106508i;
        if (z && !cPSignature.f106508i) {
            return 1;
        }
        if (cPSignature.f106508i && !z) {
            return -1;
        }
        if (this.f106506g.size() - cPSignature.f106506g.size() != 0) {
            return this.f106506g.size() - cPSignature.f106506g.size();
        }
        if (this.f106506g.size() > 0) {
            for (int size = this.f106506g.size() - 1; size >= 0; size--) {
                int compareTo = this.f106506g.get(size).compareTo(cPSignature.f106506g.get(size));
                if (compareTo != 0) {
                    return compareTo;
                }
            }
        }
        return this.f106507h.compareTo(cPSignature.f106507h);
    }

    public List<CPClass> getClasses() {
        return this.f106506g;
    }

    public int getIndexInCpUtf8() {
        return this.f106505f.getIndex();
    }

    public CPUTF8 getSignatureForm() {
        return this.f106505f;
    }

    public String getUnderlyingString() {
        return this.f106507h;
    }

    public String toString() {
        return this.f106507h;
    }
}
