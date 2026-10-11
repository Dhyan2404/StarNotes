package sun.java2d.cmm.lcms;

import sun.java2d.cmm.CMMServiceProvider;
import sun.java2d.cmm.PCMM;

/* loaded from: classes16.dex */
public final class LcmsServiceProvider extends CMMServiceProvider {
    @Override // sun.java2d.cmm.CMMServiceProvider
    public PCMM getModule() {
        return LCMS.getModule();
    }
}
