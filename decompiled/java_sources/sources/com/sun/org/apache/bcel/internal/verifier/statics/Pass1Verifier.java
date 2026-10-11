package com.sun.org.apache.bcel.internal.verifier.statics;

import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.verifier.PassVerifier;
import com.sun.org.apache.bcel.internal.verifier.Verifier;

/* loaded from: classes10.dex */
public final class Pass1Verifier extends PassVerifier {

    /* renamed from: jc */
    private JavaClass f64076jc;
    private Verifier myOwner;

    public Pass1Verifier(Verifier verifier) {
        this.myOwner = verifier;
    }

    private JavaClass getJavaClass() {
        if (this.f64076jc == null) {
            this.f64076jc = Repository.lookupClass(this.myOwner.getClassName());
        }
        return this.f64076jc;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        return com.sun.org.apache.bcel.internal.verifier.VerificationResult.VR_OK;
     */
    @Override // com.sun.org.apache.bcel.internal.verifier.PassVerifier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.bcel.internal.verifier.VerificationResult do_verify() {
        /*
            r5 = this;
            r0 = 2
            com.sun.org.apache.bcel.internal.classfile.JavaClass r1 = r5.getJavaClass()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            if (r1 == 0) goto L46
            com.sun.org.apache.bcel.internal.verifier.Verifier r2 = r5.myOwner     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r2 = r2.getClassName()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r3 = r1.getClassName()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            boolean r2 = r2.equals(r3)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            if (r2 == 0) goto L18
            goto L46
        L18:
            com.sun.org.apache.bcel.internal.verifier.exc.LoadingException r2 = new com.sun.org.apache.bcel.internal.verifier.exc.LoadingException     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            r3.<init>()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r4 = "Wrong name: the internal name of the .class file '"
            r3.append(r4)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r1 = r1.getClassName()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            r3.append(r1)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r1 = "' does not match the file's name '"
            r3.append(r1)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            com.sun.org.apache.bcel.internal.verifier.Verifier r5 = r5.myOwner     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r5 = r5.getClassName()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            r3.append(r5)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r5 = "'."
            r3.append(r5)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            java.lang.String r5 = r3.toString()     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            r2.<init>(r5)     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
            throw r2     // Catch: java.lang.RuntimeException -> L53 java.lang.ClassFormatError -> L7f com.sun.org.apache.bcel.internal.verifier.exc.LoadingException -> L8a
        L46:
            if (r1 == 0) goto L4b
            com.sun.org.apache.bcel.internal.verifier.VerificationResult r5 = com.sun.org.apache.bcel.internal.verifier.VerificationResult.VR_OK
            return r5
        L4b:
            com.sun.org.apache.bcel.internal.verifier.VerificationResult r5 = new com.sun.org.apache.bcel.internal.verifier.VerificationResult
            java.lang.String r1 = "Repository.lookup() failed. FILE NOT FOUND?"
            r5.<init>(r0, r1)
            return r5
        L53:
            r5 = move-exception
            com.sun.org.apache.bcel.internal.verifier.VerificationResult r1 = new com.sun.org.apache.bcel.internal.verifier.VerificationResult
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Parsing via BCEL did not succeed. "
            r2.append(r3)
            java.lang.Class r3 = r5.getClass()
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = " occured:\n"
            r2.append(r3)
            java.lang.String r5 = com.sun.org.apache.bcel.internal.verifier.exc.Utility.getStackTrace(r5)
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r1.<init>(r0, r5)
            return r1
        L7f:
            r5 = move-exception
            com.sun.org.apache.bcel.internal.verifier.VerificationResult r1 = new com.sun.org.apache.bcel.internal.verifier.VerificationResult
            java.lang.String r5 = r5.getMessage()
            r1.<init>(r0, r5)
            return r1
        L8a:
            r5 = move-exception
            com.sun.org.apache.bcel.internal.verifier.VerificationResult r1 = new com.sun.org.apache.bcel.internal.verifier.VerificationResult
            java.lang.String r5 = r5.getMessage()
            r1.<init>(r0, r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.verifier.statics.Pass1Verifier.do_verify():com.sun.org.apache.bcel.internal.verifier.VerificationResult");
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.PassVerifier
    public String[] getMessages() {
        return super.getMessages();
    }
}
