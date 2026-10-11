package org.apache.commons.compress.harmony.unpack200.bytecode;

import com.google.android.material.motion.MotionUtils;
import java.util.List;

/* loaded from: classes12.dex */
public class CPField extends CPMember {
    public CPField(CPUTF8 cputf8, CPUTF8 cputf82, long j, List<Attribute> list) {
        super(cputf8, cputf82, j, list);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.CPMember, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Field: " + this.f107136d + MotionUtils.f31761c + this.descriptor + MotionUtils.f31762d;
    }
}
