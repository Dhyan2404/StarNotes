package sun.java2d.cmm;

/* loaded from: classes16.dex */
public abstract class CMMServiceProvider {
    public final PCMM getColorManagementModule() {
        if (CMSManager.canCreateModule()) {
            return getModule();
        }
        return null;
    }

    public abstract PCMM getModule();
}
