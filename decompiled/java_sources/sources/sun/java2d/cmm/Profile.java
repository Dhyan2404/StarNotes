package sun.java2d.cmm;

import java.awt.color.CMMException;

/* loaded from: classes16.dex */
public class Profile {
    private final long nativePtr;

    public Profile(long j) {
        this.nativePtr = j;
    }

    public final long getNativePtr() {
        long j = this.nativePtr;
        if (j != 0) {
            return j;
        }
        throw new CMMException("Invalid profile: ptr is null");
    }
}
