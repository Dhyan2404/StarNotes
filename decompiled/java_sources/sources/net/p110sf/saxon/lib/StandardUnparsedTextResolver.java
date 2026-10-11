package net.p110sf.saxon.lib;

import com.google.android.material.motion.MotionUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.query.InputStreamMarker;
import net.p110sf.saxon.resource.EncodingDetector;
import net.p110sf.saxon.resource.ResourceLoader;
import net.p110sf.saxon.resource.TypedStreamSource;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardUnparsedTextResolver implements UnparsedTextURIResolver {

    /* renamed from: a */
    public boolean f100587a = false;

    /* renamed from: a */
    public static Reader m63286a(InputStream inputStream, String str) throws XPathException {
        try {
            return new BufferedReader(new InputStreamReader(inputStream, Charset.forName(str).newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT)));
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            throw new XPathException("Invalid encoding name: " + str, "FOUT1190");
        }
    }

    /* renamed from: b */
    public static InputStream m63287b(Configuration configuration, String str) throws XPathException {
        return configuration.getClass().getClassLoader().getResourceAsStream(str.substring(10));
    }

    public static Reader getReaderFromStreamSource(StreamSource streamSource, String str, Configuration configuration, boolean z) throws XPathException {
        Logger logger = configuration.getLogger();
        InputStream inputStream = streamSource.getInputStream();
        if (inputStream == null) {
            if (streamSource.getReader() != null) {
                return streamSource.getReader();
            }
            String systemId = streamSource.getSystemId();
            if (systemId == null) {
                throw new XPathException("unparsed-text(): resolver returned empty StreamSource");
            }
            try {
                inputStream = systemId.startsWith("classpath:") ? m63287b(configuration, systemId) : ResourceLoader.urlStream(new URL(systemId));
            } catch (IOException e) {
                throw new XPathException("unparsed-text(): cannot retrieve " + systemId, e);
            }
        }
        String contentType = streamSource instanceof TypedStreamSource ? ((TypedStreamSource) streamSource).getContentType() : null;
        if (z) {
            logger.info("unparsed-text(): content type = " + contentType);
        }
        boolean z2 = false;
        if (contentType != null) {
            int indexOf = contentType.indexOf(59);
            String trim = (indexOf >= 0 ? contentType.substring(0, indexOf) : contentType).trim();
            if (z) {
                logger.info("unparsed-text(): media type = " + trim);
            }
            boolean z3 = (trim.startsWith("application/") || trim.startsWith("text/")) && (trim.endsWith("/xml") || trim.endsWith("+xml"));
            int indexOf2 = contentType.toLowerCase().indexOf("charset");
            if (indexOf2 >= 0) {
                int indexOf3 = contentType.indexOf(61, indexOf2 + 7);
                String substring = indexOf3 >= 0 ? contentType.substring(indexOf3 + 1) : "";
                int indexOf4 = substring.indexOf(59);
                if (indexOf4 > 0) {
                    substring = substring.substring(0, indexOf4);
                }
                int indexOf5 = substring.indexOf(40);
                if (indexOf5 > 0) {
                    substring = substring.substring(0, indexOf5);
                }
                int indexOf6 = substring.indexOf(34);
                if (indexOf6 > 0) {
                    substring = substring.substring(indexOf6 + 1, substring.indexOf(34, indexOf6 + 2));
                }
                if (z) {
                    logger.info("unparsed-text(): charset = " + substring.trim());
                }
                str = substring.trim();
            }
            z2 = z3;
        }
        if (str == null || z2) {
            try {
                inputStream = InputStreamMarker.ensureMarkSupported(inputStream);
                str = EncodingDetector.inferStreamEncoding(inputStream, z ? logger : null);
                if (z) {
                    logger.info("unparsed-text(): inferred encoding = " + str);
                }
            } catch (IOException unused) {
                str = "UTF-8";
            }
        }
        return m63286a(inputStream, str);
    }

    @Override // net.p110sf.saxon.lib.UnparsedTextURIResolver
    public Reader resolve(URI uri, String str, Configuration configuration) throws XPathException {
        Logger logger = configuration.getLogger();
        if (this.f100587a) {
            logger.info("unparsed-text(): processing " + uri);
            logger.info("unparsed-text(): requested encoding = " + str);
        }
        if (!uri.isAbsolute()) {
            throw new XPathException("Resolved URI supplied to unparsed-text() is not absolute: " + uri.toString(), "FOUT1170");
        }
        ResourceRequest resourceRequest = new ResourceRequest();
        resourceRequest.uri = uri.toString();
        resourceRequest.nature = ResourceRequest.TEXT_NATURE;
        resourceRequest.purpose = "fn:unparsed-text";
        Source resolve = resourceRequest.resolve(configuration.getResourceResolver(), new DirectResourceResolver(configuration));
        if (resolve == null) {
            throw new XPathException("unparsed-text(): failed to resolve URI " + uri);
        }
        if (resolve instanceof StreamSource) {
            return getReaderFromStreamSource((StreamSource) resolve, str, configuration, this.f100587a);
        }
        throw new XPathException("Resolver for unparsed-text() returned unrecognized Source (" + resolve.getClass().getName() + MotionUtils.f31762d);
    }

    public void setDebugging(boolean z) {
        this.f100587a = z;
    }
}
