package net.p110sf.saxon.trans;

/* loaded from: classes11.dex */
public class LicenseException extends RuntimeException {
    public static final int CANNOT_READ = 5;
    public static final int EXPIRED = 1;
    public static final int INVALID = 2;
    public static final int NOT_FOUND = 3;
    public static final int WRONG_CONFIGURATION = 6;
    public static final int WRONG_FEATURES = 4;
    private int reason;

    public LicenseException(String str, int i) {
        super(str);
        this.reason = i;
    }

    public int getReason() {
        return this.reason;
    }

    public void setReason(int i) {
        this.reason = i;
    }
}
