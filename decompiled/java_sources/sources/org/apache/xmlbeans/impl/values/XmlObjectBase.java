package org.apache.xmlbeans.impl.values;

import com.fasterxml.jackson.core.base.ParserBase;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.material.motion.MotionUtils;
import com.google.protobuf.C6883t;
import com.sunia.HTREnginev2.owo;
import com.sunia.HTREnginev2.pwo;
import com.sunia.HTREnginev2.qwo;
import com.sunia.HTREnginev2.rwo;
import com.sunia.HTREnginev2.swo;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.xmlbeans.DelegateXmlObject;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDateSpecification;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.GDurationSpecification;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaLocalAttribute;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDocumentProperties;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlRuntimeException;
import org.apache.xmlbeans.impl.common.GlobalLock;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.common.XmlErrorWatcher;
import org.apache.xmlbeans.impl.common.XmlLocale;
import org.apache.xmlbeans.impl.common.XmlWhitespace;
import org.apache.xmlbeans.impl.schema.SchemaTypeImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeVisitorImpl;
import org.apache.xmlbeans.impl.util.LongUTFDataInputStream;
import org.apache.xmlbeans.impl.validator.Validator;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes13.dex */
public abstract class XmlObjectBase implements TypeStoreUser, Serializable, XmlObject, SimpleValue {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int FLAGS_DATED = 672;
    private static final int FLAGS_ELEMENT = 7;
    private static final int FLAG_ATTRIBUTE = 8;
    private static final int FLAG_COMPLEXCONTENT = 16384;
    private static final int FLAG_COMPLEXTYPE = 8192;
    private static final int FLAG_ELEMENT_DATED = 512;
    private static final int FLAG_FIXED = 4;
    private static final int FLAG_HASDEFAULT = 2;
    private static final int FLAG_IMMUTABLE = 4096;
    private static final int FLAG_ISDEFAULT = 256;
    private static final int FLAG_NIL = 64;
    private static final int FLAG_NILLABLE = 1;
    private static final int FLAG_NIL_DATED = 128;
    private static final int FLAG_NOT_VARIABLE = 32768;
    private static final int FLAG_ORPHANED = 2048;
    private static final int FLAG_SETTINGDEFAULT = 1024;
    private static final int FLAG_STORE = 16;
    private static final int FLAG_VALIDATE_ON_SET = 65536;
    private static final int FLAG_VALUE_DATED = 32;
    public static final short KIND_SETTERHELPER_ARRAYITEM = 2;
    public static final short KIND_SETTERHELPER_SINGLETON = 1;
    public static final short MAJOR_VERSION_NUMBER = 1;
    public static final short MINOR_VERSION_NUMBER = 1;
    private int _flags = 65;
    private Object _textsource;
    public static final ValidationContext _voorVc = new ValueOutOfRangeValidationContext();
    private static final BigInteger _max = BigInteger.valueOf(Long.MAX_VALUE);
    private static final BigInteger _min = BigInteger.valueOf(Long.MIN_VALUE);
    private static final XmlOptions _toStringOptions = buildInnerPrettyOptions();
    private static final XmlObject[] EMPTY_RESULT = new XmlObject[0];

    /* loaded from: classes13.dex */
    public static final class ImmutableValueValidationContext implements ValidationContext {
        private final Collection<XmlError> _coll;
        private final XmlObject _loc;

        public ImmutableValueValidationContext(Collection<XmlError> collection, XmlObject xmlObject) {
            this._coll = collection;
            this._loc = xmlObject;
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str) {
            this._coll.add(XmlError.forObject(str, this._loc));
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str, Object[] objArr) {
            this._coll.add(XmlError.forObject(str, objArr, this._loc));
        }
    }

    /* loaded from: classes13.dex */
    public static class SerializedInteriorObject implements Serializable {
        private static final long serialVersionUID = 1;
        transient XmlObject _impl;
        transient XmlObject _root;

        private int distanceToRoot() {
            XmlCursor newCursor = this._impl.newCursor();
            int i = 0;
            while (!newCursor.toPrevToken().isNone()) {
                try {
                    if (!newCursor.currentTokenType().isNamespace()) {
                        i++;
                    }
                } finally {
                }
            }
            newCursor.close();
            return i;
        }

        private XmlObject objectAtDistance(int i) {
            XmlCursor newCursor = this._root.newCursor();
            while (i > 0) {
                try {
                    newCursor.toNextToken();
                    if (!newCursor.currentTokenType().isNamespace()) {
                        i--;
                    }
                } finally {
                }
            }
            XmlObject object = newCursor.getObject();
            newCursor.close();
            return object;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this._root = (XmlObject) objectInputStream.readObject();
            objectInputStream.readBoolean();
            this._impl = objectAtDistance(objectInputStream.readInt());
        }

        private Object readResolve() throws ObjectStreamException {
            return this._impl;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this._root);
            objectOutputStream.writeBoolean(false);
            objectOutputStream.writeInt(distanceToRoot());
        }

        private SerializedInteriorObject(XmlObject xmlObject, XmlObject xmlObject2) {
            this._impl = xmlObject;
            this._root = xmlObject2;
        }
    }

    /* loaded from: classes13.dex */
    public static class SerializedRootObject implements Serializable {
        private static final long serialVersionUID = 1;
        transient XmlObject _impl;
        transient Class<? extends XmlObject> _xbeanClass;

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            int i;
            int i2;
            String readObjectV0;
            try {
                this._xbeanClass = (Class) objectInputStream.readObject();
                int readUnsignedShort = objectInputStream.readUnsignedShort();
                if (readUnsignedShort == 0) {
                    i = objectInputStream.readUnsignedShort();
                    i2 = objectInputStream.readUnsignedShort();
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (i == 0) {
                    readObjectV0 = readObjectV0(objectInputStream, readUnsignedShort);
                    objectInputStream.readBoolean();
                } else {
                    if (i != 1) {
                        throw new IOException("Deserialization error: version number " + i + "." + i2 + " not supported.");
                    }
                    if (i2 != 1) {
                        throw new IOException("Deserialization error: version number " + i + "." + i2 + " not supported.");
                    }
                    readObjectV0 = (String) objectInputStream.readObject();
                    objectInputStream.readBoolean();
                }
                this._impl = XmlBeans.getContextTypeLoader().parse(readObjectV0, (SchemaType) null, new XmlOptions().setDocumentType(XmlBeans.typeForClass(this._xbeanClass)));
            } catch (Exception e) {
                throw new IOException(e.getMessage(), e);
            }
        }

        private String readObjectV0(ObjectInputStream objectInputStream, int i) throws IOException {
            byte[] bArr = new byte[i + 2];
            int i2 = 0;
            bArr[0] = (byte) ((i >> 8) & 255);
            bArr[1] = (byte) (i & 255);
            while (i2 < i) {
                int read = objectInputStream.read(bArr, i2 + 2, i - i2);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            if (i2 != i) {
                throw new IOException("Error reading backwards compatible XmlObject: number of bytes read (" + i2 + ") != number expected (" + i + MotionUtils.f31762d);
            }
            LongUTFDataInputStream longUTFDataInputStream = null;
            try {
                LongUTFDataInputStream longUTFDataInputStream2 = new LongUTFDataInputStream(new ByteArrayInputStream(bArr));
                try {
                    String readLongUTF = longUTFDataInputStream2.readLongUTF();
                    longUTFDataInputStream2.close();
                    return readLongUTF;
                } catch (Throwable th) {
                    th = th;
                    longUTFDataInputStream = longUTFDataInputStream2;
                    if (longUTFDataInputStream != null) {
                        longUTFDataInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private Object readResolve() throws ObjectStreamException {
            return this._impl;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this._xbeanClass);
            objectOutputStream.writeShort(0);
            objectOutputStream.writeShort(1);
            objectOutputStream.writeShort(1);
            objectOutputStream.writeObject(this._impl.xmlText());
            objectOutputStream.writeBoolean(false);
        }

        private SerializedRootObject(XmlObject xmlObject) {
            this._xbeanClass = xmlObject.schemaType().getJavaClass();
            this._impl = xmlObject;
        }
    }

    /* loaded from: classes13.dex */
    public static final class ValueOutOfRangeValidationContext implements ValidationContext {
        private ValueOutOfRangeValidationContext() {
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str) {
            throw new XmlValueOutOfRangeException(str);
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str, Object[] objArr) {
            throw new XmlValueOutOfRangeException(str, objArr);
        }
    }

    private static XmlObject[] _typedArray(XmlObject[] xmlObjectArr) {
        if (xmlObjectArr.length == 0) {
            return xmlObjectArr;
        }
        SchemaType schemaType = xmlObjectArr[0].schemaType();
        if (schemaType.equals(XmlObject.type) || schemaType.isNoType()) {
            return xmlObjectArr;
        }
        for (int i = 1; i < xmlObjectArr.length; i++) {
            if (xmlObjectArr[i].schemaType().isNoType()) {
                return xmlObjectArr;
            }
            schemaType = schemaType.getCommonBaseType(xmlObjectArr[i].schemaType());
            if (schemaType.equals(XmlObject.type)) {
                return xmlObjectArr;
            }
        }
        Class<? extends XmlObject> javaClass = schemaType.getJavaClass();
        while (javaClass == null) {
            schemaType = schemaType.getBaseType();
            if (XmlObject.type.equals(schemaType)) {
                return xmlObjectArr;
            }
            javaClass = schemaType.getJavaClass();
        }
        XmlObject[] xmlObjectArr2 = (XmlObject[]) Array.newInstance(javaClass, xmlObjectArr.length);
        System.arraycopy(xmlObjectArr, 0, xmlObjectArr2, 0, xmlObjectArr.length);
        return xmlObjectArr2;
    }

    private String apply_wscanon(String str) {
        return XmlWhitespace.collapse(str, get_wscanon_rule());
    }

    public static XmlOptions buildInnerPrettyOptions() {
        XmlOptions xmlOptions = new XmlOptions();
        xmlOptions.setSaveInner();
        xmlOptions.setSavePrettyPrint();
        xmlOptions.setSaveAggressiveNamespaces();
        xmlOptions.setUseDefaultNamespace();
        return xmlOptions;
    }

    private void check_element_dated() {
        int i = this._flags;
        if ((i & 512) != 0 && (i & 32768) == 0) {
            if ((i & 2048) != 0) {
                throw new XmlValueDisconnectedException();
            }
            this._flags = get_store().compute_flags() | (this._flags & (-520));
        }
        int i2 = this._flags;
        if ((i2 & 32768) != 0) {
            this._flags = i2 & (-513);
        }
    }

    private boolean comparable_value_spaces(SchemaType schemaType, SchemaType schemaType2) {
        if (!schemaType.isSimpleType() && !schemaType2.isSimpleType()) {
            return schemaType.getContentType() == schemaType2.getContentType();
        }
        if (schemaType.isSimpleType() && schemaType2.isSimpleType()) {
            if (schemaType.getSimpleVariety() == 3 && schemaType2.getSimpleVariety() == 3) {
                return true;
            }
            if (schemaType.getSimpleVariety() != 3 && schemaType2.getSimpleVariety() != 3) {
                return schemaType.getPrimitiveType().equals(schemaType2.getPrimitiveType());
            }
        }
        return false;
    }

    private int compareValueImpl(XmlObject xmlObject) {
        SchemaType instanceType;
        SchemaType instanceType2;
        try {
            instanceType = instanceType();
            instanceType2 = ((SimpleValue) xmlObject).instanceType();
        } catch (XmlValueOutOfRangeException unused) {
        }
        if (instanceType == null && instanceType2 == null) {
            return 0;
        }
        if (instanceType != null && instanceType2 != null && instanceType.isSimpleType() && !instanceType.isURType() && instanceType2.isSimpleType() && !instanceType2.isURType()) {
            if (instanceType.getPrimitiveType().getBuiltinTypeCode() != instanceType2.getPrimitiveType().getBuiltinTypeCode()) {
                return 2;
            }
            return compare_to(xmlObject);
        }
        return 2;
    }

    private XmlObject ensureStore() {
        String compute_text;
        if ((this._flags & 16) != 0) {
            return this;
        }
        check_dated();
        if ((this._flags & 64) != 0) {
            compute_text = "";
        } else {
            compute_text = compute_text(has_store() ? get_store() : null);
        }
        XmlObject newInstance = XmlObject.Factory.newInstance(new XmlOptions().setDocumentType(schemaType()));
        XmlCursor newCursor = newInstance.newCursor();
        try {
            newCursor.toNextToken();
            newCursor.insertChars(compute_text);
            newCursor.close();
            return newInstance;
        } finally {
        }
    }

    private List<XmlObjectBase> getBaseArray(QName qName) {
        check_orphaned();
        ArrayList arrayList = new ArrayList();
        get_store().find_all_element_users(qName, arrayList);
        return arrayList;
    }

    private String getPrimitiveTypeName() {
        SchemaType schemaType = schemaType();
        if (schemaType.isNoType()) {
            return "unknown";
        }
        SchemaType primitiveType = schemaType.getPrimitiveType();
        return primitiveType == null ? "complex" : primitiveType.getName().getLocalPart();
    }

    private XmlObject getRootXmlObject() {
        XmlCursor newCursor = newCursor();
        if (newCursor == null) {
            if (newCursor != null) {
                newCursor.close();
            }
            return this;
        }
        try {
            newCursor.toStartDoc();
            XmlObject object = newCursor.getObject();
            newCursor.close();
            return object;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    newCursor.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private XmlObjectBase getTargetForSetter(QName qName, int i, short s) {
        if (s == 1) {
            check_orphaned();
            XmlObjectBase xmlObjectBase = (XmlObjectBase) get_store().find_element_user(qName, i);
            if (xmlObjectBase == null) {
                xmlObjectBase = (XmlObjectBase) get_store().add_element_user(qName);
            }
            if (xmlObjectBase.isImmutable()) {
                throw new IllegalStateException("Cannot set the value of an immutable XmlObject");
            }
            return xmlObjectBase;
        }
        if (s != 2) {
            throw new IllegalArgumentException("Unknown kindSetterHelper: " + ((int) s));
        }
        check_orphaned();
        XmlObjectBase xmlObjectBase2 = (XmlObjectBase) get_store().find_element_user(qName, i);
        if (xmlObjectBase2 == null) {
            throw new IndexOutOfBoundsException();
        }
        if (xmlObjectBase2.isImmutable()) {
            throw new IllegalStateException("Cannot set the value of an immutable XmlObject");
        }
        return xmlObjectBase2;
    }

    private boolean isRootXmlObject() {
        XmlCursor newCursor = newCursor();
        if (newCursor == null) {
            if (newCursor == null) {
                return false;
            }
            newCursor.close();
            return false;
        }
        try {
            boolean z = !newCursor.toParent();
            newCursor.close();
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    newCursor.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static Object java_value(XmlObject xmlObject) {
        if (xmlObject.isNil()) {
            return null;
        }
        if (!(xmlObject instanceof XmlAnySimpleType)) {
            return xmlObject;
        }
        SimpleValue simpleValue = (SimpleValue) xmlObject;
        SchemaType instanceType = simpleValue.instanceType();
        if (instanceType.getSimpleVariety() == 3) {
            return simpleValue.getListValue();
        }
        switch (instanceType.getPrimitiveType().getBuiltinTypeCode()) {
            case 2:
            case 8:
            case 12:
            default:
                return simpleValue.getStringValue();
            case 3:
                return simpleValue.getBooleanValue() ? Boolean.TRUE : Boolean.FALSE;
            case 4:
            case 5:
                return simpleValue.getByteArrayValue();
            case 6:
                return simpleValue.getStringValue();
            case 7:
                return simpleValue.getQNameValue();
            case 9:
                return Float.valueOf(simpleValue.getFloatValue());
            case 10:
                return Double.valueOf(simpleValue.getDoubleValue());
            case 11:
                int decimalSize = instanceType.getDecimalSize();
                if (decimalSize == 8) {
                    return Byte.valueOf(simpleValue.getByteValue());
                }
                if (decimalSize == 16) {
                    return Short.valueOf(simpleValue.getShortValue());
                }
                if (decimalSize == 32) {
                    return Integer.valueOf(simpleValue.getIntValue());
                }
                if (decimalSize == 64) {
                    return Long.valueOf(simpleValue.getLongValue());
                }
                switch (decimalSize) {
                    case 1000000:
                        return simpleValue.getBigIntegerValue();
                    case SchemaType.SIZE_BIG_DECIMAL /* 1000001 */:
                    default:
                        return simpleValue.getBigDecimalValue();
                }
            case 13:
                return simpleValue.getGDurationValue();
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return simpleValue.getCalendarValue();
        }
    }

    private static XmlOptions makeInnerOptions(XmlOptions xmlOptions) {
        XmlOptions xmlOptions2 = new XmlOptions(xmlOptions);
        xmlOptions2.setSaveInner();
        return xmlOptions2;
    }

    private TypeStoreUser objSetterHelper(XmlObjectBase xmlObjectBase, QName qName, int i, short s) {
        XmlObjectBase targetForSetter = getTargetForSetter(qName, i, s);
        targetForSetter.check_orphaned();
        xmlObjectBase.check_orphaned();
        return targetForSetter.get_store().copy_contents_from(xmlObjectBase.get_store()).get_store().change_type(xmlObjectBase.schemaType());
    }

    private boolean preCheck() {
        if (has_store()) {
            return get_store().get_locale().noSync();
        }
        return false;
    }

    private SchemaField schemaField() {
        SchemaField containerField = schemaType().getContainerField();
        return containerField == null ? get_store().get_schema_field() : containerField;
    }

    private void set_commit() {
        int i = this._flags;
        boolean z = (i & 64) != 0;
        int i2 = i & (-321);
        this._flags = i2;
        if ((i2 & 16) == 0) {
            this._textsource = null;
            return;
        }
        this._flags = i2 & (-673);
        get_store().invalidate_text();
        if (z) {
            get_store().invalidate_nil();
        }
        this._flags &= -673;
    }

    private void set_prepare() {
        check_element_dated();
        if ((this._flags & 4096) != 0) {
            throw new IllegalStateException();
        }
    }

    private TypeStoreUser setterHelper(XmlObjectBase xmlObjectBase) {
        check_orphaned();
        xmlObjectBase.check_orphaned();
        return get_store().copy_contents_from(xmlObjectBase.get_store()).get_store().change_type(xmlObjectBase.schemaType());
    }

    private static XmlObjectBase underlying(XmlObject xmlObject) {
        if (xmlObject == null) {
            return null;
        }
        if (xmlObject instanceof XmlObjectBase) {
            return (XmlObjectBase) xmlObject;
        }
        while (xmlObject instanceof DelegateXmlObject) {
            xmlObject = ((DelegateXmlObject) xmlObject).underlyingXmlObject();
        }
        if (xmlObject instanceof XmlObjectBase) {
            return (XmlObjectBase) xmlObject;
        }
        throw new IllegalStateException("Non-native implementations of XmlObject should extend FilterXmlObject or implement DelegateXmlObject");
    }

    private void update_from_wscanon_text(String str) {
        int i = this._flags;
        if ((i & 2) == 0 || (i & 1024) != 0 || (i & 8) != 0 || !str.equals("")) {
            set_text(str);
            this._flags &= -321;
            return;
        }
        String compute_default_text = get_store().compute_default_text();
        if (compute_default_text == null) {
            throw new XmlValueOutOfRangeException();
        }
        this._flags |= 1024;
        try {
            setStringValue(compute_default_text);
            this._flags = (this._flags & (-1025) & (-65)) | 256;
        } catch (Throwable th) {
            this._flags &= -1025;
            throw th;
        }
    }

    private boolean validate_immutable(XmlOptions xmlOptions) {
        XmlErrorWatcher xmlErrorWatcher = new XmlErrorWatcher(xmlOptions == null ? null : xmlOptions.getErrorListener());
        if (!schemaType().isSimpleType() && (xmlOptions == null || !xmlOptions.isValidateTextOnly())) {
            for (SchemaProperty schemaProperty : schemaType().getProperties()) {
                if (schemaProperty.getMinOccurs().signum() > 0) {
                    if (schemaProperty.isAttribute()) {
                        xmlErrorWatcher.add(XmlError.forObject(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_REQUIRED_ATTRIBUTE, new Object[]{QNameHelper.pretty(schemaProperty.getName())}, this));
                    } else {
                        xmlErrorWatcher.add(XmlError.forObject(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_ELEMENT, new Object[]{schemaProperty.getMinOccurs(), QNameHelper.pretty(schemaProperty.getName())}, this));
                    }
                }
            }
            if (schemaType().getContentType() != 2) {
                return !xmlErrorWatcher.hasError();
            }
        }
        String str = (String) this._textsource;
        if (str == null) {
            str = "";
        }
        validate_simpleval(str, new ImmutableValueValidationContext(xmlErrorWatcher, this));
        return !xmlErrorWatcher.hasError();
    }

    private boolean valueEqualsImpl(XmlObject xmlObject) {
        check_dated();
        SchemaType instanceType = instanceType();
        SchemaType instanceType2 = ((SimpleValue) xmlObject).instanceType();
        if (instanceType == null && instanceType2 == null) {
            return true;
        }
        if (instanceType == null || instanceType2 == null || !comparable_value_spaces(instanceType, instanceType2)) {
            return false;
        }
        return xmlObject.schemaType().getSimpleVariety() == 2 ? underlying(xmlObject).equal_to(this) : equal_to(xmlObject);
    }

    public final XmlObject _copy() {
        return _copy(null);
    }

    public boolean _isComplexContent() {
        return (this._flags & 16384) != 0;
    }

    public boolean _isComplexType() {
        return (this._flags & 8192) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final XmlObject _set(XmlObject xmlObject) {
        ?? r1;
        if (isImmutable()) {
            throw new IllegalStateException("Cannot set the value of an immutable XmlObject");
        }
        XmlObjectBase underlying = underlying(xmlObject);
        if (underlying == null) {
            setNil();
            return this;
        }
        if (underlying.isImmutable()) {
            setStringValue(underlying.getStringValue());
            this = this;
        } else {
            check_orphaned();
            underlying.check_orphaned();
            r1 = get_store().copy_contents_from(underlying.get_store()).get_store().change_type(underlying.schemaType());
        }
        return (XmlObject) r1;
    }

    public boolean _validateOnSet() {
        return (this._flags & 65536) != 0;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final void attach_store(TypeStore typeStore) {
        this._textsource = typeStore;
        int i = this._flags;
        if ((i & 4096) != 0) {
            throw new IllegalStateException();
        }
        this._flags = i | 688;
        if (typeStore.is_attribute()) {
            this._flags |= 8;
        }
        if (typeStore.validate_on_set()) {
            this._flags |= 65536;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public boolean build_nil() {
        return (this._flags & 64) != 0;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final String build_text(NamespaceManager namespaceManager) {
        if ((this._flags & 320) != 0) {
            return "";
        }
        if (namespaceManager == null) {
            namespaceManager = has_store() ? get_store() : null;
        }
        return compute_text(namespaceManager);
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject changeType(SchemaType schemaType) {
        XmlObject xmlObject;
        if (schemaType == null) {
            throw new IllegalArgumentException("Invalid type (null)");
        }
        if ((this._flags & 16) == 0) {
            throw new IllegalStateException("XML Value Objects cannot have thier type changed");
        }
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().change_type(schemaType);
        }
        return xmlObject;
    }

    public final void check_dated() {
        String str;
        int i = this._flags;
        if ((i & FLAGS_DATED) != 0) {
            if ((i & 2048) != 0) {
                throw new XmlValueDisconnectedException();
            }
            check_element_dated();
            if ((this._flags & 512) != 0) {
                this._flags = get_store().compute_flags() | (this._flags & (-520));
            }
            boolean z = false;
            if ((this._flags & 128) != 0) {
                if (get_store().find_nil()) {
                    int i2 = this._flags;
                    if ((i2 & 1) == 0 && (i2 & 65536) != 0) {
                        throw new XmlValueOutOfRangeException();
                    }
                    set_nil();
                    this._flags |= 64;
                    z = true;
                } else {
                    this._flags &= -65;
                }
                this._flags &= -129;
            }
            if (!z) {
                if ((this._flags & 16384) != 0 || (str = get_wscanon_text()) == null) {
                    update_from_complex_content();
                } else {
                    NamespaceContext.push(new NamespaceContext(get_store()));
                    try {
                        update_from_wscanon_text(str);
                    } finally {
                        NamespaceContext.pop();
                    }
                }
            }
            this._flags &= -33;
        }
    }

    public final void check_orphaned() {
        if (is_orphaned()) {
            throw new XmlValueDisconnectedException();
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final int compareTo(Object obj) {
        int compareValue = compareValue((XmlObject) obj);
        if (compareValue != 2) {
            return compareValue;
        }
        throw new ClassCastException();
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final int compareValue(XmlObject xmlObject) {
        int compareValueImpl;
        int compareValueImpl2;
        if (xmlObject == null) {
            return 2;
        }
        boolean z = false;
        try {
            try {
                if (isImmutable()) {
                    if (xmlObject.isImmutable()) {
                        return compareValueImpl(xmlObject);
                    }
                    synchronized (xmlObject.monitor()) {
                        compareValueImpl2 = compareValueImpl(xmlObject);
                    }
                    return compareValueImpl2;
                }
                if (!xmlObject.isImmutable() && monitor() != xmlObject.monitor()) {
                    GlobalLock.acquire();
                    try {
                        try {
                            synchronized (monitor()) {
                                try {
                                    try {
                                        synchronized (xmlObject.monitor()) {
                                            try {
                                                GlobalLock.release();
                                                return compareValueImpl(xmlObject);
                                            } catch (Throwable th) {
                                                th = th;
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (InterruptedException e) {
                        e = e;
                        throw new XmlRuntimeException(e);
                    } catch (Throwable th5) {
                        th = th5;
                        z = true;
                        if (z) {
                            GlobalLock.release();
                        }
                        throw th;
                    }
                }
                synchronized (monitor()) {
                    compareValueImpl = compareValueImpl(xmlObject);
                }
                return compareValueImpl;
            } catch (InterruptedException e2) {
                e = e2;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public int compare_to(XmlObject xmlObject) {
        return equal_to(xmlObject) ? 0 : 2;
    }

    public abstract String compute_text(NamespaceManager namespaceManager);

    @Override // org.apache.xmlbeans.XmlObject
    public final XmlObject copy() {
        XmlObject _copy;
        if (preCheck()) {
            return _copy();
        }
        synchronized (monitor()) {
            _copy = _copy();
        }
        return _copy;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public TypeStoreUser create_attribute_user(QName qName) {
        return (TypeStoreUser) ((SchemaTypeImpl) schemaType()).createAttributeType(qName, get_store().get_schematypeloader());
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public TypeStoreUser create_element_user(QName qName, QName qName2) {
        return (TypeStoreUser) ((SchemaTypeImpl) schemaType()).createElementType(qName, qName2, get_store().get_schematypeloader());
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public void disconnect_store() {
        this._flags |= 2720;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XmlDocumentProperties documentProperties() {
        XmlCursor newCursorForce = newCursorForce();
        try {
            XmlDocumentProperties documentProperties = newCursorForce.documentProperties();
            newCursorForce.close();
            return documentProperties;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void dump() {
        XmlCursor newCursorForce = newCursorForce();
        try {
            newCursorForce.dump();
            newCursorForce.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public int elementFlags() {
        check_element_dated();
        return this._flags & 7;
    }

    public abstract boolean equal_to(XmlObject xmlObject);

    public final boolean equals(Object obj) {
        if (!isImmutable()) {
            return super.equals(obj);
        }
        if (!(obj instanceof XmlObject)) {
            return false;
        }
        XmlObject xmlObject = (XmlObject) obj;
        if (xmlObject.isImmutable()) {
            return valueEquals(xmlObject);
        }
        return false;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject[] execQuery(String str) {
        return execQuery(str, null);
    }

    public final XmlObject generatedSetterHelperImpl(XmlObject xmlObject, QName qName, int i, short s) {
        XmlObject xmlObject2;
        XmlObject xmlObject3;
        XmlObject xmlObject4;
        XmlObjectBase targetForSetter;
        XmlObjectBase targetForSetter2;
        XmlObjectBase underlying = underlying(xmlObject);
        if (underlying == null) {
            synchronized (monitor()) {
                targetForSetter2 = getTargetForSetter(qName, i, s);
                targetForSetter2.setNil();
            }
            return targetForSetter2;
        }
        if (underlying.isImmutable()) {
            synchronized (monitor()) {
                targetForSetter = getTargetForSetter(qName, i, s);
                targetForSetter.setStringValue(underlying.getStringValue());
            }
            return targetForSetter;
        }
        boolean preCheck = preCheck();
        boolean preCheck2 = underlying.preCheck();
        if (monitor() == underlying.monitor()) {
            if (preCheck) {
                return (XmlObject) objSetterHelper(underlying, qName, i, s);
            }
            synchronized (monitor()) {
                xmlObject4 = (XmlObject) objSetterHelper(underlying, qName, i, s);
            }
            return xmlObject4;
        }
        if (preCheck) {
            if (preCheck2) {
                return (XmlObject) objSetterHelper(underlying, qName, i, s);
            }
            synchronized (underlying.monitor()) {
                xmlObject3 = (XmlObject) objSetterHelper(underlying, qName, i, s);
            }
            return xmlObject3;
        }
        if (preCheck2) {
            synchronized (monitor()) {
                xmlObject2 = (XmlObject) objSetterHelper(underlying, qName, i, s);
            }
            return xmlObject2;
        }
        boolean z = false;
        try {
            try {
                GlobalLock.acquire();
            } catch (Throwable th) {
                th = th;
            }
        } catch (InterruptedException e) {
            e = e;
        }
        try {
            try {
                synchronized (monitor()) {
                    try {
                        try {
                            synchronized (underlying.monitor()) {
                                try {
                                    GlobalLock.release();
                                    return (XmlObject) objSetterHelper(underlying, qName, i, s);
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (InterruptedException e2) {
            e = e2;
            throw new XmlRuntimeException(e);
        } catch (Throwable th6) {
            th = th6;
            z = true;
            if (z) {
                GlobalLock.release();
            }
            throw th;
        }
    }

    public BigDecimal getBigDecimalValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "numeric"});
    }

    public BigInteger getBigIntegerValue() {
        BigDecimal bigDecimalValue = getBigDecimalValue();
        if (bigDecimalValue == null) {
            return null;
        }
        return bigDecimalValue.toBigInteger();
    }

    public boolean[] getBooleanArray(QName qName) {
        boolean[] zArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qName);
            int size = baseArray.size();
            zArr = new boolean[size];
            for (int i = 0; i < size; i++) {
                zArr[i] = baseArray.get(i).getBooleanValue();
            }
        }
        return zArr;
    }

    public boolean getBooleanValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "boolean"});
    }

    public byte[] getByteArray(QName qName) {
        byte[] bArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qName);
            int size = baseArray.size();
            bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = baseArray.get(i).getByteValue();
            }
        }
        return bArr;
    }

    public byte[] getByteArrayValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "byte[]"});
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public byte getByteValue() {
        long intValue = getIntValue();
        if (intValue > 127) {
            throw new XmlValueOutOfRangeException();
        }
        if (intValue >= -128) {
            return (byte) intValue;
        }
        throw new XmlValueOutOfRangeException();
    }

    public Calendar getCalendarValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "Calendar"});
    }

    public Date getDateValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "Date"});
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node getDomNode() {
        XmlCursor newCursorForce = newCursorForce();
        try {
            Node domNode = newCursorForce.getDomNode();
            newCursorForce.close();
            return domNode;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public double[] getDoubleArray(QName qName) {
        double[] array;
        synchronized (monitor()) {
            array = getBaseArray(qName).stream().map(new owo(SimpleValue.class)).mapToDouble(new pwo()).toArray();
        }
        return array;
    }

    public double getDoubleValue() {
        BigDecimal bigDecimalValue = getBigDecimalValue();
        if (bigDecimalValue == null) {
            return 0.0d;
        }
        return bigDecimalValue.doubleValue();
    }

    public <T> T[] getEnumArray(QName qName, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            tArr = (T[]) getBaseArray(qName).stream().map(new qwo()).toArray(intFunction);
        }
        return tArr;
    }

    public StringEnumAbstractBase getEnumValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "enum"});
    }

    public float[] getFloatArray(QName qName) {
        float[] fArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qName);
            int size = baseArray.size();
            fArr = new float[size];
            for (int i = 0; i < size; i++) {
                fArr[i] = baseArray.get(i).getFloatValue();
            }
        }
        return fArr;
    }

    public float getFloatValue() {
        BigDecimal bigDecimalValue = getBigDecimalValue();
        if (bigDecimalValue == null) {
            return 0.0f;
        }
        return bigDecimalValue.floatValue();
    }

    public GDate getGDateValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "Date"});
    }

    public GDuration getGDurationValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), SsManifestParser.C4933d.f26659s});
    }

    public int[] getIntArray(QName qName) {
        int[] array;
        synchronized (monitor()) {
            array = getBaseArray(qName).stream().map(new owo(SimpleValue.class)).mapToInt(new rwo()).toArray();
        }
        return array;
    }

    public int getIntValue() {
        long longValue = getLongValue();
        if (longValue > 2147483647L) {
            throw new XmlValueOutOfRangeException();
        }
        if (longValue >= ParserBase.f21225q) {
            return (int) longValue;
        }
        throw new XmlValueOutOfRangeException();
    }

    public List<?> getListValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), C6883t.f38147a});
    }

    public long[] getLongArray(QName qName) {
        long[] array;
        synchronized (monitor()) {
            array = getBaseArray(qName).stream().map(new owo(SimpleValue.class)).mapToLong(new swo()).toArray();
        }
        return array;
    }

    public long getLongValue() {
        BigInteger bigIntegerValue = getBigIntegerValue();
        if (bigIntegerValue == null) {
            return 0L;
        }
        if (bigIntegerValue.compareTo(_max) >= 0) {
            throw new XmlValueOutOfRangeException();
        }
        if (bigIntegerValue.compareTo(_min) > 0) {
            return bigIntegerValue.longValue();
        }
        throw new XmlValueOutOfRangeException();
    }

    public <T> T[] getObjectArray(QName qName, Function<SimpleValue, T> function, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            tArr = (T[]) getBaseArray(qName).stream().map(function).toArray(intFunction);
        }
        return tArr;
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public Object getObjectValue() {
        return java_value(this);
    }

    public QName getQNameValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), "QName"});
    }

    public short[] getShortArray(QName qName) {
        short[] sArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qName);
            int size = baseArray.size();
            sArr = new short[size];
            for (int i = 0; i < size; i++) {
                sArr[i] = baseArray.get(i).getShortValue();
            }
        }
        return sArr;
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public short getShortValue() {
        long intValue = getIntValue();
        if (intValue > 32767) {
            throw new XmlValueOutOfRangeException();
        }
        if (intValue >= -32768) {
            return (short) intValue;
        }
        throw new XmlValueOutOfRangeException();
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public String getStringValue() {
        if (isImmutable()) {
            if ((this._flags & 64) != 0) {
                return null;
            }
            return compute_text(null);
        }
        synchronized (monitor()) {
            if (_isComplexContent()) {
                return get_store().fetch_text(1);
            }
            check_dated();
            if ((this._flags & 64) != 0) {
                return null;
            }
            return compute_text(has_store() ? get_store() : null);
        }
    }

    public final XmlLocale getXmlLocale() {
        return get_store().get_locale();
    }

    public <T extends XmlObject> T[] getXmlObjectArray(QName qName, T[] tArr) {
        T[] tArr2;
        synchronized (monitor()) {
            tArr2 = (T[]) ((XmlObject[]) getBaseArray(qName).toArray(tArr));
        }
        return tArr2;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public SchemaField get_attribute_field(QName qName) {
        SchemaAttributeModel attributeModel = schemaType().getAttributeModel();
        if (attributeModel == null) {
            return null;
        }
        return attributeModel.getAttribute(qName);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public SchemaType get_attribute_type(QName qName) {
        return schemaType().getAttributeType(qName, get_store().get_schematypeloader());
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public int get_attributeflags(QName qName) {
        SchemaProperty attributeProperty;
        if (_isComplexType() && (attributeProperty = schemaType().getAttributeProperty(qName)) != null) {
            return (attributeProperty.hasDefault() == 0 ? 0 : 2) | (attributeProperty.hasFixed() != 0 ? 4 : 0);
        }
        return 0;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public String get_default_attribute_text(QName qName) {
        if (!_isComplexType()) {
            throw new IllegalStateException();
        }
        SchemaProperty attributeProperty = schemaType().getAttributeProperty(qName);
        return attributeProperty == null ? "" : attributeProperty.getDefaultText();
    }

    public XmlAnySimpleType get_default_attribute_value(QName qName) {
        SchemaLocalAttribute attribute;
        SchemaAttributeModel attributeModel = schemaType().getAttributeModel();
        if (attributeModel == null || (attribute = attributeModel.getAttribute(qName)) == null) {
            return null;
        }
        return attribute.getDefaultValue();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public String get_default_element_text(QName qName) {
        if (!_isComplexContent()) {
            throw new IllegalStateException();
        }
        SchemaProperty elementProperty = schemaType().getElementProperty(qName);
        return elementProperty == null ? "" : elementProperty.getDefaultText();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final QNameSet get_element_ending_delimiters(QName qName) {
        SchemaProperty elementProperty = schemaType().getElementProperty(qName);
        if (elementProperty == null) {
            return null;
        }
        return elementProperty.getJavaSetterDelimiter();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public SchemaType get_element_type(QName qName, QName qName2) {
        return schemaType().getElementType(qName, qName2, get_store().get_schematypeloader());
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public int get_elementflags(QName qName) {
        SchemaProperty elementProperty;
        if (!_isComplexContent() || (elementProperty = schemaType().getElementProperty(qName)) == null) {
            return 0;
        }
        if (elementProperty.hasDefault() == 1 || elementProperty.hasFixed() == 1 || elementProperty.hasNillable() == 1) {
            return -1;
        }
        return (elementProperty.hasDefault() == 0 ? 0 : 2) | (elementProperty.hasFixed() == 0 ? 0 : 4) | (elementProperty.hasNillable() != 0 ? 1 : 0);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public SchemaType get_schema_type() {
        return schemaType();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final TypeStore get_store() {
        return (TypeStore) this._textsource;
    }

    public int get_wscanon_rule() {
        return 3;
    }

    public final String get_wscanon_text() {
        return (this._flags & 16) == 0 ? apply_wscanon((String) this._textsource) : get_store().fetch_text(get_wscanon_rule());
    }

    public final boolean has_store() {
        return (this._flags & 16) != 0;
    }

    public final int hashCode() {
        if (!isImmutable()) {
            return super.hashCode();
        }
        synchronized (monitor()) {
            if (isNil()) {
                return 0;
            }
            return value_hash_code();
        }
    }

    public void initComplexType(boolean z, boolean z2) {
        this._flags = (z ? 8192 : 0) | (z2 ? 16384 : 0) | this._flags;
    }

    public void init_flags(SchemaProperty schemaProperty) {
        if (schemaProperty == null) {
            return;
        }
        if (schemaProperty.hasDefault() == 1 || schemaProperty.hasFixed() == 1 || schemaProperty.hasNillable() == 1) {
            return;
        }
        int i = this._flags & (-8);
        this._flags = i;
        this._flags = (schemaProperty.hasDefault() == 0 ? 0 : 2) | (schemaProperty.hasFixed() == 0 ? 0 : 4) | (schemaProperty.hasNillable() == 0 ? 0 : 1) | 32768 | i;
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public SchemaType instanceType() {
        SchemaType schemaType;
        synchronized (monitor()) {
            schemaType = isNil() ? null : schemaType();
        }
        return schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final void invalidate_element_order() {
        this._flags |= FLAGS_DATED;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final void invalidate_nilvalue() {
        this._flags |= 160;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final void invalidate_value() {
        this._flags |= 32;
    }

    public final boolean isDefault() {
        check_dated();
        return (this._flags & 256) != 0;
    }

    public final boolean isDefaultable() {
        check_element_dated();
        return (this._flags & 2) != 0;
    }

    public final boolean isFixed() {
        check_element_dated();
        return (this._flags & 4) != 0;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public boolean isImmutable() {
        return (this._flags & 4096) != 0;
    }

    public boolean isInstanceOf(SchemaType schemaType) {
        if (schemaType.getSimpleVariety() != 2) {
            for (SchemaType instanceType = instanceType(); instanceType != null; instanceType = instanceType.getBaseType()) {
                if (schemaType == instanceType) {
                    return true;
                }
            }
            return false;
        }
        HashSet hashSet = new HashSet(Arrays.asList(schemaType.getUnionConstituentTypes()));
        for (SchemaType instanceType2 = instanceType(); instanceType2 != null; instanceType2 = instanceType2.getBaseType()) {
            if (hashSet.contains(instanceType2)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final boolean isNil() {
        boolean z;
        synchronized (monitor()) {
            check_dated();
            z = (this._flags & 64) != 0;
        }
        return z;
    }

    public final boolean isNillable() {
        check_element_dated();
        return (this._flags & 1) != 0;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public boolean is_child_element_order_sensitive() {
        if (_isComplexType()) {
            return schemaType().isOrderSensitive();
        }
        return false;
    }

    public boolean is_defaultable_ws(String str) {
        return true;
    }

    public final boolean is_orphaned() {
        return (this._flags & 2048) != 0;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public final Object monitor() {
        return has_store() ? get_store().get_locale() : this;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XmlCursor newCursor() {
        XmlCursor new_cursor;
        if ((this._flags & 16) == 0) {
            throw new IllegalStateException("XML Value Objects cannot create cursors");
        }
        check_orphaned();
        XmlLocale xmlLocale = getXmlLocale();
        if (xmlLocale.noSync()) {
            xmlLocale.enter();
            try {
                return get_store().new_cursor();
            } finally {
            }
        }
        synchronized (xmlLocale) {
            xmlLocale.enter();
            try {
                new_cursor = get_store().new_cursor();
            } finally {
            }
        }
        return new_cursor;
    }

    public XmlCursor newCursorForce() {
        XmlCursor newCursor;
        synchronized (monitor()) {
            newCursor = ensureStore().newCursor();
        }
        return newCursor;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node newDomNode() {
        return newDomNode(null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public InputStream newInputStream() {
        return newInputStream(null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Reader newReader() {
        return newReader(null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XMLStreamReader newXMLStreamReader() {
        return newXMLStreamReader(null);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public TypeStoreVisitor new_visitor() {
        if (_isComplexContent()) {
            return new SchemaTypeVisitorImpl(schemaType().getContentModel());
        }
        return null;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(ContentHandler contentHandler, LexicalHandler lexicalHandler, XmlOptions xmlOptions) throws SAXException {
        XmlCursor newCursorForce = newCursorForce();
        try {
            newCursorForce.save(contentHandler, lexicalHandler, makeInnerOptions(xmlOptions));
            newCursorForce.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public abstract SchemaType schemaType();

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
    
        if (r2.toFirstAttribute() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        if (r2.getName().equals(r3) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r2.toNextAttribute() != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x001f, code lost:
    
        r3 = r2.getObject();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0023, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        return null;
     */
    @Override // org.apache.xmlbeans.XmlObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.XmlObject selectAttribute(javax.xml.namespace.QName r3) {
        /*
            r2 = this;
            org.apache.xmlbeans.XmlCursor r2 = r2.newCursor()
            boolean r0 = r2.isContainer()     // Catch: java.lang.Throwable -> L31
            r1 = 0
            if (r0 != 0) goto Lf
            r2.close()
            return r1
        Lf:
            boolean r0 = r2.toFirstAttribute()     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L2d
        L15:
            javax.xml.namespace.QName r0 = r2.getName()     // Catch: java.lang.Throwable -> L31
            boolean r0 = r0.equals(r3)     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L27
            org.apache.xmlbeans.XmlObject r3 = r2.getObject()     // Catch: java.lang.Throwable -> L31
            r2.close()
            return r3
        L27:
            boolean r0 = r2.toNextAttribute()     // Catch: java.lang.Throwable -> L31
            if (r0 != 0) goto L15
        L2d:
            r2.close()
            return r1
        L31:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L33
        L33:
            r0 = move-exception
            if (r2 == 0) goto L3e
            r2.close()     // Catch: java.lang.Throwable -> L3a
            goto L3e
        L3a:
            r2 = move-exception
            r3.addSuppressed(r2)
        L3e:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlObjectBase.selectAttribute(javax.xml.namespace.QName):org.apache.xmlbeans.XmlObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        if (r2.toFirstAttribute() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r3.contains(r2.getName()) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        r0.add(r2.getObject());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (r2.toNextAttribute() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (r0.size() != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        r3 = (org.apache.xmlbeans.XmlObject[]) r0.toArray(org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        return r3;
     */
    @Override // org.apache.xmlbeans.XmlObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.XmlObject[] selectAttributes(org.apache.xmlbeans.QNameSet r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L5a
            org.apache.xmlbeans.XmlCursor r2 = r2.newCursor()
            boolean r0 = r2.isContainer()     // Catch: java.lang.Throwable -> L4c
            if (r0 != 0) goto L12
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L12:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4c
            r0.<init>()     // Catch: java.lang.Throwable -> L4c
            boolean r1 = r2.toFirstAttribute()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L34
        L1d:
            javax.xml.namespace.QName r1 = r2.getName()     // Catch: java.lang.Throwable -> L4c
            boolean r1 = r3.contains(r1)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L2e
            org.apache.xmlbeans.XmlObject r1 = r2.getObject()     // Catch: java.lang.Throwable -> L4c
            r0.add(r1)     // Catch: java.lang.Throwable -> L4c
        L2e:
            boolean r1 = r2.toNextAttribute()     // Catch: java.lang.Throwable -> L4c
            if (r1 != 0) goto L1d
        L34:
            int r3 = r0.size()     // Catch: java.lang.Throwable -> L4c
            if (r3 != 0) goto L40
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L40:
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            java.lang.Object[] r3 = r0.toArray(r3)     // Catch: java.lang.Throwable -> L4c
            org.apache.xmlbeans.XmlObject[] r3 = (org.apache.xmlbeans.XmlObject[]) r3     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L4c:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L4e
        L4e:
            r0 = move-exception
            if (r2 == 0) goto L59
            r2.close()     // Catch: java.lang.Throwable -> L55
            goto L59
        L55:
            r2 = move-exception
            r3.addSuppressed(r2)
        L59:
            throw r0
        L5a:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r2.<init>()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlObjectBase.selectAttributes(org.apache.xmlbeans.QNameSet):org.apache.xmlbeans.XmlObject[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        if (r2.toChild(r3) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        r0.add(r2.getObject());
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r2.toNextSibling(r3) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (r0.size() != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
    
        r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        r3 = (org.apache.xmlbeans.XmlObject[]) r0.toArray(org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        return r3;
     */
    @Override // org.apache.xmlbeans.XmlObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.XmlObject[] selectChildren(javax.xml.namespace.QName r3) {
        /*
            r2 = this;
            org.apache.xmlbeans.XmlCursor r2 = r2.newCursor()
            boolean r0 = r2.isContainer()     // Catch: java.lang.Throwable -> L40
            if (r0 != 0) goto L10
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L40
            r2.close()
            return r3
        L10:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L40
            r0.<init>()     // Catch: java.lang.Throwable -> L40
            boolean r1 = r2.toChild(r3)     // Catch: java.lang.Throwable -> L40
            if (r1 == 0) goto L28
        L1b:
            org.apache.xmlbeans.XmlObject r1 = r2.getObject()     // Catch: java.lang.Throwable -> L40
            r0.add(r1)     // Catch: java.lang.Throwable -> L40
            boolean r1 = r2.toNextSibling(r3)     // Catch: java.lang.Throwable -> L40
            if (r1 != 0) goto L1b
        L28:
            int r3 = r0.size()     // Catch: java.lang.Throwable -> L40
            if (r3 != 0) goto L34
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L40
            r2.close()
            return r3
        L34:
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L40
            java.lang.Object[] r3 = r0.toArray(r3)     // Catch: java.lang.Throwable -> L40
            org.apache.xmlbeans.XmlObject[] r3 = (org.apache.xmlbeans.XmlObject[]) r3     // Catch: java.lang.Throwable -> L40
            r2.close()
            return r3
        L40:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L42
        L42:
            r0 = move-exception
            if (r2 == 0) goto L4d
            r2.close()     // Catch: java.lang.Throwable -> L49
            goto L4d
        L49:
            r2 = move-exception
            r3.addSuppressed(r2)
        L4d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlObjectBase.selectChildren(javax.xml.namespace.QName):org.apache.xmlbeans.XmlObject[]");
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject[] selectPath(String str) {
        return selectPath(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // org.apache.xmlbeans.XmlObject
    public final XmlObject set(XmlObject xmlObject) {
        TypeStoreUser typeStoreUser;
        TypeStoreUser typeStoreUser2;
        TypeStoreUser typeStoreUser3;
        ?? r4;
        if (isImmutable()) {
            throw new IllegalStateException("Cannot set the value of an immutable XmlObject");
        }
        XmlObjectBase underlying = underlying(xmlObject);
        if (underlying == null) {
            setNil();
            return this;
        }
        if (underlying.isImmutable()) {
            setStringValue(underlying.getStringValue());
            this = this;
        } else {
            boolean preCheck = preCheck();
            boolean preCheck2 = underlying.preCheck();
            if (monitor() == underlying.monitor()) {
                if (preCheck) {
                    r4 = setterHelper(underlying);
                } else {
                    synchronized (monitor()) {
                        typeStoreUser3 = setterHelper(underlying);
                    }
                    r4 = typeStoreUser3;
                }
            } else if (preCheck) {
                if (preCheck2) {
                    r4 = setterHelper(underlying);
                } else {
                    synchronized (underlying.monitor()) {
                        typeStoreUser2 = setterHelper(underlying);
                    }
                    r4 = typeStoreUser2;
                }
            } else if (preCheck2) {
                synchronized (monitor()) {
                    typeStoreUser = setterHelper(underlying);
                }
                r4 = typeStoreUser;
            } else {
                boolean z = false;
                try {
                    try {
                        GlobalLock.acquire();
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (InterruptedException e) {
                    e = e;
                }
                try {
                    try {
                        synchronized (monitor()) {
                            try {
                                try {
                                    synchronized (underlying.monitor()) {
                                        try {
                                            GlobalLock.release();
                                            r4 = setterHelper(underlying);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                throw th;
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    throw new XmlRuntimeException(e);
                } catch (Throwable th6) {
                    th = th6;
                    z = true;
                    if (z) {
                        GlobalLock.release();
                    }
                    throw th;
                }
            }
        }
        return (XmlObject) r4;
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setBigDecimalValue(BigDecimal bigDecimal) {
        if (bigDecimal == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_BigDecimal(bigDecimal);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setBigIntegerValue(BigInteger bigInteger) {
        if (bigInteger == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_BigInteger(bigInteger);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setBooleanValue(boolean z) {
        synchronized (monitor()) {
            set_prepare();
            set_boolean(z);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setByteArrayValue(byte[] bArr) {
        if (bArr == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_ByteArray(bArr);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setByteValue(byte b) {
        synchronized (monitor()) {
            set_prepare();
            set_byte(b);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setCalendarValue(Calendar calendar) {
        if (calendar == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_Calendar(calendar);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setDateValue(Date date) {
        if (date == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_Date(date);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setDoubleValue(double d) {
        synchronized (monitor()) {
            set_prepare();
            set_double(d);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase) {
        if (stringEnumAbstractBase == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_enum(stringEnumAbstractBase);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setFloatValue(float f) {
        synchronized (monitor()) {
            set_prepare();
            set_float(f);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setGDateValue(GDate gDate) {
        if (gDate == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_GDate(gDate);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setGDurationValue(GDuration gDuration) {
        if (gDuration == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_GDuration(gDuration);
            set_commit();
        }
    }

    public void setImmutable() {
        int i = this._flags;
        if ((i & 4112) != 0) {
            throw new IllegalStateException();
        }
        this._flags = i | 4096;
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setIntValue(int i) {
        synchronized (monitor()) {
            set_prepare();
            set_int(i);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setListValue(List<?> list) {
        if (list == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_list(list);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setLongValue(long j) {
        synchronized (monitor()) {
            set_prepare();
            set_long(j);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final void setNil() {
        synchronized (monitor()) {
            set_prepare();
            int i = this._flags;
            if ((i & 1) == 0 && (i & 65536) != 0) {
                throw new XmlValueNotNillableException();
            }
            set_nil();
            int i2 = this._flags | 64;
            this._flags = i2;
            if ((i2 & 16) != 0) {
                get_store().invalidate_text();
                this._flags &= -673;
                get_store().invalidate_nil();
            } else {
                this._textsource = null;
            }
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public void setObjectValue(Object obj) {
        if (obj == null) {
            setNil();
            return;
        }
        if (obj instanceof XmlObject) {
            set((XmlObject) obj);
            return;
        }
        if (obj instanceof String) {
            setStringValue((String) obj);
            return;
        }
        if (obj instanceof StringEnumAbstractBase) {
            setEnumValue((StringEnumAbstractBase) obj);
            return;
        }
        if (obj instanceof BigInteger) {
            setBigIntegerValue((BigInteger) obj);
            return;
        }
        if (obj instanceof BigDecimal) {
            setBigDecimalValue((BigDecimal) obj);
            return;
        }
        if (obj instanceof Byte) {
            setByteValue(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            setShortValue(((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Integer) {
            setIntValue(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            setLongValue(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Boolean) {
            setBooleanValue(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Float) {
            setFloatValue(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            setDoubleValue(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Calendar) {
            setCalendarValue((Calendar) obj);
            return;
        }
        if (obj instanceof Date) {
            setDateValue((Date) obj);
            return;
        }
        if (obj instanceof GDateSpecification) {
            setGDateValue((GDateSpecification) obj);
            return;
        }
        if (obj instanceof GDurationSpecification) {
            setGDurationValue((GDurationSpecification) obj);
            return;
        }
        if (obj instanceof QName) {
            setQNameValue((QName) obj);
            return;
        }
        if (obj instanceof List) {
            setListValue((List) obj);
        } else {
            if (obj instanceof byte[]) {
                setByteArrayValue((byte[]) obj);
                return;
            }
            throw new XmlValueNotSupportedException("Can't set union object of class : " + obj.getClass().getName());
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setQNameValue(QName qName) {
        if (qName == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_QName(qName);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setShortValue(short s) {
        synchronized (monitor()) {
            set_prepare();
            set_short(s);
            set_commit();
        }
    }

    @Override // org.apache.xmlbeans.SimpleValue
    public final void setStringValue(String str) {
        if (str == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_String(str);
        }
    }

    public void setValidateOnSet() {
        this._flags |= 65536;
    }

    public void set_BigDecimal(BigDecimal bigDecimal) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"numeric", getPrimitiveTypeName()});
    }

    public void set_BigInteger(BigInteger bigInteger) {
        set_BigDecimal(new BigDecimal(bigInteger));
    }

    public void set_ByteArray(byte[] bArr) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"byte[]", getPrimitiveTypeName()});
    }

    public void set_Calendar(Calendar calendar) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"Calendar", getPrimitiveTypeName()});
    }

    public void set_ComplexXml(XmlObject xmlObject) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"complex content", getPrimitiveTypeName()});
    }

    public void set_Date(Date date) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"Date", getPrimitiveTypeName()});
    }

    public void set_GDate(GDateSpecification gDateSpecification) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"Date", getPrimitiveTypeName()});
    }

    public void set_GDuration(GDurationSpecification gDurationSpecification) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{SsManifestParser.C4933d.f26659s, getPrimitiveTypeName()});
    }

    public void set_QName(QName qName) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"QName", getPrimitiveTypeName()});
    }

    public void set_String(String str) {
        int i = this._flags;
        if ((i & 4096) != 0) {
            throw new IllegalStateException();
        }
        boolean z = (i & 64) != 0;
        update_from_wscanon_text(apply_wscanon(str));
        int i2 = this._flags;
        if ((i2 & 16) == 0) {
            this._textsource = str;
            return;
        }
        int i3 = i2 & (-33);
        this._flags = i3;
        if ((i3 & 1024) == 0) {
            get_store().store_text(str);
        }
        if (z) {
            get_store().invalidate_nil();
        }
    }

    public void set_b64(byte[] bArr) {
        set_ByteArray(bArr);
    }

    public void set_boolean(boolean z) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"boolean", getPrimitiveTypeName()});
    }

    public void set_byte(byte b) {
        set_int(b);
    }

    public void set_char(char c) {
        set_String(Character.toString(c));
    }

    public void set_double(double d) {
        set_BigDecimal(new BigDecimal(d));
    }

    public void set_enum(StringEnumAbstractBase stringEnumAbstractBase) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{"enum", getPrimitiveTypeName()});
    }

    public void set_float(float f) {
        set_BigDecimal(new BigDecimal(f));
    }

    public void set_hex(byte[] bArr) {
        set_ByteArray(bArr);
    }

    public void set_int(int i) {
        set_long(i);
    }

    public void set_list(List<?> list) {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_J2S, new Object[]{C6883t.f38147a, getPrimitiveTypeName()});
    }

    public void set_long(long j) {
        set_BigInteger(BigInteger.valueOf(j));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0044. Please report as an issue. */
    public final void set_newValue(XmlObject xmlObject) {
        boolean z;
        if (xmlObject == null || xmlObject.isNil()) {
            setNil();
            return;
        }
        if (xmlObject instanceof XmlAnySimpleType) {
            XmlAnySimpleType xmlAnySimpleType = (XmlAnySimpleType) xmlObject;
            SchemaType instanceType = ((SimpleValue) xmlAnySimpleType).instanceType();
            if (instanceType.getSimpleVariety() == 3) {
                synchronized (monitor()) {
                    set_prepare();
                    set_list(((SimpleValue) xmlAnySimpleType).xgetListValue());
                    set_commit();
                }
                return;
            }
            synchronized (monitor()) {
                switch (instanceType.getPrimitiveType().getBuiltinTypeCode()) {
                    case 2:
                        if (xmlAnySimpleType.isImmutable()) {
                            z = false;
                        } else {
                            NamespaceContext.push(new NamespaceContext(xmlAnySimpleType));
                            z = true;
                        }
                        try {
                            set_prepare();
                            set_xmlanysimple(xmlAnySimpleType);
                            set_commit();
                            return;
                        } finally {
                            if (z) {
                                NamespaceContext.pop();
                            }
                        }
                    case 3:
                        boolean booleanValue = ((SimpleValue) xmlAnySimpleType).getBooleanValue();
                        set_prepare();
                        set_boolean(booleanValue);
                        set_commit();
                        return;
                    case 4:
                        byte[] byteArrayValue = ((SimpleValue) xmlAnySimpleType).getByteArrayValue();
                        set_prepare();
                        set_b64(byteArrayValue);
                        set_commit();
                        return;
                    case 5:
                        byte[] byteArrayValue2 = ((SimpleValue) xmlAnySimpleType).getByteArrayValue();
                        set_prepare();
                        set_hex(byteArrayValue2);
                        set_commit();
                        return;
                    case 6:
                        String stringValue = xmlAnySimpleType.getStringValue();
                        set_prepare();
                        set_text(stringValue);
                        set_commit();
                        return;
                    case 7:
                        QName qNameValue = ((SimpleValue) xmlAnySimpleType).getQNameValue();
                        set_prepare();
                        set_QName(qNameValue);
                        set_commit();
                        return;
                    case 8:
                        String stringValue2 = xmlAnySimpleType.getStringValue();
                        set_prepare();
                        set_notation(stringValue2);
                        set_commit();
                        return;
                    case 9:
                        float floatValue = ((SimpleValue) xmlAnySimpleType).getFloatValue();
                        set_prepare();
                        set_float(floatValue);
                        set_commit();
                        return;
                    case 10:
                        double doubleValue = ((SimpleValue) xmlAnySimpleType).getDoubleValue();
                        set_prepare();
                        set_double(doubleValue);
                        set_commit();
                        return;
                    case 11:
                        int decimalSize = instanceType.getDecimalSize();
                        if (decimalSize == 8) {
                            byte byteValue = ((SimpleValue) xmlAnySimpleType).getByteValue();
                            set_prepare();
                            set_byte(byteValue);
                        } else if (decimalSize == 16) {
                            short shortValue = ((SimpleValue) xmlAnySimpleType).getShortValue();
                            set_prepare();
                            set_short(shortValue);
                        } else if (decimalSize == 32) {
                            int intValue = ((SimpleValue) xmlAnySimpleType).getIntValue();
                            set_prepare();
                            set_int(intValue);
                        } else if (decimalSize != 64) {
                            switch (decimalSize) {
                                case 1000000:
                                    BigInteger bigIntegerValue = ((SimpleValue) xmlAnySimpleType).getBigIntegerValue();
                                    set_prepare();
                                    set_BigInteger(bigIntegerValue);
                                    break;
                                case SchemaType.SIZE_BIG_DECIMAL /* 1000001 */:
                                default:
                                    BigDecimal bigDecimalValue = ((SimpleValue) xmlAnySimpleType).getBigDecimalValue();
                                    set_prepare();
                                    set_BigDecimal(bigDecimalValue);
                                    break;
                            }
                        } else {
                            long longValue = ((SimpleValue) xmlAnySimpleType).getLongValue();
                            set_prepare();
                            set_long(longValue);
                        }
                        set_commit();
                        return;
                    case 12:
                        String stringValue3 = xmlAnySimpleType.getStringValue();
                        set_prepare();
                        set_String(stringValue3);
                        set_commit();
                        return;
                    case 13:
                        GDuration gDurationValue = ((SimpleValue) xmlAnySimpleType).getGDurationValue();
                        set_prepare();
                        set_GDuration(gDurationValue);
                        set_commit();
                        return;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        GDate gDateValue = ((SimpleValue) xmlAnySimpleType).getGDateValue();
                        set_prepare();
                        set_GDate(gDateValue);
                        set_commit();
                        return;
                }
            }
        }
        throw new IllegalStateException("Complex type unexpected");
    }

    public abstract void set_nil();

    public void set_notation(String str) {
        throw new XmlValueNotSupportedException();
    }

    public void set_short(short s) {
        set_int(s);
    }

    public abstract void set_text(String str);

    public void set_xmlanysimple(XmlAnySimpleType xmlAnySimpleType) {
        set_String(xmlAnySimpleType.getStringValue());
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject substitute(QName qName, SchemaType schemaType) {
        XmlObject xmlObject;
        if (qName == null) {
            throw new IllegalArgumentException("Invalid name (null)");
        }
        if (schemaType == null) {
            throw new IllegalArgumentException("Invalid type (null)");
        }
        if ((this._flags & 16) == 0) {
            throw new IllegalStateException("XML Value Objects cannot be used with substitution");
        }
        synchronized (monitor()) {
            check_orphaned();
            xmlObject = (XmlObject) get_store().substitute(qName, schemaType);
        }
        return xmlObject;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final String toString() {
        String xmlText;
        synchronized (monitor()) {
            xmlText = ensureStore().xmlText(_toStringOptions);
        }
        return xmlText;
    }

    public void update_from_complex_content() {
        throw new XmlValueNotSupportedException("Complex content");
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public final boolean uses_invalidate_value() {
        SchemaType schemaType = schemaType();
        return schemaType.isSimpleType() || schemaType.getContentType() == 2;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public boolean validate() {
        return validate(null);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStoreUser
    public void validate_now() {
        check_dated();
    }

    public void validate_simpleval(String str, ValidationContext validationContext) {
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final boolean valueEquals(XmlObject xmlObject) {
        boolean valueEqualsImpl;
        boolean valueEqualsImpl2;
        boolean z = false;
        try {
            try {
                if (isImmutable()) {
                    if (xmlObject.isImmutable()) {
                        return valueEqualsImpl(xmlObject);
                    }
                    synchronized (xmlObject.monitor()) {
                        valueEqualsImpl2 = valueEqualsImpl(xmlObject);
                    }
                    return valueEqualsImpl2;
                }
                if (!xmlObject.isImmutable() && monitor() != xmlObject.monitor()) {
                    GlobalLock.acquire();
                    try {
                        try {
                            synchronized (monitor()) {
                                try {
                                    try {
                                        synchronized (xmlObject.monitor()) {
                                            try {
                                                GlobalLock.release();
                                                return valueEqualsImpl(xmlObject);
                                            } catch (Throwable th) {
                                                th = th;
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (InterruptedException e) {
                        e = e;
                        throw new XmlRuntimeException(e);
                    } catch (Throwable th5) {
                        th = th5;
                        z = true;
                        if (z) {
                            GlobalLock.release();
                        }
                        throw th;
                    }
                }
                synchronized (monitor()) {
                    valueEqualsImpl = valueEqualsImpl(xmlObject);
                }
                return valueEqualsImpl;
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (InterruptedException e2) {
            e = e2;
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public int valueHashCode() {
        int value_hash_code;
        synchronized (monitor()) {
            value_hash_code = value_hash_code();
        }
        return value_hash_code;
    }

    public abstract int value_hash_code();

    public Object writeReplace() {
        synchronized (monitor()) {
            if (isRootXmlObject()) {
                return new SerializedRootObject(this);
            }
            return new SerializedInteriorObject(this, getRootXmlObject());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends XmlObject> T[] xgetArray(QName qName, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            check_orphaned();
            ArrayList arrayList = new ArrayList();
            get_store().find_all_element_users(qName, arrayList);
            tArr = (T[]) ((XmlObject[]) arrayList.stream().toArray(intFunction));
        }
        return tArr;
    }

    public List<? extends XmlAnySimpleType> xgetListValue() {
        throw new XmlValueNotSupportedException(XmlErrorCodes.EXCEPTION_VALUE_NOT_SUPPORTED_S2J, new Object[]{getPrimitiveTypeName(), C6883t.f38147a});
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public String xmlText() {
        return xmlText(null);
    }

    public final XmlObject _copy(XmlOptions xmlOptions) {
        if (isImmutable()) {
            return this;
        }
        check_orphaned();
        return (XmlObject) get_store().copy(get_store().get_schematypeloader(), schemaType(), xmlOptions);
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject[] execQuery(String str, XmlOptions xmlOptions) {
        XmlObject[] _typedArray;
        synchronized (monitor()) {
            TypeStore typeStore = get_store();
            if (typeStore != null) {
                _typedArray = _typedArray(typeStore.exec_query(str, xmlOptions));
            } else {
                throw new XmlRuntimeException("Cannot do XQuery on XML Value Objects");
            }
        }
        return _typedArray;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node newDomNode(XmlOptions xmlOptions) {
        XmlCursor newCursorForce = newCursorForce();
        try {
            Node newDomNode = newCursorForce.newDomNode(makeInnerOptions(xmlOptions));
            newCursorForce.close();
            return newDomNode;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public InputStream newInputStream(XmlOptions xmlOptions) {
        XmlCursor newCursorForce = newCursorForce();
        try {
            InputStream newInputStream = newCursorForce.newInputStream(makeInnerOptions(xmlOptions));
            newCursorForce.close();
            return newInputStream;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Reader newReader(XmlOptions xmlOptions) {
        XmlCursor newCursorForce = newCursorForce();
        try {
            Reader newReader = newCursorForce.newReader(makeInnerOptions(xmlOptions));
            newCursorForce.close();
            return newReader;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XMLStreamReader newXMLStreamReader(XmlOptions xmlOptions) {
        XmlCursor newCursorForce = newCursorForce();
        try {
            XMLStreamReader newXMLStreamReader = newCursorForce.newXMLStreamReader(makeInnerOptions(xmlOptions));
            newCursorForce.close();
            return newXMLStreamReader;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject[] selectPath(String str, XmlOptions xmlOptions) {
        XmlObject[] xmlObjectArr;
        XmlCursor newCursor = newCursor();
        try {
            if (newCursor != null) {
                newCursor.selectPath(str, xmlOptions);
                if (!newCursor.hasNextSelection()) {
                    xmlObjectArr = EMPTY_RESULT;
                } else {
                    xmlObjectArr = new XmlObject[newCursor.getSelectionCount()];
                    int i = 0;
                    while (newCursor.toNextSelection()) {
                        XmlObject object = newCursor.getObject();
                        xmlObjectArr[i] = object;
                        if (object == null) {
                            if (newCursor.toParent()) {
                                XmlObject object2 = newCursor.getObject();
                                xmlObjectArr[i] = object2;
                                if (object2 != null) {
                                }
                            }
                            throw new XmlRuntimeException("Path must select only elements and attributes");
                        }
                        i++;
                    }
                }
                newCursor.close();
                return _typedArray(xmlObjectArr);
            }
            throw new XmlValueDisconnectedException();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public boolean validate(XmlOptions xmlOptions) {
        boolean isValid;
        int i = this._flags;
        if ((i & 16) == 0) {
            if ((i & 4096) != 0) {
                return validate_immutable(xmlOptions);
            }
            throw new IllegalStateException("XML objects with no underlying store cannot be validated");
        }
        synchronized (monitor()) {
            if ((this._flags & 2048) == 0) {
                SchemaField schemaField = schemaField();
                SchemaType schemaType = schemaType();
                TypeStore typeStore = get_store();
                Validator validator = new Validator(schemaType, schemaField, typeStore.get_schematypeloader(), xmlOptions, null);
                typeStore.validate(validator);
                isValid = validator.isValid();
            } else {
                throw new XmlValueDisconnectedException();
            }
        }
        return isValid;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public String xmlText(XmlOptions xmlOptions) {
        XmlCursor newCursorForce = newCursorForce();
        try {
            String xmlText = newCursorForce.xmlText(makeInnerOptions(xmlOptions));
            newCursorForce.close();
            return xmlText;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private List<XmlObjectBase> getBaseArray(QNameSet qNameSet) {
        check_orphaned();
        ArrayList arrayList = new ArrayList();
        get_store().find_all_element_users(qNameSet, arrayList);
        return arrayList;
    }

    public <T> T[] getEnumArray(QNameSet qNameSet, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            tArr = (T[]) getBaseArray(qNameSet).stream().map(new qwo()).toArray(intFunction);
        }
        return tArr;
    }

    public <T> T[] getObjectArray(QNameSet qNameSet, Function<SimpleValue, T> function, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            tArr = (T[]) getBaseArray(qNameSet).stream().map(function).toArray(intFunction);
        }
        return tArr;
    }

    public <T extends XmlObject> T[] getXmlObjectArray(QNameSet qNameSet, T[] tArr) {
        T[] tArr2;
        synchronized (monitor()) {
            tArr2 = (T[]) ((XmlObject[]) getBaseArray(qNameSet).toArray(tArr));
        }
        return tArr2;
    }

    @Override // org.apache.xmlbeans.XmlObject
    public final XmlObject copy(XmlOptions xmlOptions) {
        XmlObject _copy;
        if (preCheck()) {
            return _copy(xmlOptions);
        }
        synchronized (monitor()) {
            _copy = _copy(xmlOptions);
        }
        return _copy;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(File file, XmlOptions xmlOptions) throws IOException {
        XmlCursor newCursorForce = newCursorForce();
        try {
            newCursorForce.save(file, makeInnerOptions(xmlOptions));
            newCursorForce.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public boolean[] getBooleanArray(QNameSet qNameSet) {
        boolean[] zArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qNameSet);
            int size = baseArray.size();
            zArr = new boolean[size];
            for (int i = 0; i < size; i++) {
                zArr[i] = baseArray.get(i).getBooleanValue();
            }
        }
        return zArr;
    }

    public byte[] getByteArray(QNameSet qNameSet) {
        byte[] bArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qNameSet);
            int size = baseArray.size();
            bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = baseArray.get(i).getByteValue();
            }
        }
        return bArr;
    }

    public float[] getFloatArray(QNameSet qNameSet) {
        float[] fArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qNameSet);
            int size = baseArray.size();
            fArr = new float[size];
            for (int i = 0; i < size; i++) {
                fArr[i] = baseArray.get(i).getFloatValue();
            }
        }
        return fArr;
    }

    public short[] getShortArray(QNameSet qNameSet) {
        short[] sArr;
        synchronized (monitor()) {
            List<XmlObjectBase> baseArray = getBaseArray(qNameSet);
            int size = baseArray.size();
            sArr = new short[size];
            for (int i = 0; i < size; i++) {
                sArr[i] = baseArray.get(i).getShortValue();
            }
        }
        return sArr;
    }

    public final void setGDateValue(GDateSpecification gDateSpecification) {
        if (gDateSpecification == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_GDate(gDateSpecification);
            set_commit();
        }
    }

    public final void setGDurationValue(GDurationSpecification gDurationSpecification) {
        if (gDurationSpecification == null) {
            setNil();
            return;
        }
        synchronized (monitor()) {
            set_prepare();
            set_GDuration(gDurationSpecification);
            set_commit();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends XmlObject> T[] xgetArray(QNameSet qNameSet, IntFunction<T[]> intFunction) {
        T[] tArr;
        synchronized (monitor()) {
            check_orphaned();
            ArrayList arrayList = new ArrayList();
            get_store().find_all_element_users(qNameSet, arrayList);
            tArr = (T[]) ((XmlObject[]) arrayList.stream().toArray(intFunction));
        }
        return tArr;
    }

    public double[] getDoubleArray(QNameSet qNameSet) {
        double[] array;
        synchronized (monitor()) {
            array = getBaseArray(qNameSet).stream().map(new owo(SimpleValue.class)).mapToDouble(new pwo()).toArray();
        }
        return array;
    }

    public int[] getIntArray(QNameSet qNameSet) {
        int[] array;
        synchronized (monitor()) {
            array = getBaseArray(qNameSet).stream().map(new owo(SimpleValue.class)).mapToInt(new rwo()).toArray();
        }
        return array;
    }

    public long[] getLongArray(QNameSet qNameSet) {
        long[] array;
        synchronized (monitor()) {
            array = getBaseArray(qNameSet).stream().map(new owo(SimpleValue.class)).mapToLong(new swo()).toArray();
        }
        return array;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(OutputStream outputStream, XmlOptions xmlOptions) throws IOException {
        XmlCursor newCursorForce = newCursorForce();
        try {
            newCursorForce.save(outputStream, makeInnerOptions(xmlOptions));
            newCursorForce.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject selectAttribute(String str, String str2) {
        return selectAttribute(new QName(str, str2));
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(Writer writer, XmlOptions xmlOptions) throws IOException {
        XmlCursor newCursorForce = newCursorForce();
        try {
            newCursorForce.save(writer, makeInnerOptions(xmlOptions));
            newCursorForce.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursorForce != null) {
                    try {
                        newCursorForce.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.xmlbeans.XmlObject
    public XmlObject[] selectChildren(String str, String str2) {
        return selectChildren(new QName(str, str2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        if (r2.toFirstChild() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r3.contains(r2.getName()) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        r0.add(r2.getObject());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (r2.toNextSibling() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (r0.size() != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        r3 = (org.apache.xmlbeans.XmlObject[]) r0.toArray(org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0048, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004b, code lost:
    
        return r3;
     */
    @Override // org.apache.xmlbeans.XmlObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.XmlObject[] selectChildren(org.apache.xmlbeans.QNameSet r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L5a
            org.apache.xmlbeans.XmlCursor r2 = r2.newCursor()
            boolean r0 = r2.isContainer()     // Catch: java.lang.Throwable -> L4c
            if (r0 != 0) goto L12
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L12:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4c
            r0.<init>()     // Catch: java.lang.Throwable -> L4c
            boolean r1 = r2.toFirstChild()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L34
        L1d:
            javax.xml.namespace.QName r1 = r2.getName()     // Catch: java.lang.Throwable -> L4c
            boolean r1 = r3.contains(r1)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L2e
            org.apache.xmlbeans.XmlObject r1 = r2.getObject()     // Catch: java.lang.Throwable -> L4c
            r0.add(r1)     // Catch: java.lang.Throwable -> L4c
        L2e:
            boolean r1 = r2.toNextSibling()     // Catch: java.lang.Throwable -> L4c
            if (r1 != 0) goto L1d
        L34:
            int r3 = r0.size()     // Catch: java.lang.Throwable -> L4c
            if (r3 != 0) goto L40
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L40:
            org.apache.xmlbeans.XmlObject[] r3 = org.apache.xmlbeans.impl.values.XmlObjectBase.EMPTY_RESULT     // Catch: java.lang.Throwable -> L4c
            java.lang.Object[] r3 = r0.toArray(r3)     // Catch: java.lang.Throwable -> L4c
            org.apache.xmlbeans.XmlObject[] r3 = (org.apache.xmlbeans.XmlObject[]) r3     // Catch: java.lang.Throwable -> L4c
            r2.close()
            return r3
        L4c:
            r3 = move-exception
            throw r3     // Catch: java.lang.Throwable -> L4e
        L4e:
            r0 = move-exception
            if (r2 == 0) goto L59
            r2.close()     // Catch: java.lang.Throwable -> L55
            goto L59
        L55:
            r2 = move-exception
            r3.addSuppressed(r2)
        L59:
            throw r0
        L5a:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r2.<init>()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlObjectBase.selectChildren(org.apache.xmlbeans.QNameSet):org.apache.xmlbeans.XmlObject[]");
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(ContentHandler contentHandler, LexicalHandler lexicalHandler) throws SAXException {
        save(contentHandler, lexicalHandler, null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(File file) throws IOException {
        save(file, (XmlOptions) null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(OutputStream outputStream) throws IOException {
        save(outputStream, (XmlOptions) null);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(Writer writer) throws IOException {
        save(writer, (XmlOptions) null);
    }
}
