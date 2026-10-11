package com.sun.org.apache.xalan.internal.xsltc.cmdline;

import com.sun.org.apache.xalan.internal.xsltc.DOMEnhancedForDTM;
import com.sun.org.apache.xalan.internal.xsltc.StripFilter;
import com.sun.org.apache.xalan.internal.xsltc.TransletException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.dom.DOMWSFilter;
import com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Parameter;
import com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.net.MalformedURLException;
import java.net.UnknownHostException;
import java.util.Vector;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.sax.SAXSource;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class Transform {
    private String _className;
    private boolean _debug;
    private String _fileName;
    private SerializationHandler _handler;
    private int _iterations;
    private String _jarFileSrc;
    private boolean _uri;
    private boolean _isJarFileSpecified = false;
    private Vector _params = null;

    public Transform(String str, String str2, boolean z, boolean z2, int i) {
        this._fileName = str2;
        this._className = str;
        this._uri = z;
        this._debug = z2;
        this._iterations = i;
    }

    private void doTransform() {
        try {
            AbstractTranslet abstractTranslet = (AbstractTranslet) ObjectFactory.findProviderClass(this._className, ObjectFactory.findClassLoader(), true).newInstance();
            abstractTranslet.postInitialization();
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            try {
                newInstance.setFeature("http://xml.org/sax/features/namespaces", true);
            } catch (Exception unused) {
                newInstance.setNamespaceAware(true);
            }
            DOMEnhancedForDTM dOMEnhancedForDTM = (DOMEnhancedForDTM) ((XSLTCDTMManager) XSLTCDTMManager.getDTMManagerClass().newInstance()).getDTM(new SAXSource(newInstance.newSAXParser().getXMLReader(), new InputSource(this._fileName)), false, abstractTranslet instanceof StripFilter ? new DOMWSFilter(abstractTranslet) : null, true, false, abstractTranslet.hasIdCall());
            dOMEnhancedForDTM.setDocumentURI(this._fileName);
            abstractTranslet.prepassDocument(dOMEnhancedForDTM);
            int size = this._params.size();
            for (int i = 0; i < size; i++) {
                Parameter parameter = (Parameter) this._params.elementAt(i);
                abstractTranslet.addParameter(parameter._name, parameter._value);
            }
            TransletOutputHandlerFactory newInstance2 = TransletOutputHandlerFactory.newInstance();
            newInstance2.setOutputType(0);
            newInstance2.setEncoding(abstractTranslet._encoding);
            newInstance2.setOutputMethod(abstractTranslet._method);
            int i2 = this._iterations;
            if (i2 == -1) {
                abstractTranslet.transform(dOMEnhancedForDTM, newInstance2.getSerializationHandler());
                return;
            }
            if (i2 > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (int i3 = 0; i3 < this._iterations; i3++) {
                    abstractTranslet.transform(dOMEnhancedForDTM, newInstance2.getSerializationHandler());
                }
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                System.err.println("\n<!--");
                PrintStream printStream = System.err;
                StringBuilder sb = new StringBuilder();
                sb.append("  transform  = ");
                double d = currentTimeMillis2;
                sb.append(d / this._iterations);
                sb.append(" ms");
                printStream.println(sb.toString());
                System.err.println("  throughput = " + (1000.0d / (d / this._iterations)) + " tps");
                System.err.println(XMLStreamWriterImpl.END_COMMENT);
            }
        } catch (TransletException e) {
            if (this._debug) {
                e.printStackTrace();
            }
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + e.getMessage());
        } catch (FileNotFoundException e2) {
            if (this._debug) {
                e2.printStackTrace();
            }
            ErrorMsg errorMsg = new ErrorMsg(ErrorMsg.FILE_NOT_FOUND_ERR, this._fileName);
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + errorMsg.toString());
        } catch (ClassNotFoundException e3) {
            if (this._debug) {
                e3.printStackTrace();
            }
            ErrorMsg errorMsg2 = new ErrorMsg(ErrorMsg.CLASS_NOT_FOUND_ERR, this._className);
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + errorMsg2.toString());
        } catch (RuntimeException e4) {
            if (this._debug) {
                e4.printStackTrace();
            }
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + e4.getMessage());
        } catch (MalformedURLException e5) {
            if (this._debug) {
                e5.printStackTrace();
            }
            ErrorMsg errorMsg3 = new ErrorMsg(ErrorMsg.INVALID_URI_ERR, this._fileName);
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + errorMsg3.toString());
        } catch (UnknownHostException e6) {
            if (this._debug) {
                e6.printStackTrace();
            }
            ErrorMsg errorMsg4 = new ErrorMsg(ErrorMsg.INVALID_URI_ERR, this._fileName);
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + errorMsg4.toString());
        } catch (SAXException e7) {
            Exception exception = e7.getException();
            if (this._debug) {
                if (exception != null) {
                    exception.printStackTrace();
                }
                e7.printStackTrace();
            }
            System.err.print(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY));
            if (exception != null) {
                System.err.println(exception.getMessage());
            } else {
                System.err.println(e7.getMessage());
            }
        } catch (Exception e8) {
            if (this._debug) {
                e8.printStackTrace();
            }
            System.err.println(new ErrorMsg(ErrorMsg.RUNTIME_ERROR_KEY) + e8.getMessage());
        }
    }

    public static void main(String[] strArr) {
        try {
            if (strArr.length <= 0) {
                printUsage();
                return;
            }
            String str = null;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            int i = -1;
            int i2 = 0;
            while (i2 < strArr.length && strArr[i2].charAt(0) == '-') {
                if (strArr[i2].equals("-u")) {
                    z = true;
                } else if (strArr[i2].equals("-x")) {
                    z2 = true;
                } else if (strArr[i2].equals("-j")) {
                    i2++;
                    str = strArr[i2];
                    z3 = true;
                } else if (strArr[i2].equals("-n")) {
                    i2++;
                    try {
                        i = Integer.parseInt(strArr[i2]);
                    } catch (NumberFormatException unused) {
                    }
                } else {
                    printUsage();
                }
                i2++;
            }
            if (strArr.length - i2 < 2) {
                printUsage();
            }
            Transform transform = new Transform(strArr[i2 + 1], strArr[i2], z, z2, i);
            transform.setJarFileInputSrc(z3, str);
            Vector vector = new Vector();
            int i3 = i2 + 2;
            while (i3 < strArr.length) {
                int indexOf = strArr[i3].indexOf(61);
                if (indexOf > 0) {
                    vector.addElement(new Parameter(strArr[i3].substring(0, indexOf), strArr[i3].substring(indexOf + 1)));
                } else {
                    printUsage();
                }
                i3++;
            }
            if (i3 == strArr.length) {
                transform.setParameters(vector);
                transform.doTransform();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void printUsage() {
        System.err.println(new ErrorMsg(ErrorMsg.TRANSFORM_USAGE_STR));
    }

    private void setJarFileInputSrc(boolean z, String str) {
        this._isJarFileSpecified = z;
        this._jarFileSrc = str;
    }

    public String getClassName() {
        return this._className;
    }

    public String getFileName() {
        return this._fileName;
    }

    public void setParameters(Vector vector) {
        this._params = vector;
    }
}
