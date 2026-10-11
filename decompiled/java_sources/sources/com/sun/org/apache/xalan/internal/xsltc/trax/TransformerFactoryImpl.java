package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.google.common.reflect.ClassPath;
import com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader;
import com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager;
import com.sun.org.apache.xml.internal.utils.StopParseException;
import com.sun.org.apache.xml.internal.utils.StylesheetPIHandler;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.sax.SAXTransformerFactory;
import javax.xml.transform.sax.TemplatesHandler;
import javax.xml.transform.sax.TransformerHandler;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.lang3.SystemUtils;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class TransformerFactoryImpl extends SAXTransformerFactory implements SourceLoader, ErrorListener {
    public static final String AUTO_TRANSLET = "auto-translet";
    public static final String DEBUG = "debug";
    protected static final String DEFAULT_TRANSLET_NAME = "GregorSamsa";
    public static final String DESTINATION_DIRECTORY = "destination-directory";
    public static final String ENABLE_INLINING = "enable-inlining";
    public static final String GENERATE_TRANSLET = "generate-translet";
    public static final String INDENT_NUMBER = "indent-number";
    public static final String JAR_NAME = "jar-name";
    public static final String PACKAGE_NAME = "package-name";
    public static final String TRANSLET_NAME = "translet-name";
    public static final String USE_CLASSPATH = "use-classpath";
    private ErrorListener _errorListener = this;
    private URIResolver _uriResolver = null;
    private String _transletName = DEFAULT_TRANSLET_NAME;
    private String _destinationDirectory = null;
    private String _packageName = null;
    private String _jarFileName = null;
    private Hashtable _piParams = null;
    private boolean _debug = false;
    private boolean _enableInlining = false;
    private boolean _generateTranslet = false;
    private boolean _autoTranslet = false;
    private boolean _useClasspath = false;
    private int _indentNumber = -1;
    private boolean _isSecureProcessing = false;
    private Class m_DTMManagerClass = XSLTCDTMManager.getDTMManagerClass();

    /* loaded from: classes10.dex */
    public static class PIParamWrapper {
        public String _charset;
        public String _media;
        public String _title;

        public PIParamWrapper(String str, String str2, String str3) {
            this._media = str;
            this._title = str2;
            this._charset = str3;
        }
    }

    private byte[][] getBytecodesFromClasses(Source source, String str) {
        String str2;
        if (str == null) {
            return null;
        }
        String stylesheetFileName = getStylesheetFileName(source);
        File file = stylesheetFileName != null ? new File(stylesheetFileName) : null;
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf > 0 ? str.substring(lastIndexOf + 1) : str;
        String replace = str.replace('.', '/');
        if (this._destinationDirectory != null) {
            str2 = this._destinationDirectory + "/" + replace + ClassPath.f35080d;
        } else if (file == null || file.getParent() == null) {
            str2 = replace + ClassPath.f35080d;
        } else {
            str2 = file.getParent() + "/" + replace + ClassPath.f35080d;
        }
        File file2 = new File(str2);
        if (!file2.exists()) {
            return null;
        }
        if (file != null && file.exists()) {
            if (file2.lastModified() < file.lastModified()) {
                return null;
            }
        }
        Vector vector = new Vector();
        int length = (int) file2.length();
        if (length > 0) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file2);
                byte[] bArr = new byte[length];
                readFromInputStream(bArr, fileInputStream, length);
                fileInputStream.close();
                vector.addElement(bArr);
                String parent = file2.getParent();
                if (parent == null) {
                    parent = System.getProperty(SystemUtils.f107422c);
                }
                File file3 = new File(parent);
                final String str3 = substring + "$";
                File[] listFiles = file3.listFiles(new FilenameFilter() { // from class: com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file4, String str4) {
                        return str4.endsWith(ClassPath.f35080d) && str4.startsWith(str3);
                    }
                });
                for (File file4 : listFiles) {
                    int length2 = (int) file4.length();
                    if (length2 > 0) {
                        try {
                            FileInputStream fileInputStream2 = new FileInputStream(file4);
                            byte[] bArr2 = new byte[length2];
                            readFromInputStream(bArr2, fileInputStream2, length2);
                            fileInputStream2.close();
                            vector.addElement(bArr2);
                        } catch (FileNotFoundException | IOException unused) {
                        }
                    }
                }
                int size = vector.size();
                if (size > 0) {
                    byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, size, 1);
                    for (int i = 0; i < size; i++) {
                        bArr3[i] = (byte[]) vector.elementAt(i);
                    }
                    return bArr3;
                }
            } catch (FileNotFoundException | IOException unused2) {
            }
        }
        return null;
    }

    private byte[][] getBytecodesFromJar(Source source, String str) {
        String str2;
        String stylesheetFileName = getStylesheetFileName(source);
        File file = stylesheetFileName != null ? new File(stylesheetFileName) : null;
        if (this._destinationDirectory != null) {
            str2 = this._destinationDirectory + "/" + this._jarFileName;
        } else if (file == null || file.getParent() == null) {
            str2 = this._jarFileName;
        } else {
            str2 = file.getParent() + "/" + this._jarFileName;
        }
        File file2 = new File(str2);
        if (!file2.exists()) {
            return null;
        }
        if (file != null && file.exists()) {
            if (file2.lastModified() < file.lastModified()) {
                return null;
            }
        }
        try {
            ZipFile zipFile = new ZipFile(file2);
            String replace = str.replace('.', '/');
            String str3 = replace + "$";
            String str4 = replace + ClassPath.f35080d;
            Vector vector = new Vector();
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                String name = nextElement.getName();
                if (nextElement.getSize() > 0 && (name.equals(str4) || (name.endsWith(ClassPath.f35080d) && name.startsWith(str3)))) {
                    try {
                        InputStream inputStream = zipFile.getInputStream(nextElement);
                        int size = (int) nextElement.getSize();
                        byte[] bArr = new byte[size];
                        readFromInputStream(bArr, inputStream, size);
                        inputStream.close();
                        vector.addElement(bArr);
                    } catch (IOException unused) {
                        return null;
                    }
                }
            }
            int size2 = vector.size();
            if (size2 > 0) {
                byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, size2, 1);
                for (int i = 0; i < size2; i++) {
                    bArr2[i] = (byte[]) vector.elementAt(i);
                }
                return bArr2;
            }
        } catch (IOException unused2) {
        }
        return null;
    }

    private String getStylesheetFileName(Source source) {
        String systemId = source.getSystemId();
        if (systemId != null) {
            if (new File(systemId).exists()) {
                return systemId;
            }
            try {
                URL url = new URL(systemId);
                if ("file".equals(url.getProtocol())) {
                    return url.getFile();
                }
            } catch (MalformedURLException unused) {
            }
        }
        return null;
    }

    private String getTransletBaseName(Source source) {
        String baseName;
        if (!this._transletName.equals(DEFAULT_TRANSLET_NAME)) {
            return this._transletName;
        }
        String systemId = source.getSystemId();
        String javaName = (systemId == null || (baseName = Util.baseName(systemId)) == null) ? null : Util.toJavaName(Util.noExtName(baseName));
        return javaName != null ? javaName : DEFAULT_TRANSLET_NAME;
    }

    private void passErrorsToListener(Vector vector) {
        try {
            if (this._errorListener != null && vector != null) {
                int size = vector.size();
                for (int i = 0; i < size; i++) {
                    this._errorListener.error(new TransformerException(vector.elementAt(i).toString()));
                }
            }
        } catch (TransformerException unused) {
        }
    }

    private void passWarningsToListener(Vector vector) throws TransformerException {
        if (this._errorListener == null || vector == null) {
            return;
        }
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            ErrorMsg errorMsg = (ErrorMsg) vector.elementAt(i);
            if (errorMsg.isWarningError()) {
                this._errorListener.error(new TransformerConfigurationException(errorMsg.toString()));
            } else {
                this._errorListener.warning(new TransformerConfigurationException(errorMsg.toString()));
            }
        }
    }

    private void readFromInputStream(byte[] bArr, InputStream inputStream, int i) throws IOException {
        int i2 = 0;
        while (i > 0) {
            int read = inputStream.read(bArr, i2, i);
            if (read <= 0) {
                return;
            }
            i2 += read;
            i -= read;
        }
    }

    private void resetTransientAttributes() {
        this._transletName = DEFAULT_TRANSLET_NAME;
        this._destinationDirectory = null;
        this._packageName = null;
        this._jarFileName = null;
    }

    @Override // javax.xml.transform.ErrorListener
    public void error(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.ERROR_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
            throw transformerException;
        }
        System.err.println(new ErrorMsg(ErrorMsg.ERROR_MSG, transformerException.getMessageAndLocation()));
        throw transformerException;
    }

    @Override // javax.xml.transform.ErrorListener
    public void fatalError(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.FATAL_ERR_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
            throw transformerException;
        }
        System.err.println(new ErrorMsg(ErrorMsg.FATAL_ERR_MSG, transformerException.getMessageAndLocation()));
        throw transformerException;
    }

    @Override // javax.xml.transform.TransformerFactory
    public Source getAssociatedStylesheet(Source source, String str, String str2, String str3) throws TransformerConfigurationException {
        StylesheetPIHandler stylesheetPIHandler = new StylesheetPIHandler(null, str, str2, str3);
        try {
            try {
                if (source instanceof DOMSource) {
                    DOMSource dOMSource = (DOMSource) source;
                    String systemId = dOMSource.getSystemId();
                    DOM2SAX dom2sax = new DOM2SAX(dOMSource.getNode());
                    stylesheetPIHandler.setBaseId(systemId);
                    dom2sax.setContentHandler(stylesheetPIHandler);
                    dom2sax.parse();
                } else {
                    InputSource sourceToInputSource = SAXSource.sourceToInputSource(source);
                    String systemId2 = sourceToInputSource.getSystemId();
                    SAXParserFactory newInstance = SAXParserFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    if (this._isSecureProcessing) {
                        try {
                            newInstance.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
                        } catch (SAXException unused) {
                        }
                    }
                    XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
                    if (xMLReader == null) {
                        xMLReader = XMLReaderFactory.createXMLReader();
                    }
                    stylesheetPIHandler.setBaseId(systemId2);
                    xMLReader.setContentHandler(stylesheetPIHandler);
                    xMLReader.parse(sourceToInputSource);
                }
                URIResolver uRIResolver = this._uriResolver;
                if (uRIResolver != null) {
                    stylesheetPIHandler.setURIResolver(uRIResolver);
                }
            } catch (StopParseException unused2) {
            } catch (SAXException e) {
                throw new TransformerConfigurationException("getAssociatedStylesheets failed", e);
            }
            return stylesheetPIHandler.getAssociatedStylesheet();
        } catch (IOException e2) {
            throw new TransformerConfigurationException("getAssociatedStylesheets failed", e2);
        } catch (ParserConfigurationException e3) {
            throw new TransformerConfigurationException("getAssociatedStylesheets failed", e3);
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public Object getAttribute(String str) throws IllegalArgumentException {
        if (str.equals(TRANSLET_NAME)) {
            return this._transletName;
        }
        if (str.equals(GENERATE_TRANSLET)) {
            return new Boolean(this._generateTranslet);
        }
        if (str.equals(AUTO_TRANSLET)) {
            return new Boolean(this._autoTranslet);
        }
        throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_INVALID_ATTR_ERR, str).toString());
    }

    public Class getDTMManagerClass() {
        return this.m_DTMManagerClass;
    }

    @Override // javax.xml.transform.TransformerFactory
    public ErrorListener getErrorListener() {
        return this._errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public boolean getFeature(String str) {
        String[] strArr = {DOMSource.FEATURE, DOMResult.FEATURE, SAXSource.FEATURE, SAXResult.FEATURE, StreamSource.FEATURE, StreamResult.FEATURE, SAXTransformerFactory.FEATURE, SAXTransformerFactory.FEATURE_XMLFILTER};
        if (str == null) {
            throw new NullPointerException(new ErrorMsg(ErrorMsg.JAXP_GET_FEATURE_NULL_NAME).toString());
        }
        for (int i = 0; i < 8; i++) {
            if (str.equals(strArr[i])) {
                return true;
            }
        }
        if (str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            return this._isSecureProcessing;
        }
        return false;
    }

    @Override // javax.xml.transform.TransformerFactory
    public URIResolver getURIResolver() {
        return this._uriResolver;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader
    public InputSource loadSource(String str, String str2, XSLTC xsltc) {
        Source resolve;
        try {
            URIResolver uRIResolver = this._uriResolver;
            if (uRIResolver == null || (resolve = uRIResolver.resolve(str, str2)) == null) {
                return null;
            }
            return Util.getInputSource(xsltc, resolve);
        } catch (TransformerException unused) {
            return null;
        }
    }

    @Override // javax.xml.transform.TransformerFactory
    public Templates newTemplates(Source source) throws TransformerConfigurationException {
        String parent;
        int i;
        PIParamWrapper pIParamWrapper;
        if (this._useClasspath) {
            String transletBaseName = getTransletBaseName(source);
            if (this._packageName != null) {
                transletBaseName = this._packageName + "." + transletBaseName;
            }
            try {
                Class findProviderClass = ObjectFactory.findProviderClass(transletBaseName, ObjectFactory.findClassLoader(), true);
                resetTransientAttributes();
                return new TemplatesImpl(new Class[]{findProviderClass}, transletBaseName, (Properties) null, this._indentNumber, this);
            } catch (ClassNotFoundException unused) {
                throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, transletBaseName).toString());
            } catch (Exception e) {
                throw new TransformerConfigurationException(new ErrorMsg(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + e.getMessage()).toString());
            }
        }
        if (this._autoTranslet) {
            String transletBaseName2 = getTransletBaseName(source);
            if (this._packageName != null) {
                transletBaseName2 = this._packageName + "." + transletBaseName2;
            }
            String str = transletBaseName2;
            byte[][] bytecodesFromJar = this._jarFileName != null ? getBytecodesFromJar(source, str) : getBytecodesFromClasses(source, str);
            if (bytecodesFromJar != null) {
                if (this._debug) {
                    if (this._jarFileName != null) {
                        System.err.println(new ErrorMsg(ErrorMsg.TRANSFORM_WITH_JAR_STR, str, this._jarFileName));
                    } else {
                        System.err.println(new ErrorMsg(ErrorMsg.TRANSFORM_WITH_TRANSLET_STR, str));
                    }
                }
                resetTransientAttributes();
                return new TemplatesImpl(bytecodesFromJar, str, (Properties) null, this._indentNumber, this);
            }
        }
        XSLTC xsltc = new XSLTC();
        if (this._debug) {
            xsltc.setDebug(true);
        }
        if (this._enableInlining) {
            xsltc.setTemplateInlining(true);
        }
        if (this._isSecureProcessing) {
            xsltc.setSecureProcessing(true);
        }
        xsltc.init();
        if (this._uriResolver != null) {
            xsltc.setSourceLoader(this);
        }
        Hashtable hashtable = this._piParams;
        if (hashtable != null && hashtable.get(source) != null && (pIParamWrapper = (PIParamWrapper) this._piParams.get(source)) != null) {
            xsltc.setPIParameters(pIParamWrapper._media, pIParamWrapper._title, pIParamWrapper._charset);
        }
        if (this._generateTranslet || this._autoTranslet) {
            xsltc.setClassName(getTransletBaseName(source));
            String str2 = this._destinationDirectory;
            if (str2 != null) {
                xsltc.setDestDirectory(str2);
            } else {
                String stylesheetFileName = getStylesheetFileName(source);
                if (stylesheetFileName != null && (parent = new File(stylesheetFileName).getParent()) != null) {
                    xsltc.setDestDirectory(parent);
                }
            }
            String str3 = this._packageName;
            if (str3 != null) {
                xsltc.setPackageName(str3);
            }
            String str4 = this._jarFileName;
            if (str4 != null) {
                xsltc.setJarFileName(str4);
                i = 5;
            } else {
                i = 4;
            }
        } else {
            i = 2;
        }
        byte[][] compile = xsltc.compile(null, Util.getInputSource(xsltc, source), i);
        String className = xsltc.getClassName();
        if ((this._generateTranslet || this._autoTranslet) && compile != null && this._jarFileName != null) {
            try {
                xsltc.outputToJar();
            } catch (IOException unused2) {
            }
        }
        resetTransientAttributes();
        if (this._errorListener != this) {
            try {
                passWarningsToListener(xsltc.getWarnings());
            } catch (TransformerException e2) {
                throw new TransformerConfigurationException(e2);
            }
        } else {
            xsltc.printWarnings();
        }
        if (compile != null) {
            return new TemplatesImpl(compile, className, xsltc.getOutputProperties(), this._indentNumber, this);
        }
        TransformerConfigurationException transformerConfigurationException = new TransformerConfigurationException(new ErrorMsg(ErrorMsg.JAXP_COMPILE_ERR).toString());
        if (this._errorListener == null) {
            xsltc.printErrors();
            throw transformerConfigurationException;
        }
        passErrorsToListener(xsltc.getErrors());
        try {
            this._errorListener.fatalError(transformerConfigurationException);
            throw transformerConfigurationException;
        } catch (TransformerException unused3) {
            throw transformerConfigurationException;
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TemplatesHandler newTemplatesHandler() throws TransformerConfigurationException {
        TemplatesHandlerImpl templatesHandlerImpl = new TemplatesHandlerImpl(this._indentNumber, this);
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            templatesHandlerImpl.setURIResolver(uRIResolver);
        }
        return templatesHandlerImpl;
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer() throws TransformerConfigurationException {
        TransformerImpl transformerImpl = new TransformerImpl(new Properties(), this._indentNumber, this);
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            transformerImpl.setURIResolver(uRIResolver);
        }
        if (this._isSecureProcessing) {
            transformerImpl.setSecureProcessing(true);
        }
        return transformerImpl;
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler() throws TransformerConfigurationException {
        Transformer newTransformer = newTransformer();
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            newTransformer.setURIResolver(uRIResolver);
        }
        return new TransformerHandlerImpl((TransformerImpl) newTransformer);
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Source source) throws TransformerConfigurationException {
        Templates newTemplates = newTemplates(source);
        if (newTemplates == null) {
            return null;
        }
        return newXMLFilter(newTemplates);
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setAttribute(String str, Object obj) throws IllegalArgumentException {
        if (str.equals(TRANSLET_NAME) && (obj instanceof String)) {
            this._transletName = (String) obj;
            return;
        }
        if (str.equals(DESTINATION_DIRECTORY) && (obj instanceof String)) {
            this._destinationDirectory = (String) obj;
            return;
        }
        if (str.equals(PACKAGE_NAME) && (obj instanceof String)) {
            this._packageName = (String) obj;
            return;
        }
        if (str.equals(JAR_NAME) && (obj instanceof String)) {
            this._jarFileName = (String) obj;
            return;
        }
        if (str.equals(GENERATE_TRANSLET)) {
            if (obj instanceof Boolean) {
                this._generateTranslet = ((Boolean) obj).booleanValue();
                return;
            } else if (obj instanceof String) {
                this._generateTranslet = ((String) obj).equalsIgnoreCase("true");
                return;
            }
        } else if (str.equals(AUTO_TRANSLET)) {
            if (obj instanceof Boolean) {
                this._autoTranslet = ((Boolean) obj).booleanValue();
                return;
            } else if (obj instanceof String) {
                this._autoTranslet = ((String) obj).equalsIgnoreCase("true");
                return;
            }
        } else if (str.equals(USE_CLASSPATH)) {
            if (obj instanceof Boolean) {
                this._useClasspath = ((Boolean) obj).booleanValue();
                return;
            } else if (obj instanceof String) {
                this._useClasspath = ((String) obj).equalsIgnoreCase("true");
                return;
            }
        } else if (str.equals("debug")) {
            if (obj instanceof Boolean) {
                this._debug = ((Boolean) obj).booleanValue();
                return;
            } else if (obj instanceof String) {
                this._debug = ((String) obj).equalsIgnoreCase("true");
                return;
            }
        } else if (str.equals(ENABLE_INLINING)) {
            if (obj instanceof Boolean) {
                this._enableInlining = ((Boolean) obj).booleanValue();
                return;
            } else if (obj instanceof String) {
                this._enableInlining = ((String) obj).equalsIgnoreCase("true");
                return;
            }
        } else if (str.equals(INDENT_NUMBER)) {
            if (obj instanceof String) {
                try {
                    this._indentNumber = Integer.parseInt((String) obj);
                    return;
                } catch (NumberFormatException unused) {
                }
            } else if (obj instanceof Integer) {
                this._indentNumber = ((Integer) obj).intValue();
                return;
            }
        }
        throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.JAXP_INVALID_ATTR_ERR, str).toString());
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setErrorListener(ErrorListener errorListener) throws IllegalArgumentException {
        if (errorListener == null) {
            throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.ERROR_LISTENER_NULL_ERR, "TransformerFactory").toString());
        }
        this._errorListener = errorListener;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setFeature(String str, boolean z) throws TransformerConfigurationException {
        if (str == null) {
            throw new NullPointerException(new ErrorMsg(ErrorMsg.JAXP_SET_FEATURE_NULL_NAME).toString());
        }
        if (!str.equals("http://javax.xml.XMLConstants/feature/secure-processing")) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.JAXP_UNSUPPORTED_FEATURE, str).toString());
        }
        this._isSecureProcessing = z;
    }

    @Override // javax.xml.transform.TransformerFactory
    public void setURIResolver(URIResolver uRIResolver) {
        this._uriResolver = uRIResolver;
    }

    @Override // javax.xml.transform.ErrorListener
    public void warning(TransformerException transformerException) throws TransformerException {
        Throwable exception = transformerException.getException();
        if (exception != null) {
            System.err.println(new ErrorMsg(ErrorMsg.WARNING_PLUS_WRAPPED_MSG, transformerException.getMessageAndLocation(), exception.getMessage()));
        } else {
            System.err.println(new ErrorMsg(ErrorMsg.WARNING_MSG, transformerException.getMessageAndLocation()));
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public XMLFilter newXMLFilter(Templates templates) throws TransformerConfigurationException {
        try {
            return new TrAXFilter(templates);
        } catch (TransformerConfigurationException e) {
            ErrorListener errorListener = this._errorListener;
            if (errorListener != null) {
                try {
                    errorListener.fatalError(e);
                    return null;
                } catch (TransformerException e2) {
                    new TransformerConfigurationException(e2);
                    throw e;
                }
            }
            throw e;
        }
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Source source) throws TransformerConfigurationException {
        Transformer newTransformer = newTransformer(source);
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            newTransformer.setURIResolver(uRIResolver);
        }
        return new TransformerHandlerImpl((TransformerImpl) newTransformer);
    }

    @Override // javax.xml.transform.TransformerFactory
    public Transformer newTransformer(Source source) throws TransformerConfigurationException {
        Transformer newTransformer = newTemplates(source).newTransformer();
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            newTransformer.setURIResolver(uRIResolver);
        }
        return newTransformer;
    }

    @Override // javax.xml.transform.sax.SAXTransformerFactory
    public TransformerHandler newTransformerHandler(Templates templates) throws TransformerConfigurationException {
        return new TransformerHandlerImpl((TransformerImpl) templates.newTransformer());
    }
}
