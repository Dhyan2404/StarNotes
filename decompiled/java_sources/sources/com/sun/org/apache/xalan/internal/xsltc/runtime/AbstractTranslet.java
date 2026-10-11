package com.sun.org.apache.xalan.internal.xsltc.runtime;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.DOMCache;
import com.sun.org.apache.xalan.internal.xsltc.DOMEnhancedForDTM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter;
import com.sun.org.apache.xalan.internal.xsltc.dom.KeyIndex;
import com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
import com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import java.io.File;
import java.io.FileWriter;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Templates;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;

/* loaded from: classes10.dex */
public abstract class AbstractTranslet implements Translet {
    public static final int CURRENT_TRANSLET_VERSION = 101;
    private static final String EMPTYSTRING = "";
    public static final int FIRST_TRANSLET_VERSION = 100;
    private static final String ID_INDEX_NAME = "##id";
    public static final int VER_SPLIT_NAMES_ARRAY = 101;
    protected String[] namesArray;
    protected String[] namespaceArray;
    protected int[] typesArray;
    protected String[] urisArray;
    public String _version = "1.0";
    public String _method = null;
    public String _encoding = "UTF-8";
    public boolean _omitHeader = false;
    public String _standalone = null;
    public String _doctypePublic = null;
    public String _doctypeSystem = null;
    public boolean _indent = false;
    public String _mediaType = null;
    public Vector _cdata = null;
    public int _indentamount = -1;
    protected int transletVersion = 100;
    protected Templates _templates = null;
    protected boolean _hasIdCall = false;
    protected StringValueHandler stringValueHandler = new StringValueHandler();
    protected int pbase = 0;
    protected int pframe = 0;
    protected ArrayList paramsStack = new ArrayList();
    private MessageHandler _msgHandler = null;
    public Hashtable _formatSymbols = null;
    private Hashtable _keyIndexes = null;
    private KeyIndex _emptyKeyIndex = null;
    private int _indexSize = 0;
    private DOMCache _domCache = null;
    private Hashtable _auxClasses = null;
    protected DOMImplementation _domImplementation = null;

    private final void buildIDIndex(DOM dom) {
        if (dom instanceof DOMEnhancedForDTM) {
            DOMEnhancedForDTM dOMEnhancedForDTM = (DOMEnhancedForDTM) dom;
            if (dOMEnhancedForDTM.hasDOMSource()) {
                buildKeyIndex(ID_INDEX_NAME, dom);
                return;
            }
            Hashtable elementsWithIDs = dOMEnhancedForDTM.getElementsWithIDs();
            if (elementsWithIDs == null) {
                return;
            }
            Enumeration keys = elementsWithIDs.keys();
            boolean z = false;
            while (keys.hasMoreElements()) {
                Object nextElement = keys.nextElement();
                buildKeyIndex(ID_INDEX_NAME, ((Integer) elementsWithIDs.get(nextElement)).intValue(), nextElement);
                z = true;
            }
            if (z) {
                setKeyIndexDom(ID_INDEX_NAME, dom);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public void addAuxiliaryClass(Class cls) {
        if (this._auxClasses == null) {
            this._auxClasses = new Hashtable();
        }
        this._auxClasses.put(cls.getName(), cls);
    }

    public void addCdataElement(String str) {
        if (this._cdata == null) {
            this._cdata = new Vector();
        }
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf <= 0) {
            this._cdata.addElement(null);
            this._cdata.addElement(str);
        } else {
            String substring = str.substring(0, lastIndexOf);
            String substring2 = str.substring(lastIndexOf + 1);
            this._cdata.addElement(substring);
            this._cdata.addElement(substring2);
        }
    }

    public void addDecimalFormat(String str, DecimalFormatSymbols decimalFormatSymbols) {
        if (this._formatSymbols == null) {
            this._formatSymbols = new Hashtable();
        }
        if (str == null) {
            str = "";
        }
        DecimalFormat decimalFormat = new DecimalFormat();
        if (decimalFormatSymbols != null) {
            decimalFormat.setDecimalFormatSymbols(decimalFormatSymbols);
        }
        this._formatSymbols.put(str, decimalFormat);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public final Object addParameter(String str, Object obj) {
        return addParameter(BasisLibrary.mapQNameToJavaName(str), obj, false);
    }

    public void buildKeyIndex(String str, int i, Object obj) {
        if (this._keyIndexes == null) {
            this._keyIndexes = new Hashtable();
        }
        KeyIndex keyIndex = (KeyIndex) this._keyIndexes.get(str);
        if (keyIndex == null) {
            Hashtable hashtable = this._keyIndexes;
            KeyIndex keyIndex2 = new KeyIndex(this._indexSize);
            hashtable.put(str, keyIndex2);
            keyIndex = keyIndex2;
        }
        keyIndex.add(obj, i);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public void buildKeys(DOM dom, DTMAxisIterator dTMAxisIterator, SerializationHandler serializationHandler, int i) throws TransletException {
    }

    public final void characters(String str, SerializationHandler serializationHandler) throws TransletException {
        if (str != null) {
            try {
                serializationHandler.characters(str);
            } catch (Exception e) {
                throw new TransletException(e);
            }
        }
    }

    public void clearParameters() {
        this.pframe = 0;
        this.pbase = 0;
        this.paramsStack.clear();
    }

    public void closeOutputHandler(SerializationHandler serializationHandler) {
        try {
            serializationHandler.endDocument();
            serializationHandler.close();
        } catch (Exception unused) {
        }
    }

    public KeyIndex createKeyIndex() {
        return new KeyIndex(this._indexSize);
    }

    public final void displayMessage(String str) {
        MessageHandler messageHandler = this._msgHandler;
        if (messageHandler == null) {
            System.err.println(str);
        } else {
            messageHandler.displayMessage(str);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public Class getAuxiliaryClass(String str) {
        Hashtable hashtable = this._auxClasses;
        if (hashtable == null) {
            return null;
        }
        return (Class) hashtable.get(str);
    }

    public DOMCache getDOMCache() {
        return this._domCache;
    }

    public final DecimalFormat getDecimalFormat(String str) {
        Hashtable hashtable = this._formatSymbols;
        if (hashtable == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        DecimalFormat decimalFormat = (DecimalFormat) hashtable.get(str);
        return decimalFormat == null ? (DecimalFormat) this._formatSymbols.get("") : decimalFormat;
    }

    public KeyIndex getKeyIndex(String str) {
        Hashtable hashtable = this._keyIndexes;
        if (hashtable == null) {
            KeyIndex keyIndex = this._emptyKeyIndex;
            if (keyIndex != null) {
                return keyIndex;
            }
            KeyIndex keyIndex2 = new KeyIndex(1);
            this._emptyKeyIndex = keyIndex2;
            return keyIndex2;
        }
        KeyIndex keyIndex3 = (KeyIndex) hashtable.get(str);
        if (keyIndex3 != null) {
            return keyIndex3;
        }
        KeyIndex keyIndex4 = this._emptyKeyIndex;
        if (keyIndex4 != null) {
            return keyIndex4;
        }
        KeyIndex keyIndex5 = new KeyIndex(1);
        this._emptyKeyIndex = keyIndex5;
        return keyIndex5;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public String[] getNamesArray() {
        return this.namesArray;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public String[] getNamespaceArray() {
        return this.namespaceArray;
    }

    public final Object getParameter(String str) {
        Parameter parameter;
        String mapQNameToJavaName = BasisLibrary.mapQNameToJavaName(str);
        int i = this.pframe;
        do {
            i--;
            if (i < this.pbase) {
                return null;
            }
            parameter = (Parameter) this.paramsStack.get(i);
        } while (!parameter._name.equals(mapQNameToJavaName));
        return parameter._value;
    }

    public Templates getTemplates() {
        return this._templates;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public int[] getTypesArray() {
        return this.typesArray;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public String[] getUrisArray() {
        return this.urisArray;
    }

    public boolean hasIdCall() {
        return this._hasIdCall;
    }

    public final DOMAdapter makeDOMAdapter(DOM dom) throws TransletException {
        return new DOMAdapter(dom, this.namesArray, this.urisArray, this.typesArray, this.namespaceArray);
    }

    public Document newDocument(String str, String str2) throws ParserConfigurationException {
        if (this._domImplementation == null) {
            this._domImplementation = DocumentBuilderFactory.newInstance().newDocumentBuilder().getDOMImplementation();
        }
        return this._domImplementation.createDocument(str, str2, null);
    }

    public SerializationHandler openOutputHandler(String str, boolean z) throws TransletException {
        try {
            TransletOutputHandlerFactory newInstance = TransletOutputHandlerFactory.newInstance();
            String parent = new File(str).getParent();
            if (parent != null && parent.length() > 0) {
                new File(parent).mkdirs();
            }
            newInstance.setEncoding(this._encoding);
            newInstance.setOutputMethod(this._method);
            newInstance.setWriter(new FileWriter(str, z));
            newInstance.setOutputType(0);
            SerializationHandler serializationHandler = newInstance.getSerializationHandler();
            transferOutputSettings(serializationHandler);
            serializationHandler.startDocument();
            return serializationHandler;
        } catch (Exception e) {
            throw new TransletException(e);
        }
    }

    public final void popParamFrame() {
        int i = this.pbase;
        if (i <= 0) {
            return;
        }
        ArrayList arrayList = this.paramsStack;
        int i2 = i - 1;
        this.pbase = i2;
        int intValue = ((Integer) arrayList.get(i2)).intValue();
        int i3 = this.pframe;
        while (true) {
            i3--;
            int i4 = this.pbase;
            if (i3 < i4) {
                this.pframe = i4;
                this.pbase = intValue;
                return;
            }
            this.paramsStack.remove(i3);
        }
    }

    public final void postInitialization() {
        if (this.transletVersion < 101) {
            int length = this.namesArray.length;
            String[] strArr = new String[length];
            String[] strArr2 = new String[length];
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                String str = this.namesArray[i];
                int lastIndexOf = str.lastIndexOf(58);
                int i2 = lastIndexOf + 1;
                if (lastIndexOf > -1) {
                    strArr[i] = str.substring(0, lastIndexOf);
                }
                if (str.charAt(i2) == '@') {
                    i2++;
                    iArr[i] = 2;
                } else if (str.charAt(i2) == '?') {
                    i2++;
                    iArr[i] = 13;
                } else {
                    iArr[i] = 1;
                }
                if (i2 != 0) {
                    str = str.substring(i2);
                }
                strArr2[i] = str;
            }
            this.namesArray = strArr2;
            this.urisArray = strArr;
            this.typesArray = iArr;
        }
        if (this.transletVersion > 101) {
            BasisLibrary.runTimeError(BasisLibrary.UNKNOWN_TRANSLET_VERSION_ERR, getClass().getName());
        }
    }

    public final void prepassDocument(DOM dom) {
        setIndexSize(dom.getSize());
        buildIDIndex(dom);
    }

    public void printInternalState() {
        System.out.println("-------------------------------------");
        System.out.println("AbstractTranslet this = " + this);
        System.out.println("pbase = " + this.pbase);
        System.out.println("vframe = " + this.pframe);
        System.out.println("paramsStack.size() = " + this.paramsStack.size());
        System.out.println("namesArray.size = " + this.namesArray.length);
        System.out.println("namespaceArray.size = " + this.namespaceArray.length);
        System.out.println("");
        System.out.println("Total memory = " + Runtime.getRuntime().totalMemory());
    }

    public final void pushParamFrame() {
        this.paramsStack.add(this.pframe, new Integer(this.pbase));
        int i = this.pframe + 1;
        this.pframe = i;
        this.pbase = i;
    }

    public void setAuxiliaryClasses(Hashtable hashtable) {
        this._auxClasses = hashtable;
    }

    public void setDOMCache(DOMCache dOMCache) {
        this._domCache = dOMCache;
    }

    public void setIndexSize(int i) {
        if (i > this._indexSize) {
            this._indexSize = i;
        }
    }

    public void setKeyIndexDom(String str, DOM dom) {
        getKeyIndex(str).setDom(dom);
    }

    public final void setMessageHandler(MessageHandler messageHandler) {
        this._msgHandler = messageHandler;
    }

    public void setTemplates(Templates templates) {
        this._templates = templates;
    }

    public void transferOutputSettings(SerializationHandler serializationHandler) {
        String str = this._method;
        if (str == null) {
            serializationHandler.setCdataSectionElements(this._cdata);
            String str2 = this._version;
            if (str2 != null) {
                serializationHandler.setVersion(str2);
            }
            String str3 = this._standalone;
            if (str3 != null) {
                serializationHandler.setStandalone(str3);
            }
            if (this._omitHeader) {
                serializationHandler.setOmitXMLDeclaration(true);
            }
            serializationHandler.setIndent(this._indent);
            serializationHandler.setDoctype(this._doctypeSystem, this._doctypePublic);
            return;
        }
        if (!str.equals("xml")) {
            if (this._method.equals("html")) {
                serializationHandler.setIndent(this._indent);
                serializationHandler.setDoctype(this._doctypeSystem, this._doctypePublic);
                String str4 = this._mediaType;
                if (str4 != null) {
                    serializationHandler.setMediaType(str4);
                    return;
                }
                return;
            }
            return;
        }
        String str5 = this._standalone;
        if (str5 != null) {
            serializationHandler.setStandalone(str5);
        }
        if (this._omitHeader) {
            serializationHandler.setOmitXMLDeclaration(true);
        }
        serializationHandler.setCdataSectionElements(this._cdata);
        String str6 = this._version;
        if (str6 != null) {
            serializationHandler.setVersion(str6);
        }
        serializationHandler.setIndent(this._indent);
        serializationHandler.setIndentAmount(this._indentamount);
        String str7 = this._doctypeSystem;
        if (str7 != null) {
            serializationHandler.setDoctype(str7, this._doctypePublic);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public abstract void transform(DOM dom, DTMAxisIterator dTMAxisIterator, SerializationHandler serializationHandler) throws TransletException;

    @Override // com.sun.org.apache.xalan.internal.xsltc.Translet
    public final void transform(DOM dom, SerializationHandler serializationHandler) throws TransletException {
        try {
            transform(dom, dom.getIterator(), serializationHandler);
        } finally {
            this._keyIndexes = null;
        }
    }

    public final Object addParameter(String str, Object obj, boolean z) {
        Parameter parameter;
        int i = this.pframe;
        do {
            i--;
            if (i >= this.pbase) {
                parameter = (Parameter) this.paramsStack.get(i);
            } else {
                ArrayList arrayList = this.paramsStack;
                int i2 = this.pframe;
                this.pframe = i2 + 1;
                arrayList.add(i2, new Parameter(str, obj, z));
                return obj;
            }
        } while (!parameter._name.equals(str));
        if (!parameter._isDefault && z) {
            return parameter._value;
        }
        parameter._value = obj;
        parameter._isDefault = z;
        return obj;
    }

    public void buildKeyIndex(String str, DOM dom) {
        if (this._keyIndexes == null) {
            this._keyIndexes = new Hashtable();
        }
        KeyIndex keyIndex = (KeyIndex) this._keyIndexes.get(str);
        if (keyIndex == null) {
            Hashtable hashtable = this._keyIndexes;
            KeyIndex keyIndex2 = new KeyIndex(this._indexSize);
            hashtable.put(str, keyIndex2);
            keyIndex = keyIndex2;
        }
        keyIndex.setDom(dom);
    }

    public SerializationHandler openOutputHandler(String str) throws TransletException {
        return openOutputHandler(str, false);
    }
}
