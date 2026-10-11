package com.sun.org.apache.bcel.internal.verifier;

/* loaded from: classes10.dex */
public class VerificationResult {
    public static final int VERIFIED_NOTYET = 0;
    public static final int VERIFIED_OK = 1;
    public static final int VERIFIED_REJECTED = 2;
    private String detailMessage;
    private int numeric;
    private static final String VERIFIED_NOTYET_MSG = "Not yet verified.";
    public static final VerificationResult VR_NOTYET = new VerificationResult(0, VERIFIED_NOTYET_MSG);
    private static final String VERIFIED_OK_MSG = "Passed verification.";
    public static final VerificationResult VR_OK = new VerificationResult(1, VERIFIED_OK_MSG);

    public VerificationResult(int i, String str) {
        this.numeric = i;
        this.detailMessage = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VerificationResult)) {
            return false;
        }
        VerificationResult verificationResult = (VerificationResult) obj;
        return verificationResult.numeric == this.numeric && verificationResult.detailMessage.equals(this.detailMessage);
    }

    public String getMessage() {
        return this.detailMessage;
    }

    public int getStatus() {
        return this.numeric;
    }

    public String toString() {
        int i = this.numeric;
        String str = i == 0 ? "VERIFIED_NOTYET" : "";
        if (i == 1) {
            str = "VERIFIED_OK";
        }
        if (i == 2) {
            str = "VERIFIED_REJECTED";
        }
        return str + "\n" + this.detailMessage + "\n";
    }
}
