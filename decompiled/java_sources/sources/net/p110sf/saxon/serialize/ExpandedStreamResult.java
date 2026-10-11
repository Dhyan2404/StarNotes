package net.p110sf.saxon.serialize;

import com.caverock.androidsvg.SVGParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.serialize.charcode.CharacterSet;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.UnicodeWriter;
import net.p110sf.saxon.str.UnicodeWriterToWriter;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ExpandedStreamResult {

    /* renamed from: a */
    public final Configuration f101502a;

    /* renamed from: b */
    public Properties f101503b;

    /* renamed from: c */
    public final String f101504c;

    /* renamed from: d */
    public Writer f101505d;

    /* renamed from: e */
    public OutputStream f101506e;

    /* renamed from: f */
    public CharacterSet f101507f;

    /* renamed from: g */
    public String f101508g;

    /* renamed from: h */
    public boolean f101509h = false;

    public ExpandedStreamResult(Configuration configuration, StreamResult streamResult, Properties properties) throws XPathException {
        this.f101502a = configuration;
        this.f101504c = streamResult.getSystemId();
        this.f101505d = streamResult.getWriter();
        this.f101506e = streamResult.getOutputStream();
        this.f101503b = properties;
        String property = properties.getProperty("encoding");
        this.f101508g = property;
        if (property == null) {
            this.f101508g = "UTF8";
        } else if (property.equalsIgnoreCase("UTF-8")) {
            this.f101508g = "UTF8";
        } else if (this.f101508g.equalsIgnoreCase("UTF-16")) {
            this.f101508g = "UTF16";
        }
        if (this.f101507f == null) {
            this.f101507f = configuration.getCharacterSetFactory().getCharacterSet(this.f101508g);
        }
        if (SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.BYTE_ORDER_MARK)) && "UTF16".equals(this.f101508g)) {
            this.f101508g = "UTF-16BE";
            return;
        }
        CharacterSet characterSet = this.f101507f;
        if (characterSet instanceof UTF8CharacterSet) {
            return;
        }
        this.f101508g = characterSet.getCanonicalName();
    }

    public static File makeWritableOutputFile(String str) throws URISyntaxException, XPathException {
        URI uri = new URI(str);
        if (!uri.isAbsolute()) {
            try {
                uri = new File(str).getAbsoluteFile().toURI();
            } catch (Exception unused) {
            }
        }
        File file = new File(uri);
        try {
            if ("file".equals(uri.getScheme()) && !file.exists()) {
                File parentFile = file.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                file.createNewFile();
            }
            if (file.isDirectory()) {
                throw new XPathException("Cannot write to a directory: " + str, SaxonErrorCode.SXRD0004);
            }
            if (file.canWrite()) {
                return file;
            }
            throw new XPathException("Cannot write to URI " + str, SaxonErrorCode.SXRD0004);
        } catch (IOException e) {
            throw new XPathException("Failed to create output file " + uri, e);
        }
    }

    /* renamed from: a */
    public final UnicodeWriter m63819a(OutputStream outputStream) throws XPathException {
        this.f101506e = outputStream;
        try {
            return this.f101508g.equalsIgnoreCase("UTF8") ? new UTF8Writer(this.f101506e) : new UnicodeWriterToWriter(m63820b(outputStream));
        } catch (Exception unused) {
            if (this.f101508g.equalsIgnoreCase("UTF8")) {
                throw new XPathException("Failed to create a UTF8 output writer");
            }
            throw new XPathException("Encoding " + this.f101508g + " is not supported", "SESU0007");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0004, B:5:0x000e, B:8:0x0019, B:9:0x0022, B:11:0x002a, B:12:0x0042, B:16:0x0034, B:17:0x0020), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0034 A[Catch: Exception -> 0x0045, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0004, B:5:0x000e, B:8:0x0019, B:9:0x0022, B:11:0x002a, B:12:0x0042, B:16:0x0034, B:17:0x0020), top: B:2:0x0004 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Writer m63820b(java.io.OutputStream r5) throws net.p110sf.saxon.trans.XPathException {
        /*
            r4 = this;
            java.lang.String r0 = "UTF8"
            r4.f101506e = r5
            java.lang.String r5 = r4.f101508g     // Catch: java.lang.Exception -> L45
            java.lang.String r1 = "iso-646"
            boolean r5 = r5.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> L45
            if (r5 != 0) goto L20
            java.lang.String r5 = r4.f101508g     // Catch: java.lang.Exception -> L45
            java.lang.String r1 = "iso646"
            boolean r5 = r5.equalsIgnoreCase(r1)     // Catch: java.lang.Exception -> L45
            if (r5 == 0) goto L19
            goto L20
        L19:
            java.lang.String r5 = r4.f101508g     // Catch: java.lang.Exception -> L45
            java.nio.charset.Charset r5 = java.nio.charset.Charset.forName(r5)     // Catch: java.lang.Exception -> L45
            goto L22
        L20:
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.US_ASCII     // Catch: java.lang.Exception -> L45
        L22:
            java.lang.String r1 = r4.f101508g     // Catch: java.lang.Exception -> L45
            boolean r1 = r1.equalsIgnoreCase(r0)     // Catch: java.lang.Exception -> L45
            if (r1 == 0) goto L34
            net.sf.saxon.serialize.UTF8Writer r5 = new net.sf.saxon.serialize.UTF8Writer     // Catch: java.lang.Exception -> L45
            java.io.OutputStream r1 = r4.f101506e     // Catch: java.lang.Exception -> L45
            r5.<init>(r1)     // Catch: java.lang.Exception -> L45
            r4.f101505d = r5     // Catch: java.lang.Exception -> L45
            goto L42
        L34:
            java.io.BufferedWriter r1 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L45
            java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L45
            java.io.OutputStream r3 = r4.f101506e     // Catch: java.lang.Exception -> L45
            r2.<init>(r3, r5)     // Catch: java.lang.Exception -> L45
            r1.<init>(r2)     // Catch: java.lang.Exception -> L45
            r4.f101505d = r1     // Catch: java.lang.Exception -> L45
        L42:
            java.io.Writer r4 = r4.f101505d     // Catch: java.lang.Exception -> L45
            return r4
        L45:
            java.lang.String r5 = r4.f101508g
            boolean r5 = r5.equalsIgnoreCase(r0)
            if (r5 == 0) goto L55
            net.sf.saxon.trans.XPathException r4 = new net.sf.saxon.trans.XPathException
            java.lang.String r5 = "Failed to create a UTF8 output writer"
            r4.<init>(r5)
            throw r4
        L55:
            net.sf.saxon.trans.XPathException r5 = new net.sf.saxon.trans.XPathException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Encoding "
            r0.append(r1)
            java.lang.String r4 = r4.f101508g
            r0.append(r4)
            java.lang.String r4 = " is not supported"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            java.lang.String r0 = "SESU0007"
            r5.<init>(r4, r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.serialize.ExpandedStreamResult.m63820b(java.io.OutputStream):java.io.Writer");
    }

    public CharacterSet getCharacterSet() {
        return this.f101507f;
    }

    public OutputStream getOutputStream() {
        return this.f101506e;
    }

    public Writer getWriter() {
        return this.f101505d;
    }

    public boolean isMustCloseAfterUse() {
        return this.f101509h;
    }

    public OutputStream obtainOutputStream() throws XPathException {
        OutputStream outputStream = this.f101506e;
        if (outputStream != null) {
            return outputStream;
        }
        String str = this.f101504c;
        if (str == null) {
            throw new XPathException("Result has no system ID, writer, or output stream defined");
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(makeWritableOutputFile(str));
            this.f101506e = fileOutputStream;
            this.f101509h = true;
            return fileOutputStream;
        } catch (FileNotFoundException | IllegalArgumentException | URISyntaxException e) {
            throw new XPathException(e);
        }
    }

    public UnicodeWriter obtainUnicodeWriter() throws XPathException {
        return this.f101505d != null ? new UnicodeWriterToWriter(this.f101505d) : m63819a(obtainOutputStream());
    }

    public void setWriter(Writer writer) throws XPathException {
        this.f101505d = writer;
        if (!(writer instanceof OutputStreamWriter) || this.f101503b == null) {
            return;
        }
        this.f101503b.setProperty("encoding", ((OutputStreamWriter) writer).getEncoding());
        this.f101507f = this.f101502a.getCharacterSetFactory().getCharacterSet(this.f101503b);
    }

    public boolean usesWriter() {
        return true;
    }
}
