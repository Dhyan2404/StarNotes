package com.sun.org.apache.xalan.internal.client;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import java.applet.Applet;
import java.awt.Graphics;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/* loaded from: classes10.dex */
public class XSLTProcessorApplet extends Applet {
    private static final long serialVersionUID = 4618876841979251422L;
    private String m_documentURL;
    transient Hashtable m_parameters;
    private String m_styleURL;
    transient TransformerFactory m_tfactory = null;
    private final String PARAM_styleURL = "styleURL";
    private final String PARAM_documentURL = "documentURL";
    private String m_styleURLOfCached = null;
    private String m_documentURLOfCached = null;
    private URL m_codeBase = null;
    private String m_treeURL = null;
    private URL m_documentBase = null;
    private transient Thread m_callThread = null;
    private transient TrustedAgent m_trustedAgent = null;
    private transient Thread m_trustedWorker = null;
    private transient String m_htmlText = null;
    private transient String m_sourceText = null;
    private transient String m_nameOfIDAttrOfElemToModify = null;
    private transient String m_elemIdToModify = null;
    private transient String m_attrNameToSet = null;
    private transient String m_attrValueToSet = null;

    /* loaded from: classes10.dex */
    public class TrustedAgent implements Runnable {
        public boolean m_getData = false;
        public boolean m_getSource = false;

        public TrustedAgent() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                Thread unused = XSLTProcessorApplet.this.m_trustedWorker;
                Thread.yield();
                if (this.m_getData) {
                    try {
                        try {
                            this.m_getData = false;
                            XSLTProcessorApplet.this.m_htmlText = null;
                            XSLTProcessorApplet.this.m_sourceText = null;
                            if (this.m_getSource) {
                                this.m_getSource = false;
                                XSLTProcessorApplet xSLTProcessorApplet = XSLTProcessorApplet.this;
                                xSLTProcessorApplet.m_sourceText = xSLTProcessorApplet.getSource();
                            } else {
                                XSLTProcessorApplet xSLTProcessorApplet2 = XSLTProcessorApplet.this;
                                xSLTProcessorApplet2.m_htmlText = xSLTProcessorApplet2.processTransformation();
                            }
                            synchronized (XSLTProcessorApplet.this.m_callThread) {
                                XSLTProcessorApplet.this.m_callThread.notify();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            synchronized (XSLTProcessorApplet.this.m_callThread) {
                                XSLTProcessorApplet.this.m_callThread.notify();
                            }
                        }
                    } catch (Throwable th) {
                        synchronized (XSLTProcessorApplet.this.m_callThread) {
                            XSLTProcessorApplet.this.m_callThread.notify();
                            throw th;
                        }
                    }
                } else {
                    try {
                        Thread unused2 = XSLTProcessorApplet.this.m_trustedWorker;
                        Thread.sleep(50L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSource() throws TransformerException {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        String str = "";
        try {
            URL url = new URL(this.m_documentBase, this.m_treeURL);
            synchronized (this.m_tfactory) {
                this.m_tfactory.newTransformer().transform(new StreamSource(url.toString()), new StreamResult(printWriter));
                str = stringWriter.toString();
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String processTransformation() throws TransformerException {
        String stringWriter;
        showStatus("Waiting for Transformer and Parser to finish loading and JITing...");
        synchronized (this.m_tfactory) {
            StringWriter stringWriter2 = new StringWriter();
            StreamResult streamResult = new StreamResult(new PrintWriter((Writer) stringWriter2, false));
            showStatus("Begin Transformation...");
            try {
                StreamSource streamSource = new StreamSource(new URL(this.m_codeBase, this.m_documentURL).toString());
                Transformer newTransformer = this.m_tfactory.newTransformer(new StreamSource(new URL(this.m_codeBase, this.m_styleURL).toString()));
                Enumeration keys = this.m_parameters.keys();
                while (keys.hasMoreElements()) {
                    Object nextElement = keys.nextElement();
                    newTransformer.setParameter((String) nextElement, this.m_parameters.get(nextElement));
                }
                newTransformer.transform(streamSource, streamResult);
                showStatus("Transformation Done!");
                stringWriter = stringWriter2.toString();
            } catch (MalformedURLException e) {
                e.printStackTrace();
                throw new RuntimeException(e.getMessage());
            } catch (TransformerConfigurationException e2) {
                e2.printStackTrace();
                throw new RuntimeException(e2.getMessage());
            }
        }
        return stringWriter;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.m_tfactory = TransformerFactory.newInstance();
    }

    public void destroy() {
        Thread thread = this.m_trustedWorker;
        if (thread != null) {
            thread.stop();
            this.m_trustedWorker = null;
        }
        this.m_styleURLOfCached = null;
        this.m_documentURLOfCached = null;
    }

    public String escapeString(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if ('<' == charAt) {
                stringBuffer.append("&lt;");
            } else if ('>' == charAt) {
                stringBuffer.append("&gt;");
            } else if ('&' == charAt) {
                stringBuffer.append("&amp;");
            } else if (55296 > charAt || charAt >= 56320) {
                stringBuffer.append(charAt);
            } else {
                i++;
                if (i >= length) {
                    throw new RuntimeException(XSLMessages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(charAt)}));
                }
                char charAt2 = str.charAt(i);
                if (56320 > charAt2 || charAt2 >= 57344) {
                    throw new RuntimeException(XSLMessages.createMessage("ER_INVALID_UTF16_SURROGATE", new Object[]{Integer.toHexString(charAt) + " " + Integer.toHexString(charAt2)}));
                }
                stringBuffer.append("&#x");
                stringBuffer.append(Integer.toHexString(((((charAt - 55296) << 10) + charAt2) - 56320) + 65536));
                stringBuffer.append(AndroidTreeView.f47214k);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public void freeCache() {
        this.m_styleURLOfCached = null;
        this.m_documentURLOfCached = null;
    }

    public String getAppletInfo() {
        return "Name: XSLTProcessorApplet\r\nAuthor: Scott Boag";
    }

    public String getHtmlText() {
        this.m_trustedAgent.m_getData = true;
        Thread currentThread = Thread.currentThread();
        this.m_callThread = currentThread;
        try {
            synchronized (currentThread) {
                this.m_callThread.wait();
            }
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
        return this.m_htmlText;
    }

    public String[][] getParameterInfo() {
        return new String[][]{new String[]{"styleURL", "String", "URL to an XSL stylesheet"}, new String[]{"documentURL", "String", "URL to an XML document"}};
    }

    public String getResultTreeAsText() throws Exception {
        return escapeString(getHtmlText());
    }

    public String getSourceTreeAsText() throws Exception {
        return getTreeAsText(this.m_documentURL);
    }

    public String getStyleTreeAsText() throws Exception {
        return getTreeAsText(this.m_styleURL);
    }

    public String getTreeAsText(String str) throws IOException {
        this.m_treeURL = str;
        TrustedAgent trustedAgent = this.m_trustedAgent;
        trustedAgent.m_getData = true;
        trustedAgent.m_getSource = true;
        Thread currentThread = Thread.currentThread();
        this.m_callThread = currentThread;
        try {
            synchronized (currentThread) {
                this.m_callThread.wait();
            }
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
        return this.m_sourceText;
    }

    public void init() {
        String parameter = getParameter("styleURL");
        this.m_parameters = new Hashtable();
        if (parameter != null) {
            setStyleURL(parameter);
        }
        String parameter2 = getParameter("documentURL");
        if (parameter2 != null) {
            setDocumentURL(parameter2);
        }
        this.m_codeBase = getCodeBase();
        this.m_documentBase = getDocumentBase();
        resize(320, 240);
    }

    public void paint(Graphics graphics) {
    }

    public void setDocumentURL(String str) {
        this.m_documentURL = str;
    }

    public void setStyleSheetAttribute(String str, String str2, String str3, String str4) {
        this.m_nameOfIDAttrOfElemToModify = str;
        this.m_elemIdToModify = str2;
        this.m_attrNameToSet = str3;
        this.m_attrValueToSet = str4;
    }

    public void setStyleURL(String str) {
        this.m_styleURL = str;
    }

    public void setStylesheetParam(String str, String str2) {
        this.m_parameters.put(str, str2);
    }

    public void start() {
        this.m_trustedAgent = new TrustedAgent();
        Thread thread = new Thread(Thread.currentThread().getThreadGroup(), this.m_trustedAgent);
        this.m_trustedWorker = thread;
        thread.start();
        try {
            this.m_tfactory = TransformerFactory.newInstance();
            showStatus("Causing Transformer and Parser to Load and JIT...");
            StringReader stringReader = new StringReader("<?xml version='1.0'?><foo/>");
            StringReader stringReader2 = new StringReader("<?xml version='1.0'?><xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'><xsl:template match='foo'><out/></xsl:template></xsl:stylesheet>");
            PrintWriter printWriter = new PrintWriter(new StringWriter());
            synchronized (this.m_tfactory) {
                this.m_tfactory.newTemplates(new StreamSource(stringReader2)).newTransformer().transform(new StreamSource(stringReader), new StreamResult(printWriter));
            }
            System.out.println("Primed the pump!");
            showStatus("Ready to go!");
        } catch (Exception e) {
            showStatus("Could not prime the pump!");
            System.out.println("Could not prime the pump!");
            e.printStackTrace();
        }
    }

    public void stop() {
        Thread thread = this.m_trustedWorker;
        if (thread != null) {
            thread.stop();
            this.m_trustedWorker = null;
        }
        this.m_styleURLOfCached = null;
        this.m_documentURLOfCached = null;
    }

    public String transformToHtml(String str, String str2) {
        if (str != null) {
            this.m_documentURL = str;
        }
        if (str2 != null) {
            this.m_styleURL = str2;
        }
        return getHtmlText();
    }

    public String transformToHtml(String str) {
        if (str != null) {
            this.m_documentURL = str;
        }
        this.m_styleURL = null;
        return getHtmlText();
    }
}
