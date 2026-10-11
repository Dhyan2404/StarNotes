package net.p110sf.saxon.lib;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLConnection;
import java.net.UnknownServiceException;
import javax.xml.transform.Result;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardOutputResolver implements OutputURIResolver {

    /* renamed from: a */
    public static final StandardOutputResolver f100579a = new StandardOutputResolver();

    public static StandardOutputResolver getInstance() {
        return f100579a;
    }

    @Override // net.p110sf.saxon.lib.OutputURIResolver
    public void close(Result result) throws XPathException {
        if (result instanceof StreamResult) {
            StreamResult streamResult = (StreamResult) result;
            OutputStream outputStream = streamResult.getOutputStream();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    XPathException xPathException = new XPathException("Failed while closing output file", e);
                    xPathException.setErrorCode(SaxonErrorCode.SXRD0003);
                    throw xPathException;
                }
            }
            Writer writer = streamResult.getWriter();
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e2) {
                    XPathException xPathException2 = new XPathException("Failed while closing output file", e2);
                    xPathException2.setErrorCode(SaxonErrorCode.SXRD0003);
                    throw xPathException2;
                }
            }
        }
    }

    public Result createResult(URI uri) throws XPathException, IOException {
        if ("file".equals(uri.getScheme())) {
            return StandardResultDocumentResolver.makeOutputFile(uri);
        }
        URLConnection openConnection = uri.toURL().openConnection();
        openConnection.setDoInput(false);
        openConnection.setDoOutput(true);
        openConnection.connect();
        StreamResult streamResult = new StreamResult(openConnection.getOutputStream());
        streamResult.setSystemId(uri.toASCIIString());
        return streamResult;
    }

    @Override // net.p110sf.saxon.lib.OutputURIResolver
    public StandardOutputResolver newInstance() {
        return this;
    }

    @Override // net.p110sf.saxon.lib.OutputURIResolver
    public Result resolve(String str, String str2) throws XPathException {
        URI uri;
        String str3;
        String str4 = gon.f71271X;
        try {
            try {
                if (!str.isEmpty()) {
                    try {
                        uri = new URI(str);
                        str3 = "relative";
                    } catch (IllegalArgumentException unused) {
                        str4 = "relative";
                        XPathException xPathException = new XPathException("Invalid " + str4 + " URI syntax");
                        xPathException.setErrorCode(SaxonErrorCode.SXRD0001);
                        throw xPathException;
                    } catch (URISyntaxException unused2) {
                        str4 = "relative";
                        XPathException xPathException2 = new XPathException("Invalid syntax for " + str4 + " URI");
                        xPathException2.setErrorCode(SaxonErrorCode.SXRD0001);
                        throw xPathException2;
                    }
                } else {
                    if (str2 == null) {
                        throw new XPathException("The system identifier of the principal output file is unknown", SaxonErrorCode.SXRD0002);
                    }
                    uri = new URI(str2);
                    str3 = gon.f71271X;
                }
            } catch (IllegalArgumentException unused3) {
            } catch (URISyntaxException unused4) {
            }
            try {
                if (!uri.isAbsolute()) {
                    if (str2 == null) {
                        throw new XPathException("The system identifier of the principal output file is unknown", SaxonErrorCode.SXRD0002);
                    }
                    uri = new URI(str2).resolve(str);
                }
                return createResult(uri);
            } catch (IllegalArgumentException unused5) {
                str4 = str3;
                XPathException xPathException3 = new XPathException("Invalid " + str4 + " URI syntax");
                xPathException3.setErrorCode(SaxonErrorCode.SXRD0001);
                throw xPathException3;
            } catch (URISyntaxException unused6) {
                str4 = str3;
                XPathException xPathException22 = new XPathException("Invalid syntax for " + str4 + " URI");
                xPathException22.setErrorCode(SaxonErrorCode.SXRD0001);
                throw xPathException22;
            }
        } catch (MalformedURLException e) {
            XPathException xPathException4 = new XPathException("Resolved URL is malformed", e);
            xPathException4.setErrorCode(SaxonErrorCode.SXRD0001);
            throw xPathException4;
        } catch (UnknownServiceException e2) {
            XPathException xPathException5 = new XPathException("Specified protocol does not allow output", e2);
            xPathException5.setErrorCode(SaxonErrorCode.SXRD0001);
            throw xPathException5;
        } catch (IOException e3) {
            XPathException xPathException6 = new XPathException("Cannot open connection to specified URL", e3);
            xPathException6.setErrorCode(SaxonErrorCode.SXRD0001);
            throw xPathException6;
        }
    }
}
