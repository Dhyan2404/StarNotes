package com.sun.org.apache.xalan.internal.lib;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.xalan.internal.extensions.XSLProcessorContext;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionCall;
import com.sun.org.apache.xalan.internal.templates.OutputProperties;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.util.Hashtable;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class Redirect {
    public static final boolean DEFAULT_APPEND_OPEN = false;
    public static final boolean DEFAULT_APPEND_WRITE = false;
    protected Hashtable m_formatterListeners = new Hashtable();
    protected Hashtable m_outputStreams = new Hashtable();

    private String getFilename(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall) throws MalformedURLException, FileNotFoundException, IOException, TransformerException {
        String attribute;
        String attribute2 = elemExtensionCall.getAttribute("select", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
        if (attribute2 != null) {
            XPathContext xPathContext = xSLProcessorContext.getTransformer().getXPathContext();
            attribute = new XPath(attribute2, elemExtensionCall, xPathContext.getNamespaceContext(), 0).execute(xPathContext, xSLProcessorContext.getContextNode(), elemExtensionCall).str();
            if (attribute == null || attribute.length() == 0) {
                attribute = elemExtensionCall.getAttribute("file", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
            }
        } else {
            attribute = elemExtensionCall.getAttribute("file", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
        }
        if (attribute == null) {
            xSLProcessorContext.getTransformer().getMsgMgr().error(elemExtensionCall, elemExtensionCall, xSLProcessorContext.getContextNode(), "ER_REDIRECT_COULDNT_GET_FILENAME");
        }
        return attribute;
    }

    private ContentHandler makeFormatterListener(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall, String str, boolean z, boolean z2, boolean z3) throws MalformedURLException, FileNotFoundException, IOException, TransformerException {
        String parent;
        String systemId;
        File file = new File(str);
        TransformerImpl transformer = xSLProcessorContext.getTransformer();
        if (!file.isAbsolute()) {
            Result outputTarget = transformer.getOutputTarget();
            String urlToFileName = (outputTarget == null || (systemId = outputTarget.getSystemId()) == null) ? urlToFileName(transformer.getBaseURLOfSource()) : urlToFileName(systemId);
            if (urlToFileName != null) {
                file = new File(new File(urlToFileName).getParent(), str);
            }
        }
        if (z2 && (parent = file.getParent()) != null && parent.length() > 0) {
            new File(parent).mkdirs();
        }
        OutputProperties outputFormat = transformer.getOutputFormat();
        FileOutputStream fileOutputStream = new FileOutputStream(file.getPath(), z3);
        try {
            SerializationHandler createSerializationHandler = createSerializationHandler(transformer, fileOutputStream, file, outputFormat);
            try {
                createSerializationHandler.startDocument();
                if (z) {
                    this.m_outputStreams.put(str, fileOutputStream);
                    this.m_formatterListeners.put(str, createSerializationHandler);
                }
                return createSerializationHandler;
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } catch (TransformerException e2) {
            throw new TransformerException(e2);
        }
    }

    private String urlToFileName(String str) {
        if (str == null) {
            return str;
        }
        if (str.startsWith("file:////")) {
            return str.substring(7);
        }
        if (str.startsWith("file:///")) {
            return str.substring(6);
        }
        if (!str.startsWith("file://") && !str.startsWith("file:/")) {
            return str.startsWith("file:") ? str.substring(4) : str;
        }
        return str.substring(5);
    }

    public void close(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall) throws MalformedURLException, FileNotFoundException, IOException, TransformerException {
        String filename = getFilename(xSLProcessorContext, elemExtensionCall);
        Object obj = this.m_formatterListeners.get(filename);
        if (obj != null) {
            try {
                ((ContentHandler) obj).endDocument();
                OutputStream outputStream = (OutputStream) this.m_outputStreams.get(filename);
                if (outputStream != null) {
                    outputStream.close();
                    this.m_outputStreams.remove(filename);
                }
                this.m_formatterListeners.remove(filename);
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        }
    }

    public SerializationHandler createSerializationHandler(TransformerImpl transformerImpl, FileOutputStream fileOutputStream, File file, OutputProperties outputProperties) throws IOException, TransformerException {
        return transformerImpl.createSerializationHandler(new StreamResult(fileOutputStream), outputProperties);
    }

    public void endRedirection(TransformerImpl transformerImpl) {
    }

    public void open(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall) throws MalformedURLException, FileNotFoundException, IOException, TransformerException {
        String filename = getFilename(xSLProcessorContext, elemExtensionCall);
        if (this.m_formatterListeners.get(filename) == null) {
            String attribute = elemExtensionCall.getAttribute("mkdirs", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
            boolean z = attribute == null || attribute.equals("true") || attribute.equals("yes");
            String attribute2 = elemExtensionCall.getAttribute(RequestParameters.SUBRESOURCE_APPEND, xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
            makeFormatterListener(xSLProcessorContext, elemExtensionCall, filename, true, z, attribute2 != null && (attribute2.equals("true") || attribute2.equals("yes")));
        }
    }

    public void startRedirection(TransformerImpl transformerImpl, ContentHandler contentHandler) {
    }

    public void write(XSLProcessorContext xSLProcessorContext, ElemExtensionCall elemExtensionCall) throws MalformedURLException, FileNotFoundException, IOException, TransformerException {
        ContentHandler contentHandler;
        OutputStream outputStream;
        String filename = getFilename(xSLProcessorContext, elemExtensionCall);
        Object obj = this.m_formatterListeners.get(filename);
        boolean z = true;
        if (obj == null) {
            String attribute = elemExtensionCall.getAttribute("mkdirs", xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
            boolean z2 = attribute == null || attribute.equals("true") || attribute.equals("yes");
            String attribute2 = elemExtensionCall.getAttribute(RequestParameters.SUBRESOURCE_APPEND, xSLProcessorContext.getContextNode(), xSLProcessorContext.getTransformer());
            contentHandler = makeFormatterListener(xSLProcessorContext, elemExtensionCall, filename, true, z2, attribute2 != null && (attribute2.equals("true") || attribute2.equals("yes")));
            z = false;
        } else {
            contentHandler = (ContentHandler) obj;
        }
        TransformerImpl transformer = xSLProcessorContext.getTransformer();
        startRedirection(transformer, contentHandler);
        transformer.executeChildTemplates(elemExtensionCall, xSLProcessorContext.getContextNode(), xSLProcessorContext.getMode(), contentHandler);
        endRedirection(transformer);
        if (z || (outputStream = (OutputStream) this.m_outputStreams.get(filename)) == null) {
            return;
        }
        try {
            contentHandler.endDocument();
            outputStream.close();
            this.m_outputStreams.remove(filename);
            this.m_formatterListeners.remove(filename);
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }
}
