package org.apache.poi;

/* loaded from: classes12.dex */
public class EmptyFileException extends IllegalArgumentException {
    private static final long serialVersionUID = 1536449292174360166L;

    public EmptyFileException() {
        super("The supplied file was empty (zero bytes long)");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EmptyFileException(java.io.File r3) {
        /*
            r2 = this;
            boolean r0 = r3.exists()
            if (r0 == 0) goto L21
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "The supplied file '"
            r0.append(r1)
            java.lang.String r3 = r3.getAbsolutePath()
            r0.append(r3)
            java.lang.String r3 = "' was empty (zero bytes long)"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            goto L3b
        L21:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "The file '"
            r0.append(r1)
            java.lang.String r3 = r3.getAbsolutePath()
            r0.append(r3)
            java.lang.String r3 = "' does not exist"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
        L3b:
            r2.<init>(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.EmptyFileException.<init>(java.io.File):void");
    }
}
