package net.p110sf.saxon.trans;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes11.dex */
public enum RecoveryPolicy {
    RECOVER_SILENTLY,
    RECOVER_WITH_WARNINGS,
    DO_NOT_RECOVER;

    public static RecoveryPolicy fromString(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1624916287:
                if (str.equals("recoverWithWarnings")) {
                    c = 0;
                    break;
                }
                break;
            case -633090522:
                if (str.equals("recoverSilently")) {
                    c = 1;
                    break;
                }
                break;
            case -27079172:
                if (str.equals("doNotRecover")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return RECOVER_WITH_WARNINGS;
            case 1:
                return RECOVER_SILENTLY;
            case 2:
                return DO_NOT_RECOVER;
            default:
                throw new IllegalArgumentException("Unrecognized value of RECOVERY_POLICY_NAME = '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
    }
}
