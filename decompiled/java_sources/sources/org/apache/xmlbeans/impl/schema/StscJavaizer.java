package org.apache.xmlbeans.impl.schema;

import com.couchbase.lite.internal.core.C4Constants;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.xmlbeans.BindingConfig;
import org.apache.xmlbeans.InterfaceExtension;
import org.apache.xmlbeans.PrePostExtension;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaStringEnumEntry;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.UserType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes13.dex */
public class StscJavaizer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MAX_ENUM_COUNT = 3668;
    private static final Logger LOG = LogManager.getLogger((Class<?>) StscJavaizer.class);
    private static final String[] PREFIXES = {"get", "xget", "isNil", "isSet", "sizeOf", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "xset", "addNew", "setNil", "unset", HWRGestureWithContext.GESTURE_INSERT, "add", "insertNew", "addNew", SyncConstant.SYNC_ACTION_REMOVE};
    static String[] PROTECTED_PROPERTIES = {"StringValue", "BooleanValue", "ByteValue", "ShortValue", "IntValue", "LongValue", "BigIntegerValue", "BigDecimalValue", "FloatValue", "DoubleValue", "ByteArrayValue", "EnumValue", "CalendarValue", "DateValue", "GDateValue", "GDurationValue", "QNameValue", "ListValue", "ObjectValue", "Class"};
    static Set<String> PROTECTED_PROPERTIES_SET = new HashSet(Arrays.asList(PROTECTED_PROPERTIES));

    public static void addAnonymousTypesFromRedefinition(SchemaType schemaType, List<SchemaType> list) {
        while (((SchemaTypeImpl) schemaType).isRedefinition()) {
            if (schemaType.getDerivationType() != 2 && !schemaType.isSimpleType()) {
                return;
            }
            schemaType = schemaType.getBaseType();
            SchemaType[] anonymousTypes = schemaType.getAnonymousTypes();
            if (anonymousTypes.length > 0) {
                list.addAll(Arrays.asList(anonymousTypes));
            }
        }
    }

    public static void assignGlobalJavaNames(Collection<SchemaType> collection) {
        HashSet hashSet = new HashSet();
        StscState stscState = StscState.get();
        Iterator<SchemaType> it2 = collection.iterator();
        while (it2.hasNext()) {
            SchemaTypeImpl schemaTypeImpl = (SchemaTypeImpl) it2.next();
            String javaname = stscState.getJavaname(findTopName(schemaTypeImpl), schemaTypeImpl.isDocumentType() ? 2 : 1);
            if (schemaTypeImpl.isUnjavaized()) {
                schemaTypeImpl.setFullJavaName(pickFullJavaClassName(hashSet, findTopName(schemaTypeImpl), javaname, schemaTypeImpl.isDocumentType(), schemaTypeImpl.isAttributeType()));
                schemaTypeImpl.setFullJavaImplName(pickFullJavaImplName(hashSet, schemaTypeImpl.getFullJavaName()));
                setExtensions(schemaTypeImpl, stscState);
            }
        }
        setUserTypes(stscState);
        verifyInterfaceNameCollisions(hashSet, stscState);
    }

    public static void assignJavaAnonymousTypeNames(SchemaTypeImpl schemaTypeImpl) {
        String str;
        String str2;
        HashSet hashSet = new HashSet();
        SchemaType[] anonymousTypes = schemaTypeImpl.getAnonymousTypes();
        StscState stscState = StscState.get();
        int length = anonymousTypes.length;
        if (schemaTypeImpl.isRedefinition()) {
            ArrayList arrayList = new ArrayList();
            addAnonymousTypesFromRedefinition(schemaTypeImpl, arrayList);
            if (arrayList.size() > 0) {
                SchemaType[] schemaTypeArr = new SchemaType[arrayList.size() + length];
                arrayList.toArray(schemaTypeArr);
                System.arraycopy(anonymousTypes, 0, schemaTypeArr, arrayList.size(), length);
                anonymousTypes = schemaTypeArr;
            }
        }
        for (SchemaType schemaType = schemaTypeImpl; schemaType != null; schemaType = schemaType.getOuterType()) {
            hashSet.add(schemaType.getShortJavaName());
        }
        for (SchemaType schemaType2 = schemaTypeImpl; schemaType2 != null; schemaType2 = schemaType2.getOuterType()) {
            hashSet.add(schemaType2.getShortJavaImplName());
        }
        hashSet.add(getOutermostPackage(schemaTypeImpl.getFullJavaName()));
        for (int i = 0; i < anonymousTypes.length; i++) {
            SchemaTypeImpl schemaTypeImpl2 = (SchemaTypeImpl) anonymousTypes[i];
            if (schemaTypeImpl2 != null && !schemaTypeImpl2.isSkippedAnonymousType()) {
                if (schemaTypeImpl2.getContainerField() != null) {
                    str2 = schemaTypeImpl2.getContainerField().getName().getLocalPart();
                    str = stscState.getJavaname(schemaTypeImpl2.getContainerField().getName(), 1);
                } else {
                    int simpleVariety = schemaTypeImpl2.getOuterType().getSimpleVariety();
                    str = simpleVariety != 2 ? simpleVariety != 3 ? "Base" : "Item" : "Member";
                    str2 = null;
                }
                if (i < length) {
                    schemaTypeImpl2.setShortJavaName(pickInnerJavaClassName(hashSet, str2, str));
                    schemaTypeImpl2.setShortJavaImplName(pickInnerJavaImplName(hashSet, str2, str != null ? str + "Impl" : null));
                } else {
                    schemaTypeImpl2.setFullJavaName(schemaTypeImpl.getFullJavaName() + "$" + pickInnerJavaClassName(hashSet, str2, str));
                    StringBuilder sb = new StringBuilder();
                    sb.append(schemaTypeImpl.getFullJavaImplName());
                    sb.append("$");
                    sb.append(pickInnerJavaImplName(hashSet, str2, str != null ? str + "Impl" : null));
                    schemaTypeImpl2.setFullJavaImplName(sb.toString());
                }
                setExtensions(schemaTypeImpl2, stscState);
            }
        }
    }

    public static void assignJavaPropertyNames(Set<String> set, SchemaProperty[] schemaPropertyArr, SchemaType schemaType, boolean z) {
        StscState stscState = StscState.get();
        for (SchemaProperty schemaProperty : schemaPropertyArr) {
            SchemaPropertyImpl schemaPropertyImpl = (SchemaPropertyImpl) schemaProperty;
            SchemaProperty attributeProperty = schemaPropertyImpl.isAttribute() ? schemaType.getAttributeProperty(schemaPropertyImpl.getName()) : schemaType.getElementProperty(schemaPropertyImpl.getName());
            if ((attributeProperty == null) != z) {
                QName name = schemaPropertyImpl.getName();
                schemaPropertyImpl.setJavaPropertyName(attributeProperty == null ? pickJavaPropertyName(set, name.getLocalPart(), stscState.getJavaname(name, schemaPropertyImpl.isAttribute() ? 4 : 3)) : attributeProperty.getJavaPropertyName());
                boolean z2 = schemaPropertyImpl.getMaxOccurs() == null || schemaPropertyImpl.getMaxOccurs().compareTo(BigInteger.ONE) > 0;
                boolean z3 = !z2 && schemaPropertyImpl.getMaxOccurs().signum() > 0;
                boolean z4 = z3 && schemaPropertyImpl.getMinOccurs().signum() == 0;
                SchemaType type = schemaPropertyImpl.getType();
                if (attributeProperty != null) {
                    if (attributeProperty.extendsJavaArray()) {
                        z3 = false;
                        z4 = false;
                        z2 = true;
                    }
                    if (attributeProperty.extendsJavaSingleton()) {
                        z3 = true;
                    }
                    boolean z5 = attributeProperty.extendsJavaOption() ? true : z4;
                    type = attributeProperty.javaBasedOnType();
                    z4 = z5;
                }
                schemaPropertyImpl.setExtendsJava(type.getRef(), z3, z4, z2);
            }
        }
    }

    public static void assignJavaTypeCodes(SchemaProperty[] schemaPropertyArr) {
        for (SchemaProperty schemaProperty : schemaPropertyArr) {
            SchemaPropertyImpl schemaPropertyImpl = (SchemaPropertyImpl) schemaProperty;
            schemaPropertyImpl.setJavaTypeCode(javaTypeCodeForType(schemaPropertyImpl.javaBasedOnType()));
        }
    }

    private static void avoidExtensionMethods(Set<String> set, SchemaTypeImpl schemaTypeImpl) {
        InterfaceExtension[] interfaceExtensions = schemaTypeImpl.getInterfaceExtensions();
        if (interfaceExtensions != null) {
            for (InterfaceExtension interfaceExtension : interfaceExtensions) {
                for (InterfaceExtension.MethodSignature methodSignature : interfaceExtension.getMethods()) {
                    String name = methodSignature.getName();
                    for (String str : PREFIXES) {
                        if (name.startsWith(str)) {
                            set.add(name.substring(str.length()));
                        }
                    }
                }
            }
        }
    }

    public static QName findTopName(SchemaType schemaType) {
        if (schemaType.getName() != null) {
            return schemaType.getName();
        }
        if (schemaType.isDocumentType()) {
            if (schemaType.getContentModel() == null || schemaType.getContentModel().getParticleType() != 4) {
                throw new IllegalStateException();
            }
            return schemaType.getDocumentElementName();
        }
        if (!schemaType.isAttributeType()) {
            return schemaType.getContainerField().getName();
        }
        if (schemaType.getAttributeModel() == null || schemaType.getAttributeModel().getAttributes().length != 1) {
            throw new IllegalStateException();
        }
        return schemaType.getAttributeTypeAttributeName();
    }

    public static String getOutermostPackage(String str) {
        int indexOf;
        return (str != null && (indexOf = str.indexOf(46)) >= 0) ? str.substring(0, indexOf) : "";
    }

    public static boolean isPropertyModelOrderInsensitive(SchemaProperty[] schemaPropertyArr) {
        for (SchemaProperty schemaProperty : schemaPropertyArr) {
            if (schemaProperty.hasNillable() == 1 || schemaProperty.hasDefault() == 1 || schemaProperty.hasFixed() == 1) {
                return false;
            }
            if (schemaProperty.hasDefault() != 0 && schemaProperty.getDefaultText() == null) {
                return false;
            }
        }
        return true;
    }

    private static boolean isStringType(SchemaType schemaType) {
        return schemaType != null && schemaType.getSimpleVariety() == 1 && schemaType.getPrimitiveType().getBuiltinTypeCode() == 12;
    }

    public static int javaTypeCodeForType(SchemaType schemaType) {
        if (!schemaType.isSimpleType()) {
            return 0;
        }
        if (((SchemaTypeImpl) schemaType).getUserTypeHandlerName() != null) {
            return 20;
        }
        if (schemaType.getSimpleVariety() == 2) {
            SchemaType unionCommonBaseType = schemaType.getUnionCommonBaseType();
            if (unionCommonBaseType == null || unionCommonBaseType.isURType()) {
                return javaTypeCodeInCommon(schemaType.getUnionConstituentTypes());
            }
            schemaType = unionCommonBaseType;
        }
        if (schemaType.getSimpleVariety() == 3) {
            return 16;
        }
        if (schemaType.isURType()) {
            return 0;
        }
        switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
            case 2:
                return 10;
            case 3:
                return 1;
            case 4:
            case 5:
                return 11;
            case 6:
                return 10;
            case 7:
                return 15;
            case 8:
                return 0;
            case 9:
                return 2;
            case 10:
                return 3;
            case 11:
                int decimalSize = schemaType.getDecimalSize();
                if (decimalSize == 8) {
                    return 4;
                }
                if (decimalSize == 16) {
                    return 5;
                }
                if (decimalSize == 32) {
                    return 6;
                }
                if (decimalSize != 64) {
                    return decimalSize != 1000000 ? 8 : 9;
                }
                return 7;
            case 12:
                if (isStringType(schemaType.getBaseEnumType())) {
                    return (schemaType.getEnumerationValues() == null || schemaType.getEnumerationValues().length <= MAX_ENUM_COUNT) ? 18 : 10;
                }
                return 10;
            case 13:
                return 13;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                return 17;
            default:
                throw new IllegalStateException("unrecognized code " + schemaType.getPrimitiveType().getBuiltinTypeCode() + " of " + schemaType.getPrimitiveType().getName());
        }
    }

    public static int javaTypeCodeInCommon(SchemaType[] schemaTypeArr) {
        int i = 0;
        if (schemaTypeArr != null && schemaTypeArr.length != 0) {
            i = javaTypeCodeForType(schemaTypeArr[0]);
            if (i == 19) {
                return i;
            }
            for (int i2 = 1; i2 < schemaTypeArr.length; i2++) {
                if (i != javaTypeCodeForType(schemaTypeArr[i2])) {
                    return 19;
                }
            }
        }
        return i;
    }

    public static void javaizeAllTypes(boolean z) {
        StscState stscState = StscState.get();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(stscState.documentTypes()));
        arrayList.addAll(Arrays.asList(stscState.attributeTypes()));
        arrayList.addAll(Arrays.asList(stscState.globalTypes()));
        if (z) {
            assignGlobalJavaNames(arrayList);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            SchemaType schemaType = (SchemaType) arrayList.get(i);
            if (z) {
                javaizeType((SchemaTypeImpl) schemaType);
                String fullJavaName = schemaType.getFullJavaName();
                if (fullJavaName != null) {
                    stscState.addClassname(fullJavaName.replace('$', '.'), schemaType);
                }
            } else {
                skipJavaizingType((SchemaTypeImpl) schemaType);
            }
            arrayList.addAll(Arrays.asList(schemaType.getAnonymousTypes()));
            addAnonymousTypesFromRedefinition(schemaType, arrayList);
        }
    }

    public static void javaizeType(SchemaTypeImpl schemaTypeImpl) {
        if (schemaTypeImpl.isJavaized()) {
            return;
        }
        SchemaTypeImpl schemaTypeImpl2 = (SchemaTypeImpl) schemaTypeImpl.getBaseType();
        if (schemaTypeImpl2 != null) {
            javaizeType(schemaTypeImpl2);
        }
        if (schemaTypeImpl.getContentBasedOnType() != null && schemaTypeImpl.getContentBasedOnType() != schemaTypeImpl2) {
            javaizeType((SchemaTypeImpl) schemaTypeImpl.getContentBasedOnType());
        }
        schemaTypeImpl.startJavaizing();
        schemaTypeImpl.setCompiled(true);
        secondPassProcessType(schemaTypeImpl);
        if (!schemaTypeImpl.isSimpleType()) {
            SchemaProperty[] elementProperties = schemaTypeImpl.getElementProperties();
            SchemaProperty[] attributeProperties = schemaTypeImpl.getAttributeProperties();
            HashSet hashSet = new HashSet();
            for (SchemaProperty schemaProperty : schemaTypeImpl2.getProperties()) {
                hashSet.add(schemaProperty.getJavaPropertyName());
            }
            avoidExtensionMethods(hashSet, schemaTypeImpl);
            boolean z = true;
            while (true) {
                if (elementProperties.length > 0) {
                    assignJavaPropertyNames(hashSet, elementProperties, schemaTypeImpl2, z);
                }
                assignJavaPropertyNames(hashSet, attributeProperties, schemaTypeImpl2, z);
                if (!z) {
                    break;
                } else {
                    z = false;
                }
            }
            SchemaProperty[] properties = schemaTypeImpl.getProperties();
            boolean isPropertyModelOrderInsensitive = isPropertyModelOrderInsensitive(properties);
            assignJavaTypeCodes(properties);
            schemaTypeImpl.setOrderSensitive(!isPropertyModelOrderInsensitive);
        }
        if (schemaTypeImpl.getFullJavaName() != null || schemaTypeImpl.getOuterType() != null) {
            assignJavaAnonymousTypeNames(schemaTypeImpl);
        }
        schemaTypeImpl.finishJavaizing();
    }

    public static String pickConstantName(Set<String> set, String str) {
        String upperCaseUnderbar = NameUtil.upperCaseUnderbar(str);
        if (upperCaseUnderbar.length() == 0) {
            upperCaseUnderbar = "X";
        }
        if (upperCaseUnderbar.startsWith("INT_")) {
            upperCaseUnderbar = "X_" + upperCaseUnderbar;
        }
        String str2 = upperCaseUnderbar;
        int i = 1;
        while (set.contains(str2)) {
            i++;
            str2 = upperCaseUnderbar + "_" + i;
        }
        set.add(str2);
        return str2;
    }

    public static String pickFullJavaClassName(Set<String> set, QName qName, String str, boolean z, boolean z2) {
        boolean z3;
        String str2;
        if (str == null || str.indexOf(46) < 0) {
            StscState stscState = StscState.get();
            String namespaceURI = qName.getNamespaceURI();
            String classNameFromQName = NameUtil.getClassNameFromQName(qName);
            String packageOverride = stscState.getPackageOverride(namespaceURI);
            if (packageOverride != null) {
                classNameFromQName = packageOverride + "." + classNameFromQName.substring(classNameFromQName.lastIndexOf(46) + 1);
            }
            String javaPrefix = stscState.getJavaPrefix(namespaceURI);
            if (javaPrefix != null) {
                classNameFromQName = classNameFromQName.substring(0, classNameFromQName.lastIndexOf(46) + 1) + javaPrefix + classNameFromQName.substring(classNameFromQName.lastIndexOf(46) + 1);
            }
            if (str != null) {
                classNameFromQName = classNameFromQName.substring(0, classNameFromQName.lastIndexOf(46) + 1) + str;
            }
            boolean protectReservedGlobalClassNames = protectReservedGlobalClassNames(classNameFromQName);
            if (str == null) {
                if (z) {
                    classNameFromQName = classNameFromQName + "Document";
                } else if (z2) {
                    classNameFromQName = classNameFromQName + "Attribute";
                }
                str = classNameFromQName;
                String javaSuffix = stscState.getJavaSuffix(namespaceURI);
                if (javaSuffix != null) {
                    str = str + javaSuffix;
                }
            } else {
                str = classNameFromQName;
            }
            z3 = protectReservedGlobalClassNames;
        } else {
            z3 = protectReservedGlobalClassNames(str);
        }
        String outermostPackage = getOutermostPackage(str);
        if (z3) {
            str2 = str + 1;
        } else {
            str2 = str;
        }
        int i = 1;
        while (true) {
            Locale locale = Locale.ROOT;
            if (!set.contains(str2.toLowerCase(locale)) && !str2.equals(outermostPackage)) {
                set.add(str2.toLowerCase(locale));
                return str2;
            }
            i++;
            str2 = str + i;
        }
    }

    public static String pickFullJavaImplName(Set<String> set, String str) {
        String str2;
        String str3;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            str2 = str.substring(lastIndexOf + 1);
            str3 = str.substring(0, lastIndexOf);
        } else {
            str2 = str;
            str3 = null;
        }
        String str4 = str3 + ".impl." + str2 + "Impl";
        String str5 = str4;
        int i = 1;
        while (true) {
            Locale locale = Locale.ROOT;
            if (!set.contains(str5.toLowerCase(locale))) {
                set.add(str5.toLowerCase(locale));
                return str5;
            }
            i++;
            str5 = str4 + i;
        }
    }

    public static String pickInnerJavaClassName(Set<String> set, String str, String str2) {
        String str3;
        if (str2 == null) {
            str2 = NameUtil.upperCamelCase(str);
        }
        if (protectReservedInnerClassNames(str2)) {
            str3 = str2 + 1;
        } else {
            str3 = str2;
        }
        int i = 1;
        while (set.contains(str3)) {
            i++;
            str3 = str2 + i;
        }
        set.add(str3);
        return str3;
    }

    public static String pickInnerJavaImplName(Set<String> set, String str, String str2) {
        if (str2 == null) {
            str2 = NameUtil.upperCamelCase(str) + "Impl";
        }
        int i = 1;
        String str3 = str2;
        while (set.contains(str3)) {
            i++;
            str3 = str2 + i;
        }
        set.add(str3);
        return str3;
    }

    public static String pickJavaPropertyName(Set<String> set, String str, String str2) {
        String str3;
        if (str2 == null) {
            str2 = NameUtil.upperCamelCase(str);
        }
        if (protectReservedPropertyNames(str2)) {
            str3 = str2 + 1;
        } else {
            str3 = str2;
        }
        int i = 1;
        while (set.contains(str3)) {
            i++;
            str3 = str2 + i;
        }
        set.add(str3);
        return str3;
    }

    public static boolean protectReservedGlobalClassNames(String str) {
        String substring = str.substring(str.lastIndexOf(46) + 1);
        return substring.endsWith("Document") && !substring.equals("Document");
    }

    public static boolean protectReservedInnerClassNames(String str) {
        return str.equals(C4Constants.LogDomain.ENUM) || str.equals("Factory");
    }

    public static boolean protectReservedPropertyNames(String str) {
        return PROTECTED_PROPERTIES_SET.contains(str) || (str.endsWith(SoapEncSchemaTypeSystem.SOAP_ARRAY) && !str.equals(SoapEncSchemaTypeSystem.SOAP_ARRAY));
    }

    public static void secondPassProcessType(SchemaTypeImpl schemaTypeImpl) {
        XmlAnySimpleType[] enumerationValues;
        if (isStringType(schemaTypeImpl) && (enumerationValues = schemaTypeImpl.getEnumerationValues()) != null) {
            if (enumerationValues.length > MAX_ENUM_COUNT) {
                StscState.get().warning("SchemaType Enumeration found with too many enumeration values to create a Java enumeration. The base SchemaType \"" + schemaTypeImpl.getBaseEnumType() + "\" will be used instead", 1, (XmlObject) null);
                return;
            }
            SchemaType baseEnumType = schemaTypeImpl.getBaseEnumType();
            if (baseEnumType == null) {
                return;
            }
            SchemaStringEnumEntry[] schemaStringEnumEntryArr = new SchemaStringEnumEntry[enumerationValues.length];
            int i = 0;
            if (baseEnumType == schemaTypeImpl) {
                HashSet hashSet = new HashSet();
                while (i < enumerationValues.length) {
                    String stringValue = enumerationValues[i].getStringValue();
                    int i2 = i + 1;
                    schemaStringEnumEntryArr[i] = new SchemaStringEnumEntryImpl(stringValue, i2, pickConstantName(hashSet, stringValue));
                    i = i2;
                }
            } else {
                while (i < enumerationValues.length) {
                    schemaStringEnumEntryArr[i] = baseEnumType.enumEntryForString(enumerationValues[i].getStringValue());
                    i++;
                }
            }
            schemaTypeImpl.setStringEnumEntries(schemaStringEnumEntryArr);
        }
    }

    private static void setExtensions(SchemaTypeImpl schemaTypeImpl, StscState stscState) {
        String fullJavaName = schemaTypeImpl.getFullJavaName();
        BindingConfig bindingConfig = stscState.getBindingConfig();
        if (fullJavaName == null || bindingConfig == null) {
            return;
        }
        schemaTypeImpl.setInterfaceExtensions(bindingConfig.getInterfaceExtensions(fullJavaName));
        schemaTypeImpl.setPrePostExtension(bindingConfig.getPrePostExtension(fullJavaName));
    }

    private static void setUserTypes(StscState stscState) {
        BindingConfig bindingConfig = stscState.getBindingConfig();
        if (bindingConfig != null) {
            for (UserType userType : bindingConfig.getUserTypes()) {
                SchemaTypeImpl findGlobalType = stscState.findGlobalType(userType.getName(), null, null);
                if (findGlobalType != null) {
                    findGlobalType.setUserTypeName(userType.getJavaName());
                    findGlobalType.setUserTypeHandlerName(userType.getStaticHandler());
                } else {
                    LOG.atWarn().log("Cannot match user type for {}", userType.getName());
                }
            }
        }
    }

    public static void skipJavaizingType(SchemaTypeImpl schemaTypeImpl) {
        if (schemaTypeImpl.isJavaized()) {
            return;
        }
        SchemaTypeImpl schemaTypeImpl2 = (SchemaTypeImpl) schemaTypeImpl.getBaseType();
        if (schemaTypeImpl2 != null) {
            skipJavaizingType(schemaTypeImpl2);
        }
        schemaTypeImpl.startJavaizing();
        secondPassProcessType(schemaTypeImpl);
        schemaTypeImpl.finishJavaizing();
    }

    private static void verifyInterfaceNameCollisions(Set<String> set, StscState stscState) {
        BindingConfig bindingConfig = stscState.getBindingConfig();
        if (bindingConfig == null) {
            return;
        }
        for (InterfaceExtension interfaceExtension : bindingConfig.getInterfaceExtensions()) {
            String str = interfaceExtension.getInterface();
            Locale locale = Locale.ROOT;
            if (set.contains(str.toLowerCase(locale))) {
                stscState.error("InterfaceExtension interface '" + interfaceExtension.getInterface() + "' creates a name collision with one of the generated interfaces or classes.", 0, (XmlObject) null);
            }
            String staticHandler = interfaceExtension.getStaticHandler();
            if (staticHandler != null && set.contains(staticHandler.toLowerCase(locale))) {
                stscState.error("InterfaceExtension handler class '" + staticHandler + "' creates a name collision with one of the generated interfaces or classes.", 0, (XmlObject) null);
            }
        }
        for (PrePostExtension prePostExtension : bindingConfig.getPrePostExtensions()) {
            String staticHandler2 = prePostExtension.getStaticHandler();
            if (staticHandler2 != null && set.contains(staticHandler2.toLowerCase(Locale.ROOT))) {
                stscState.error("PrePostExtension handler class '" + staticHandler2 + "' creates a name collision with one of the generated interfaces or classes.", 0, (XmlObject) null);
            }
        }
    }
}
