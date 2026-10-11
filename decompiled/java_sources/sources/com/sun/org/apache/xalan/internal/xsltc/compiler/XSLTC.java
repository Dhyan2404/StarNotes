package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.google.common.reflect.ClassPath;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.URL;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
public final class XSLTC {
    public static final int BYTEARRAY_AND_FILE_OUTPUT = 4;
    public static final int BYTEARRAY_AND_JAR_OUTPUT = 5;
    public static final int BYTEARRAY_OUTPUT = 2;
    public static final int CLASSLOADER_OUTPUT = 3;
    public static final int FILE_OUTPUT = 0;
    public static final int JAR_OUTPUT = 1;
    private Hashtable _attributes;
    private Vector _bcelClasses;
    private Vector _classes;
    private Hashtable _elements;
    private Vector _namesIndex;
    private Vector _namespaceIndex;
    private Hashtable _namespacePrefixes;
    private Hashtable _namespaces;
    private int _nextGType;
    private int _nextNSType;
    private int[] _numberFieldIndexes;
    private Stylesheet _stylesheet;
    private Vector m_characterData;
    private XMLReader _reader = null;
    private SourceLoader _loader = null;
    private int _modeSerial = 1;
    private int _stylesheetSerial = 1;
    private int _stepPatternSerial = 1;
    private int _helperClassSerial = 0;
    private int _attributeSetSerial = 0;
    private boolean _debug = false;
    private String _jarFileName = null;
    private String _className = null;
    private String _packageName = null;
    private File _destDir = null;
    private int _outputType = 0;
    private boolean _callsNodeset = false;
    private boolean _multiDocument = false;
    private boolean _hasIdCall = false;
    private boolean _templateInlining = false;
    private boolean _isSecureProcessing = false;
    private Parser _parser = new Parser(this);

    private String classFileName(String str) {
        return str.replace('.', File.separatorChar) + ClassPath.f35080d;
    }

    private String entryName(File file) throws IOException {
        return file.getName().replace(File.separatorChar, '/');
    }

    private File getOutputFile(String str) {
        return this._destDir != null ? new File(this._destDir, classFileName(str)) : new File(classFileName(str));
    }

    private void reset() {
        this._nextGType = 14;
        this._elements = new Hashtable();
        this._attributes = new Hashtable();
        Hashtable hashtable = new Hashtable();
        this._namespaces = hashtable;
        hashtable.put("", new Integer(this._nextNSType));
        this._namesIndex = new Vector(128);
        this._namespaceIndex = new Vector(32);
        this._namespacePrefixes = new Hashtable();
        this._stylesheet = null;
        this._parser.init();
        this._modeSerial = 1;
        this._stylesheetSerial = 1;
        this._stepPatternSerial = 1;
        this._helperClassSerial = 0;
        this._attributeSetSerial = 0;
        this._multiDocument = false;
        this._hasIdCall = false;
        this._numberFieldIndexes = new int[]{-1, -1, -1};
    }

    public int addCharacterData(String str) {
        StringBuffer stringBuffer;
        Vector vector = this.m_characterData;
        if (vector == null) {
            this.m_characterData = new Vector();
            stringBuffer = new StringBuffer();
            this.m_characterData.addElement(stringBuffer);
        } else {
            stringBuffer = (StringBuffer) vector.elementAt(vector.size() - 1);
        }
        if (str.length() + stringBuffer.length() > 21845) {
            stringBuffer = new StringBuffer();
            this.m_characterData.addElement(stringBuffer);
        }
        int length = stringBuffer.length();
        stringBuffer.append(str);
        return length;
    }

    public boolean callsNodeset() {
        return this._callsNodeset;
    }

    public boolean compile(URL url) {
        try {
            InputSource inputSource = new InputSource(url.openStream());
            inputSource.setSystemId(url.toString());
            return compile(inputSource, this._className);
        } catch (IOException e) {
            this._parser.reportError(2, new ErrorMsg(e));
            return false;
        }
    }

    public boolean debug() {
        return this._debug;
    }

    public void dumpClass(JavaClass javaClass) {
        String parent;
        int i = this._outputType;
        if ((i == 0 || i == 4) && (parent = getOutputFile(javaClass.getClassName()).getParent()) != null) {
            File file = new File(parent);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        try {
            int i2 = this._outputType;
            if (i2 == 0) {
                javaClass.dump(new BufferedOutputStream(new FileOutputStream(getOutputFile(javaClass.getClassName()))));
                return;
            }
            if (i2 == 1) {
                this._bcelClasses.addElement(javaClass);
                return;
            }
            if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
                javaClass.dump(byteArrayOutputStream);
                this._classes.addElement(byteArrayOutputStream.toByteArray());
                int i3 = this._outputType;
                if (i3 == 4) {
                    javaClass.dump(new BufferedOutputStream(new FileOutputStream(getOutputFile(javaClass.getClassName()))));
                } else if (i3 == 5) {
                    this._bcelClasses.addElement(javaClass);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public byte[][] getBytecodes() {
        int size = this._classes.size();
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, size, 1);
        for (int i = 0; i < size; i++) {
            bArr[i] = (byte[]) this._classes.elementAt(i);
        }
        return bArr;
    }

    public String getCharacterData(int i) {
        return ((StringBuffer) this.m_characterData.elementAt(i)).toString();
    }

    public int getCharacterDataCount() {
        Vector vector = this.m_characterData;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    public String getClassName() {
        return this._className;
    }

    public Vector getErrors() {
        return this._parser.getErrors();
    }

    public String getHelperClassName() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClassName());
        sb.append('$');
        int i = this._helperClassSerial;
        this._helperClassSerial = i + 1;
        sb.append(i);
        return sb.toString();
    }

    public String getJarFileName() {
        return this._jarFileName;
    }

    public Vector getNamesIndex() {
        return this._namesIndex;
    }

    public Vector getNamespaceIndex() {
        return this._namespaceIndex;
    }

    public int[] getNumberFieldIndexes() {
        return this._numberFieldIndexes;
    }

    public Properties getOutputProperties() {
        return this._parser.getOutputProperties();
    }

    public Parser getParser() {
        return this._parser;
    }

    public Stylesheet getStylesheet() {
        return this._stylesheet;
    }

    public Vector getWarnings() {
        return this._parser.getWarnings();
    }

    public XMLReader getXMLReader() {
        return this._reader;
    }

    public boolean hasIdCall() {
        return this._hasIdCall;
    }

    public void init() {
        reset();
        this._reader = null;
        this._classes = new Vector();
        this._bcelClasses = new Vector();
    }

    public boolean isMultiDocument() {
        return this._multiDocument;
    }

    public boolean isSecureProcessing() {
        return this._isSecureProcessing;
    }

    public int nextAttributeSetSerial() {
        int i = this._attributeSetSerial;
        this._attributeSetSerial = i + 1;
        return i;
    }

    public int nextHelperClassSerial() {
        int i = this._helperClassSerial;
        this._helperClassSerial = i + 1;
        return i;
    }

    public int nextModeSerial() {
        int i = this._modeSerial;
        this._modeSerial = i + 1;
        return i;
    }

    public int nextStepPatternSerial() {
        int i = this._stepPatternSerial;
        this._stepPatternSerial = i + 1;
        return i;
    }

    public int nextStylesheetSerial() {
        int i = this._stylesheetSerial;
        this._stylesheetSerial = i + 1;
        return i;
    }

    public void outputToJar() throws IOException {
        Manifest manifest = new Manifest();
        manifest.getMainAttributes().put(Attributes.Name.MANIFEST_VERSION, "1.2");
        Map<String, Attributes> entries = manifest.getEntries();
        Enumeration elements = this._bcelClasses.elements();
        String date = new Date().toString();
        Attributes.Name name = new Attributes.Name("Date");
        while (elements.hasMoreElements()) {
            String replace = ((JavaClass) elements.nextElement()).getClassName().replace('.', '/');
            Attributes attributes = new Attributes();
            attributes.put(name, date);
            entries.put(replace + ClassPath.f35080d, attributes);
        }
        JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(new File(this._destDir, this._jarFileName)), manifest);
        Enumeration elements2 = this._bcelClasses.elements();
        while (elements2.hasMoreElements()) {
            JavaClass javaClass = (JavaClass) elements2.nextElement();
            jarOutputStream.putNextEntry(new JarEntry(javaClass.getClassName().replace('.', '/') + ClassPath.f35080d));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(2048);
            javaClass.dump(byteArrayOutputStream);
            byteArrayOutputStream.writeTo(jarOutputStream);
        }
        jarOutputStream.close();
    }

    public void printErrors() {
        this._parser.printErrors();
    }

    public void printWarnings() {
        this._parser.printWarnings();
    }

    public int registerAttribute(QName qName) {
        Integer num = (Integer) this._attributes.get(qName.toString());
        if (num == null) {
            int i = this._nextGType;
            this._nextGType = i + 1;
            num = new Integer(i);
            this._attributes.put(qName.toString(), num);
            String namespace = qName.getNamespace();
            String str = "@" + qName.getLocalPart();
            if (namespace == null || namespace.equals("")) {
                this._namesIndex.addElement(str);
            } else {
                this._namesIndex.addElement(namespace + ":" + str);
            }
            if (qName.getLocalPart().equals("*")) {
                registerNamespace(qName.getNamespace());
            }
        }
        return num.intValue();
    }

    public int registerElement(QName qName) {
        Integer num = (Integer) this._elements.get(qName.toString());
        if (num == null) {
            Hashtable hashtable = this._elements;
            String qName2 = qName.toString();
            int i = this._nextGType;
            this._nextGType = i + 1;
            Integer num2 = new Integer(i);
            hashtable.put(qName2, num2);
            this._namesIndex.addElement(qName.toString());
            num = num2;
        }
        if (qName.getLocalPart().equals("*")) {
            registerNamespace(qName.getNamespace());
        }
        return num.intValue();
    }

    public int registerNamespace(String str) {
        Integer num = (Integer) this._namespaces.get(str);
        if (num == null) {
            int i = this._nextNSType;
            this._nextNSType = i + 1;
            num = new Integer(i);
            this._namespaces.put(str, num);
            this._namespaceIndex.addElement(str);
        }
        return num.intValue();
    }

    public int registerNamespacePrefix(QName qName) {
        Integer num = (Integer) this._namespacePrefixes.get(qName.toString());
        if (num == null) {
            int i = this._nextGType;
            this._nextGType = i + 1;
            num = new Integer(i);
            this._namespacePrefixes.put(qName.toString(), num);
            String namespace = qName.getNamespace();
            if (namespace == null || namespace.equals("")) {
                this._namesIndex.addElement("?" + qName.getLocalPart());
            } else {
                this._namesIndex.addElement("?");
            }
        }
        return num.intValue();
    }

    public void setCallsNodeset(boolean z) {
        if (z) {
            setMultiDocument(z);
        }
        this._callsNodeset = z;
    }

    public void setClassName(String str) {
        String javaName = Util.toJavaName(Util.noExtName(Util.baseName(str)));
        if (this._packageName == null) {
            this._className = javaName;
            return;
        }
        this._className = this._packageName + '.' + javaName;
    }

    public void setDebug(boolean z) {
        this._debug = z;
    }

    public boolean setDestDirectory(String str) {
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            this._destDir = file;
            return true;
        }
        this._destDir = null;
        return false;
    }

    public void setHasIdCall(boolean z) {
        this._hasIdCall = z;
    }

    public void setJarFileName(String str) {
        if (str.endsWith(".jar")) {
            this._jarFileName = str;
        } else {
            this._jarFileName = str + ".jar";
        }
        this._outputType = 1;
    }

    public void setMultiDocument(boolean z) {
        this._multiDocument = z;
    }

    public void setOutputType(int i) {
        this._outputType = i;
    }

    public void setPIParameters(String str, String str2, String str3) {
        this._parser.setPIParameters(str, str2, str3);
    }

    public void setPackageName(String str) {
        this._packageName = str;
        String str2 = this._className;
        if (str2 != null) {
            setClassName(str2);
        }
    }

    public void setSecureProcessing(boolean z) {
        this._isSecureProcessing = z;
    }

    public void setSourceLoader(SourceLoader sourceLoader) {
        this._loader = sourceLoader;
    }

    public void setStylesheet(Stylesheet stylesheet) {
        if (this._stylesheet == null) {
            this._stylesheet = stylesheet;
        }
    }

    public void setTemplateInlining(boolean z) {
        this._templateInlining = z;
    }

    public void setXMLReader(XMLReader xMLReader) {
        this._reader = xMLReader;
    }

    public boolean compile(URL url, String str) {
        try {
            InputSource inputSource = new InputSource(url.openStream());
            inputSource.setSystemId(url.toString());
            return compile(inputSource, str);
        } catch (IOException e) {
            this._parser.reportError(2, new ErrorMsg(e));
            return false;
        }
    }

    public boolean compile(InputStream inputStream, String str) {
        InputSource inputSource = new InputSource(inputStream);
        inputSource.setSystemId(str);
        return compile(inputSource, str);
    }

    public boolean compile(InputSource inputSource, String str) {
        SyntaxTreeNode parse;
        Stylesheet stylesheet;
        try {
            try {
                reset();
                String systemId = inputSource != null ? inputSource.getSystemId() : null;
                if (this._className == null) {
                    if (str != null) {
                        setClassName(str);
                    } else if (systemId != null && !systemId.equals("")) {
                        setClassName(Util.baseName(systemId));
                    }
                    String str2 = this._className;
                    if (str2 == null || str2.length() == 0) {
                        setClassName("GregorSamsa");
                    }
                }
                XMLReader xMLReader = this._reader;
                if (xMLReader == null) {
                    parse = this._parser.parse(inputSource);
                } else {
                    parse = this._parser.parse(xMLReader, inputSource);
                }
                if (!this._parser.errorsFound() && parse != null) {
                    Stylesheet makeStylesheet = this._parser.makeStylesheet(parse);
                    this._stylesheet = makeStylesheet;
                    makeStylesheet.setSourceLoader(this._loader);
                    this._stylesheet.setSystemId(systemId);
                    this._stylesheet.setParentStylesheet(null);
                    this._stylesheet.setTemplateInlining(this._templateInlining);
                    this._parser.setCurrentStylesheet(this._stylesheet);
                    this._parser.createAST(this._stylesheet);
                }
                if (!this._parser.errorsFound() && (stylesheet = this._stylesheet) != null) {
                    stylesheet.setCallsNodeset(this._callsNodeset);
                    this._stylesheet.setMultiDocument(this._multiDocument);
                    this._stylesheet.setHasIdCall(this._hasIdCall);
                    synchronized (XSLTC.class) {
                        this._stylesheet.translate();
                    }
                }
            } catch (Error e) {
                if (this._debug) {
                    e.printStackTrace();
                }
                this._parser.reportError(2, new ErrorMsg(e));
            } catch (Exception e2) {
                e2.printStackTrace();
                this._parser.reportError(2, new ErrorMsg(e2));
            }
            this._reader = null;
            return !this._parser.errorsFound();
        } catch (Throwable th) {
            this._reader = null;
            throw th;
        }
    }

    public boolean compile(Vector vector) {
        int size = vector.size();
        if (size == 0) {
            return true;
        }
        if (size == 1) {
            Object firstElement = vector.firstElement();
            if (firstElement instanceof URL) {
                return compile((URL) firstElement);
            }
            return false;
        }
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            this._className = null;
            Object nextElement = elements.nextElement();
            if ((nextElement instanceof URL) && !compile((URL) nextElement)) {
                return false;
            }
        }
        return true;
    }

    public byte[][] compile(String str, InputSource inputSource, int i) {
        this._outputType = i;
        if (compile(inputSource, str)) {
            return getBytecodes();
        }
        return null;
    }

    public byte[][] compile(String str, InputSource inputSource) {
        return compile(str, inputSource, 2);
    }
}
