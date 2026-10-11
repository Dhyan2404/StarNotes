package org.apache.xmlbeans.impl.schema;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaAnnotation;
import org.apache.xmlbeans.SchemaAttributeGroup;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaComponent;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaIdentityConstraint;
import org.apache.xmlbeans.SchemaLocalAttribute;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaModelGroup;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaStringEnumEntry;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoaderException;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroupDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.GroupDocument;
import org.apache.xmlbeans.impl.regex.RegularExpression;
import org.apache.xmlbeans.impl.schema.SchemaAnnotationImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl;
import org.apache.xmlbeans.impl.util.LongUTFDataInputStream;
import org.apache.xmlbeans.impl.util.LongUTFDataOutputStream;
import org.apache.xmlbeans.impl.values.XmlObjectBase;
import org.apache.xmlbeans.soap.SOAPArrayType;
import org.apache.xmlbeans.soap.SchemaWSDLArrayType;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class XsbReader {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MAX_UNSIGNED_SHORT = 65535;
    int _actualfiletype;
    private String _handle;
    private LongUTFDataInputStream _input;
    private int _majorver;
    private int _minorver;
    private LongUTFDataOutputStream _output;
    private int _releaseno;
    private SchemaTypeSystemImpl.StringPool _stringPool;
    private final SchemaTypeSystemImpl typeSystem;

    public XsbReader(SchemaTypeSystemImpl schemaTypeSystemImpl, String str) {
        this.typeSystem = schemaTypeSystemImpl;
        this._handle = str;
        this._stringPool = new SchemaTypeSystemImpl.StringPool(str, schemaTypeSystemImpl.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeClassnameMap$0(String str, SchemaComponent.Ref ref) {
        writeString(str);
        writeHandle(((SchemaType.Ref) ref).get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeIdConstraintData$1(String str, String str2) {
        writeString(str);
        writeString(str2);
    }

    public boolean atLeast(int i, int i2, int i3) {
        int i4 = this._majorver;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this._minorver;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this._releaseno >= i3;
    }

    public boolean atMost(int i, int i2, int i3) {
        int i4 = this._majorver;
        if (i4 > i) {
            return false;
        }
        if (i4 < i) {
            return true;
        }
        int i5 = this._minorver;
        if (i5 > i2) {
            return false;
        }
        return i5 < i2 || this._releaseno <= i3;
    }

    public void checkContainerNotNull(SchemaContainer schemaContainer, QName qName) {
        if (schemaContainer != null) {
            return;
        }
        throw new LinkageError("Loading of resource " + qName + '.' + this._handle + "failed, information from " + qName + ".index.xsb is  out of sync (or conflicting index files found)");
    }

    public SchemaGlobalAttribute finishLoadingAttribute() {
        try {
            try {
                QName readQName = readQName();
                SchemaContainer container = this.typeSystem.getContainer(readQName.getNamespaceURI());
                checkContainerNotNull(container, readQName);
                SchemaGlobalAttributeImpl schemaGlobalAttributeImpl = new SchemaGlobalAttributeImpl(container);
                loadAttribute(schemaGlobalAttributeImpl, readQName, container);
                schemaGlobalAttributeImpl.setFilename(readString());
                return schemaGlobalAttributeImpl;
            } catch (SchemaTypeLoaderException e) {
                throw e;
            } catch (Exception e2) {
                throw new SchemaTypeLoaderException("Cannot load type from typesystem", this.typeSystem.getName(), this._handle, 14, e2);
            }
        } finally {
            readEnd();
        }
    }

    public SchemaAttributeGroup finishLoadingAttributeGroup() {
        QName readQName = readQName();
        SchemaContainer container = this.typeSystem.getContainer(readQName.getNamespaceURI());
        checkContainerNotNull(container, readQName);
        SchemaAttributeGroupImpl schemaAttributeGroupImpl = new SchemaAttributeGroupImpl(container);
        try {
            try {
                schemaAttributeGroupImpl.init(readQName, readString(), readShort() == 1, atLeast(2, 22, 0) ? readString() : null, atLeast(2, 15, 0) && readShort() == 1, AttributeGroupDocument.Factory.parse(readString()).getAttributeGroup(), readAnnotation(container), null);
                if (atLeast(2, 21, 0)) {
                    schemaAttributeGroupImpl.setFilename(readString());
                }
                return schemaAttributeGroupImpl;
            } catch (SchemaTypeLoaderException e) {
                throw e;
            } catch (Exception e2) {
                throw new SchemaTypeLoaderException("Cannot load type from typesystem", this.typeSystem.getName(), this._handle, 14, e2);
            }
        } finally {
            readEnd();
        }
    }

    public SchemaGlobalElement finishLoadingElement() {
        try {
            try {
                int readShort = readShort();
                if (readShort != 4) {
                    throw new SchemaTypeLoaderException("Wrong particle type ", this.typeSystem.getName(), this._handle, 11);
                }
                int readShort2 = readShort();
                BigInteger readBigInteger = readBigInteger();
                BigInteger readBigInteger2 = readBigInteger();
                QNameSet readQNameSet = readQNameSet();
                QName readQName = readQName();
                SchemaContainer container = this.typeSystem.getContainer(readQName.getNamespaceURI());
                checkContainerNotNull(container, readQName);
                SchemaGlobalElementImpl schemaGlobalElementImpl = new SchemaGlobalElementImpl(container);
                schemaGlobalElementImpl.setParticleType(readShort);
                schemaGlobalElementImpl.setMinOccurs(readBigInteger);
                schemaGlobalElementImpl.setMaxOccurs(readBigInteger2);
                boolean z = true;
                schemaGlobalElementImpl.setTransitionRules(readQNameSet, (readShort2 & 1) != 0);
                schemaGlobalElementImpl.setNameAndTypeRef(readQName, readTypeRef());
                schemaGlobalElementImpl.setDefault(readString(), (readShort2 & 4) != 0, null);
                if (atLeast(2, 16, 0)) {
                    schemaGlobalElementImpl.setDefaultValue(readXmlValueObject());
                }
                schemaGlobalElementImpl.setNillable((readShort2 & 8) != 0);
                schemaGlobalElementImpl.setBlock((readShort2 & 16) != 0, (readShort2 & 32) != 0, (readShort2 & 64) != 0);
                schemaGlobalElementImpl.setWsdlArrayType(readSOAPArrayType());
                schemaGlobalElementImpl.setAbstract((readShort2 & 128) != 0);
                schemaGlobalElementImpl.setAnnotation(readAnnotation(container));
                boolean z2 = (readShort2 & 256) != 0;
                if ((readShort2 & 512) == 0) {
                    z = false;
                }
                schemaGlobalElementImpl.setFinal(z2, z);
                if (atLeast(2, 17, 0)) {
                    schemaGlobalElementImpl.setSubstitutionGroup((SchemaGlobalElement.Ref) readHandle());
                }
                int readShort3 = readShort();
                for (int i = 0; i < readShort3; i++) {
                    schemaGlobalElementImpl.addSubstitutionGroupMember(readQName());
                }
                int readShort4 = readShort();
                SchemaIdentityConstraint.Ref[] refArr = new SchemaIdentityConstraint.Ref[readShort4];
                for (int i2 = 0; i2 < readShort4; i2++) {
                    refArr[i2] = (SchemaIdentityConstraint.Ref) readHandle();
                }
                schemaGlobalElementImpl.setIdentityConstraints(refArr);
                schemaGlobalElementImpl.setFilename(readString());
                return schemaGlobalElementImpl;
            } catch (SchemaTypeLoaderException e) {
                throw e;
            } catch (Exception e2) {
                throw new SchemaTypeLoaderException("Cannot load type from typesystem", this.typeSystem.getName(), null, 14, e2);
            }
        } finally {
            readEnd();
        }
    }

    public SchemaIdentityConstraint finishLoadingIdentityConstraint() {
        try {
            try {
                QName readQName = readQName();
                SchemaContainer container = this.typeSystem.getContainer(readQName.getNamespaceURI());
                checkContainerNotNull(container, readQName);
                SchemaIdentityConstraintImpl schemaIdentityConstraintImpl = new SchemaIdentityConstraintImpl(container);
                schemaIdentityConstraintImpl.setName(readQName);
                schemaIdentityConstraintImpl.setConstraintCategory(readShort());
                schemaIdentityConstraintImpl.setSelector(readString());
                schemaIdentityConstraintImpl.setAnnotation(readAnnotation(container));
                int readShort = readShort();
                String[] strArr = new String[readShort];
                for (int i = 0; i < readShort; i++) {
                    strArr[i] = readString();
                }
                schemaIdentityConstraintImpl.setFields(strArr);
                if (schemaIdentityConstraintImpl.getConstraintCategory() == 2) {
                    schemaIdentityConstraintImpl.setReferencedKey((SchemaIdentityConstraint.Ref) readHandle());
                }
                int readShort2 = readShort();
                HashMap hashMap = new HashMap();
                for (int i2 = 0; i2 < readShort2; i2++) {
                    hashMap.put(readString(), readString());
                }
                schemaIdentityConstraintImpl.setNSMap(hashMap);
                if (atLeast(2, 21, 0)) {
                    schemaIdentityConstraintImpl.setFilename(readString());
                }
                return schemaIdentityConstraintImpl;
            } catch (SchemaTypeLoaderException e) {
                throw e;
            } catch (Exception e2) {
                throw new SchemaTypeLoaderException("Cannot load type from typesystem", this.typeSystem.getName(), this._handle, 14, e2);
            }
        } finally {
            readEnd();
        }
    }

    public SchemaModelGroup finishLoadingModelGroup() {
        QName readQName = readQName();
        SchemaContainer container = this.typeSystem.getContainer(readQName.getNamespaceURI());
        checkContainerNotNull(container, readQName);
        SchemaModelGroupImpl schemaModelGroupImpl = new SchemaModelGroupImpl(container);
        try {
            try {
                try {
                    schemaModelGroupImpl.init(readQName, readString(), readShort() == 1, atLeast(2, 22, 0) ? readString() : null, atLeast(2, 22, 0) ? readString() : null, atLeast(2, 15, 0) && readShort() == 1, GroupDocument.Factory.parse(readString()).getGroup(), readAnnotation(container), null);
                    if (atLeast(2, 21, 0)) {
                        schemaModelGroupImpl.setFilename(readString());
                    }
                    return schemaModelGroupImpl;
                } catch (Exception e) {
                    throw new SchemaTypeLoaderException("Cannot load type from typesystem", this.typeSystem.getName(), this._handle, 14, e);
                }
            } catch (SchemaTypeLoaderException e2) {
                throw e2;
            }
        } finally {
            readEnd();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xmlbeans.SchemaType finishLoadingType() {
        /*
            Method dump skipped, instructions count: 1003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.XsbReader.finishLoadingType():org.apache.xmlbeans.SchemaType");
    }

    public int getActualFiletype() {
        return this._actualfiletype;
    }

    public void loadAttribute(SchemaLocalAttributeImpl schemaLocalAttributeImpl, QName qName, SchemaContainer schemaContainer) {
        schemaLocalAttributeImpl.init(qName, readTypeRef(), readShort(), readString(), null, atLeast(2, 16, 0) ? readXmlValueObject() : null, readShort() == 1, readSOAPArrayType(), readAnnotation(schemaContainer), null);
    }

    public void loadParticle(SchemaParticleImpl schemaParticleImpl, int i) {
        int readShort = readShort();
        schemaParticleImpl.setParticleType(i);
        schemaParticleImpl.setMinOccurs(readBigInteger());
        schemaParticleImpl.setMaxOccurs(readBigInteger());
        schemaParticleImpl.setTransitionRules(readQNameSet(), (readShort & 1) != 0);
        if (i == 1 || i == 2 || i == 3) {
            schemaParticleImpl.setParticleChildren(readParticleArray());
            return;
        }
        if (i != 4) {
            if (i != 5) {
                throw new SchemaTypeLoaderException("Unrecognized particle type ", this.typeSystem.getName(), this._handle, 11);
            }
            schemaParticleImpl.setWildcardSet(readQNameSet());
            schemaParticleImpl.setWildcardProcess(readShort());
            return;
        }
        SchemaLocalElementImpl schemaLocalElementImpl = (SchemaLocalElementImpl) schemaParticleImpl;
        schemaLocalElementImpl.setNameAndTypeRef(readQName(), readTypeRef());
        schemaLocalElementImpl.setDefault(readString(), (readShort & 4) != 0, null);
        if (atLeast(2, 16, 0)) {
            schemaLocalElementImpl.setDefaultValue(readXmlValueObject());
        }
        schemaLocalElementImpl.setNillable((readShort & 8) != 0);
        schemaLocalElementImpl.setBlock((readShort & 16) != 0, (readShort & 32) != 0, (readShort & 64) != 0);
        schemaLocalElementImpl.setWsdlArrayType(readSOAPArrayType());
        schemaLocalElementImpl.setAbstract((readShort & 128) != 0);
        schemaLocalElementImpl.setAnnotation(readAnnotation(null));
        int readShort2 = readShort();
        SchemaIdentityConstraint.Ref[] refArr = new SchemaIdentityConstraint.Ref[readShort2];
        for (int i2 = 0; i2 < readShort2; i2++) {
            refArr[i2] = (SchemaIdentityConstraint.Ref) readHandle();
        }
        schemaLocalElementImpl.setIdentityConstraints(refArr);
    }

    public SchemaAnnotation readAnnotation(SchemaContainer schemaContainer) {
        int readInt;
        if (!atLeast(2, 19, 0) || (readInt = readInt()) == -1) {
            return null;
        }
        SchemaAnnotation.Attribute[] attributeArr = new SchemaAnnotation.Attribute[readInt];
        for (int i = 0; i < readInt; i++) {
            attributeArr[i] = new SchemaAnnotationImpl.AttributeImpl(readQName(), readString(), atLeast(2, 24, 0) ? readString() : null);
        }
        int readInt2 = readInt();
        String[] strArr = new String[readInt2];
        for (int i2 = 0; i2 < readInt2; i2++) {
            strArr[i2] = readString();
        }
        int readInt3 = readInt();
        String[] strArr2 = new String[readInt3];
        for (int i3 = 0; i3 < readInt3; i3++) {
            strArr2[i3] = readString();
        }
        return new SchemaAnnotationImpl(schemaContainer, strArr2, strArr, attributeArr);
    }

    public List<SchemaAnnotation> readAnnotations() {
        int readInt = readInt();
        ArrayList arrayList = new ArrayList(readInt);
        SchemaContainer containerNonNull = this.typeSystem.getContainerNonNull("");
        for (int i = 0; i < readInt; i++) {
            arrayList.add(readAnnotation(containerNonNull));
        }
        return arrayList;
    }

    public SchemaLocalAttribute readAttributeData() {
        SchemaLocalAttributeImpl schemaLocalAttributeImpl = new SchemaLocalAttributeImpl();
        loadAttribute(schemaLocalAttributeImpl, readQName(), null);
        return schemaLocalAttributeImpl;
    }

    public BigInteger readBigInteger() {
        byte[] readByteArray = readByteArray();
        if (readByteArray.length == 0) {
            return null;
        }
        return (readByteArray.length == 1 && readByteArray[0] == 0) ? BigInteger.ZERO : (readByteArray.length == 1 && readByteArray[0] == 1) ? BigInteger.ONE : new BigInteger(readByteArray);
    }

    public byte[] readByteArray() {
        try {
            byte[] bArr = new byte[this._input.readShort()];
            this._input.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public Map<String, SchemaComponent.Ref> readClassnameRefMap() {
        HashMap hashMap = new HashMap();
        int readShort = readShort();
        for (int i = 0; i < readShort; i++) {
            hashMap.put(readString(), readHandle());
        }
        return hashMap;
    }

    public double readDouble() {
        try {
            return this._input.readDouble();
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public void readEnd() {
        try {
            LongUTFDataInputStream longUTFDataInputStream = this._input;
            if (longUTFDataInputStream != null) {
                longUTFDataInputStream.close();
            }
        } catch (IOException unused) {
        }
        this._input = null;
        this._stringPool = null;
        this._handle = null;
    }

    public SchemaComponent.Ref readHandle() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        if (readString.charAt(0) != '_') {
            return this.typeSystem.getTypePool().refForHandle(readString);
        }
        char charAt = readString.charAt(2);
        if (charAt == 'A') {
            return this.typeSystem.getLinker().findAttributeRef(QNameHelper.forPretty(readString, 4));
        }
        if (charAt == 'I') {
            SchemaType schemaType = (SchemaType) BuiltinSchemaTypeSystem.get().resolveHandle(readString);
            return schemaType != null ? schemaType.getRef() : ((SchemaType) XQuerySchemaTypeSystem.get().resolveHandle(readString)).getRef();
        }
        if (charAt == 'Y') {
            SchemaType typeForSignature = this.typeSystem.getLinker().typeForSignature(readString.substring(4));
            if (typeForSignature != null) {
                return typeForSignature.getRef();
            }
            throw new SchemaTypeLoaderException("Cannot resolve type for handle " + readString, this.typeSystem.getName(), this._handle, 13);
        }
        if (charAt == 'D') {
            return this.typeSystem.getLinker().findIdentityConstraintRef(QNameHelper.forPretty(readString, 4));
        }
        if (charAt == 'E') {
            return this.typeSystem.getLinker().findElementRef(QNameHelper.forPretty(readString, 4));
        }
        switch (charAt) {
            case 'M':
                return this.typeSystem.getLinker().findModelGroupRef(QNameHelper.forPretty(readString, 4));
            case 'N':
                return this.typeSystem.getLinker().findAttributeGroupRef(QNameHelper.forPretty(readString, 4));
            case 'O':
                return this.typeSystem.getLinker().findDocumentTypeRef(QNameHelper.forPretty(readString, 4));
            default:
                switch (charAt) {
                    case 'R':
                        SchemaGlobalAttribute findAttribute = this.typeSystem.getLinker().findAttribute(QNameHelper.forPretty(readString, 4));
                        if (findAttribute != null) {
                            return findAttribute.getType().getRef();
                        }
                        throw new SchemaTypeLoaderException("Cannot resolve attribute for handle " + readString, this.typeSystem.getName(), this._handle, 13);
                    case 'S':
                        SchemaGlobalElement findElement = this.typeSystem.getLinker().findElement(QNameHelper.forPretty(readString, 4));
                        if (findElement != null) {
                            return findElement.getType().getRef();
                        }
                        throw new SchemaTypeLoaderException("Cannot resolve element for handle " + readString, this.typeSystem.getName(), this._handle, 13);
                    case 'T':
                        return this.typeSystem.getLinker().findTypeRef(QNameHelper.forPretty(readString, 4));
                    default:
                        throw new SchemaTypeLoaderException("Cannot resolve handle " + readString, this.typeSystem.getName(), this._handle, 13);
                }
        }
    }

    public int readInt() {
        try {
            return this._input.readInt();
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public Set<String> readNamespaces() {
        HashSet hashSet = new HashSet();
        int readShort = readShort();
        for (int i = 0; i < readShort; i++) {
            hashSet.add(readString());
        }
        return hashSet;
    }

    public SchemaParticle[] readParticleArray() {
        int readShort = readShort();
        SchemaParticle[] schemaParticleArr = new SchemaParticle[readShort];
        for (int i = 0; i < readShort; i++) {
            schemaParticleArr[i] = readParticleData();
        }
        return schemaParticleArr;
    }

    public SchemaParticle readParticleData() {
        int readShort = readShort();
        SchemaParticleImpl schemaParticleImpl = readShort != 4 ? new SchemaParticleImpl() : new SchemaLocalElementImpl();
        loadParticle(schemaParticleImpl, readShort);
        return schemaParticleImpl;
    }

    public SchemaProperty readPropertyData() {
        SchemaPropertyImpl schemaPropertyImpl = new SchemaPropertyImpl();
        schemaPropertyImpl.setName(readQName());
        schemaPropertyImpl.setTypeRef(readTypeRef());
        int readShort = readShort();
        schemaPropertyImpl.setAttribute((readShort & 1) != 0);
        schemaPropertyImpl.setContainerTypeRef(readTypeRef());
        schemaPropertyImpl.setMinOccurs(readBigInteger());
        schemaPropertyImpl.setMaxOccurs(readBigInteger());
        schemaPropertyImpl.setNillable(readShort());
        schemaPropertyImpl.setDefault(readShort());
        schemaPropertyImpl.setFixed(readShort());
        schemaPropertyImpl.setDefaultText(readString());
        schemaPropertyImpl.setJavaPropertyName(readString());
        schemaPropertyImpl.setJavaTypeCode(readShort());
        schemaPropertyImpl.setExtendsJava(readTypeRef(), (readShort & 2) != 0, (readShort & 4) != 0, (readShort & 8) != 0);
        if (atMost(2, 19, 0)) {
            schemaPropertyImpl.setJavaSetterDelimiter(readQNameSet());
        }
        if (atLeast(2, 16, 0)) {
            schemaPropertyImpl.setDefaultValue(readXmlValueObject());
        }
        if (!schemaPropertyImpl.isAttribute() && atLeast(2, 17, 0)) {
            int readShort2 = readShort();
            LinkedHashSet linkedHashSet = new LinkedHashSet(readShort2);
            for (int i = 0; i < readShort2; i++) {
                linkedHashSet.add(readQName());
            }
            schemaPropertyImpl.setAcceptedNames(linkedHashSet);
        }
        schemaPropertyImpl.setImmutable();
        return schemaPropertyImpl;
    }

    public QName readQName() {
        String readString = readString();
        String readString2 = readString();
        if (readString2 == null) {
            return null;
        }
        return new QName(readString, readString2);
    }

    public Map<QName, SchemaComponent.Ref> readQNameRefMap() {
        HashMap hashMap = new HashMap();
        int readShort = readShort();
        for (int i = 0; i < readShort; i++) {
            hashMap.put(readQName(), readHandle());
        }
        return hashMap;
    }

    public List<SchemaComponent.Ref> readQNameRefMapAsList(List<QName> list) {
        int readShort = readShort();
        ArrayList arrayList = new ArrayList(readShort);
        for (int i = 0; i < readShort; i++) {
            QName readQName = readQName();
            arrayList.add(readHandle());
            list.add(readQName);
        }
        return arrayList;
    }

    public QNameSet readQNameSet() {
        int readShort = readShort();
        HashSet hashSet = new HashSet();
        int readShort2 = readShort();
        for (int i = 0; i < readShort2; i++) {
            hashSet.add(readString());
        }
        HashSet hashSet2 = new HashSet();
        int readShort3 = readShort();
        for (int i2 = 0; i2 < readShort3; i2++) {
            hashSet2.add(readQName());
        }
        HashSet hashSet3 = new HashSet();
        int readShort4 = readShort();
        for (int i3 = 0; i3 < readShort4; i3++) {
            hashSet3.add(readQName());
        }
        return readShort == 1 ? QNameSet.forSets(hashSet, null, hashSet2, hashSet3) : QNameSet.forSets(null, hashSet, hashSet3, hashSet2);
    }

    public SOAPArrayType readSOAPArrayType() {
        QName readQName = readQName();
        String readString = readString();
        if (readQName == null) {
            return null;
        }
        return new SOAPArrayType(readQName, readString);
    }

    public int readShort() {
        try {
            return this._input.readUnsignedShort();
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public String readString() {
        return this._stringPool.stringForCode(readUnsignedShortOrInt());
    }

    public SchemaType.Ref readTypeRef() {
        return (SchemaType.Ref) readHandle();
    }

    public SchemaType.Ref[] readTypeRefArray() {
        int readShort = readShort();
        SchemaType.Ref[] refArr = new SchemaType.Ref[readShort];
        for (int i = 0; i < readShort; i++) {
            refArr[i] = readTypeRef();
        }
        return refArr;
    }

    public int readUnsignedShortOrInt() {
        try {
            return this._input.readUnsignedShortOrInt();
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public XmlValueRef readXmlValueObject() {
        SchemaType.Ref readTypeRef = readTypeRef();
        if (readTypeRef == null) {
            return null;
        }
        int readShort = readShort();
        if (readShort != 0) {
            if (readShort != 65535) {
                switch (readShort) {
                    case 2:
                    case 3:
                    case 6:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        return new XmlValueRef(readTypeRef, readString());
                    case 4:
                    case 5:
                        return new XmlValueRef(readTypeRef, readByteArray());
                    case 7:
                    case 8:
                        return new XmlValueRef(readTypeRef, readQName());
                    case 9:
                    case 10:
                        return new XmlValueRef(readTypeRef, Double.valueOf(readDouble()));
                }
            }
            int readShort2 = readShort();
            ArrayList arrayList = new ArrayList();
            writeShort(readShort2);
            for (int i = 0; i < readShort2; i++) {
                arrayList.add(readXmlValueObject());
            }
            return new XmlValueRef(readTypeRef, arrayList);
        }
        return new XmlValueRef(readTypeRef, null);
    }

    public void writeAnnotation(SchemaAnnotation schemaAnnotation) {
        if (schemaAnnotation == null) {
            writeInt(-1);
            return;
        }
        SchemaAnnotation.Attribute[] attributes = schemaAnnotation.getAttributes();
        writeInt(attributes.length);
        for (SchemaAnnotation.Attribute attribute : attributes) {
            QName name = attribute.getName();
            String value = attribute.getValue();
            String valueUri = attribute.getValueUri();
            writeQName(name);
            writeString(value);
            writeString(valueUri);
        }
        XmlObject[] userInformation = schemaAnnotation.getUserInformation();
        writeInt(userInformation.length);
        XmlOptions saveAggressiveNamespaces = new XmlOptions().setSaveOuter().setSaveAggressiveNamespaces();
        for (XmlObject xmlObject : userInformation) {
            writeString(xmlObject.xmlText(saveAggressiveNamespaces));
        }
        XmlObject[] applicationInformation = schemaAnnotation.getApplicationInformation();
        writeInt(applicationInformation.length);
        for (XmlObject xmlObject2 : applicationInformation) {
            writeString(xmlObject2.xmlText(saveAggressiveNamespaces));
        }
    }

    public void writeAnnotations(SchemaAnnotation[] schemaAnnotationArr) {
        writeInt(schemaAnnotationArr.length);
        for (SchemaAnnotation schemaAnnotation : schemaAnnotationArr) {
            writeAnnotation(schemaAnnotation);
        }
    }

    public void writeAttributeData(SchemaLocalAttribute schemaLocalAttribute) {
        writeQName(schemaLocalAttribute.getName());
        writeType(schemaLocalAttribute.getType());
        writeShort(schemaLocalAttribute.getUse());
        writeString(schemaLocalAttribute.getDefaultText());
        writeXmlValueObject(schemaLocalAttribute.getDefaultValue());
        writeShort(schemaLocalAttribute.isFixed() ? 1 : 0);
        writeSOAPArrayType(((SchemaWSDLArrayType) schemaLocalAttribute).getWSDLArrayType());
        writeAnnotation(schemaLocalAttribute.getAnnotation());
    }

    public void writeAttributeGroupData(SchemaAttributeGroup schemaAttributeGroup) {
        SchemaAttributeGroupImpl schemaAttributeGroupImpl = (SchemaAttributeGroupImpl) schemaAttributeGroup;
        writeQName(schemaAttributeGroupImpl.getName());
        writeString(schemaAttributeGroupImpl.getTargetNamespace());
        writeShort(schemaAttributeGroupImpl.getChameleonNamespace() != null ? 1 : 0);
        writeString(schemaAttributeGroupImpl.getFormDefault());
        writeShort(schemaAttributeGroupImpl.isRedefinition() ? 1 : 0);
        writeString(schemaAttributeGroupImpl.getParseObject().xmlText(new XmlOptions().setSaveOuter()));
        writeAnnotation(schemaAttributeGroupImpl.getAnnotation());
        writeString(schemaAttributeGroupImpl.getSourceName());
    }

    public void writeAttributeTypeMap(SchemaType[] schemaTypeArr) {
        writeShort(schemaTypeArr.length);
        for (SchemaType schemaType : schemaTypeArr) {
            writeQName(schemaType.getAttributeTypeAttributeName());
            writeHandle(schemaType);
        }
    }

    public void writeBigInteger(BigInteger bigInteger) {
        if (bigInteger == null) {
            writeShort(0);
        } else if (bigInteger.signum() == 0) {
            writeByteArray(SchemaTypeSystemImpl.SINGLE_ZERO_BYTE);
        } else {
            writeByteArray(bigInteger.toByteArray());
        }
    }

    public void writeByteArray(byte[] bArr) {
        try {
            writeShort(bArr.length);
            LongUTFDataOutputStream longUTFDataOutputStream = this._output;
            if (longUTFDataOutputStream != null) {
                longUTFDataOutputStream.write(bArr);
            }
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public void writeClassnameMap(Map<String, SchemaComponent.Ref> map) {
        writeShort(map.size());
        map.forEach(new BiConsumer() { // from class: org.apache.xmlbeans.impl.schema.i0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XsbReader.this.lambda$writeClassnameMap$0((String) obj, (SchemaComponent.Ref) obj2);
            }
        });
    }

    public void writeDocumentTypeMap(SchemaType[] schemaTypeArr) {
        writeShort(schemaTypeArr.length);
        for (SchemaType schemaType : schemaTypeArr) {
            writeQName(schemaType.getDocumentElementName());
            writeHandle(schemaType);
        }
    }

    public void writeDouble(double d) {
        LongUTFDataOutputStream longUTFDataOutputStream = this._output;
        if (longUTFDataOutputStream != null) {
            try {
                longUTFDataOutputStream.writeDouble(d);
            } catch (IOException e) {
                throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
            }
        }
    }

    public void writeEnd() {
        try {
            LongUTFDataOutputStream longUTFDataOutputStream = this._output;
            if (longUTFDataOutputStream != null) {
                longUTFDataOutputStream.flush();
                this._output.close();
            }
            this._output = null;
            this._stringPool = null;
            this._handle = null;
        } catch (IOException e) {
            throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
        }
    }

    public void writeHandle(SchemaComponent schemaComponent) {
        if (schemaComponent == null || schemaComponent.getTypeSystem() == this.typeSystem) {
            writeString(this.typeSystem.getTypePool().handleForComponent(schemaComponent));
            return;
        }
        int componentType = schemaComponent.getComponentType();
        if (componentType == 0) {
            SchemaType schemaType = (SchemaType) schemaComponent;
            if (schemaType.isBuiltinType()) {
                writeString("_BI_" + schemaType.getName().getLocalPart());
                return;
            }
            if (schemaType.getName() != null) {
                writeString("_XT_" + QNameHelper.pretty(schemaType.getName()));
                return;
            }
            if (schemaType.isDocumentType()) {
                writeString("_XO_" + QNameHelper.pretty(schemaType.getDocumentElementName()));
                return;
            }
            writeString("_XY_" + schemaType);
            return;
        }
        if (componentType == 1) {
            writeString("_XE_" + QNameHelper.pretty(schemaComponent.getName()));
            return;
        }
        if (componentType == 3) {
            writeString("_XA_" + QNameHelper.pretty(schemaComponent.getName()));
            return;
        }
        if (componentType == 4) {
            writeString("_XN_" + QNameHelper.pretty(schemaComponent.getName()));
            return;
        }
        if (componentType == 5) {
            writeString("_XD_" + QNameHelper.pretty(schemaComponent.getName()));
            return;
        }
        if (componentType != 6) {
            throw new SchemaTypeLoaderException("Cannot write handle for component " + schemaComponent, this.typeSystem.getName(), this._handle, 13);
        }
        writeString("_XM_" + QNameHelper.pretty(schemaComponent.getName()));
    }

    public void writeIdConstraintData(SchemaIdentityConstraint schemaIdentityConstraint) {
        writeQName(schemaIdentityConstraint.getName());
        writeShort(schemaIdentityConstraint.getConstraintCategory());
        writeString(schemaIdentityConstraint.getSelector());
        writeAnnotation(schemaIdentityConstraint.getAnnotation());
        String[] fields = schemaIdentityConstraint.getFields();
        writeShort(fields.length);
        for (String str : fields) {
            writeString(str);
        }
        if (schemaIdentityConstraint.getConstraintCategory() == 2) {
            writeHandle(schemaIdentityConstraint.getReferencedKey());
        }
        Map<String, String> nSMap = schemaIdentityConstraint.getNSMap();
        writeShort(nSMap.size());
        nSMap.forEach(new BiConsumer() { // from class: org.apache.xmlbeans.impl.schema.m0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                XsbReader.this.lambda$writeIdConstraintData$1((String) obj, (String) obj2);
            }
        });
        writeString(schemaIdentityConstraint.getSourceName());
    }

    public void writeIndexData() {
        this.typeSystem.getTypePool().writeHandlePool(this);
        writeQNameMap(this.typeSystem.globalElements());
        writeQNameMap(this.typeSystem.globalAttributes());
        writeQNameMap(this.typeSystem.modelGroups());
        writeQNameMap(this.typeSystem.attributeGroups());
        writeQNameMap(this.typeSystem.identityConstraints());
        writeQNameMap(this.typeSystem.globalTypes());
        writeDocumentTypeMap(this.typeSystem.documentTypes());
        writeAttributeTypeMap(this.typeSystem.attributeTypes());
        writeClassnameMap(this.typeSystem.getTypeRefsByClassname());
        writeNamespaces(this.typeSystem.getNamespaces());
        writeQNameMap(this.typeSystem.redefinedGlobalTypes());
        writeQNameMap(this.typeSystem.redefinedModelGroups());
        writeQNameMap(this.typeSystem.redefinedAttributeGroups());
        writeAnnotations(this.typeSystem.annotations());
    }

    public void writeInt(int i) {
        LongUTFDataOutputStream longUTFDataOutputStream = this._output;
        if (longUTFDataOutputStream != null) {
            try {
                longUTFDataOutputStream.writeInt(i);
            } catch (IOException e) {
                throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
            }
        }
    }

    public void writeModelGroupData(SchemaModelGroup schemaModelGroup) {
        SchemaModelGroupImpl schemaModelGroupImpl = (SchemaModelGroupImpl) schemaModelGroup;
        writeQName(schemaModelGroupImpl.getName());
        writeString(schemaModelGroupImpl.getTargetNamespace());
        writeShort(schemaModelGroupImpl.getChameleonNamespace() != null ? 1 : 0);
        writeString(schemaModelGroupImpl.getElemFormDefault());
        writeString(schemaModelGroupImpl.getAttFormDefault());
        writeShort(schemaModelGroupImpl.isRedefinition() ? 1 : 0);
        writeString(schemaModelGroupImpl.getParseObject().xmlText(new XmlOptions().setSaveOuter()));
        writeAnnotation(schemaModelGroupImpl.getAnnotation());
        writeString(schemaModelGroupImpl.getSourceName());
    }

    public void writeNamespaces(Set<String> set) {
        writeShort(set.size());
        set.forEach(new C20150j0(this));
    }

    public void writeParticleArray(SchemaParticle[] schemaParticleArr) {
        writeShort(schemaParticleArr.length);
        for (SchemaParticle schemaParticle : schemaParticleArr) {
            writeParticleData(schemaParticle);
        }
    }

    public void writeParticleData(SchemaParticle schemaParticle) {
        writeShort(schemaParticle.getParticleType());
        short s = schemaParticle.isSkippable() ? (short) 1 : (short) 0;
        if (schemaParticle.getParticleType() == 4) {
            SchemaLocalElement schemaLocalElement = (SchemaLocalElement) schemaParticle;
            if (schemaLocalElement.isFixed()) {
                s = (short) (s | 4);
            }
            if (schemaLocalElement.isNillable()) {
                s = (short) (s | 8);
            }
            if (schemaLocalElement.blockExtension()) {
                s = (short) (s | 16);
            }
            if (schemaLocalElement.blockRestriction()) {
                s = (short) (s | 32);
            }
            if (schemaLocalElement.blockSubstitution()) {
                s = (short) (s | 64);
            }
            if (schemaLocalElement.isAbstract()) {
                s = (short) (s | 128);
            }
            if (schemaLocalElement instanceof SchemaGlobalElement) {
                SchemaGlobalElement schemaGlobalElement = (SchemaGlobalElement) schemaLocalElement;
                if (schemaGlobalElement.finalExtension()) {
                    s = (short) (s | 256);
                }
                if (schemaGlobalElement.finalRestriction()) {
                    s = (short) (s | 512);
                }
            }
        }
        writeShort(s);
        writeBigInteger(schemaParticle.getMinOccurs());
        writeBigInteger(schemaParticle.getMaxOccurs());
        writeQNameSet(schemaParticle.acceptedStartNames());
        int particleType = schemaParticle.getParticleType();
        if (particleType == 1 || particleType == 2 || particleType == 3) {
            writeParticleArray(schemaParticle.getParticleChildren());
            return;
        }
        if (particleType != 4) {
            if (particleType != 5) {
                throw new SchemaTypeLoaderException("Unrecognized particle type ", this.typeSystem.getName(), this._handle, 11);
            }
            writeQNameSet(schemaParticle.getWildcardSet());
            writeShort(schemaParticle.getWildcardProcess());
            return;
        }
        SchemaLocalElement schemaLocalElement2 = (SchemaLocalElement) schemaParticle;
        writeQName(schemaLocalElement2.getName());
        writeType(schemaLocalElement2.getType());
        writeString(schemaLocalElement2.getDefaultText());
        writeXmlValueObject(schemaLocalElement2.getDefaultValue());
        writeSOAPArrayType(((SchemaWSDLArrayType) schemaLocalElement2).getWSDLArrayType());
        writeAnnotation(schemaLocalElement2.getAnnotation());
        if (schemaLocalElement2 instanceof SchemaGlobalElement) {
            SchemaGlobalElement schemaGlobalElement2 = (SchemaGlobalElement) schemaLocalElement2;
            writeHandle(schemaGlobalElement2.substitutionGroup());
            QName[] substitutionGroupMembers = schemaGlobalElement2.substitutionGroupMembers();
            writeShort(substitutionGroupMembers.length);
            for (QName qName : substitutionGroupMembers) {
                writeQName(qName);
            }
        }
        SchemaIdentityConstraint[] identityConstraints = schemaLocalElement2.getIdentityConstraints();
        writeShort(identityConstraints.length);
        for (SchemaIdentityConstraint schemaIdentityConstraint : identityConstraints) {
            writeHandle(schemaIdentityConstraint);
        }
    }

    public void writePropertyData(SchemaProperty schemaProperty) {
        writeQName(schemaProperty.getName());
        writeType(schemaProperty.getType());
        writeShort((schemaProperty.isAttribute() ? 1 : 0) | (schemaProperty.extendsJavaSingleton() ? 2 : 0) | (schemaProperty.extendsJavaOption() ? 4 : 0) | (schemaProperty.extendsJavaArray() ? 8 : 0));
        writeType(schemaProperty.getContainerType());
        writeBigInteger(schemaProperty.getMinOccurs());
        writeBigInteger(schemaProperty.getMaxOccurs());
        writeShort(schemaProperty.hasNillable());
        writeShort(schemaProperty.hasDefault());
        writeShort(schemaProperty.hasFixed());
        writeString(schemaProperty.getDefaultText());
        writeString(schemaProperty.getJavaPropertyName());
        writeShort(schemaProperty.getJavaTypeCode());
        writeType(schemaProperty.javaBasedOnType());
        writeXmlValueObject(schemaProperty.getDefaultValue());
        if (schemaProperty.isAttribute()) {
            return;
        }
        QName[] acceptedNames = schemaProperty.acceptedNames();
        writeShort(acceptedNames.length);
        for (QName qName : acceptedNames) {
            writeQName(qName);
        }
    }

    public void writeQName(QName qName) {
        if (qName == null) {
            writeString(null);
            writeString(null);
        } else {
            writeString(qName.getNamespaceURI());
            writeString(qName.getLocalPart());
        }
    }

    public void writeQNameMap(SchemaComponent[] schemaComponentArr) {
        writeShort(schemaComponentArr.length);
        for (SchemaComponent schemaComponent : schemaComponentArr) {
            writeQName(schemaComponent.getName());
            writeHandle(schemaComponent);
        }
    }

    public void writeQNameSet(QNameSet qNameSet) {
        int i = qNameSet.excludedURIs() != null ? 1 : 0;
        writeShort(i);
        Set<String> excludedURIs = i != 0 ? qNameSet.excludedURIs() : qNameSet.includedURIs();
        writeShort(excludedURIs.size());
        excludedURIs.forEach(new C20150j0(this));
        Set<QName> excludedQNamesInIncludedURIs = i != 0 ? qNameSet.excludedQNamesInIncludedURIs() : qNameSet.includedQNamesInExcludedURIs();
        writeShort(excludedQNamesInIncludedURIs.size());
        excludedQNamesInIncludedURIs.forEach(new Consumer() { // from class: org.apache.xmlbeans.impl.schema.k0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XsbReader.this.writeQName((QName) obj);
            }
        });
        Set<QName> includedQNamesInExcludedURIs = i != 0 ? qNameSet.includedQNamesInExcludedURIs() : qNameSet.excludedQNamesInIncludedURIs();
        writeShort(includedQNamesInExcludedURIs.size());
        includedQNamesInExcludedURIs.forEach(new Consumer() { // from class: org.apache.xmlbeans.impl.schema.k0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XsbReader.this.writeQName((QName) obj);
            }
        });
    }

    public void writeRealHeader(String str, int i) {
        String str2;
        if (str.indexOf(47) >= 0) {
            str2 = str + ".xsb";
        } else {
            str2 = this.typeSystem.getBasePackage() + str + ".xsb";
        }
        OutputStream saverStream = this.typeSystem.getSaverStream(str2, this._handle);
        if (saverStream == null) {
            throw new SchemaTypeLoaderException("Could not write compiled schema resource " + str2, this.typeSystem.getName(), str, 12);
        }
        this._output = new LongUTFDataOutputStream(saverStream);
        this._handle = str;
        writeInt(-629491010);
        writeShort(2);
        writeShort(24);
        writeShort(0);
        writeShort(i);
        this._stringPool.writeTo(this._output);
    }

    public void writeSOAPArrayType(SOAPArrayType sOAPArrayType) {
        if (sOAPArrayType == null) {
            writeQName(null);
            writeString(null);
        } else {
            writeQName(sOAPArrayType.getQName());
            writeString(sOAPArrayType.soap11DimensionString());
        }
    }

    public void writeShort(int i) {
        if (i >= 65535 || i < -1) {
            throw new SchemaTypeLoaderException("Value " + i + " out of range: must fit in a 16-bit unsigned short.", this.typeSystem.getName(), this._handle, 10);
        }
        LongUTFDataOutputStream longUTFDataOutputStream = this._output;
        if (longUTFDataOutputStream != null) {
            try {
                longUTFDataOutputStream.writeShort(i);
            } catch (IOException e) {
                throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
            }
        }
    }

    public void writeShortOrInt(int i) {
        LongUTFDataOutputStream longUTFDataOutputStream = this._output;
        if (longUTFDataOutputStream != null) {
            try {
                longUTFDataOutputStream.writeShortOrInt(i);
            } catch (IOException e) {
                throw new SchemaTypeLoaderException(e.getMessage(), this.typeSystem.getName(), this._handle, 9, e);
            }
        }
    }

    public void writeString(String str) {
        writeShortOrInt(this._stringPool.codeForString(str));
    }

    public void writeType(SchemaType schemaType) {
        writeHandle(schemaType);
    }

    public void writeTypeArray(SchemaType[] schemaTypeArr) {
        writeShort(schemaTypeArr.length);
        for (SchemaType schemaType : schemaTypeArr) {
            writeHandle(schemaType);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeTypeData(SchemaType schemaType) {
        writeQName(schemaType.getName());
        writeType(schemaType.getOuterType());
        SchemaTypeImpl schemaTypeImpl = (SchemaTypeImpl) schemaType;
        writeShort(schemaTypeImpl.getBaseDepth());
        writeType(schemaType.getBaseType());
        writeShort(schemaType.getDerivationType());
        writeAnnotation(schemaType.getAnnotation());
        if (schemaType.getContainerField() == null) {
            writeShort(0);
        } else if (schemaType.getOuterType().isAttributeType() || schemaType.getOuterType().isDocumentType()) {
            writeShort(1);
            writeHandle((SchemaComponent) schemaType.getContainerField());
        } else if (schemaType.getContainerField().isAttribute()) {
            writeShort(2);
            writeShort(((SchemaTypeImpl) schemaType.getOuterType()).getIndexForLocalAttribute((SchemaLocalAttribute) schemaType.getContainerField()));
        } else {
            writeShort(3);
            writeShort(((SchemaTypeImpl) schemaType.getOuterType()).getIndexForLocalElement((SchemaLocalElement) schemaType.getContainerField()));
        }
        writeString(schemaType.getFullJavaName());
        writeString(schemaType.getFullJavaImplName());
        writeTypeArray(schemaType.getAnonymousTypes());
        writeShort(schemaType.getAnonymousUnionMemberOrdinal());
        boolean isSimpleType = schemaType.isSimpleType();
        int i = isSimpleType;
        if (schemaType.isDocumentType()) {
            i = (isSimpleType ? 1 : 0) | 2;
        }
        int i2 = i;
        if (schemaType.isAttributeType()) {
            i2 = (i == true ? 1 : 0) | 524288;
        }
        int i3 = i2;
        if (schemaType.ordered() != 0) {
            i3 = (i2 == true ? 1 : 0) | 4;
        }
        int i4 = i3;
        if (schemaType.ordered() == 2) {
            i4 = (i3 == true ? 1 : 0) | 1024;
        }
        int i5 = i4;
        if (schemaType.isBounded()) {
            i5 = (i4 == true ? 1 : 0) | 8;
        }
        int i6 = i5;
        if (schemaType.isFinite()) {
            i6 = (i5 == true ? 1 : 0) | 16;
        }
        int i7 = i6;
        if (schemaType.isNumeric()) {
            i7 = (i6 == true ? 1 : 0) | 32;
        }
        int i8 = i7;
        if (schemaType.hasStringEnumValues()) {
            i8 = (i7 == true ? 1 : 0) | 64;
        }
        int i9 = i8;
        if (schemaTypeImpl.isUnionOfLists()) {
            i9 = (i8 == true ? 1 : 0) | 128;
        }
        int i10 = i9;
        if (schemaType.hasPatternFacet()) {
            i10 = (i9 == true ? 1 : 0) | 256;
        }
        int i11 = i10;
        if (schemaType.isOrderSensitive()) {
            i11 = (i10 == true ? 1 : 0) | 512;
        }
        int i12 = i11;
        if (schemaType.blockExtension()) {
            i12 = (i11 == true ? 1 : 0) | 4096;
        }
        int i13 = i12;
        if (schemaType.blockRestriction()) {
            i13 = (i12 == true ? 1 : 0) | 8192;
        }
        int i14 = i13;
        if (schemaType.finalExtension()) {
            i14 = (i13 == true ? 1 : 0) | 16384;
        }
        int i15 = i14;
        if (schemaType.finalRestriction()) {
            i15 = (i14 == true ? 1 : 0) | 16384;
        }
        int i16 = i15;
        if (schemaType.finalList()) {
            i16 = (i15 == true ? 1 : 0) | 131072;
        }
        int i17 = i16;
        if (schemaType.finalUnion()) {
            i17 = (i16 == true ? 1 : 0) | 65536;
        }
        int i18 = i17;
        if (schemaType.isAbstract()) {
            i18 = (i17 == true ? 1 : 0) | 262144;
        }
        writeInt(i18);
        if (!schemaType.isSimpleType()) {
            writeShort(schemaType.getContentType());
            writeType(schemaType.getContentBasedOnType());
            SchemaAttributeModel attributeModel = schemaType.getAttributeModel();
            SchemaLocalAttribute[] attributes = attributeModel.getAttributes();
            writeShort(attributes.length);
            for (SchemaLocalAttribute schemaLocalAttribute : attributes) {
                writeAttributeData(schemaLocalAttribute);
            }
            writeQNameSet(attributeModel.getWildcardSet());
            writeShort(attributeModel.getWildcardProcess());
            SchemaProperty[] attributeProperties = schemaType.getAttributeProperties();
            writeShort(attributeProperties.length);
            for (SchemaProperty schemaProperty : attributeProperties) {
                writePropertyData(schemaProperty);
            }
            if (schemaType.getContentType() == 3 || schemaType.getContentType() == 4) {
                writeShort(schemaType.hasAllContent() ? 1 : 0);
                writeParticleArray(schemaType.getContentModel() != null ? new SchemaParticle[]{schemaType.getContentModel()} : new SchemaParticle[0]);
                SchemaProperty[] elementProperties = schemaType.getElementProperties();
                writeShort(elementProperties.length);
                for (SchemaProperty schemaProperty2 : elementProperties) {
                    writePropertyData(schemaProperty2);
                }
            }
        }
        if (schemaType.isSimpleType() || schemaType.getContentType() == 2) {
            writeShort(schemaType.getSimpleVariety());
            int i19 = 0;
            for (int i20 = 0; i20 <= 11; i20++) {
                if (schemaType.getFacet(i20) != null) {
                    i19++;
                }
            }
            writeShort(i19);
            for (int i21 = 0; i21 <= 11; i21++) {
                XmlAnySimpleType facet = schemaType.getFacet(i21);
                if (facet != null) {
                    writeShort(i21);
                    writeXmlValueObject(facet);
                    writeShort(schemaType.isFacetFixed(i21) ? 1 : 0);
                }
            }
            writeShort(schemaType.getWhiteSpaceRule());
            RegularExpression[] patternExpressions = schemaTypeImpl.getPatternExpressions();
            writeShort(patternExpressions.length);
            for (RegularExpression regularExpression : patternExpressions) {
                writeString(regularExpression.getPattern());
            }
            XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
            if (enumerationValues == null) {
                writeShort(0);
            } else {
                writeShortOrInt(enumerationValues.length);
                for (XmlAnySimpleType xmlAnySimpleType : enumerationValues) {
                    writeXmlValueObject(xmlAnySimpleType);
                }
            }
            writeType(schemaType.getBaseEnumType());
            if (schemaType.hasStringEnumValues()) {
                SchemaStringEnumEntry[] stringEnumEntries = schemaType.getStringEnumEntries();
                writeShort(stringEnumEntries.length);
                for (SchemaStringEnumEntry schemaStringEnumEntry : stringEnumEntries) {
                    writeString(schemaStringEnumEntry.getString());
                    writeShort(schemaStringEnumEntry.getIntValue());
                    writeString(schemaStringEnumEntry.getEnumName());
                }
            }
            int simpleVariety = schemaType.getSimpleVariety();
            if (simpleVariety == 1) {
                writeType(schemaType.getPrimitiveType());
                writeInt(schemaType.getDecimalSize());
            } else if (simpleVariety == 2) {
                writeTypeArray(schemaType.getUnionMemberTypes());
            } else if (simpleVariety == 3) {
                writeType(schemaType.getListItemType());
            }
        }
        writeString(schemaType.getSourceName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeXmlValueObject(XmlAnySimpleType xmlAnySimpleType) {
        SchemaType schemaType = xmlAnySimpleType == 0 ? null : xmlAnySimpleType.schemaType();
        writeType(schemaType);
        if (schemaType == null) {
            return;
        }
        SimpleValue simpleValue = (SimpleValue) xmlAnySimpleType;
        SchemaType instanceType = simpleValue.instanceType();
        if (instanceType == null) {
            writeShort(0);
            return;
        }
        if (instanceType.getSimpleVariety() == 3) {
            writeShort(-1);
            List<? extends XmlAnySimpleType> xgetListValue = ((XmlObjectBase) xmlAnySimpleType).xgetListValue();
            writeShort(xgetListValue.size());
            xgetListValue.forEach(new Consumer() { // from class: org.apache.xmlbeans.impl.schema.l0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    XsbReader.this.writeXmlValueObject((XmlAnySimpleType) obj);
                }
            });
            return;
        }
        int builtinTypeCode = instanceType.getPrimitiveType().getBuiltinTypeCode();
        writeShort(builtinTypeCode);
        switch (builtinTypeCode) {
            case 2:
            case 3:
            case 6:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                writeString(xmlAnySimpleType.getStringValue());
                return;
            case 4:
            case 5:
                writeByteArray(simpleValue.getByteArrayValue());
                return;
            case 7:
            case 8:
                writeQName(simpleValue.getQNameValue());
                return;
            case 9:
                writeDouble(simpleValue.getFloatValue());
                return;
            case 10:
                writeDouble(simpleValue.getDoubleValue());
                return;
            default:
                return;
        }
    }

    public XsbReader(SchemaTypeSystemImpl schemaTypeSystemImpl, String str, int i) {
        this.typeSystem = schemaTypeSystemImpl;
        String str2 = schemaTypeSystemImpl.getBasePackage() + str + ".xsb";
        InputStream loaderStream = schemaTypeSystemImpl.getLoaderStream(str2);
        if (loaderStream != null) {
            this._input = new LongUTFDataInputStream(loaderStream);
            this._handle = str;
            if (readInt() == -629491010) {
                this._majorver = readShort();
                int readShort = readShort();
                this._minorver = readShort;
                if (this._majorver != 2) {
                    throw new SchemaTypeLoaderException("XML-BEANS compiled schema: Wrong major version - expecting 2, got " + this._majorver, schemaTypeSystemImpl.getName(), str, 2);
                }
                if (readShort > 24) {
                    throw new SchemaTypeLoaderException("XML-BEANS compiled schema: Incompatible minor version - expecting up to 24, got " + this._minorver, schemaTypeSystemImpl.getName(), str, 3);
                }
                if (readShort >= 14) {
                    if (atLeast(2, 18, 0)) {
                        this._releaseno = readShort();
                    }
                    int readShort2 = readShort();
                    if (readShort2 != i && i != 65535) {
                        throw new SchemaTypeLoaderException("XML-BEANS compiled schema: File has the wrong type - expecting type " + i + ", got type " + readShort2, schemaTypeSystemImpl.getName(), str, 4);
                    }
                    SchemaTypeSystemImpl.StringPool stringPool = new SchemaTypeSystemImpl.StringPool(this._handle, schemaTypeSystemImpl.getName());
                    this._stringPool = stringPool;
                    stringPool.readFrom(this._input);
                    this._actualfiletype = readShort2;
                    return;
                }
                throw new SchemaTypeLoaderException("XML-BEANS compiled schema: Incompatible minor version - expecting at least 14, got " + this._minorver, schemaTypeSystemImpl.getName(), str, 3);
            }
            throw new SchemaTypeLoaderException("XML-BEANS compiled schema: Wrong magic cookie", schemaTypeSystemImpl.getName(), str, 1);
        }
        throw new SchemaTypeLoaderException("XML-BEANS compiled schema: Could not locate compiled schema resource " + str2, schemaTypeSystemImpl.getName(), str, 0);
    }
}
