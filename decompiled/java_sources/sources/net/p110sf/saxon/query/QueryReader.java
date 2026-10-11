package net.p110sf.saxon.query;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.functions.UnparsedTextFunction;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.resource.ResourceLoader;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class QueryReader {
    /* renamed from: a */
    public static char m63485a(byte b) {
        return (char) (b & 255);
    }

    /* renamed from: b */
    public static String m63486b(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2);
    }

    /* renamed from: c */
    public static String m63487c(byte[] bArr, int i) throws XPathException {
        int length;
        if (i >= 2) {
            if (m63485a(bArr[0]) == 254 && m63485a(bArr[1]) == 255) {
                return "UTF-16";
            }
            if (m63485a(bArr[0]) == 255 && m63485a(bArr[1]) == 254) {
                return "UTF-16LE";
            }
        }
        if (i >= 3 && m63485a(bArr[0]) == 239 && m63485a(bArr[1]) == 187 && m63485a(bArr[2]) == 191) {
            return "UTF-8";
        }
        if (i >= 8 && bArr[0] == 0 && bArr[2] == 0 && bArr[4] == 0 && bArr[6] == 0) {
            return "UTF-16";
        }
        if (i >= 8 && bArr[1] == 0 && bArr[3] == 0 && bArr[5] == 0 && bArr[7] == 0) {
            return "UTF-16LE";
        }
        String m63489e = m63489e(bArr, 0, i);
        if (Whitespace.trim(m63489e).equals("xquery")) {
            int length2 = m63489e.length() + 0;
            String m63489e2 = m63489e(bArr, length2, i);
            if (Whitespace.trim(m63489e2).equals("encoding")) {
                length = m63489e2.length();
            } else if (Whitespace.trim(m63489e2).equals("version")) {
                int length3 = length2 + m63489e2.length();
                length2 = length3 + m63489e(bArr, length3, i).length();
                String m63489e3 = m63489e(bArr, length2, i);
                if (Whitespace.trim(m63489e3).equals("encoding")) {
                    length = m63489e3.length();
                }
            }
            String trim = Whitespace.trim(m63489e(bArr, length2 + length, i));
            if (trim.startsWith("\"") && trim.endsWith("\"") && trim.length() > 2) {
                return trim.substring(1, trim.length() - 1);
            }
            if (trim.startsWith(CloudStorageConstants.SINGLE_QUOTES) && trim.endsWith(CloudStorageConstants.SINGLE_QUOTES) && trim.length() > 2) {
                return trim.substring(1, trim.length() - 1);
            }
            throw new XPathException("Unrecognized encoding " + Err.wrap(trim) + " in query prolog");
        }
        return "UTF-8";
    }

    /* renamed from: d */
    public static String m63488d(Reader reader, IntPredicateProxy intPredicateProxy) throws XPathException {
        try {
            return UnparsedTextFunction.readFile(intPredicateProxy, reader).toString();
        } catch (IOException e) {
            throw new XPathException("Failed to read supplied query file", e);
        } catch (XPathException e2) {
            e2.setErrorCode("XPST0003");
            e2.setIsStaticError(true);
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m63489e(byte[] r4, int r5, int r6) {
        /*
            r0 = r5
        L1:
            java.lang.String r1 = " \n\r\t"
            if (r0 >= r6) goto L14
            r2 = r4[r0]
            char r2 = m63485a(r2)
            int r2 = r1.indexOf(r2)
            if (r2 < 0) goto L14
            int r0 = r0 + 1
            goto L1
        L14:
            r2 = r4[r0]
            char r2 = m63485a(r2)
            r3 = 34
            if (r2 != r3) goto L2b
        L1e:
            int r0 = r0 + 1
            if (r0 >= r6) goto L53
            r1 = r4[r0]
            char r1 = m63485a(r1)
            if (r1 == r3) goto L53
            goto L1e
        L2b:
            r2 = r4[r0]
            char r2 = m63485a(r2)
            r3 = 39
            if (r2 != r3) goto L42
        L35:
            int r0 = r0 + 1
            if (r0 >= r6) goto L53
            r1 = r4[r0]
            char r1 = m63485a(r1)
            if (r1 == r3) goto L53
            goto L35
        L42:
            if (r0 >= r6) goto L53
            r2 = r4[r0]
            char r2 = m63485a(r2)
            int r2 = r1.indexOf(r2)
            if (r2 >= 0) goto L53
            int r0 = r0 + 1
            goto L42
        L53:
            if (r0 < r6) goto L5b
            int r6 = r6 - r5
            java.lang.String r4 = m63486b(r4, r5, r6)
            return r4
        L5b:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r1 = r0 - r5
            int r1 = r1 + 1
            r6.<init>(r1)
        L64:
            if (r5 > r0) goto L72
            r1 = r4[r5]
            char r1 = m63485a(r1)
            r6.append(r1)
            int r5 = r5 + 1
            goto L64
        L72:
            java.lang.String r4 = r6.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.query.QueryReader.m63489e(byte[], int, int):java.lang.String");
    }

    public static String readEncoding(InputStream inputStream) throws XPathException {
        try {
            InputStreamMarker inputStreamMarker = new InputStreamMarker(inputStream);
            if (!inputStreamMarker.isMarkSupported()) {
                throw new IllegalArgumentException("InputStream must have markSupported() = true");
            }
            inputStreamMarker.mark(100);
            byte[] bArr = new byte[100];
            int read = inputStream.read(bArr, 0, 100);
            if (read == -1) {
                throw new XPathException("Query source file is empty");
            }
            inputStreamMarker.reset();
            return m63487c(bArr, read);
        } catch (IOException e) {
            throw new XPathException("Failed to read query source file", e);
        }
    }

    public static String readInputStream(InputStream inputStream, String str, IntPredicateProxy intPredicateProxy) throws XPathException {
        if (str == null) {
            inputStream = InputStreamMarker.ensureMarkSupported(inputStream);
            str = readEncoding(inputStream);
        }
        try {
            return m63488d(new BufferedReader(new InputStreamReader(inputStream, str)), intPredicateProxy);
        } catch (UnsupportedEncodingException e) {
            XPathException xPathException = new XPathException("Unknown encoding " + Err.wrap(str), e);
            xPathException.setErrorCode("XQST0087");
            throw xPathException;
        }
    }

    public static String readSourceQuery(StreamSource streamSource, IntPredicateProxy intPredicateProxy) throws XPathException {
        String readInputStream;
        if (streamSource.getInputStream() != null) {
            InputStream ensureMarkSupported = InputStreamMarker.ensureMarkSupported(streamSource.getInputStream());
            readInputStream = readInputStream(ensureMarkSupported, readEncoding(ensureMarkSupported), intPredicateProxy);
        } else if (streamSource.getReader() != null) {
            readInputStream = m63488d(streamSource.getReader(), intPredicateProxy);
        } else {
            if (streamSource.getSystemId() == null) {
                throw new XPathException("Module URI Resolver must supply either an InputStream or a Reader");
            }
            try {
                InputStream ensureMarkSupported2 = InputStreamMarker.ensureMarkSupported(ResourceLoader.urlStream(new URL(streamSource.getSystemId())));
                readInputStream = readInputStream(ensureMarkSupported2, readEncoding(ensureMarkSupported2), intPredicateProxy);
            } catch (IOException e) {
                throw new XPathException("I/O Error reading input stream from " + streamSource.getSystemId(), e);
            }
        }
        return readInputStream.toString();
    }
}
