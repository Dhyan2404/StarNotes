package org.apache.poi.hssf.record.crypto;

/* loaded from: classes12.dex */
public final class Biff8EncryptionKey {
    private static final ThreadLocal<String> _userPasswordTLS = new ThreadLocal<>();

    public static String getCurrentUserPassword() {
        return _userPasswordTLS.get();
    }

    public static void setCurrentUserPassword(String str) {
        if (str == null) {
            _userPasswordTLS.remove();
        } else {
            _userPasswordTLS.set(str);
        }
    }
}
