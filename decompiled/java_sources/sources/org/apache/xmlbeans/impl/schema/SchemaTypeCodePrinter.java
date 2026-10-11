package org.apache.xmlbeans.impl.schema;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xmlbeans.InterfaceExtension;
import org.apache.xmlbeans.PrePostExtension;
import org.apache.xmlbeans.SchemaCodePrinter;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaStringEnumEntry;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeSystem;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.repackage.Repackager;

/* loaded from: classes13.dex */
public final class SchemaTypeCodePrinter implements SchemaCodePrinter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ADD_NEW_VALUE = 3;
    private static final int INDENT_INCREMENT = 4;
    static final String INDEX_CLASSNAME = "TypeSystemHolder";
    private static final String MAX_SPACES = "                                        ";
    private static final int NOTHING = 1;
    private static final int THROW_EXCEPTION = 4;
    private int _indent = 0;
    private Writer _writer;
    private XmlOptions opt;

    private void emitSpecializedAccessors(SchemaType schemaType) throws IOException {
        int decimalSize;
        if (schemaType.getSimpleVariety() == 1 && schemaType.getPrimitiveType().getBuiltinTypeCode() == 11 && ((decimalSize = schemaType.getDecimalSize()) != schemaType.getBaseType().getDecimalSize() || schemaType.getBaseType().getFullJavaName() == null)) {
            if (decimalSize == 8) {
                emit("byte getByteValue();", XmlOptions.BeanMethod.GET);
                emit("void setByteValue(byte b);", XmlOptions.BeanMethod.SET);
            } else if (decimalSize == 16) {
                emit("short getShortValue();", XmlOptions.BeanMethod.GET);
                emit("void setShortValue(short s);", XmlOptions.BeanMethod.SET);
            } else if (decimalSize == 32) {
                emit("int getIntValue();", XmlOptions.BeanMethod.GET);
                emit("void setIntValue(int i);", XmlOptions.BeanMethod.SET);
            } else if (decimalSize == 64) {
                emit("long getLongValue();", XmlOptions.BeanMethod.GET);
                emit("void setLongValue(long l);", XmlOptions.BeanMethod.SET);
            } else if (decimalSize == 1000000) {
                emit("java.math.BigInteger getBigIntegerValue();", XmlOptions.BeanMethod.GET);
                emit("void setBigIntegerValue(java.math.BigInteger bi);", XmlOptions.BeanMethod.SET);
            }
        }
        if (schemaType.getSimpleVariety() == 2) {
            emit("java.lang.Object getObjectValue();", XmlOptions.BeanMethod.GET);
            emit("void setObjectValue(java.lang.Object val);", XmlOptions.BeanMethod.SET);
            emit("org.apache.xmlbeans.SchemaType instanceType();", XmlOptions.BeanMethod.INSTANCE_TYPE);
            SchemaType unionCommonBaseType = schemaType.getUnionCommonBaseType();
            if (unionCommonBaseType != null && unionCommonBaseType.getSimpleVariety() != 2) {
                emitSpecializedAccessors(unionCommonBaseType);
            }
        }
        if (schemaType.getSimpleVariety() == 3) {
            emit("java.util.List getListValue();", XmlOptions.BeanMethod.GET_LIST);
            emit("java.util.List xgetListValue();", XmlOptions.BeanMethod.XGET_LIST);
            emit("void setListValue(java.util.List<?> list);", XmlOptions.BeanMethod.SET_LIST);
        }
    }

    public static SchemaType findBaseType(SchemaType schemaType) {
        while (schemaType.getFullJavaName() == null) {
            schemaType = schemaType.getBaseType();
        }
        return schemaType;
    }

    private SchemaProperty[] getDerivedProperties(SchemaType schemaType) {
        QName name = schemaType.getName();
        if (name == null || !name.equals(schemaType.getBaseType().getName())) {
            return schemaType.getDerivedProperties();
        }
        SchemaProperty[] derivedProperties = schemaType.getDerivedProperties();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SchemaProperty schemaProperty : derivedProperties) {
            linkedHashMap.put(schemaProperty.getName(), schemaProperty);
        }
        for (SchemaType baseType = schemaType.getBaseType(); baseType != null && name.equals(baseType.getName()); baseType = baseType.getBaseType()) {
            for (SchemaProperty schemaProperty2 : baseType.getDerivedProperties()) {
                if (!linkedHashMap.containsKey(schemaProperty2.getName())) {
                    linkedHashMap.put(schemaProperty2.getName(), schemaProperty2);
                }
            }
        }
        return (SchemaProperty[]) linkedHashMap.values().toArray(new SchemaProperty[0]);
    }

    private static String getExtensionInterfaces(SchemaType schemaType) {
        SchemaTypeImpl impl = getImpl(schemaType);
        if (impl == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        InterfaceExtension[] interfaceExtensions = impl.getInterfaceExtensions();
        if (interfaceExtensions != null) {
            for (InterfaceExtension interfaceExtension : interfaceExtensions) {
                sb.append(", ");
                sb.append(interfaceExtension.getInterface());
            }
        }
        return sb.toString();
    }

    private String getFullJavaName(SchemaType schemaType) {
        SchemaTypeImpl schemaTypeImpl = (SchemaTypeImpl) schemaType;
        String fullJavaName = schemaTypeImpl.getFullJavaName();
        while (schemaTypeImpl != null && schemaTypeImpl.isRedefinition()) {
            fullJavaName = schemaTypeImpl.getFullJavaName();
            schemaTypeImpl = (SchemaTypeImpl) schemaTypeImpl.getBaseType();
        }
        return fullJavaName;
    }

    private static SchemaTypeImpl getImpl(SchemaType schemaType) {
        if (schemaType instanceof SchemaTypeImpl) {
            return (SchemaTypeImpl) schemaType;
        }
        return null;
    }

    private String getUserTypeStaticHandlerMethod(boolean z, SchemaTypeImpl schemaTypeImpl) {
        String str;
        String localPart = schemaTypeImpl.getName().getLocalPart();
        if (localPart.length() < 2) {
            str = localPart.toUpperCase(Locale.ROOT);
        } else {
            str = localPart.substring(0, 1).toUpperCase(Locale.ROOT) + localPart.substring(1);
        }
        if (z) {
            return schemaTypeImpl.getUserTypeHandlerName() + ".encode" + str;
        }
        return schemaTypeImpl.getUserTypeHandlerName() + ".decode" + str;
    }

    private boolean hasBase(SchemaType schemaType) {
        SchemaType baseEnumType = schemaType.getBaseEnumType();
        if (baseEnumType.isAnonymousType() && baseEnumType.isSkippedAnonymousType()) {
            if (schemaType.getContentBasedOnType() != null) {
                if (schemaType.getContentBasedOnType().getBaseType() != baseEnumType) {
                    return true;
                }
            } else if (schemaType.getBaseType() != baseEnumType) {
                return true;
            }
        } else if (baseEnumType != schemaType) {
            return true;
        }
        return false;
    }

    public static String indexClassForSystem(SchemaTypeSystem schemaTypeSystem) {
        return schemaTypeSystem.getName() + "." + INDEX_CLASSNAME;
    }

    public static boolean isJavaPrimitive(int i) {
        return i >= 1 && i <= 7;
    }

    public static String javaStringEscape(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n' || charAt == '\r' || charAt == '\"' || charAt == '\\') {
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < str.length(); i2++) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 == '\n') {
                        sb.append("\\n");
                    } else if (charAt2 == '\r') {
                        sb.append("\\r");
                    } else if (charAt2 == '\"') {
                        sb.append("\\\"");
                    } else if (charAt2 != '\\') {
                        sb.append(charAt2);
                    } else {
                        sb.append("\\\\");
                    }
                }
                return sb.toString();
            }
        }
        return str;
    }

    public static String javaWrappedType(int i) {
        switch (i) {
            case 1:
                return Constants.BOOLEAN_CLASS;
            case 2:
                return "java.lang.Float";
            case 3:
                return Constants.DOUBLE_CLASS;
            case 4:
                return "java.lang.Byte";
            case 5:
                return "java.lang.Short";
            case 6:
                return Constants.INTEGER_CLASS;
            case 7:
                return "java.lang.Long";
            default:
                throw new IllegalStateException();
        }
    }

    private static String makeSafe(String str) {
        CharsetEncoder newEncoder = Charset.forName(System.getProperty("file.encoding")).newEncoder();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length() && newEncoder.canEncode(str.charAt(i))) {
            i++;
        }
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (newEncoder.canEncode(charAt)) {
                sb.append(charAt);
            } else {
                String hexString = Integer.toHexString(charAt);
                int length = hexString.length();
                if (length == 1) {
                    sb.append("\\u000");
                    sb.append(hexString);
                } else if (length == 2) {
                    sb.append("\\u00");
                    sb.append(hexString);
                } else if (length == 3) {
                    sb.append("\\u0");
                    sb.append(hexString);
                } else {
                    if (length != 4) {
                        throw new IllegalStateException();
                    }
                    sb.append("\\u");
                    sb.append(hexString);
                }
            }
            i++;
        }
        return sb.toString();
    }

    public static String prettyQName(QName qName) {
        if (qName == null) {
            return "";
        }
        String localPart = qName.getLocalPart();
        if (qName.getNamespaceURI() == null) {
            return localPart;
        }
        return localPart + "(@" + qName.getNamespaceURI() + MotionUtils.f31762d;
    }

    private void printExtensionImplMethods(SchemaType schemaType) throws IOException {
        InterfaceExtension[] interfaceExtensions;
        SchemaTypeImpl impl = getImpl(schemaType);
        if (impl == null || (interfaceExtensions = impl.getInterfaceExtensions()) == null) {
            return;
        }
        for (InterfaceExtension interfaceExtension : interfaceExtensions) {
            InterfaceExtension.MethodSignature[] methods = interfaceExtension.getMethods();
            if (methods != null) {
                for (InterfaceExtension.MethodSignature methodSignature : methods) {
                    printJavaDoc("Implementation method for interface " + interfaceExtension.getStaticHandler());
                    printInterfaceMethodDecl(methodSignature);
                    startBlock();
                    printInterfaceMethodImpl(interfaceExtension.getStaticHandler(), methodSignature);
                    endBlock();
                }
            }
        }
    }

    public static boolean xmlTypeForPropertyIsUnion(SchemaProperty schemaProperty) {
        SchemaType javaBasedOnType = schemaProperty.javaBasedOnType();
        return javaBasedOnType.isSimpleType() && javaBasedOnType.getSimpleVariety() == 2;
    }

    public void emit(String str, XmlOptions.BeanMethod beanMethod) throws IOException {
        XmlOptions xmlOptions = this.opt;
        Set<XmlOptions.BeanMethod> compilePartialMethod = xmlOptions == null ? null : xmlOptions.getCompilePartialMethod();
        if (compilePartialMethod == null || compilePartialMethod.contains(beanMethod)) {
            emit(str);
        }
    }

    public void emitAddTarget(String str, boolean z, String str2) throws IOException {
        if (z) {
            emit("target = (" + str2 + ")get_store().add_attribute_user(" + str + ");");
            return;
        }
        emit("target = (" + str2 + ")get_store().add_element_user(" + str + ");");
    }

    public void emitGetTarget(String str, String str2, boolean z, String str3, int i, String str4) throws IOException {
        emit(str4 + " target = null;");
        if (z) {
            emit("target = (" + str4 + ")get_store().find_attribute_user(" + str2 + ");");
        } else {
            emit("target = (" + str4 + ")get_store().find_element_user(" + str + ", " + str3 + ");");
        }
        if (i == 1) {
            return;
        }
        emit("if (target == null) {");
        startBlock();
        if (i == 3) {
            emitAddTarget(str2, z, str4);
        } else if (i == 4) {
            emit("throw new IndexOutOfBoundsException();");
        }
        endBlock();
    }

    public void emitImplementationPostamble() throws IOException {
        outdent();
        emit("}");
    }

    public void emitImplementationPreamble() throws IOException {
        emit("synchronized (monitor()) {");
        indent();
        emit("check_orphaned();");
    }

    public void emitPost(SchemaType schemaType, int i, String str, boolean z) throws IOException {
        emitPost(schemaType, i, str, z, "-1");
    }

    public void emitPre(SchemaType schemaType, int i, String str, boolean z) throws IOException {
        emitPre(schemaType, i, str, z, "-1");
    }

    public void endBlock() throws IOException {
        outdent();
        emit("}");
    }

    public String findJavaType(SchemaType schemaType) {
        while (schemaType.getFullJavaName() == null) {
            schemaType = schemaType.getBaseType();
        }
        return schemaType.getFullJavaName();
    }

    public String getAtomicRestrictionType(SchemaType schemaType) {
        switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
            case 2:
                return "org.apache.xmlbeans.impl.values.XmlAnySimpleTypeImpl";
            case 3:
                return "org.apache.xmlbeans.impl.values.JavaBooleanHolderEx";
            case 4:
                return "org.apache.xmlbeans.impl.values.JavaBase64HolderEx";
            case 5:
                return "org.apache.xmlbeans.impl.values.JavaHexBinaryHolderEx";
            case 6:
                return "org.apache.xmlbeans.impl.values.JavaUriHolderEx";
            case 7:
                return "org.apache.xmlbeans.impl.values.JavaQNameHolderEx";
            case 8:
                return "org.apache.xmlbeans.impl.values.JavaNotationHolderEx";
            case 9:
                return "org.apache.xmlbeans.impl.values.JavaFloatHolderEx";
            case 10:
                return "org.apache.xmlbeans.impl.values.JavaDoubleHolderEx";
            case 11:
                int decimalSize = schemaType.getDecimalSize();
                if (decimalSize == 8 || decimalSize == 16 || decimalSize == 32) {
                    return "org.apache.xmlbeans.impl.values.JavaIntHolderEx";
                }
                if (decimalSize == 64) {
                    return "org.apache.xmlbeans.impl.values.JavaLongHolderEx";
                }
                switch (decimalSize) {
                    case 1000000:
                        return "org.apache.xmlbeans.impl.values.JavaIntegerHolderEx";
                    case SchemaType.SIZE_BIG_DECIMAL /* 1000001 */:
                    default:
                        return "org.apache.xmlbeans.impl.values.JavaDecimalHolderEx";
                }
            case 12:
                return schemaType.hasStringEnumValues() ? "org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx" : "org.apache.xmlbeans.impl.values.JavaStringHolderEx";
            case 13:
                return "org.apache.xmlbeans.impl.values.JavaGDurationHolderEx";
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return "org.apache.xmlbeans.impl.values.JavaGDateHolderEx";
            default:
                return null;
        }
    }

    public String getBaseClass(SchemaType schemaType) {
        SchemaType findBaseType = findBaseType(schemaType.getBaseType());
        int simpleVariety = schemaType.getSimpleVariety();
        if (simpleVariety == 0) {
            return !XmlObject.type.equals(findBaseType) ? findBaseType.getFullJavaImplName() : "org.apache.xmlbeans.impl.values.XmlComplexContentImpl";
        }
        if (simpleVariety == 1) {
            return getAtomicRestrictionType(schemaType);
        }
        if (simpleVariety == 2) {
            return "org.apache.xmlbeans.impl.values.XmlUnionImpl";
        }
        if (simpleVariety == 3) {
            return "org.apache.xmlbeans.impl.values.XmlListImpl";
        }
        throw new IllegalStateException();
    }

    public String getIdentifier(Map<QName, Integer> map, QName qName) {
        return "PROPERTY_QNAME[" + map.get(qName) + IteratorUtils.f104924b;
    }

    public SchemaProperty[] getSchemaProperties(SchemaType schemaType) {
        if (schemaType.getContentType() != 2) {
            return getDerivedProperties(schemaType);
        }
        SchemaType baseType = schemaType.getBaseType();
        ArrayList arrayList = null;
        while (true) {
            if (baseType.isSimpleType() || baseType.isBuiltinType()) {
                break;
            }
            for (SchemaProperty schemaProperty : baseType.getDerivedProperties()) {
                if (!schemaProperty.isAttribute() || schemaType.getAttributeProperty(schemaProperty.getName()) == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(schemaProperty);
                }
            }
            baseType = baseType.getBaseType();
        }
        SchemaProperty[] properties = schemaType.getProperties();
        if (arrayList == null) {
            return properties;
        }
        Collections.addAll(arrayList, properties);
        return (SchemaProperty[]) arrayList.toArray(new SchemaProperty[0]);
    }

    public String getSetIdentifier(Map<QName, Integer> map, QName qName, Map<QName, Integer> map2) {
        Integer num = map2.get(qName);
        if (num == null) {
            return getIdentifier(map, qName);
        }
        return "PROPERTY_QSET[" + num + IteratorUtils.f104924b;
    }

    public void indent() {
        this._indent += 4;
    }

    public String javaTypeForProperty(SchemaProperty schemaProperty) {
        if (schemaProperty.getJavaTypeCode() == 0) {
            return findJavaType(schemaProperty.javaBasedOnType()).replace('$', '.');
        }
        if (schemaProperty.getJavaTypeCode() == 20) {
            return ((SchemaTypeImpl) schemaProperty.getType()).getUserTypeName();
        }
        switch (schemaProperty.getJavaTypeCode()) {
            case 1:
                return "boolean";
            case 2:
                return "float";
            case 3:
                return "double";
            case 4:
                return "byte";
            case 5:
                return "short";
            case 6:
                return "int";
            case 7:
                return "long";
            case 8:
                return "java.math.BigDecimal";
            case 9:
                return "java.math.BigInteger";
            case 10:
                return "java.lang.String";
            case 11:
                return "byte[]";
            case 12:
                return "org.apache.xmlbeans.GDate";
            case 13:
                return "org.apache.xmlbeans.GDuration";
            case 14:
                return "java.util.Date";
            case 15:
                return "javax.xml.namespace.QName";
            case 16:
                return "java.util.List";
            case 17:
                return "java.util.Calendar";
            case 18:
                SchemaType javaBasedOnType = schemaProperty.javaBasedOnType();
                if (javaBasedOnType.getSimpleVariety() == 2) {
                    javaBasedOnType = javaBasedOnType.getUnionCommonBaseType();
                }
                if (hasBase(javaBasedOnType)) {
                    return findJavaType(javaBasedOnType.getBaseEnumType()).replace('$', '.') + ".Enum";
                }
                return findJavaType(javaBasedOnType).replace('$', '.') + ".Enum";
            case 19:
                return Constants.OBJECT_CLASS;
            default:
                throw new IllegalStateException();
        }
    }

    public void makeAttributeDefaultValue(String str, SchemaProperty schemaProperty, String str2) throws IOException {
        if (str == null) {
            str = schemaProperty.javaBasedOnType().getFullJavaName().replace('$', '.');
        }
        emit("target = (" + str + ")get_default_attribute_value(" + str2 + ");");
    }

    public String makeMissingValue(int i) throws IOException {
        switch (i) {
            case 1:
                return "false";
            case 2:
                return "0.0f";
            case 3:
                return "0.0";
            case 4:
            case 5:
            case 6:
                return "0";
            case 7:
                return "0L";
            default:
                return "null";
        }
    }

    public void outdent() {
        this._indent -= 4;
    }

    public String prePostOpString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "org.apache.xmlbeans.PrePostExtension.OPERATION_SET" : "org.apache.xmlbeans.PrePostExtension.OPERATION_REMOVE" : "org.apache.xmlbeans.PrePostExtension.OPERATION_INSERT" : "org.apache.xmlbeans.PrePostExtension.OPERATION_SET";
    }

    public void printConstructor(SchemaType schemaType, String str) throws IOException {
        String sb;
        emit("");
        emit("public " + str + "(org.apache.xmlbeans.SchemaType sType) {");
        startBlock();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("super(sType");
        if (schemaType.getSimpleVariety() == 0) {
            sb = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(", ");
            sb3.append(!schemaType.isSimpleType());
            sb = sb3.toString();
        }
        sb2.append(sb);
        sb2.append(");");
        emit(sb2.toString());
        endBlock();
        if (schemaType.getSimpleVariety() != 0) {
            emit("");
            emit("protected " + str + "(org.apache.xmlbeans.SchemaType sType, boolean b) {");
            startBlock();
            emit("super(sType, b);");
            endBlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0282  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void printGetterImpls(org.apache.xmlbeans.SchemaProperty r44, java.util.Map<javax.xml.namespace.QName, java.lang.Integer> r45, java.util.Map<javax.xml.namespace.QName, java.lang.Integer> r46) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeCodePrinter.printGetterImpls(org.apache.xmlbeans.SchemaProperty, java.util.Map, java.util.Map):void");
    }

    @Override // org.apache.xmlbeans.SchemaCodePrinter
    public void printHolder(Writer writer, SchemaTypeSystem schemaTypeSystem, XmlOptions xmlOptions, Repackager repackager) throws IOException {
        this._writer = writer;
        String name = schemaTypeSystem.getName();
        if (repackager != null) {
            name = repackager.repackage(new StringBuffer(name)).toString();
        }
        emit("package " + name + AndroidTreeView.f47214k);
        emit("");
        emit("import org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl;");
        emit("");
        emit("public final class TypeSystemHolder extends SchemaTypeSystemImpl {");
        indent();
        emit("public static final TypeSystemHolder typeSystem = new TypeSystemHolder();");
        emit("");
        emit("private TypeSystemHolder() {");
        indent();
        emit("super(TypeSystemHolder.class);");
        outdent();
        emit("}");
        outdent();
        emit("}");
    }

    public void printInnerType(SchemaType schemaType, SchemaTypeSystem schemaTypeSystem) throws IOException {
        emit("");
        printInnerTypeJavaDoc(schemaType);
        startInterface(schemaType);
        printStaticTypeDeclaration(schemaType, schemaTypeSystem);
        if (!schemaType.isSimpleType()) {
            if (schemaType.getContentType() == 2 && schemaType.hasStringEnumValues()) {
                printStringEnumeration(schemaType);
            }
            for (SchemaProperty schemaProperty : getDerivedProperties(schemaType)) {
                printPropertyGetters(schemaProperty);
                if (!schemaProperty.isReadOnly()) {
                    printPropertySetters(schemaProperty);
                }
            }
        } else if (schemaType.hasStringEnumValues()) {
            printStringEnumeration(schemaType);
        }
        printNestedInnerTypes(schemaType, schemaTypeSystem);
        endBlock();
    }

    public void printInnerTypeImpl(SchemaType schemaType, SchemaTypeSystem schemaTypeSystem, boolean z) throws IOException {
        String shortJavaImplName = schemaType.getShortJavaImplName();
        printInnerTypeJavaDoc(schemaType);
        startClass(schemaType, z);
        printConstructor(schemaType, shortJavaImplName);
        printExtensionImplMethods(schemaType);
        if (!schemaType.isSimpleType()) {
            SchemaProperty[] schemaProperties = getSchemaProperties(schemaType);
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            printStaticFields(schemaProperties, hashMap, hashMap2);
            for (SchemaProperty schemaProperty : schemaProperties) {
                printGetterImpls(schemaProperty, hashMap, hashMap2);
                if (!schemaProperty.isReadOnly()) {
                    printSetterImpls(schemaProperty, hashMap, hashMap2, schemaType);
                }
            }
        }
        printNestedTypeImpls(schemaType, schemaTypeSystem);
        endBlock();
    }

    public void printInnerTypeJavaDoc(SchemaType schemaType) throws IOException {
        QName name = schemaType.getName();
        if (name == null) {
            if (schemaType.isDocumentType()) {
                name = schemaType.getDocumentElementName();
            } else if (schemaType.isAttributeType()) {
                name = schemaType.getAttributeTypeAttributeName();
            } else if (schemaType.getContainerField() != null) {
                name = schemaType.getContainerField().getName();
            }
        }
        emit("/**");
        if (this.opt.isCompileAnnotationAsJavadoc() && schemaType.getDocumentation() != null && schemaType.getDocumentation().length() > 0) {
            emit(" *");
            printJavaDocBody(schemaType.getDocumentation());
            emit(" *");
        }
        if (schemaType.isDocumentType()) {
            emit(" * A document containing one " + prettyQName(name) + " element.");
        } else if (schemaType.isAttributeType()) {
            emit(" * A document containing one " + prettyQName(name) + " attribute.");
        } else if (name != null) {
            emit(" * An XML " + prettyQName(name) + ".");
        } else {
            emit(" * An anonymous inner XML type.");
        }
        emit(" *");
        int simpleVariety = schemaType.getSimpleVariety();
        if (simpleVariety == 0) {
            emit(" * This is a complex type.");
        } else if (simpleVariety == 1) {
            emit(" * This is an atomic type that is a restriction of " + getFullJavaName(schemaType) + ".");
        } else if (simpleVariety == 2) {
            emit(" * This is a union type. Instances are of one of the following types:");
            for (SchemaType schemaType2 : schemaType.getUnionConstituentTypes()) {
                emit(" *     " + schemaType2.getFullJavaName());
            }
        } else if (simpleVariety == 3) {
            emit(" * This is a list type whose items are " + schemaType.getListItemType().getFullJavaName() + ".");
        }
        emit(" */");
    }

    public void printInterfaceMethodDecl(InterfaceExtension.MethodSignature methodSignature) throws IOException {
        StringBuilder sb = new StringBuilder(60);
        sb.append("public ");
        sb.append(methodSignature.getReturnType());
        sb.append(" ");
        sb.append(methodSignature.getName());
        sb.append(MotionUtils.f31761c);
        String[] parameterTypes = methodSignature.getParameterTypes();
        String[] parameterNames = methodSignature.getParameterNames();
        for (int i = 1; i < parameterTypes.length; i++) {
            if (i > 1) {
                sb.append(", ");
            }
            sb.append(parameterTypes[i]);
            sb.append(" ");
            sb.append(parameterNames[i]);
        }
        sb.append(MotionUtils.f31762d);
        String[] exceptionTypes = methodSignature.getExceptionTypes();
        int i2 = 0;
        while (i2 < exceptionTypes.length) {
            sb.append(i2 == 0 ? " throws " : ", ");
            sb.append(exceptionTypes[i2]);
            i2++;
        }
        sb.append(" {");
        emit(sb.toString());
    }

    public void printInterfaceMethodImpl(String str, InterfaceExtension.MethodSignature methodSignature) throws IOException {
        StringBuilder sb = new StringBuilder(60);
        if (!methodSignature.getReturnType().equals("void")) {
            sb.append("return ");
        }
        sb.append(str);
        sb.append(".");
        sb.append(methodSignature.getName());
        sb.append("(this");
        String[] parameterTypes = methodSignature.getParameterTypes();
        String[] parameterNames = methodSignature.getParameterNames();
        for (int i = 1; i < parameterTypes.length; i++) {
            sb.append(", ");
            sb.append(parameterNames[i]);
        }
        sb.append(");");
        emit(sb.toString());
    }

    public void printJGetArrayValue(int i, String str, SchemaTypeImpl schemaTypeImpl, String str2) throws IOException {
        String str3;
        switch (i) {
            case 0:
                str3 = "XmlObjectArray(#ID#, new " + str + "[0]);";
                break;
            case 1:
                str3 = "BooleanArray(#ID#);";
                break;
            case 2:
                str3 = "FloatArray(#ID#);";
                break;
            case 3:
                str3 = "DoubleArray(#ID#);";
                break;
            case 4:
                str3 = "ByteArray(#ID#);";
                break;
            case 5:
                str3 = "ShortArray(#ID#);";
                break;
            case 6:
                str3 = "IntArray(#ID#);";
                break;
            case 7:
                str3 = "LongArray(#ID#);";
                break;
            case 8:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getBigDecimalValue, java.math.BigDecimal[]::new);";
                break;
            case 9:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getBigIntegerValue, java.math.BigInteger[]::new);";
                break;
            case 10:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getStringValue, String[]::new);";
                break;
            case 11:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getByteArrayValue, byte[][]::new);";
                break;
            case 12:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getGDateValue, org.apache.xmlbeans.GDate[]::new);";
                break;
            case 13:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getGDurationValue, org.apache.xmlbeans.GDuration[]::new);";
                break;
            case 14:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getDateValue, java.util.Date[]::new);";
                break;
            case 15:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getQNameValue, javax.xml.namespace.QName[]::new);";
                break;
            case 16:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getListValue, java.util.List[]::new);";
                break;
            case 17:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getCalendarValue, java.util.Calendar[]::new);";
                break;
            case 18:
                str3 = "EnumArray(#ID#, " + str + "[]::new);";
                break;
            case 19:
                str3 = "ObjectArray(#ID#, org.apache.xmlbeans.SimpleValue::getObjectValue, java.lang.Object[]::new);";
                break;
            case 20:
                str3 = "ObjectArray(#ID#, e -> " + getUserTypeStaticHandlerMethod(false, schemaTypeImpl) + "(e), " + schemaTypeImpl.getUserTypeName() + "[]::new);";
                break;
            default:
                throw new IllegalStateException();
        }
        emit("return get" + str3.replace("#ID#", str2), XmlOptions.BeanMethod.GET_ARRAY);
    }

    public String printJGetValue(int i, String str, SchemaTypeImpl schemaTypeImpl) throws IOException {
        switch (i) {
            case 0:
                return "target";
            case 1:
                return "target.getBooleanValue()";
            case 2:
                return "target.getFloatValue()";
            case 3:
                return "target.getDoubleValue()";
            case 4:
                return "target.getByteValue()";
            case 5:
                return "target.getShortValue()";
            case 6:
                return "target.getIntValue()";
            case 7:
                return "target.getLongValue()";
            case 8:
                return "target.getBigDecimalValue()";
            case 9:
                return "target.getBigIntegerValue()";
            case 10:
                return "target.getStringValue()";
            case 11:
                return "target.getByteArrayValue()";
            case 12:
                return "target.getGDateValue()";
            case 13:
                return "target.getGDurationValue()";
            case 14:
                return "target.getDateValue()";
            case 15:
                return "target.getQNameValue()";
            case 16:
                return "target.getListValue()";
            case 17:
                return "target.getCalendarValue()";
            case 18:
                return MotionUtils.f31761c + str + ")target.getEnumValue()";
            case 19:
                return "target.getObjectValue()";
            case 20:
                return getUserTypeStaticHandlerMethod(false, schemaTypeImpl) + "(target)";
            default:
                throw new IllegalStateException();
        }
    }

    public void printJSetValue(int i, String str, SchemaTypeImpl schemaTypeImpl) throws IOException {
        String str2;
        switch (i) {
            case 0:
                str2 = "target.set(#VARNAME#)";
                break;
            case 1:
                str2 = "target.setBooleanValue(#VARNAME#)";
                break;
            case 2:
                str2 = "target.setFloatValue(#VARNAME#)";
                break;
            case 3:
                str2 = "target.setDoubleValue(#VARNAME#)";
                break;
            case 4:
                str2 = "target.setByteValue(#VARNAME#)";
                break;
            case 5:
                str2 = "target.setShortValue(#VARNAME#)";
                break;
            case 6:
                str2 = "target.setIntValue(#VARNAME#)";
                break;
            case 7:
                str2 = "target.setLongValue(#VARNAME#)";
                break;
            case 8:
                str2 = "target.setBigDecimalValue(#VARNAME#)";
                break;
            case 9:
                str2 = "target.setBigIntegerValue(#VARNAME#)";
                break;
            case 10:
                str2 = "target.setStringValue(#VARNAME#)";
                break;
            case 11:
                str2 = "target.setByteArrayValue(#VARNAME#)";
                break;
            case 12:
                str2 = "target.setGDateValue(#VARNAME#)";
                break;
            case 13:
                str2 = "target.setGDurationValue(#VARNAME#)";
                break;
            case 14:
                str2 = "target.setDateValue(#VARNAME#)";
                break;
            case 15:
                str2 = "target.setQNameValue(#VARNAME#)";
                break;
            case 16:
                str2 = "target.setListValue(#VARNAME#)";
                break;
            case 17:
                str2 = "target.setCalendarValue(#VARNAME#)";
                break;
            case 18:
                str2 = "target.setEnumValue(#VARNAME#)";
                break;
            case 19:
                str2 = "target.setObjectValue(#VARNAME#)";
                break;
            case 20:
                str2 = getUserTypeStaticHandlerMethod(true, schemaTypeImpl) + "(#VARNAME#, target)";
                break;
            default:
                throw new IllegalStateException();
        }
        emit(str2.replace("#VARNAME#", str) + AndroidTreeView.f47214k);
    }

    public void printJavaDoc(String str, XmlOptions.BeanMethod beanMethod) throws IOException {
        XmlOptions xmlOptions = this.opt;
        Set<XmlOptions.BeanMethod> compilePartialMethod = xmlOptions == null ? null : xmlOptions.getCompilePartialMethod();
        if (compilePartialMethod == null || compilePartialMethod.contains(beanMethod)) {
            printJavaDoc(str);
        }
    }

    public void printJavaDocBody(String str) throws IOException {
        for (String str2 : str.trim().replace("\t", "").replace("*/", "* /").split("[\\n\\r]+")) {
            emit(" * " + str2);
        }
    }

    public void printJavaDocParagraph(String str) throws IOException {
        emit("");
        emit("/**");
        printJavaDocBody(str);
        emit(" */");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0145 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void printListGetterImpl(java.lang.String r8, java.lang.String r9, java.lang.String r10, boolean r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeCodePrinter.printListGetterImpl(java.lang.String, java.lang.String, java.lang.String, boolean, boolean):void");
    }

    public void printNestedInnerTypes(SchemaType schemaType, SchemaTypeSystem schemaTypeSystem) throws IOException {
        boolean z = schemaType.getName() != null && schemaType.getName().equals(schemaType.getBaseType().getName());
        while (schemaType != null) {
            for (SchemaType schemaType2 : schemaType.getAnonymousTypes()) {
                if (schemaType2.isSkippedAnonymousType()) {
                    printNestedInnerTypes(schemaType2, schemaTypeSystem);
                } else {
                    printInnerType(schemaType2, schemaTypeSystem);
                }
            }
            if (!z) {
                return;
            }
            if (schemaType.getDerivationType() != 2 && !schemaType.isSimpleType()) {
                return;
            } else {
                schemaType = schemaType.getBaseType();
            }
        }
    }

    public void printNestedTypeImpls(SchemaType schemaType, SchemaTypeSystem schemaTypeSystem) throws IOException {
        boolean z = schemaType.getName() != null && schemaType.getName().equals(schemaType.getBaseType().getName());
        while (schemaType != null) {
            for (SchemaType schemaType2 : schemaType.getAnonymousTypes()) {
                if (schemaType2.isSkippedAnonymousType()) {
                    printNestedTypeImpls(schemaType2, schemaTypeSystem);
                } else {
                    printInnerTypeImpl(schemaType2, schemaTypeSystem, true);
                }
            }
            if (!z) {
                return;
            }
            if (schemaType.getDerivationType() != 2 && !schemaType.isSimpleType()) {
                return;
            } else {
                schemaType = schemaType.getBaseType();
            }
        }
    }

    public void printPackage(SchemaType schemaType, boolean z) throws IOException {
        String fullJavaName = z ? schemaType.getFullJavaName() : schemaType.getFullJavaImplName();
        int lastIndexOf = fullJavaName.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return;
        }
        emit("package " + fullJavaName.substring(0, lastIndexOf) + AndroidTreeView.f47214k);
    }

    public void printPropertyGetters(SchemaProperty schemaProperty) throws IOException {
        String str;
        String javaPropertyName = schemaProperty.getJavaPropertyName();
        int javaTypeCode = schemaProperty.getJavaTypeCode();
        String javaTypeForProperty = javaTypeForProperty(schemaProperty);
        String xmlTypeForProperty = xmlTypeForProperty(schemaProperty);
        boolean z = schemaProperty.hasNillable() != 0;
        boolean extendsJavaArray = schemaProperty.extendsJavaArray();
        String documentation = schemaProperty.getDocumentation();
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        sb.append(schemaProperty.getName().getLocalPart());
        sb.append("\"");
        sb.append(schemaProperty.isAttribute() ? " attribute" : " element");
        String sb2 = sb.toString();
        boolean z2 = javaTypeCode == 0;
        if (schemaProperty.extendsJavaSingleton()) {
            if (!this.opt.isCompileAnnotationAsJavadoc() || documentation == null || documentation.length() <= 0) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(extendsJavaArray ? "Gets first " : "Gets the ");
                sb3.append(sb2);
                printJavaDoc(sb3.toString(), XmlOptions.BeanMethod.GET);
            } else {
                printJavaDocParagraph(documentation);
            }
            emit(javaTypeForProperty + " get" + javaPropertyName + "();", XmlOptions.BeanMethod.GET);
            if (!z2) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(extendsJavaArray ? "Gets (as xml) first " : "Gets (as xml) the ");
                sb4.append(sb2);
                String sb5 = sb4.toString();
                XmlOptions.BeanMethod beanMethod = XmlOptions.BeanMethod.XGET;
                printJavaDoc(sb5, beanMethod);
                emit(xmlTypeForProperty + " xget" + javaPropertyName + "();", beanMethod);
            }
            if (z) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(extendsJavaArray ? "Tests for nil first " : "Tests for nil ");
                sb6.append(sb2);
                String sb7 = sb6.toString();
                XmlOptions.BeanMethod beanMethod2 = XmlOptions.BeanMethod.IS_NIL;
                printJavaDoc(sb7, beanMethod2);
                emit("boolean isNil" + javaPropertyName + "();", beanMethod2);
            }
        }
        if (schemaProperty.extendsJavaOption()) {
            if (!this.opt.isCompileAnnotationAsJavadoc() || documentation == null || documentation.length() <= 0) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append(extendsJavaArray ? "True if has at least one " : "True if has ");
                sb8.append(sb2);
                printJavaDoc(sb8.toString(), XmlOptions.BeanMethod.IS_SET);
            } else {
                printJavaDocParagraph(documentation);
            }
            emit("boolean isSet" + javaPropertyName + "();", XmlOptions.BeanMethod.IS_SET);
        }
        if (extendsJavaArray) {
            if (this.opt.isCompileAnnotationAsJavadoc() && documentation != null && documentation.length() > 0) {
                printJavaDocParagraph(documentation);
            }
            String str2 = javaPropertyName + SoapEncSchemaTypeSystem.SOAP_ARRAY;
            String javaWrappedType = isJavaPrimitive(javaTypeCode) ? javaWrappedType(javaTypeCode) : javaTypeForProperty;
            if (!this.opt.isCompileAnnotationAsJavadoc() || documentation == null || documentation.length() <= 0) {
                StringBuilder sb9 = new StringBuilder();
                str = "boolean isNil";
                sb9.append("Gets a List of ");
                sb9.append(sb2);
                sb9.append("s");
                printJavaDoc(sb9.toString(), XmlOptions.BeanMethod.GET_LIST);
            } else {
                printJavaDocParagraph(documentation);
                str = "boolean isNil";
            }
            boolean z3 = z;
            emit("java.util.List<" + javaWrappedType + "> get" + javaPropertyName + "List();", XmlOptions.BeanMethod.GET_LIST);
            if (!this.opt.isCompileAnnotationAsJavadoc() || documentation == null || documentation.length() <= 0) {
                printJavaDoc("Gets array of all " + sb2 + "s", XmlOptions.BeanMethod.GET_ARRAY);
            } else {
                printJavaDocParagraph(documentation);
            }
            emit(javaTypeForProperty + "[] get" + str2 + "();", XmlOptions.BeanMethod.GET_ARRAY);
            StringBuilder sb10 = new StringBuilder();
            sb10.append("Gets ith ");
            sb10.append(sb2);
            String sb11 = sb10.toString();
            XmlOptions.BeanMethod beanMethod3 = XmlOptions.BeanMethod.GET_IDX;
            printJavaDoc(sb11, beanMethod3);
            emit(javaTypeForProperty + " get" + str2 + "(int i);", beanMethod3);
            if (!z2) {
                XmlOptions.BeanMethod beanMethod4 = XmlOptions.BeanMethod.XGET_LIST;
                printJavaDoc("Gets (as xml) a List of " + sb2 + "s", beanMethod4);
                emit("java.util.List<" + xmlTypeForProperty + "> xget" + javaPropertyName + "List();", beanMethod4);
                StringBuilder sb12 = new StringBuilder();
                sb12.append("Gets (as xml) array of all ");
                sb12.append(sb2);
                sb12.append("s");
                String sb13 = sb12.toString();
                XmlOptions.BeanMethod beanMethod5 = XmlOptions.BeanMethod.XGET_ARRAY;
                printJavaDoc(sb13, beanMethod5);
                emit(xmlTypeForProperty + "[] xget" + str2 + "();", beanMethod5);
                StringBuilder sb14 = new StringBuilder();
                sb14.append("Gets (as xml) ith ");
                sb14.append(sb2);
                String sb15 = sb14.toString();
                XmlOptions.BeanMethod beanMethod6 = XmlOptions.BeanMethod.XGET_IDX;
                printJavaDoc(sb15, beanMethod6);
                emit(xmlTypeForProperty + " xget" + str2 + "(int i);", beanMethod6);
            }
            if (z3) {
                XmlOptions.BeanMethod beanMethod7 = XmlOptions.BeanMethod.IS_NIL_IDX;
                printJavaDoc("Tests for nil ith " + sb2, beanMethod7);
                emit(str + str2 + "(int i);", beanMethod7);
            }
            XmlOptions.BeanMethod beanMethod8 = XmlOptions.BeanMethod.SIZE_OF_ARRAY;
            printJavaDoc("Returns number of " + sb2, beanMethod8);
            emit("int sizeOf" + str2 + "();", beanMethod8);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void printPropertySetters(org.apache.xmlbeans.SchemaProperty r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1112
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeCodePrinter.printPropertySetters(org.apache.xmlbeans.SchemaProperty):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x09d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0aad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0ad3  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0b2d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0c48 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0cda  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0dc5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0e44  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0e68  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0def  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0d09  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0d57  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0d7b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0835  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x080a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x093d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void printSetterImpls(org.apache.xmlbeans.SchemaProperty r61, java.util.Map<javax.xml.namespace.QName, java.lang.Integer> r62, java.util.Map<javax.xml.namespace.QName, java.lang.Integer> r63, org.apache.xmlbeans.SchemaType r64) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.SchemaTypeCodePrinter.printSetterImpls(org.apache.xmlbeans.SchemaProperty, java.util.Map, java.util.Map, org.apache.xmlbeans.SchemaType):void");
    }

    public void printStaticFields(SchemaProperty[] schemaPropertyArr, Map<QName, Integer> map, Map<QName, Integer> map2) throws IOException {
        if (schemaPropertyArr.length == 0) {
            return;
        }
        emit("");
        emit("private static final QName[] PROPERTY_QNAME = {");
        indent();
        int i = 0;
        for (SchemaProperty schemaProperty : schemaPropertyArr) {
            QName name = schemaProperty.getName();
            map.put(name, Integer.valueOf(map.size()));
            emit("new QName(\"" + name.getNamespaceURI() + "\", \"" + name.getLocalPart() + "\"),");
            i = Math.max(i, schemaProperty.acceptedNames() == null ? 0 : schemaProperty.acceptedNames().length);
        }
        outdent();
        emit("};");
        emit("");
        int i2 = 1;
        if (i > 1) {
            emit("private static final QNameSet[] PROPERTY_QSET = {");
            int length = schemaPropertyArr.length;
            int i3 = 0;
            while (i3 < length) {
                SchemaProperty schemaProperty2 = schemaPropertyArr[i3];
                QName name2 = schemaProperty2.getName();
                QName[] acceptedNames = schemaProperty2.acceptedNames();
                if (acceptedNames != null && acceptedNames.length > i2) {
                    map2.put(name2, Integer.valueOf(map2.size()));
                    emit("QNameSet.forArray( new QName[] { ");
                    indent();
                    for (QName qName : acceptedNames) {
                        emit("new QName(\"" + qName.getNamespaceURI() + "\", \"" + qName.getLocalPart() + "\"),");
                    }
                    outdent();
                    emit("}),");
                }
                i3++;
                i2 = 1;
            }
            emit("};");
        }
    }

    public void printStaticTypeDeclaration(SchemaType schemaType, SchemaTypeSystem schemaTypeSystem) throws IOException {
        String simpleName = ((!schemaType.isAnonymousType() || schemaType.isDocumentType() || schemaType.isAttributeType()) ? schemaType.isSimpleType() ? SimpleTypeFactory.class : schemaType.isAbstract() ? AbstractDocumentFactory.class : DocumentFactory.class : ElementFactory.class).getSimpleName();
        emit(simpleName + "<" + schemaType.getFullJavaName().replace('$', '.') + "> Factory = new " + simpleName + "<>(" + schemaType.getTypeSystem().getName() + ".TypeSystemHolder.typeSystem, \"" + ((SchemaTypeSystemImpl) schemaTypeSystem).handleForType(schemaType) + "\");");
        emit("org.apache.xmlbeans.SchemaType type = Factory.getType();");
        emit("");
    }

    public void printStringEnumeration(SchemaType schemaType) throws IOException {
        String fullJavaName = schemaType.getBaseEnumType().getFullJavaName();
        boolean hasBase = hasBase(schemaType);
        if (!hasBase) {
            emit("");
            emit("org.apache.xmlbeans.StringEnumAbstractBase getEnumValue();", XmlOptions.BeanMethod.GET);
            emit("void setEnumValue(org.apache.xmlbeans.StringEnumAbstractBase e);", XmlOptions.BeanMethod.SET);
        }
        emit("");
        SchemaStringEnumEntry[] stringEnumEntries = schemaType.getStringEnumEntries();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (SchemaStringEnumEntry schemaStringEnumEntry : stringEnumEntries) {
            String string = schemaStringEnumEntry.getString();
            if (hashSet.contains(string)) {
                hashSet2.add(string);
            } else {
                hashSet.add(string);
                String enumName = schemaStringEnumEntry.getEnumName();
                if (hasBase) {
                    emit(fullJavaName + ".Enum " + enumName + CloudStorageConstants.OPERATION_EQUAL + fullJavaName + "." + enumName + AndroidTreeView.f47214k);
                } else {
                    emit("Enum " + enumName + " = Enum.forString(\"" + javaStringEscape(string) + "\");");
                }
            }
        }
        emit("");
        for (SchemaStringEnumEntry schemaStringEnumEntry2 : stringEnumEntries) {
            if (!hashSet2.contains(schemaStringEnumEntry2.getString())) {
                String str = "INT_" + schemaStringEnumEntry2.getEnumName();
                if (hasBase) {
                    emit("int " + str + CloudStorageConstants.OPERATION_EQUAL + fullJavaName + "." + str + AndroidTreeView.f47214k);
                } else {
                    emit("int " + str + " = Enum." + str + AndroidTreeView.f47214k);
                }
            }
        }
        if (hasBase) {
            return;
        }
        emit("");
        emit("/**");
        emit(" * Enumeration value class for " + fullJavaName + ".");
        emit(" * These enum values can be used as follows:");
        emit(" * <pre>");
        emit(" * enum.toString(); // returns the string value of the enum");
        emit(" * enum.intValue(); // returns an int value, useful for switches");
        if (stringEnumEntries.length > 0) {
            emit(" * // e.g., case Enum.INT_" + stringEnumEntries[0].getEnumName());
        }
        emit(" * Enum.forString(s); // returns the enum value for a string");
        emit(" * Enum.forInt(i); // returns the enum value for an int");
        emit(" * </pre>");
        emit(" * Enumeration objects are immutable singleton objects that");
        emit(" * can be compared using == object equality. They have no");
        emit(" * public constructor. See the constants defined within this");
        emit(" * class for all the valid values.");
        emit(" */");
        emit("final class Enum extends org.apache.xmlbeans.StringEnumAbstractBase {");
        indent();
        emit("/**");
        emit(" * Returns the enum value for a string, or null if none.");
        emit(" */");
        emit("public static Enum forString(java.lang.String s) {");
        emit("    return (Enum)table.forString(s);");
        emit("}");
        emit("");
        emit("/**");
        emit(" * Returns the enum value corresponding to an int, or null if none.");
        emit(" */");
        emit("public static Enum forInt(int i) {");
        emit("    return (Enum)table.forInt(i);");
        emit("}");
        emit("");
        emit("private Enum(java.lang.String s, int i) {");
        emit("    super(s, i);");
        emit("}");
        emit("");
        for (SchemaStringEnumEntry schemaStringEnumEntry3 : stringEnumEntries) {
            emit("static final int " + ("INT_" + schemaStringEnumEntry3.getEnumName()) + CloudStorageConstants.OPERATION_EQUAL + schemaStringEnumEntry3.getIntValue() + AndroidTreeView.f47214k);
        }
        emit("");
        emit("public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table =");
        emit("    new org.apache.xmlbeans.StringEnumAbstractBase.Table(new Enum[] {");
        indent();
        for (SchemaStringEnumEntry schemaStringEnumEntry4 : stringEnumEntries) {
            emit("new Enum(\"" + javaStringEscape(schemaStringEnumEntry4.getString()) + "\", " + ("INT_" + schemaStringEnumEntry4.getEnumName()) + "),");
        }
        outdent();
        emit("});");
        emit("private static final long serialVersionUID = 1L;");
        emit("private java.lang.Object readResolve() {");
        emit("    return forInt(intValue());");
        emit("}");
        outdent();
        emit("}");
    }

    public void printTopComment(SchemaType schemaType) throws IOException {
        QName qName;
        emit("/*");
        if (schemaType.getName() != null) {
            emit(" * XML Type:  " + schemaType.getName().getLocalPart());
            emit(" * Namespace: " + schemaType.getName().getNamespaceURI());
        } else {
            if (schemaType.isDocumentType()) {
                qName = schemaType.getDocumentElementName();
                emit(" * An XML document type.");
            } else if (schemaType.isAttributeType()) {
                qName = schemaType.getAttributeTypeAttributeName();
                emit(" * An XML attribute type.");
            } else {
                qName = null;
            }
            emit(" * Localname: " + qName.getLocalPart());
            emit(" * Namespace: " + qName.getNamespaceURI());
        }
        emit(" * Java type: " + schemaType.getFullJavaName());
        emit(" *");
        emit(" * Automatically generated - do not modify.");
        emit(" */");
    }

    @Override // org.apache.xmlbeans.SchemaCodePrinter
    public void printType(Writer writer, SchemaType schemaType, XmlOptions xmlOptions) throws IOException {
        this.opt = xmlOptions;
        this._writer = writer;
        printTopComment(schemaType);
        printPackage(schemaType, true);
        emit("");
        emit("import " + ElementFactory.class.getName() + AndroidTreeView.f47214k);
        emit("import " + AbstractDocumentFactory.class.getName() + AndroidTreeView.f47214k);
        emit("import " + DocumentFactory.class.getName() + AndroidTreeView.f47214k);
        emit("import " + SimpleTypeFactory.class.getName() + AndroidTreeView.f47214k);
        emit("");
        printInnerType(schemaType, schemaType.getTypeSystem());
        this._writer.flush();
    }

    @Override // org.apache.xmlbeans.SchemaCodePrinter
    public void printTypeImpl(Writer writer, SchemaType schemaType, XmlOptions xmlOptions) throws IOException {
        this.opt = xmlOptions;
        this._writer = writer;
        printTopComment(schemaType);
        printPackage(schemaType, false);
        emit("");
        emit("import javax.xml.namespace.QName;");
        emit("import org.apache.xmlbeans.QNameSet;");
        emit("import org.apache.xmlbeans.XmlObject;");
        emit("");
        printInnerTypeImpl(schemaType, schemaType.getTypeSystem(), false);
    }

    public void startBlock() {
        indent();
    }

    public void startClass(SchemaType schemaType, boolean z) throws IOException {
        String shortJavaImplName = schemaType.getShortJavaImplName();
        String baseClass = getBaseClass(schemaType);
        StringBuilder sb = new StringBuilder();
        sb.append(schemaType.getFullJavaName().replace('$', '.'));
        if (schemaType.getSimpleVariety() == 2) {
            for (SchemaType schemaType2 : schemaType.getUnionMemberTypes()) {
                sb.append(", ");
                sb.append(schemaType2.getFullJavaName().replace('$', '.'));
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("public ");
        sb2.append(z ? "static " : "");
        sb2.append("class ");
        sb2.append(shortJavaImplName);
        sb2.append(" extends ");
        sb2.append(baseClass);
        sb2.append(" implements ");
        sb2.append((Object) sb);
        sb2.append(" {");
        emit(sb2.toString());
        startBlock();
        emit("private static final long serialVersionUID = 1L;");
    }

    public void startInterface(SchemaType schemaType) throws IOException {
        emit("public interface " + schemaType.getShortJavaName() + " extends " + findJavaType(schemaType.getBaseType()) + getExtensionInterfaces(schemaType) + " {");
        indent();
        emitSpecializedAccessors(schemaType);
    }

    public String xmlTypeForProperty(SchemaProperty schemaProperty) {
        return findJavaType(schemaProperty.javaBasedOnType()).replace('$', '.');
    }

    public void emitPost(SchemaType schemaType, int i, String str, boolean z, String str2) throws IOException {
        PrePostExtension prePostExtension;
        SchemaTypeImpl impl = getImpl(schemaType);
        if (impl == null || (prePostExtension = impl.getPrePostExtension()) == null) {
            return;
        }
        if (prePostExtension.hasPreCall()) {
            endBlock();
        }
        if (prePostExtension.hasPostCall()) {
            emit(prePostExtension.getStaticHandler() + ".postSet(" + prePostOpString(i) + ", this, " + str + ", " + z + ", " + str2 + ");");
        }
    }

    public void emitPre(SchemaType schemaType, int i, String str, boolean z, String str2) throws IOException {
        PrePostExtension prePostExtension;
        SchemaTypeImpl impl = getImpl(schemaType);
        if (impl == null || (prePostExtension = impl.getPrePostExtension()) == null || !prePostExtension.hasPreCall()) {
            return;
        }
        emit("if ( " + prePostExtension.getStaticHandler() + ".preSet(" + prePostOpString(i) + ", this, " + str + ", " + z + ", " + str2 + ")) {");
        startBlock();
    }

    public void emit(String str) throws IOException {
        if (!str.trim().isEmpty()) {
            int i = this._indent;
            if (i > 20) {
                i = (i / 2) + 10;
            }
            if (i > 40) {
                i = 40;
            }
            this._writer.write(MAX_SPACES.substring(0, i));
        }
        try {
            this._writer.write(str);
        } catch (CharacterCodingException unused) {
            this._writer.write(makeSafe(str));
        }
        this._writer.write(System.lineSeparator());
    }

    public void printJavaDoc(String str) throws IOException {
        emit("");
        emit("/**");
        emit(" * " + str);
        emit(" */");
    }
}
