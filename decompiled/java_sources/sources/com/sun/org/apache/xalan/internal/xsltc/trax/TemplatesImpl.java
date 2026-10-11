package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.DOM;
import com.sun.org.apache.xalan.internal.xsltc.Translet;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
import com.sun.org.apache.xalan.internal.xsltc.runtime.Hashtable;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Properties;
import javax.xml.transform.Templates;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.URIResolver;

/* loaded from: classes10.dex */
public final class TemplatesImpl implements Templates, Serializable {
    private static String ABSTRACT_TRANSLET = "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet";
    static final long serialVersionUID = 673094361519270707L;
    private Hashtable _auxClasses;
    private byte[][] _bytecodes;
    private Class[] _class;
    private int _indentNumber;
    private String _name;
    private Properties _outputProperties;
    private transient ThreadLocal _sdom;
    private transient TransformerFactoryImpl _tfactory;
    private int _transletIndex;
    private transient URIResolver _uriResolver;

    /* loaded from: classes10.dex */
    public static final class TransletClassLoader extends ClassLoader {
        public TransletClassLoader(ClassLoader classLoader) {
            super(classLoader);
        }

        public Class defineClass(byte[] bArr) {
            return defineClass(null, bArr, 0, bArr.length);
        }
    }

    public TemplatesImpl(byte[][] bArr, String str, Properties properties, int i, TransformerFactoryImpl transformerFactoryImpl) {
        this._name = null;
        this._bytecodes = null;
        this._class = null;
        this._transletIndex = -1;
        this._auxClasses = null;
        this._uriResolver = null;
        this._sdom = new ThreadLocal();
        this._bytecodes = bArr;
        this._name = str;
        this._outputProperties = properties;
        this._indentNumber = i;
        this._tfactory = transformerFactoryImpl;
    }

    private void defineTransletClasses() throws TransformerConfigurationException {
        if (this._bytecodes == null) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.NO_TRANSLET_CLASS_ERR).toString());
        }
        TransletClassLoader transletClassLoader = (TransletClassLoader) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                return new TransletClassLoader(ObjectFactory.findClassLoader());
            }
        });
        try {
            int length = this._bytecodes.length;
            this._class = new Class[length];
            if (length > 1) {
                this._auxClasses = new Hashtable();
            }
            for (int i = 0; i < length; i++) {
                this._class[i] = transletClassLoader.defineClass(this._bytecodes[i]);
                if (this._class[i].getSuperclass().getName().equals(ABSTRACT_TRANSLET)) {
                    this._transletIndex = i;
                } else {
                    this._auxClasses.put(this._class[i].getName(), this._class[i]);
                }
            }
            if (this._transletIndex < 0) {
                throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.NO_MAIN_TRANSLET_ERR, this._name).toString());
            }
        } catch (ClassFormatError unused) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.TRANSLET_CLASS_ERR, this._name).toString());
        } catch (LinkageError unused2) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.TRANSLET_OBJECT_ERR, this._name).toString());
        }
    }

    private Translet getTransletInstance() throws TransformerConfigurationException {
        try {
            if (this._name == null) {
                return null;
            }
            if (this._class == null) {
                defineTransletClasses();
            }
            AbstractTranslet abstractTranslet = (AbstractTranslet) this._class[this._transletIndex].newInstance();
            abstractTranslet.postInitialization();
            abstractTranslet.setTemplates(this);
            Hashtable hashtable = this._auxClasses;
            if (hashtable != null) {
                abstractTranslet.setAuxiliaryClasses(hashtable);
            }
            return abstractTranslet;
        } catch (IllegalAccessException unused) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.TRANSLET_OBJECT_ERR, this._name).toString());
        } catch (InstantiationException unused2) {
            throw new TransformerConfigurationException(new ErrorMsg(ErrorMsg.TRANSLET_OBJECT_ERR, this._name).toString());
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (objectInputStream.readBoolean()) {
            this._uriResolver = (URIResolver) objectInputStream.readObject();
        }
        this._tfactory = new TransformerFactoryImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException, ClassNotFoundException {
        objectOutputStream.defaultWriteObject();
        if (!(this._uriResolver instanceof Serializable)) {
            objectOutputStream.writeBoolean(false);
        } else {
            objectOutputStream.writeBoolean(true);
            objectOutputStream.writeObject((Serializable) this._uriResolver);
        }
    }

    @Override // javax.xml.transform.Templates
    public synchronized Properties getOutputProperties() {
        try {
        } catch (TransformerConfigurationException unused) {
            return null;
        }
        return newTransformer().getOutputProperties();
    }

    public DOM getStylesheetDOM() {
        return (DOM) this._sdom.get();
    }

    public synchronized byte[][] getTransletBytecodes() {
        return this._bytecodes;
    }

    public synchronized Class[] getTransletClasses() {
        try {
            if (this._class == null) {
                defineTransletClasses();
            }
        } catch (TransformerConfigurationException unused) {
        }
        return this._class;
    }

    public synchronized int getTransletIndex() {
        try {
            if (this._class == null) {
                defineTransletClasses();
            }
        } catch (TransformerConfigurationException unused) {
        }
        return this._transletIndex;
    }

    public synchronized String getTransletName() {
        return this._name;
    }

    @Override // javax.xml.transform.Templates
    public synchronized Transformer newTransformer() throws TransformerConfigurationException {
        TransformerImpl transformerImpl;
        transformerImpl = new TransformerImpl(getTransletInstance(), this._outputProperties, this._indentNumber, this._tfactory);
        URIResolver uRIResolver = this._uriResolver;
        if (uRIResolver != null) {
            transformerImpl.setURIResolver(uRIResolver);
        }
        if (this._tfactory.getFeature("http://javax.xml.XMLConstants/feature/secure-processing")) {
            transformerImpl.setSecureProcessing(true);
        }
        return transformerImpl;
    }

    public void setStylesheetDOM(DOM dom) {
        this._sdom.set(dom);
    }

    public synchronized void setTransletBytecodes(byte[][] bArr) {
        this._bytecodes = bArr;
    }

    public synchronized void setTransletName(String str) {
        this._name = str;
    }

    public synchronized void setURIResolver(URIResolver uRIResolver) {
        this._uriResolver = uRIResolver;
    }

    public TemplatesImpl(Class[] clsArr, String str, Properties properties, int i, TransformerFactoryImpl transformerFactoryImpl) {
        this._name = null;
        this._bytecodes = null;
        this._class = null;
        this._transletIndex = -1;
        this._auxClasses = null;
        this._uriResolver = null;
        this._sdom = new ThreadLocal();
        this._class = clsArr;
        this._name = str;
        this._transletIndex = 0;
        this._outputProperties = properties;
        this._indentNumber = i;
        this._tfactory = transformerFactoryImpl;
    }

    public TemplatesImpl() {
        this._name = null;
        this._bytecodes = null;
        this._class = null;
        this._transletIndex = -1;
        this._auxClasses = null;
        this._uriResolver = null;
        this._sdom = new ThreadLocal();
        this._tfactory = null;
    }
}
