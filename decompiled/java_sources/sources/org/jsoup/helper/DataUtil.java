package org.jsoup.helper;

import com.google.common.base.Ascii;
import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import onyx.org.apache.commons.io.input.XmlStreamReader;
import org.jsoup.UncheckedIOException;
import org.jsoup.internal.ConstrainableInputStream;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Parser;

/* loaded from: classes13.dex */
public final class DataUtil {

    /* renamed from: b */
    public static final String f113976b = "UTF-8";

    /* renamed from: c */
    public static final int f113977c = 5120;

    /* renamed from: d */
    public static final int f113978d = 32768;

    /* renamed from: f */
    public static final int f113980f = 32;

    /* renamed from: a */
    public static final Pattern f113975a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    /* renamed from: e */
    public static final char[] f113979e = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* renamed from: g */
    public static char[] f113981g = new char[128];

    /* renamed from: org.jsoup.helper.DataUtil$a */
    /* loaded from: classes13.dex */
    public static class C20245a {

        /* renamed from: a */
        public final String f113982a;

        /* renamed from: b */
        public final boolean f113983b;

        public C20245a(String str, boolean z) {
            this.f113982a = str;
            this.f113983b = z;
        }
    }

    static {
        for (int i = 0; i < 128; i++) {
            f113981g[i] = (char) Character.toLowerCase(i);
        }
    }

    /* renamed from: a */
    public static String m71059a(String str) {
        if (str != null && str.length() != 0) {
            String replaceAll = str.trim().replaceAll("[\"']", "");
            try {
                if (Charset.isSupported(replaceAll)) {
                    return replaceAll;
                }
                String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
                if (Charset.isSupported(upperCase)) {
                    return upperCase;
                }
            } catch (IllegalCharsetNameException unused) {
            }
        }
        return null;
    }

    /* renamed from: b */
    public static C20245a m71060b(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        byte b = bArr[0];
        if ((b == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new C20245a(XmlStreamReader.f104451o, false);
        }
        if ((b == -2 && bArr[1] == -1) || (b == -1 && bArr[1] == -2)) {
            return new C20245a("UTF-16", false);
        }
        if (b == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new C20245a("UTF-8", true);
        }
        return null;
    }

    /* renamed from: c */
    public static void m71061c(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[32768];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* renamed from: d */
    public static ByteBuffer m71062d() {
        return ByteBuffer.allocate(0);
    }

    /* renamed from: e */
    public static String m71063e(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f113975a.matcher(str);
        if (matcher.find()) {
            return m71059a(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    /* renamed from: f */
    public static String m71064f() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Random random = new Random();
        for (int i = 0; i < 32; i++) {
            char[] cArr = f113979e;
            borrowBuilder.append(cArr[random.nextInt(cArr.length)]);
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    /* renamed from: g */
    public static Document m71065g(InputStream inputStream, String str, String str2, Parser parser) throws IOException {
        Document parseInput;
        XmlDeclaration xmlDeclaration;
        if (inputStream == null) {
            return new Document(str2);
        }
        ConstrainableInputStream wrap = ConstrainableInputStream.wrap(inputStream, 32768, 0);
        wrap.mark(32768);
        ByteBuffer readToByteBuffer = readToByteBuffer(wrap, 5119);
        boolean z = wrap.read() == -1;
        wrap.reset();
        C20245a m71060b = m71060b(readToByteBuffer);
        String str3 = m71060b != null ? m71060b.f113982a : str;
        Document document = null;
        if (str3 == null) {
            try {
                CharBuffer decode = Charset.forName("UTF-8").decode(readToByteBuffer);
                if (decode.hasArray() && decode.hasRemaining()) {
                    char[] cArr = new char[decode.remaining()];
                    System.arraycopy(decode.array(), decode.position(), cArr, 0, decode.remaining());
                    parseInput = parser.parseInput(new CharArrayReader(cArr), str2);
                } else {
                    parseInput = parser.parseInput(decode.toString(), str2);
                }
                Iterator<Element> it2 = parseInput.select("meta[http-equiv=content-type], meta[charset]").iterator();
                String str4 = null;
                while (it2.hasNext()) {
                    Element next = it2.next();
                    if (next.hasAttr("http-equiv")) {
                        str4 = m71063e(next.attr("content"));
                    }
                    if (str4 == null && next.hasAttr("charset")) {
                        str4 = next.attr("charset");
                    }
                    if (str4 != null) {
                        break;
                    }
                }
                if (str4 == null && parseInput.childNodeSize() > 0) {
                    Node childNode = parseInput.childNode(0);
                    if (childNode instanceof XmlDeclaration) {
                        xmlDeclaration = (XmlDeclaration) childNode;
                    } else {
                        if (childNode instanceof Comment) {
                            Comment comment = (Comment) childNode;
                            if (comment.isXmlDeclaration()) {
                                xmlDeclaration = comment.asXmlDeclaration();
                            }
                        }
                        xmlDeclaration = null;
                    }
                    if (xmlDeclaration != null && xmlDeclaration.name().equalsIgnoreCase("xml")) {
                        str4 = xmlDeclaration.attr("encoding");
                    }
                }
                String m71059a = m71059a(str4);
                if (m71059a != null && !m71059a.equalsIgnoreCase("UTF-8")) {
                    str3 = m71059a.trim().replaceAll("[\"']", "");
                } else if (z) {
                    document = parseInput;
                }
            } catch (UncheckedIOException e) {
                throw e.ioException();
            }
        } else {
            Validate.notEmpty(str3, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML");
        }
        if (document == null) {
            if (str3 == null) {
                str3 = "UTF-8";
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(wrap, str3), 32768);
            if (m71060b != null && m71060b.f113983b) {
                Validate.isTrue(bufferedReader.skip(1L) == 1);
            }
            try {
                document = parser.parseInput(bufferedReader, str2);
                Charset forName = Charset.forName(str3);
                document.outputSettings().charset(forName);
                if (!forName.canEncode()) {
                    document.charset(Charset.forName("UTF-8"));
                }
            } catch (UncheckedIOException e2) {
                throw e2.ioException();
            }
        }
        wrap.close();
        return document;
    }

    public static Document load(File file, String str, String str2) throws IOException {
        return m71065g(new FileInputStream(file), str, str2, Parser.htmlParser());
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i) throws IOException {
        Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
        return ConstrainableInputStream.wrap(inputStream, 32768, i).readToByteBuffer(i);
    }

    public int getTagCode(String str) {
        int i = 0;
        for (char c : str.toCharArray()) {
            i = (i * 31) + f113981g[c & Ascii.MAX] + (c & 65408);
        }
        return i;
    }

    public static Document load(InputStream inputStream, String str, String str2) throws IOException {
        return m71065g(inputStream, str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, String str, String str2, Parser parser) throws IOException {
        return m71065g(inputStream, str, str2, parser);
    }
}
