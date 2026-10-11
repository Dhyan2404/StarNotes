package sun.java2d.cmm;

import java.awt.color.ProfileDataException;
import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes16.dex */
public class ProfileDeferralMgr {
    private static Vector<ProfileActivator> aVector = null;
    public static boolean deferring = true;

    public static void activateProfiles() {
        deferring = false;
        Vector<ProfileActivator> vector = aVector;
        if (vector != null) {
            vector.size();
            Iterator<ProfileActivator> it2 = aVector.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().activate();
                } catch (ProfileDataException unused) {
                }
            }
            aVector.removeAllElements();
            aVector = null;
        }
    }

    public static void registerDeferral(ProfileActivator profileActivator) {
        if (deferring) {
            if (aVector == null) {
                aVector = new Vector<>(3, 3);
            }
            aVector.addElement(profileActivator);
        }
    }

    public static void unregisterDeferral(ProfileActivator profileActivator) {
        Vector<ProfileActivator> vector;
        if (!deferring || (vector = aVector) == null) {
            return;
        }
        vector.removeElement(profileActivator);
    }
}
