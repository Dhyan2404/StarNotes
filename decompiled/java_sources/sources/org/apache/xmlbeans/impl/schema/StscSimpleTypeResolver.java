package org.apache.xmlbeans.impl.schema;

import com.sunia.HTREnginev2.y1n;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ListDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalSimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RestrictionDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.UnionDocument;
import org.apache.xmlbeans.impl.regex.RegularExpression;
import org.apache.xmlbeans.impl.schema.StscSimpleTypeResolver;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;

/* loaded from: classes13.dex */
public class StscSimpleTypeResolver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final RegularExpression[] EMPTY_REGEX_ARRAY = new RegularExpression[0];
    private static final CodeForNameEntry[] facetCodes = {new CodeForNameEntry(QNameHelper.forLNS("length", "http://www.w3.org/2001/XMLSchema"), 0), new CodeForNameEntry(QNameHelper.forLNS("minLength", "http://www.w3.org/2001/XMLSchema"), 1), new CodeForNameEntry(QNameHelper.forLNS("maxLength", "http://www.w3.org/2001/XMLSchema"), 2), new CodeForNameEntry(QNameHelper.forLNS("pattern", "http://www.w3.org/2001/XMLSchema"), 10), new CodeForNameEntry(QNameHelper.forLNS("enumeration", "http://www.w3.org/2001/XMLSchema"), 11), new CodeForNameEntry(QNameHelper.forLNS("whiteSpace", "http://www.w3.org/2001/XMLSchema"), 9), new CodeForNameEntry(QNameHelper.forLNS("maxInclusive", "http://www.w3.org/2001/XMLSchema"), 5), new CodeForNameEntry(QNameHelper.forLNS("maxExclusive", "http://www.w3.org/2001/XMLSchema"), 6), new CodeForNameEntry(QNameHelper.forLNS("minInclusive", "http://www.w3.org/2001/XMLSchema"), 4), new CodeForNameEntry(QNameHelper.forLNS("minExclusive", "http://www.w3.org/2001/XMLSchema"), 3), new CodeForNameEntry(QNameHelper.forLNS("totalDigits", "http://www.w3.org/2001/XMLSchema"), 7), new CodeForNameEntry(QNameHelper.forLNS("fractionDigits", "http://www.w3.org/2001/XMLSchema"), 8)};
    private static final Map<QName, Integer> facetCodeMap = buildFacetCodeMap();

    /* loaded from: classes13.dex */
    public static class CodeForNameEntry {
        public int code;
        public QName name;

        public CodeForNameEntry(QName qName, int i) {
            this.name = qName;
            this.code = i;
        }
    }

    private static Map<QName, Integer> buildFacetCodeMap() {
        HashMap hashMap = new HashMap();
        for (CodeForNameEntry codeForNameEntry : facetCodes) {
            hashMap.put(codeForNameEntry.name, Integer.valueOf(codeForNameEntry.code));
        }
        return hashMap;
    }

    private static int decimalSizeOfType(SchemaTypeImpl schemaTypeImpl) {
        int mathematicalSizeOfType = mathematicalSizeOfType(schemaTypeImpl);
        if (mathematicalSizeOfType == 8 && !XmlByte.type.isAssignableFrom(schemaTypeImpl)) {
            mathematicalSizeOfType = 16;
        }
        if (mathematicalSizeOfType != 16 || XmlShort.type.isAssignableFrom(schemaTypeImpl) || XmlUnsignedByte.type.isAssignableFrom(schemaTypeImpl)) {
            return mathematicalSizeOfType;
        }
        return 32;
    }

    public static boolean facetAppliesToType(int i, SchemaTypeImpl schemaTypeImpl) {
        int simpleVariety = schemaTypeImpl.getSimpleVariety();
        if (simpleVariety == 2) {
            return i == 10 || i == 11;
        }
        if (simpleVariety == 3) {
            if (i != 0 && i != 1 && i != 2) {
                switch (i) {
                    case 9:
                    case 10:
                    case 11:
                        break;
                    default:
                        return false;
                }
            }
            return true;
        }
        switch (schemaTypeImpl.getPrimitiveType().getBuiltinTypeCode()) {
            case 2:
            default:
                return false;
            case 3:
                return i == 9 || i == 10;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 12:
                if (i != 0 && i != 1 && i != 2) {
                    switch (i) {
                        case 9:
                        case 10:
                        case 11:
                            break;
                        default:
                            return false;
                    }
                }
                return true;
            case 9:
            case 10:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                switch (i) {
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 9:
                    case 10:
                    case 11:
                        return true;
                    case 7:
                    case 8:
                    default:
                        return false;
                }
            case 11:
                switch (i) {
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                        return true;
                    default:
                        return false;
                }
        }
    }

    private static boolean isDiscreteType(SchemaTypeImpl schemaTypeImpl) {
        int builtinTypeCode;
        if (schemaTypeImpl.getFacet(8) == null && (builtinTypeCode = schemaTypeImpl.getPrimitiveType().getBuiltinTypeCode()) != 3) {
            switch (builtinTypeCode) {
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public static boolean isMultipleFacet(int i) {
        return i == 11 || i == 10;
    }

    private static boolean isNumericPrimitive(SchemaType schemaType) {
        switch (schemaType.getBuiltinTypeCode()) {
            case 9:
            case 10:
            case 11:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SchemaType.Ref[] lambda$makeRefArray$0(int i) {
        return new SchemaType.Ref[i];
    }

    private static SchemaType.Ref[] makeRefArray(List<? extends SchemaType> list) {
        return (SchemaType.Ref[]) list.stream().map(new y1n()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.p2n
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                SchemaType.Ref[] lambda$makeRefArray$0;
                lambda$makeRefArray$0 = StscSimpleTypeResolver.lambda$makeRefArray$0(i);
                return lambda$makeRefArray$0;
            }
        });
    }

    private static XmlValueRef[] makeValueRefArray(XmlAnySimpleType[] xmlAnySimpleTypeArr) {
        int length = xmlAnySimpleTypeArr.length;
        XmlValueRef[] xmlValueRefArr = new XmlValueRef[length];
        for (int i = 0; i < length; i++) {
            XmlAnySimpleType xmlAnySimpleType = xmlAnySimpleTypeArr[i];
            xmlValueRefArr[i] = xmlAnySimpleType == null ? null : new XmlValueRef(xmlAnySimpleType);
        }
        return xmlValueRefArr;
    }

    private static int mathematicalSizeOfType(SchemaTypeImpl schemaTypeImpl) {
        BigInteger valueOf;
        if (schemaTypeImpl.getPrimitiveType().getBuiltinTypeCode() != 11) {
            return 0;
        }
        if (schemaTypeImpl.getFacet(8) == null || ((SimpleValue) schemaTypeImpl.getFacet(8)).getBigIntegerValue().signum() != 0) {
            return SchemaType.SIZE_BIG_DECIMAL;
        }
        BigInteger bigInteger = null;
        BigInteger bigIntegerValue = schemaTypeImpl.getFacet(3) != null ? ((SimpleValue) schemaTypeImpl.getFacet(3)).getBigIntegerValue() : null;
        if (schemaTypeImpl.getFacet(4) != null) {
            bigIntegerValue = ((SimpleValue) schemaTypeImpl.getFacet(4)).getBigIntegerValue();
        }
        BigInteger bigIntegerValue2 = schemaTypeImpl.getFacet(5) != null ? ((SimpleValue) schemaTypeImpl.getFacet(5)).getBigIntegerValue() : null;
        if (schemaTypeImpl.getFacet(6) != null) {
            bigIntegerValue2 = ((SimpleValue) schemaTypeImpl.getFacet(6)).getBigIntegerValue();
        }
        if (schemaTypeImpl.getFacet(7) != null) {
            try {
                switch (((SimpleValue) schemaTypeImpl.getFacet(7)).getBigIntegerValue().intValue()) {
                    case 0:
                    case 1:
                    case 2:
                        valueOf = BigInteger.valueOf(99L);
                        bigInteger = valueOf;
                        break;
                    case 3:
                    case 4:
                        valueOf = BigInteger.valueOf(9999L);
                        bigInteger = valueOf;
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        valueOf = BigInteger.valueOf(999999999L);
                        bigInteger = valueOf;
                        break;
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        valueOf = BigInteger.valueOf(999999999999999999L);
                        bigInteger = valueOf;
                        break;
                }
            } catch (XmlValueOutOfRangeException unused) {
            }
            if (bigInteger != null) {
                BigInteger negate = bigInteger.negate();
                if (bigIntegerValue != null) {
                    negate = bigIntegerValue.max(negate);
                }
                bigIntegerValue = negate;
                bigIntegerValue2 = bigIntegerValue2 == null ? bigInteger : bigIntegerValue2.min(bigInteger);
            }
        }
        if (bigIntegerValue == null || bigIntegerValue2 == null) {
            return 1000000;
        }
        if (bigIntegerValue.signum() < 0) {
            bigIntegerValue = bigIntegerValue.negate().subtract(BigInteger.ONE);
        }
        if (bigIntegerValue2.signum() < 0) {
            bigIntegerValue2 = bigIntegerValue2.negate().subtract(BigInteger.ONE);
        }
        BigInteger max = bigIntegerValue2.max(bigIntegerValue);
        if (max.compareTo(BigInteger.valueOf(127L)) <= 0) {
            return 8;
        }
        if (max.compareTo(BigInteger.valueOf(32767L)) <= 0) {
            return 16;
        }
        if (max.compareTo(BigInteger.valueOf(2147483647L)) <= 0) {
            return 32;
        }
        return max.compareTo(BigInteger.valueOf(Long.MAX_VALUE)) <= 0 ? 64 : 1000000;
    }

    private static int other_similar_limit(int i) {
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 6;
        }
        if (i == 6) {
            return 5;
        }
        throw new IllegalStateException();
    }

    public static void resolveErrorSimpleType(SchemaTypeImpl schemaTypeImpl) {
        schemaTypeImpl.setSimpleTypeVariety(1);
        SchemaTypeImpl schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        schemaTypeImpl.setBaseTypeRef(schemaTypeImpl2.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        schemaTypeImpl.setPrimitiveTypeRef(schemaTypeImpl2.getRef());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0245, code lost:
    
        if (r9 == r13) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x040b, code lost:
    
        if (r21.getBaseType() != r0) goto L245;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:35:0x00b0. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03ab A[Catch: all -> 0x03c0, TryCatch #0 {all -> 0x03c0, blocks: (B:5:0x001d, B:7:0x0026, B:12:0x03ae, B:14:0x003b, B:16:0x004a, B:17:0x0060, B:19:0x0067, B:26:0x007c, B:28:0x0092, B:30:0x0096, B:32:0x009c, B:33:0x00a3, B:210:0x00b4, B:212:0x00bf, B:213:0x00c5, B:202:0x00e9, B:204:0x00fa, B:205:0x0100, B:36:0x0121, B:38:0x012f, B:39:0x013b, B:40:0x03a5, B:42:0x03ab, B:43:0x0149, B:45:0x0153, B:46:0x0158, B:48:0x015c, B:50:0x0164, B:52:0x016d, B:54:0x0173, B:56:0x0179, B:57:0x017f, B:59:0x0184, B:61:0x018a, B:62:0x0190, B:63:0x0194, B:65:0x019e, B:66:0x01a5, B:68:0x01a9, B:70:0x01b1, B:71:0x01ba, B:73:0x01bf, B:75:0x01c5, B:76:0x01cb, B:77:0x01cf, B:79:0x01d7, B:89:0x01f5, B:90:0x01fe, B:92:0x0202, B:94:0x020a, B:95:0x0213, B:97:0x0217, B:99:0x021d, B:101:0x0223, B:103:0x022a, B:104:0x0237, B:113:0x0258, B:118:0x025e, B:130:0x0277, B:131:0x0287, B:132:0x0297, B:133:0x02a7, B:136:0x02b7, B:138:0x02c1, B:139:0x02ca, B:141:0x02ce, B:143:0x02d6, B:144:0x02de, B:146:0x02e3, B:148:0x02e9, B:152:0x02f2, B:155:0x0314, B:157:0x0319, B:159:0x031f, B:160:0x0327, B:162:0x032c, B:164:0x0332, B:165:0x0339, B:167:0x030c, B:168:0x02fe, B:173:0x033c, B:175:0x0348, B:176:0x034e, B:178:0x0352, B:180:0x035a, B:181:0x0362, B:183:0x0367, B:185:0x036d, B:187:0x0375, B:189:0x037b, B:190:0x0380, B:192:0x0385, B:194:0x038b, B:196:0x0393, B:198:0x0399, B:199:0x03a1, B:216:0x00cd, B:208:0x0105), top: B:4:0x001d, inners: #2, #4, #5 }] */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v43, types: [org.apache.xmlbeans.XmlAnySimpleType, org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v45, types: [org.apache.xmlbeans.XmlAnySimpleType, org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v47, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /* JADX WARN: Type inference failed for: r0v52, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v53, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v58, types: [org.apache.xmlbeans.XmlAnySimpleType, org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v61, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v83, types: [org.apache.xmlbeans.XmlObject, org.apache.xmlbeans.XmlPositiveInteger] */
    /* JADX WARN: Type inference failed for: r0v87, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v89, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r0v94, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r10v20, types: [org.apache.xmlbeans.XmlAnySimpleType, org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v27, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r10v30, types: [org.apache.xmlbeans.XmlObject, org.apache.xmlbeans.XmlNonNegativeInteger] */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r13v10, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r13v13, types: [org.apache.xmlbeans.XmlObject, org.apache.xmlbeans.XmlNonNegativeInteger] */
    /* JADX WARN: Type inference failed for: r13v23, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.apache.xmlbeans.XmlAnySimpleType[]] */
    /* JADX WARN: Type inference failed for: r9v15, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r9v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v35, types: [org.apache.xmlbeans.XmlObject] */
    /* JADX WARN: Type inference failed for: r9v43, types: [org.apache.xmlbeans.XmlObject] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveFacets(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r21, org.apache.xmlbeans.XmlObject r22, org.apache.xmlbeans.impl.schema.SchemaTypeImpl r23) {
        /*
            Method dump skipped, instructions count: 1148
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscSimpleTypeResolver.resolveFacets(org.apache.xmlbeans.impl.schema.SchemaTypeImpl, org.apache.xmlbeans.XmlObject, org.apache.xmlbeans.impl.schema.SchemaTypeImpl):void");
    }

    public static void resolveFundamentalFacets(SchemaTypeImpl schemaTypeImpl) {
        int simpleVariety = schemaTypeImpl.getSimpleVariety();
        if (simpleVariety == 1) {
            SchemaTypeImpl schemaTypeImpl2 = (SchemaTypeImpl) schemaTypeImpl.getBaseType();
            schemaTypeImpl.setOrdered(schemaTypeImpl2.ordered());
            schemaTypeImpl.setBounded(((schemaTypeImpl.getFacet(3) == null && schemaTypeImpl.getFacet(4) == null) || (schemaTypeImpl.getFacet(5) == null && schemaTypeImpl.getFacet(6) == null)) ? false : true);
            schemaTypeImpl.setFinite(schemaTypeImpl2.isFinite() || (schemaTypeImpl.isBounded() && isDiscreteType(schemaTypeImpl)));
            if (!schemaTypeImpl2.isNumeric() && !isNumericPrimitive(schemaTypeImpl.getPrimitiveType())) {
                r2 = false;
            }
            schemaTypeImpl.setNumeric(r2);
            schemaTypeImpl.setDecimalSize(decimalSizeOfType(schemaTypeImpl));
            return;
        }
        if (simpleVariety != 2) {
            if (simpleVariety != 3) {
                return;
            }
            schemaTypeImpl.setOrdered(0);
            schemaTypeImpl.setBounded((schemaTypeImpl.getFacet(0) == null && schemaTypeImpl.getFacet(2) == null) ? false : true);
            schemaTypeImpl.setFinite(schemaTypeImpl.getListItemType().isFinite() && schemaTypeImpl.isBounded());
            schemaTypeImpl.setNumeric(false);
            schemaTypeImpl.setDecimalSize(0);
            return;
        }
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        int i = 0;
        for (SchemaType schemaType : schemaTypeImpl.getUnionMemberTypes()) {
            if (schemaType.ordered() != 0) {
                i = 1;
            }
            if (!schemaType.isBounded()) {
                z = false;
            }
            if (!schemaType.isFinite()) {
                z2 = false;
            }
            if (!schemaType.isNumeric()) {
                z3 = false;
            }
        }
        schemaTypeImpl.setOrdered(i);
        schemaTypeImpl.setBounded(z);
        schemaTypeImpl.setFinite(z2);
        schemaTypeImpl.setNumeric(z3);
        schemaTypeImpl.setDecimalSize(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [org.apache.xmlbeans.impl.xb.xsdschema.SimpleType] */
    public static void resolveListType(SchemaTypeImpl schemaTypeImpl, ListDocument.List list, List<SchemaType> list2) {
        XmlQName xmlQName;
        SchemaTypeImpl translateAnonymousSimpleType;
        SchemaTypeImpl schemaTypeImpl2 = schemaTypeImpl;
        StscState stscState = StscState.get();
        schemaTypeImpl.setSimpleTypeVariety(3);
        SchemaTypeImpl schemaTypeImpl3 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        schemaTypeImpl.setBaseTypeRef(schemaTypeImpl3.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl3.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(1);
        if (schemaTypeImpl.isRedefinition()) {
            stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$EXTEND_OR_RESTRICT, new Object[]{"list"}, list);
        }
        QName itemType = list.getItemType();
        LocalSimpleType simpleType = list.getSimpleType();
        if (itemType == null || simpleType == null) {
            xmlQName = simpleType;
        } else {
            stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$LIST_HAS_BOTH_ITEM_OR_SIMPLE_TYPE, (Object[]) null, list);
            xmlQName = null;
        }
        if (itemType != null) {
            translateAnonymousSimpleType = stscState.findGlobalType(itemType, schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl.getTargetNamespace());
            xmlQName = list.xgetItemType();
            if (translateAnonymousSimpleType == null) {
                stscState.notFoundError(itemType, 0, list.xgetItemType(), true);
                translateAnonymousSimpleType = schemaTypeImpl3;
            }
        } else if (xmlQName == null) {
            stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$LIST_HAS_NEITHER_ITEM_OR_SIMPLE_TYPE, (Object[]) null, list);
            resolveErrorSimpleType(schemaTypeImpl);
            return;
        } else {
            translateAnonymousSimpleType = StscTranslator.translateAnonymousSimpleType(xmlQName, schemaTypeImpl.getTargetNamespace(), schemaTypeImpl.getChameleonNamespace() != null, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), list2, schemaTypeImpl);
        }
        if (translateAnonymousSimpleType.finalList()) {
            stscState.error(XmlErrorCodes.SIMPLE_TYPE_PROPERTIES$LIST_FINAL, (Object[]) null, list);
        }
        StscResolver.resolveType(translateAnonymousSimpleType);
        if (!translateAnonymousSimpleType.isSimpleType()) {
            stscState.error(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$LIST_ITEM_NOT_SIMPLE, (Object[]) null, xmlQName);
            schemaTypeImpl2 = schemaTypeImpl3;
        }
        int simpleVariety = translateAnonymousSimpleType.getSimpleVariety();
        if (simpleVariety != 1) {
            if (simpleVariety != 2) {
                if (simpleVariety == 3) {
                    stscState.error(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$LIST_ITEM_IS_LIST, (Object[]) null, xmlQName);
                    resolveErrorSimpleType(schemaTypeImpl2);
                    return;
                } else {
                    schemaTypeImpl2.setListItemTypeRef(schemaTypeImpl3.getRef());
                    schemaTypeImpl2.setBasicFacets(StscState.FACETS_LIST, StscState.FIXED_FACETS_LIST);
                    schemaTypeImpl2.setWhiteSpaceRule(3);
                    resolveFundamentalFacets(schemaTypeImpl2);
                }
            }
            if (translateAnonymousSimpleType.isUnionOfLists()) {
                stscState.error(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$LIST_ITEM_IS_UNION_OF_LIST, (Object[]) null, xmlQName);
                resolveErrorSimpleType(schemaTypeImpl2);
                return;
            }
        }
        schemaTypeImpl2.setListItemTypeRef(translateAnonymousSimpleType.getRef());
        if (schemaTypeImpl2.getBuiltinTypeCode() == 8) {
            stscState.recover(XmlErrorCodes.DATATYPE_ENUM_NOTATION, null, xmlQName);
        }
        schemaTypeImpl2.setBasicFacets(StscState.FACETS_LIST, StscState.FIXED_FACETS_LIST);
        schemaTypeImpl2.setWhiteSpaceRule(3);
        resolveFundamentalFacets(schemaTypeImpl2);
    }

    public static void resolveSimpleRestrictionType(SchemaTypeImpl schemaTypeImpl, RestrictionDocument.Restriction restriction, List<SchemaType> list) {
        LocalSimpleType localSimpleType;
        SchemaTypeImpl schemaTypeImpl2;
        QName base = restriction.getBase();
        LocalSimpleType simpleType = restriction.getSimpleType();
        StscState stscState = StscState.get();
        if (base == null || simpleType == null) {
            localSimpleType = simpleType;
        } else {
            stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$RESTRICTION_HAS_BOTH_BASE_OR_SIMPLE_TYPE, (Object[]) null, restriction);
            localSimpleType = null;
        }
        if (base != null) {
            if (schemaTypeImpl.isRedefinition()) {
                schemaTypeImpl2 = stscState.findRedefinedGlobalType(restriction.getBase(), schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl);
                if (schemaTypeImpl2 != null && !schemaTypeImpl2.getName().equals(schemaTypeImpl.getName())) {
                    stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$SAME_TYPE, new Object[]{"<simpleType>", QNameHelper.pretty(base), QNameHelper.pretty(schemaTypeImpl.getName())}, restriction);
                }
            } else {
                schemaTypeImpl2 = stscState.findGlobalType(base, schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl.getTargetNamespace());
            }
            if (schemaTypeImpl2 == null) {
                stscState.notFoundError(base, 0, restriction.xgetBase(), true);
                schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
            }
        } else if (localSimpleType != null) {
            if (schemaTypeImpl.isRedefinition()) {
                StscState.get().error(XmlErrorCodes.SCHEMA_REDEFINE$EXTEND_OR_RESTRICT, new Object[]{"<simpleType>"}, localSimpleType);
            }
            schemaTypeImpl2 = StscTranslator.translateAnonymousSimpleType(localSimpleType, schemaTypeImpl.getTargetNamespace(), schemaTypeImpl.getChameleonNamespace() != null, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), list, schemaTypeImpl);
        } else {
            stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$RESTRICTION_HAS_NEITHER_BASE_OR_SIMPLE_TYPE, (Object[]) null, restriction);
            schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        if (!StscResolver.resolveType(schemaTypeImpl2)) {
            schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        if (schemaTypeImpl2.finalRestriction()) {
            stscState.error(XmlErrorCodes.SIMPLE_TYPE_PROPERTIES$RESTRICTION_FINAL, (Object[]) null, restriction);
        }
        schemaTypeImpl.setBaseTypeRef(schemaTypeImpl2.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(1);
        if (!schemaTypeImpl2.isSimpleType()) {
            stscState.error(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$ATOMIC_NOT_SIMPLE, (Object[]) null, restriction.xgetBase());
            resolveErrorSimpleType(schemaTypeImpl);
            return;
        }
        schemaTypeImpl.setSimpleTypeVariety(schemaTypeImpl2.getSimpleVariety());
        int simpleVariety = schemaTypeImpl2.getSimpleVariety();
        if (simpleVariety == 1) {
            schemaTypeImpl.setPrimitiveTypeRef(schemaTypeImpl2.getPrimitiveType().getRef());
        } else if (simpleVariety == 2) {
            schemaTypeImpl.setUnionOfLists(schemaTypeImpl2.isUnionOfLists());
            schemaTypeImpl.setUnionMemberTypeRefs(makeRefArray(Arrays.asList(schemaTypeImpl2.getUnionMemberTypes())));
        } else if (simpleVariety == 3) {
            schemaTypeImpl.setListItemTypeRef(schemaTypeImpl2.getListItemType().getRef());
        }
        resolveFacets(schemaTypeImpl, restriction, schemaTypeImpl2);
        resolveFundamentalFacets(schemaTypeImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveSimpleType(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r7) {
        /*
            org.apache.xmlbeans.XmlObject r0 = r7.getParseObject()
            org.apache.xmlbeans.impl.xb.xsdschema.SimpleType r0 = (org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType) r0
            org.apache.xmlbeans.impl.xb.xsdschema.SchemaDocument$Schema r1 = org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.getSchema(r0)
            boolean r2 = r0.isSetList()
            boolean r3 = r0.isSetUnion()
            int r2 = r2 + r3
            boolean r3 = r0.isSetRestriction()
            int r2 = r2 + r3
            r3 = 52
            r4 = 1
            if (r2 <= r4) goto L27
            org.apache.xmlbeans.impl.schema.StscState r2 = org.apache.xmlbeans.impl.schema.StscState.get()
            java.lang.String r5 = "A simple type must define either a list, a union, or a restriction: more than one found."
            r2.error(r5, r3, r0)
            goto L36
        L27:
            if (r2 >= r4) goto L36
            org.apache.xmlbeans.impl.schema.StscState r1 = org.apache.xmlbeans.impl.schema.StscState.get()
            java.lang.String r2 = "A simple type must define either a list, a union, or a restriction: none was found."
            r1.error(r2, r3, r0)
            resolveErrorSimpleType(r7)
            return
        L36:
            boolean r2 = r0.isSetFinal()
            if (r2 == 0) goto L41
            java.lang.Object r1 = r0.getFinal()
            goto L4f
        L41:
            if (r1 == 0) goto L4e
            boolean r2 = r1.isSetFinalDefault()
            if (r2 == 0) goto L4e
            java.lang.Object r1 = r1.getFinalDefault()
            goto L4f
        L4e:
            r1 = 0
        L4f:
            r2 = 0
            if (r1 == 0) goto L7e
            boolean r3 = r1 instanceof java.lang.String
            if (r3 == 0) goto L61
            java.lang.String r3 = "#all"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L7e
            r2 = r4
            r5 = r2
            goto L80
        L61:
            boolean r3 = r1 instanceof java.util.List
            if (r3 == 0) goto L7e
            java.util.List r1 = (java.util.List) r1
            java.lang.String r3 = "restriction"
            boolean r3 = r1.contains(r3)
            java.lang.String r5 = "list"
            boolean r5 = r1.contains(r5)
            java.lang.String r6 = "union"
            boolean r1 = r1.contains(r6)
            if (r1 == 0) goto L7c
            r2 = r4
        L7c:
            r4 = r3
            goto L80
        L7e:
            r4 = r2
            r5 = r4
        L80:
            r7.setSimpleFinal(r4, r5, r2)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            org.apache.xmlbeans.impl.xb.xsdschema.ListDocument$List r2 = r0.getList()
            if (r2 == 0) goto L96
            org.apache.xmlbeans.impl.xb.xsdschema.ListDocument$List r0 = r0.getList()
            resolveListType(r7, r0, r1)
            goto Lb1
        L96:
            org.apache.xmlbeans.impl.xb.xsdschema.UnionDocument$Union r2 = r0.getUnion()
            if (r2 == 0) goto La4
            org.apache.xmlbeans.impl.xb.xsdschema.UnionDocument$Union r0 = r0.getUnion()
            resolveUnionType(r7, r0, r1)
            goto Lb1
        La4:
            org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument$Restriction r2 = r0.getRestriction()
            if (r2 == 0) goto Lb1
            org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument$Restriction r0 = r0.getRestriction()
            resolveSimpleRestrictionType(r7, r0, r1)
        Lb1:
            org.apache.xmlbeans.SchemaType$Ref[] r0 = makeRefArray(r1)
            r7.setAnonymousTypeRefs(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscSimpleTypeResolver.resolveSimpleType(org.apache.xmlbeans.impl.schema.SchemaTypeImpl):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17, types: [org.apache.xmlbeans.XmlObject] */
    public static void resolveUnionType(SchemaTypeImpl schemaTypeImpl, UnionDocument.Union union, List<SchemaType> list) {
        String str;
        UnionDocument.Union.MemberTypes xgetMemberTypes;
        XmlObject xgetMemberTypes2;
        schemaTypeImpl.setSimpleTypeVariety(2);
        SchemaTypeImpl schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        schemaTypeImpl.setBaseTypeRef(schemaTypeImpl2.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(1);
        StscState stscState = StscState.get();
        if (schemaTypeImpl.isRedefinition()) {
            stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$EXTEND_OR_RESTRICT, new Object[]{"union"}, union);
        }
        List<QName> memberTypes = union.getMemberTypes();
        LocalSimpleType[] simpleTypeArray = union.getSimpleTypeArray();
        ArrayList arrayList = new ArrayList();
        if (simpleTypeArray.length == 0 && (memberTypes == null || memberTypes.size() == 0)) {
            stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$UNION_HAS_MEMBER_TYPES_OR_SIMPLE_TYPES, (Object[]) null, union);
        }
        boolean z = false;
        if (memberTypes != null) {
            for (QName qName : memberTypes) {
                SchemaTypeImpl findGlobalType = stscState.findGlobalType(qName, schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl.getTargetNamespace());
                if (findGlobalType == null) {
                    stscState.notFoundError(qName, 0, union.xgetMemberTypes(), true);
                } else {
                    arrayList.add(findGlobalType);
                }
            }
        }
        int i = 0;
        while (i < simpleTypeArray.length) {
            SchemaTypeImpl translateAnonymousSimpleType = StscTranslator.translateAnonymousSimpleType(simpleTypeArray[i], schemaTypeImpl.getTargetNamespace(), schemaTypeImpl.getChameleonNamespace() != null, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), list, schemaTypeImpl);
            arrayList.add(translateAnonymousSimpleType);
            i++;
            translateAnonymousSimpleType.setAnonymousUnionMemberOrdinal(i);
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            String str2 = "";
            if (!it2.hasNext()) {
                break;
            }
            SchemaTypeImpl schemaTypeImpl3 = (SchemaTypeImpl) it2.next();
            if (!StscResolver.resolveType(schemaTypeImpl3)) {
                if (Objects.equals(schemaTypeImpl3.getOuterType(), schemaTypeImpl)) {
                    xgetMemberTypes2 = schemaTypeImpl3.getParseObject();
                } else {
                    str2 = QNameHelper.pretty(schemaTypeImpl3.getName()) + " ";
                    xgetMemberTypes2 = union.xgetMemberTypes();
                }
                stscState.error(XmlErrorCodes.SCHEMA_SIMPLE_TYPE$CYCLIC_UNION, new Object[]{str2}, xgetMemberTypes2);
                it2.remove();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            SchemaTypeImpl schemaTypeImpl4 = (SchemaTypeImpl) it3.next();
            if (!schemaTypeImpl4.isSimpleType()) {
                if (schemaTypeImpl4.getOuterType() == null || !schemaTypeImpl4.getOuterType().equals(schemaTypeImpl)) {
                    str = QNameHelper.pretty(schemaTypeImpl4.getName()) + " ";
                    xgetMemberTypes = union.xgetMemberTypes();
                } else {
                    xgetMemberTypes = schemaTypeImpl4.getParseObject();
                    str = "";
                }
                stscState.error(XmlErrorCodes.SIMPLE_TYPE_RESTRICTION$UNION_MEMBER_NOT_SIMPLE, new Object[]{str}, xgetMemberTypes);
                it3.remove();
            } else if (schemaTypeImpl4.getSimpleVariety() == 3 || (schemaTypeImpl4.getSimpleVariety() == 2 && schemaTypeImpl4.isUnionOfLists())) {
                z = true;
            }
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            if (((SchemaTypeImpl) it4.next()).finalUnion()) {
                stscState.error(XmlErrorCodes.SIMPLE_TYPE_PROPERTIES$UNION_FINAL, (Object[]) null, union);
            }
        }
        schemaTypeImpl.setUnionOfLists(z);
        schemaTypeImpl.setUnionMemberTypeRefs(makeRefArray(arrayList));
        schemaTypeImpl.setBasicFacets(StscState.FACETS_UNION, StscState.FIXED_FACETS_UNION);
        resolveFundamentalFacets(schemaTypeImpl);
    }

    private static int translateFacetCode(QName qName) {
        return facetCodeMap.getOrDefault(qName, -1).intValue();
    }

    public static int translateWhitespaceCode(XmlAnySimpleType xmlAnySimpleType) {
        String stringValue = xmlAnySimpleType.getStringValue();
        if (stringValue.equals("collapse")) {
            return 3;
        }
        if (stringValue.equals("preserve")) {
            return 1;
        }
        if (stringValue.equals("replace")) {
            return 2;
        }
        StscState.get().error("Unrecognized whitespace value \"" + stringValue + "\"", 20, xmlAnySimpleType);
        return 0;
    }
}
