package com.sun.org.apache.bcel.internal.verifier;

import java.util.ArrayList;

/* loaded from: classes10.dex */
public abstract class PassVerifier {
    private ArrayList messages = new ArrayList();
    private VerificationResult verificationResult = null;

    public void addMessage(String str) {
        this.messages.add(str);
    }

    public abstract VerificationResult do_verify();

    public String[] getMessages() {
        verify();
        String[] strArr = new String[this.messages.size()];
        for (int i = 0; i < this.messages.size(); i++) {
            strArr[i] = (String) this.messages.get(i);
        }
        return strArr;
    }

    public VerificationResult verify() {
        if (this.verificationResult == null) {
            this.verificationResult = do_verify();
        }
        return this.verificationResult;
    }
}
