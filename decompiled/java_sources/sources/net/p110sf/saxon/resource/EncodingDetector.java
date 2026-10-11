package net.p110sf.saxon.resource;

import java.io.IOException;
import java.io.InputStream;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.query.InputStreamMarker;

/* loaded from: classes11.dex */
public class EncodingDetector {
    /* renamed from: a */
    public static int m63627a(byte b) {
        return b & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0103, code lost:
    
        r12.info("unparsed-text(): encoding in XML declaration = " + r1.toString());
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m63628b(byte[] r10, int r11, net.p110sf.saxon.lib.Logger r12) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.resource.EncodingDetector.m63628b(byte[], int, net.sf.saxon.lib.Logger):java.lang.String");
    }

    public static String inferStreamEncoding(InputStream inputStream, Logger logger) throws IOException {
        InputStreamMarker inputStreamMarker = new InputStreamMarker(inputStream);
        inputStreamMarker.mark(100);
        byte[] bArr = new byte[100];
        int read = inputStream.read(bArr, 0, 100);
        inputStreamMarker.reset();
        return m63628b(bArr, read, logger);
    }
}
