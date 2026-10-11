package onyx.org.apache.commons.io.input;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import onyx.org.apache.commons.io.ByteOrderMark;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.BOMInputStream;

/* loaded from: classes11.dex */
public class XmlStreamReader extends Reader {
    public static final Pattern ENCODING_PATTERN;

    /* renamed from: h */
    public static final String f104444h;

    /* renamed from: i */
    public static final String f104445i;

    /* renamed from: j */
    public static final String f104446j;

    /* renamed from: k */
    public static final String f104447k;

    /* renamed from: l */
    public static final String f104448l = "UTF-32BE";

    /* renamed from: m */
    public static final String f104449m = "UTF-32LE";

    /* renamed from: n */
    public static final String f104450n;

    /* renamed from: o */
    public static final String f104451o = "UTF-32";

    /* renamed from: p */
    public static final String f104452p = "CP1047";

    /* renamed from: q */
    public static final ByteOrderMark[] f104453q;

    /* renamed from: r */
    public static final ByteOrderMark[] f104454r;

    /* renamed from: s */
    public static final Pattern f104455s;

    /* renamed from: t */
    public static final String f104456t = "Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";

    /* renamed from: u */
    public static final String f104457u = "Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";

    /* renamed from: v */
    public static final String f104458v = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be null";

    /* renamed from: w */
    public static final String f104459w = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";

    /* renamed from: x */
    public static final String f104460x = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Illegal MIME";

    /* renamed from: e */
    public final Reader f104461e;

    /* renamed from: f */
    public final String f104462f;

    /* renamed from: g */
    public final String f104463g;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<XmlStreamReader, Builder> {

        /* renamed from: l */
        public boolean f104464l = true;

        /* renamed from: m */
        public boolean f104465m = true;

        /* renamed from: n */
        public String f104466n;

        public Builder setHttpContentType(String str) {
            this.f104466n = str;
            return this;
        }

        public Builder setLenient(boolean z) {
            this.f104465m = z;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public XmlStreamReader get() throws IOException {
            String name = this.f104464l ? null : getCharset().name();
            if (this.f104466n == null) {
                return new XmlStreamReader(getInputStream(), this.f104465m, name);
            }
            return new XmlStreamReader(getInputStream(), this.f104466n, this.f104465m, name);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            this.f104464l = charset == null;
            return (Builder) super.setCharset(charset);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractStreamBuilder
        public Builder setCharset(String str) {
            this.f104464l = str == null;
            return (Builder) super.setCharset(Charsets.toCharset(str, getCharsetDefault()));
        }
    }

    static {
        String name = StandardCharsets.UTF_8.name();
        f104444h = name;
        f104445i = StandardCharsets.US_ASCII.name();
        String name2 = StandardCharsets.UTF_16BE.name();
        f104446j = name2;
        String name3 = StandardCharsets.UTF_16LE.name();
        f104447k = name3;
        f104450n = StandardCharsets.UTF_16.name();
        f104453q = new ByteOrderMark[]{ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE};
        f104454r = new ByteOrderMark[]{new ByteOrderMark(name, 60, 63, 120, 109), new ByteOrderMark(name2, 0, 60, 0, 63), new ByteOrderMark(name3, 60, 0, 63, 0), new ByteOrderMark(f104448l, 0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109), new ByteOrderMark(f104449m, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109, 0, 0, 0), new ByteOrderMark(f104452p, 76, 111, 167, 148)};
        f104455s = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
        ENCODING_PATTERN = Pattern.compile("^<\\?xml\\s+(?:version\\s*=\\s*(?:(?:\"1\\.[0-9]+\")|(?:'1.[0-9]+'))\\s+)??encoding\\s*=\\s*((?:\"[A-Za-z0-9][A-Za-z0-9._+:-]*\")|(?:'[A-Za-z0-9][A-Za-z0-9._+:-]*'))", 8);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public XmlStreamReader(File file) throws IOException {
        this(file.toPath());
        Objects.requireNonNull(file, "file");
    }

    /* renamed from: I */
    public static String m65574I(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(AndroidTreeView.f47214k)) <= -1) {
            return null;
        }
        Matcher matcher = f104455s.matcher(str.substring(indexOf + 1));
        String group = matcher.find() ? matcher.group(1) : null;
        if (group != null) {
            return group.toUpperCase(Locale.ROOT);
        }
        return null;
    }

    /* renamed from: M */
    public static String m65575M(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(AndroidTreeView.f47214k);
        if (indexOf >= 0) {
            str = str.substring(0, indexOf);
        }
        return str.trim();
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
    
        throw new java.io.IOException("Unexpected end of XML stream");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
    
        throw new java.io.IOException("XML prolog or ROOT element not found on first " + r7 + " bytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
    
        if (r3 != (-1)) goto L12;
     */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m65576e0(java.io.InputStream r9, java.lang.String r10) throws java.io.IOException {
        /*
            if (r10 == 0) goto L9c
            byte[] r0 = onyx.org.apache.commons.io.IOUtils.byteArray()
            r1 = 8192(0x2000, float:1.14794E-41)
            r9.mark(r1)
            r2 = 0
            int r3 = r9.read(r0, r2, r1)
            r4 = -1
            java.lang.String r5 = ""
            r8 = r1
            r7 = r2
            r6 = r4
        L16:
            if (r3 == r4) goto L2e
            if (r6 != r4) goto L2e
            if (r7 >= r1) goto L2e
            int r7 = r7 + r3
            int r8 = r8 - r3
            int r3 = r9.read(r0, r7, r8)
            java.lang.String r5 = new java.lang.String
            r5.<init>(r0, r2, r7, r10)
            r6 = 62
            int r6 = r5.indexOf(r6)
            goto L16
        L2e:
            if (r6 != r4) goto L56
            if (r3 != r4) goto L3a
            java.io.IOException r9 = new java.io.IOException
            java.lang.String r10 = "Unexpected end of XML stream"
            r9.<init>(r10)
            throw r9
        L3a:
            java.io.IOException r9 = new java.io.IOException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r0 = "XML prolog or ROOT element not found on first "
            r10.append(r0)
            r10.append(r7)
            java.lang.String r0 = " bytes"
            r10.append(r0)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L56:
            if (r7 <= 0) goto L9c
            r9.reset()
            java.io.BufferedReader r9 = new java.io.BufferedReader
            java.io.StringReader r10 = new java.io.StringReader
            r0 = 1
            int r6 = r6 + r0
            java.lang.String r1 = r5.substring(r2, r6)
            r10.<init>(r1)
            r9.<init>(r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.util.stream.Stream r9 = r9.lines()
            com.sunia.HTREnginev2.uwo r1 = new com.sunia.HTREnginev2.uwo
            r1.<init>()
            onyx.org.apache.commons.io.function.IOConsumer.forEach(r9, r1)
            java.util.regex.Pattern r9 = onyx.org.apache.commons.io.input.XmlStreamReader.ENCODING_PATTERN
            java.util.regex.Matcher r9 = r9.matcher(r10)
            boolean r10 = r9.find()
            if (r10 == 0) goto L9c
            java.lang.String r9 = r9.group(r0)
            java.util.Locale r10 = java.util.Locale.ROOT
            java.lang.String r9 = r9.toUpperCase(r10)
            int r10 = r9.length()
            int r10 = r10 - r0
            java.lang.String r9 = r9.substring(r0, r10)
            goto L9d
        L9c:
            r9 = 0
        L9d:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: onyx.org.apache.commons.io.input.XmlStreamReader.m65576e0(java.io.InputStream, java.lang.String):java.lang.String");
    }

    /* renamed from: f0 */
    public static boolean m65578f0(String str) {
        return str != null && (str.equals("application/xml") || str.equals("application/xml-dtd") || str.equals("application/xml-external-parsed-entity") || (str.startsWith("application/") && str.endsWith("+xml")));
    }

    /* renamed from: g0 */
    public static boolean m65579g0(String str) {
        return str != null && (str.equals("text/xml") || str.equals("text/xml-external-parsed-entity") || (str.startsWith("text/") && str.endsWith("+xml")));
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m65580h0(StringBuilder sb, String str) throws IOException {
        sb.append(str);
        sb.append(' ');
    }

    /* renamed from: H */
    public final String m65581H(String str, XmlStreamReaderException xmlStreamReaderException) throws IOException {
        if (str != null && str.startsWith("text/html")) {
            try {
                return m65583j(xmlStreamReaderException.getBomEncoding(), xmlStreamReaderException.getXmlGuessEncoding(), xmlStreamReaderException.getXmlEncoding(), true, "text/xml" + str.substring(9));
            } catch (XmlStreamReaderException e) {
                xmlStreamReaderException = e;
            }
        }
        String xmlEncoding = xmlStreamReaderException.getXmlEncoding();
        if (xmlEncoding == null) {
            xmlEncoding = xmlStreamReaderException.getContentTypeEncoding();
        }
        if (xmlEncoding != null) {
            return xmlEncoding;
        }
        String str2 = this.f104463g;
        if (str2 == null) {
            str2 = f104444h;
        }
        return str2;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104461e.close();
    }

    public String getDefaultEncoding() {
        return this.f104463g;
    }

    public String getEncoding() {
        return this.f104462f;
    }

    /* renamed from: i0 */
    public final String m65582i0(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, boolean z) throws IOException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return m65585w(bOMCharsetName, bOMCharsetName2, m65576e0(bOMInputStream2, bOMCharsetName2));
        } catch (XmlStreamReaderException e) {
            if (z) {
                return this.m65581H(null, e);
            }
            throw e;
        }
    }

    /* renamed from: j */
    public String m65583j(String str, String str2, String str3, boolean z, String str4) throws IOException {
        if (z && str3 != null) {
            return str3;
        }
        String m65575M = m65575M(str4);
        String m65574I = m65574I(str4);
        boolean m65578f0 = m65578f0(m65575M);
        boolean m65579g0 = m65579g0(m65575M);
        if (!m65578f0 && !m65579g0) {
            throw new XmlStreamReaderException(MessageFormat.format(f104460x, m65575M, m65574I, str, str2, str3), m65575M, m65574I, str, str2, str3);
        }
        if (m65574I == null) {
            if (m65578f0) {
                return m65585w(str, str2, str3);
            }
            String str5 = this.f104463g;
            return str5 == null ? f104445i : str5;
        }
        if (m65574I.equals(f104446j) || m65574I.equals(f104447k)) {
            if (str == null) {
                return m65574I;
            }
            throw new XmlStreamReaderException(MessageFormat.format(f104458v, m65575M, m65574I, str, str2, str3), m65575M, m65574I, str, str2, str3);
        }
        String str6 = f104450n;
        if (m65574I.equals(str6)) {
            if (str == null || !str.startsWith(str6)) {
                throw new XmlStreamReaderException(MessageFormat.format(f104459w, m65575M, m65574I, str, str2, str3), m65575M, m65574I, str, str2, str3);
            }
            return str;
        }
        if (m65574I.equals(f104448l) || m65574I.equals(f104449m)) {
            if (str == null) {
                return m65574I;
            }
            throw new XmlStreamReaderException(MessageFormat.format(f104458v, m65575M, m65574I, str, str2, str3), m65575M, m65574I, str, str2, str3);
        }
        if (!m65574I.equals(f104451o)) {
            return m65574I;
        }
        if (str == null || !str.startsWith(f104451o)) {
            throw new XmlStreamReaderException(MessageFormat.format(f104459w, m65575M, m65574I, str, str2, str3), m65575M, m65574I, str, str2, str3);
        }
        return str;
    }

    /* renamed from: j0 */
    public final String m65584j0(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, boolean z, String str) throws IOException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return m65583j(bOMCharsetName, bOMCharsetName2, m65576e0(bOMInputStream2, bOMCharsetName2), z, str);
        } catch (XmlStreamReaderException e) {
            if (z) {
                return this.m65581H(str, e);
            }
            throw e;
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.f104461e.read(cArr, i, i2);
    }

    /* renamed from: w */
    public String m65585w(String str, String str2, String str3) throws IOException {
        if (str == null) {
            if (str2 != null && str3 != null) {
                return (str3.equals(f104450n) && (str2.equals(f104446j) || str2.equals(f104447k))) ? str2 : str3;
            }
            String str4 = this.f104463g;
            return str4 == null ? f104444h : str4;
        }
        String str5 = f104444h;
        if (str.equals(str5)) {
            if (str2 != null && !str2.equals(str5)) {
                throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
            }
            if (str3 == null || str3.equals(str5)) {
                return str;
            }
            throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
        }
        if (str.equals(f104446j) || str.equals(f104447k)) {
            if (str2 != null && !str2.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
            }
            if (str3 == null || str3.equals(f104450n) || str3.equals(str)) {
                return str;
            }
            throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
        }
        if (!str.equals(f104448l) && !str.equals(f104449m)) {
            throw new XmlStreamReaderException(MessageFormat.format(f104457u, str, str2, str3), str, str2, str3);
        }
        if (str2 != null && !str2.equals(str)) {
            throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
        }
        if (str3 == null || str3.equals(f104451o) || str3.equals(str)) {
            return str;
        }
        throw new XmlStreamReaderException(MessageFormat.format(f104456t, str, str2, str3), str, str2, str3);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, boolean z) throws IOException {
        this(inputStream, z, (String) null);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, boolean z, String str) throws IOException {
        this.f104463g = str;
        Objects.requireNonNull(inputStream, "inputStream");
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, 8192), false, f104453q);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, f104454r);
        String m65582i0 = m65582i0(bOMInputStream, bOMInputStream2, z);
        this.f104462f = m65582i0;
        this.f104461e = new InputStreamReader(bOMInputStream2, m65582i0);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str) throws IOException {
        this(inputStream, str, true);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str, boolean z) throws IOException {
        this(inputStream, str, z, null);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str, boolean z, String str2) throws IOException {
        this.f104463g = str2;
        Objects.requireNonNull(inputStream, "inputStream");
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, 8192), false, f104453q);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, f104454r);
        String m65584j0 = m65584j0(bOMInputStream, bOMInputStream2, z, str);
        this.f104462f = m65584j0;
        this.f104461e = new InputStreamReader(bOMInputStream2, m65584j0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public XmlStreamReader(Path path) throws IOException {
        this(Files.newInputStream(path, new OpenOption[0]));
        Objects.requireNonNull(path, "file");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public XmlStreamReader(URL url) throws IOException {
        this(url.openConnection(), (String) null);
        Objects.requireNonNull(url, "url");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public XmlStreamReader(URLConnection uRLConnection, String str) throws IOException {
        Objects.requireNonNull(uRLConnection, "urlConnection");
        this.f104463g = str;
        String contentType = uRLConnection.getContentType();
        BOMInputStream bOMInputStream = ((BOMInputStream.Builder) BOMInputStream.builder().setInputStream(new BufferedInputStream(uRLConnection.getInputStream(), 8192))).setInclude(false).setByteOrderMarks(f104453q).get();
        BOMInputStream bOMInputStream2 = ((BOMInputStream.Builder) BOMInputStream.builder().setInputStream(new BufferedInputStream(bOMInputStream, 8192))).setInclude(true).setByteOrderMarks(f104454r).get();
        if (!(uRLConnection instanceof HttpURLConnection) && contentType == null) {
            this.f104462f = m65582i0(bOMInputStream, bOMInputStream2, true);
        } else {
            this.f104462f = m65584j0(bOMInputStream, bOMInputStream2, true, contentType);
        }
        this.f104461e = new InputStreamReader(bOMInputStream2, this.f104462f);
    }
}
