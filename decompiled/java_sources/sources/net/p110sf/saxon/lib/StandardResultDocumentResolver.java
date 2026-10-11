package net.p110sf.saxon.lib;

import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.gon;
import java.io.File;
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
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class StandardResultDocumentResolver implements ResultDocumentResolver {

    /* renamed from: a */
    public static final StandardResultDocumentResolver f100580a = new StandardResultDocumentResolver();

    public static StandardResultDocumentResolver getInstance() {
        return f100580a;
    }

    public static synchronized StreamResult makeOutputFile(URI uri) throws XPathException {
        StreamResult streamResult;
        synchronized (StandardResultDocumentResolver.class) {
            try {
                File file = new File(uri);
                if (file.isDirectory()) {
                    throw new XPathException("Cannot write to a directory: " + uri, SaxonErrorCode.SXRD0004);
                }
                if (file.exists() && !file.canWrite()) {
                    throw new XPathException("Cannot write to URI " + uri, SaxonErrorCode.SXRD0004);
                }
                streamResult = new StreamResult(file);
            } catch (IllegalArgumentException e) {
                throw new XPathException("Cannot write to URI " + uri + " (" + e.getMessage() + MotionUtils.f31762d);
            }
        }
        return streamResult;
    }

    public void close(Result result) throws XPathException {
        if (result instanceof StreamResult) {
            StreamResult streamResult = (StreamResult) result;
            OutputStream outputStream = streamResult.getOutputStream();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    throw new XPathException("Failed while closing output file", e);
                }
            }
            Writer writer = streamResult.getWriter();
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e2) {
                    throw new XPathException("Failed while closing output file", e2);
                }
            }
        }
    }

    public StreamResult createResult(URI uri) throws XPathException, IOException {
        if ("file".equals(uri.getScheme())) {
            return makeOutputFile(uri);
        }
        URLConnection openConnection = uri.toURL().openConnection();
        openConnection.setDoInput(false);
        openConnection.setDoOutput(true);
        openConnection.connect();
        StreamResult streamResult = new StreamResult(openConnection.getOutputStream());
        streamResult.setSystemId(uri.toASCIIString());
        return streamResult;
    }

    @Override // net.p110sf.saxon.lib.ResultDocumentResolver
    public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
        return xPathContext.getConfiguration().getSerializerFactory().getReceiver(resolve(str, str2), serializationProperties, xPathContext.getController().makePipelineConfiguration());
    }

    public StreamResult resolve(String str, String str2) throws XPathException {
        URI uri;
        String str3;
        String str4 = gon.f71271X;
        try {
            try {
                if (!str.isEmpty()) {
                    try {
                        uri = new URI(str);
                        str3 = "relative";
                    } catch (IllegalArgumentException e) {
                        e = e;
                        str4 = "relative";
                        throw new XPathException("Invalid " + str4 + " URI syntax", e);
                    } catch (URISyntaxException e2) {
                        e = e2;
                        str4 = "relative";
                        throw new XPathException("Invalid syntax for " + str4 + " URI", e);
                    }
                } else if (str2 != null) {
                    uri = new URI(str2);
                    str3 = gon.f71271X;
                } else {
                    throw new XPathException("The system identifier of the principal output file is unknown");
                }
                try {
                    if (!uri.isAbsolute()) {
                        if (str2 != null) {
                            uri = new URI(str2).resolve(str);
                        } else {
                            throw new XPathException("The system identifier of the principal output file is unknown");
                        }
                    }
                    return createResult(uri);
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    str4 = str3;
                    throw new XPathException("Invalid " + str4 + " URI syntax", e);
                } catch (URISyntaxException e4) {
                    e = e4;
                    str4 = str3;
                    throw new XPathException("Invalid syntax for " + str4 + " URI", e);
                }
            } catch (IllegalArgumentException e5) {
                e = e5;
            } catch (URISyntaxException e6) {
                e = e6;
            }
        } catch (MalformedURLException e7) {
            throw new XPathException("Resolved URL is malformed", e7);
        } catch (UnknownServiceException e8) {
            throw new XPathException("Specified protocol does not allow output", e8);
        } catch (IOException e9) {
            throw new XPathException("Cannot open connection to specified URL", e9);
        } catch (Exception e10) {
            throw new XPathException("Standard result document resolver failed", e10);
        }
    }
}
