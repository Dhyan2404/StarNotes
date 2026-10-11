package org.apache.commons.compress.harmony.unpack200.bytecode;

import com.google.android.material.motion.MotionUtils;
import java.util.List;

/* loaded from: classes12.dex */
public class CPMethod extends CPMember {

    /* renamed from: g */
    public boolean f107139g;

    /* renamed from: h */
    public int f107140h;

    public CPMethod(CPUTF8 cputf8, CPUTF8 cputf82, long j, List<Attribute> list) {
        super(cputf8, cputf82, j, list);
    }

    /* renamed from: c */
    public final void m67113c() {
        this.f107139g = true;
        this.f107140h = ((this.f107136d.hashCode() + 31) * 31) + this.descriptor.hashCode();
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPMember, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public int hashCode() {
        if (!this.f107139g) {
            m67113c();
        }
        return this.f107140h;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPMember, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Method: " + this.f107136d + MotionUtils.f31761c + this.descriptor + MotionUtils.f31762d;
    }
}
