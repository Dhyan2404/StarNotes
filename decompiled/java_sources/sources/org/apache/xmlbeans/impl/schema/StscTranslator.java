package org.apache.xmlbeans.impl.schema;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaBookmark;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlPositiveInteger;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.XMLChar;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AnnotationDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Attribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AttributeGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FieldDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FormChoice;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Keybase;
import org.apache.xmlbeans.impl.p119xb.xsdschema.LocalSimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedAttributeGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.RedefineDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelAttribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelElement;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelSimpleType;
import org.apache.xmlbeans.impl.regex.RegularExpression;
import org.apache.xmlbeans.impl.schema.StscImporter;
import org.apache.xmlbeans.impl.schema.StscTranslator;
import org.apache.xmlbeans.impl.values.NamespaceContext;
import org.apache.xmlbeans.impl.values.XmlNonNegativeIntegerImpl;
import org.apache.xmlbeans.impl.values.XmlPositiveIntegerImpl;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;
import org.apache.xmlbeans.impl.xpath.XPath;
import org.apache.xmlbeans.soap.SOAPArrayType;

/* loaded from: classes13.dex */
public class StscTranslator {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String FORM_QUALIFIED = "qualified";
    private static final QName WSDL_ARRAYTYPE_NAME = QNameHelper.forLNS(SoapEncSchemaTypeSystem.ARRAY_TYPE, "http://schemas.xmlsoap.org/wsdl/");
    public static final RegularExpression XPATH_REGEXP = new RegularExpression("(\\.//)?((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)/)*((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)|((attribute::|@)((\\i\\c*:)?(\\i\\c*|\\*))))(\\|(\\.//)?((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)/)*((((child::)?((\\i\\c*:)?(\\i\\c*|\\*)))|\\.)|((attribute::|@)((\\i\\c*:)?(\\i\\c*|\\*)))))*", "X");

    /* loaded from: classes13.dex */
    public static class RedefinitionHolder {
        private Map<String, NamedAttributeGroup> agRedefinitions;
        private Map<String, TopLevelComplexType> ctRedefinitions;
        private Map<String, NamedGroup> mgRedefinitions;
        private String schemaLocation;
        private final StscImporter.SchemaToProcess schemaRedefined;
        private Map<String, TopLevelSimpleType> stRedefinitions;

        public RedefinitionHolder(StscImporter.SchemaToProcess schemaToProcess, RedefineDocument.Redefine redefine) {
            this.stRedefinitions = Collections.emptyMap();
            this.ctRedefinitions = Collections.emptyMap();
            this.agRedefinitions = Collections.emptyMap();
            this.mgRedefinitions = Collections.emptyMap();
            this.schemaLocation = "";
            this.schemaRedefined = schemaToProcess;
            if (redefine != null) {
                StscState stscState = StscState.get();
                this.stRedefinitions = new HashMap();
                this.ctRedefinitions = new HashMap();
                this.agRedefinitions = new HashMap();
                this.mgRedefinitions = new HashMap();
                if (redefine.getSchemaLocation() != null) {
                    this.schemaLocation = redefine.getSchemaLocation();
                }
                for (TopLevelComplexType topLevelComplexType : redefine.getComplexTypeArray()) {
                    if (topLevelComplexType.getName() != null) {
                        if (this.ctRedefinitions.containsKey(topLevelComplexType.getName())) {
                            stscState.error("Duplicate type redefinition: " + topLevelComplexType.getName(), 49, (XmlObject) null);
                        } else {
                            this.ctRedefinitions.put(topLevelComplexType.getName(), topLevelComplexType);
                        }
                    }
                }
                for (TopLevelSimpleType topLevelSimpleType : redefine.getSimpleTypeArray()) {
                    if (topLevelSimpleType.getName() != null) {
                        if (this.stRedefinitions.containsKey(topLevelSimpleType.getName())) {
                            stscState.error("Duplicate type redefinition: " + topLevelSimpleType.getName(), 49, (XmlObject) null);
                        } else {
                            this.stRedefinitions.put(topLevelSimpleType.getName(), topLevelSimpleType);
                        }
                    }
                }
                for (NamedGroup namedGroup : redefine.getGroupArray()) {
                    if (namedGroup.getName() != null) {
                        if (this.mgRedefinitions.containsKey(namedGroup.getName())) {
                            stscState.error("Duplicate type redefinition: " + namedGroup.getName(), 49, (XmlObject) null);
                        } else {
                            this.mgRedefinitions.put(namedGroup.getName(), namedGroup);
                        }
                    }
                }
                for (NamedAttributeGroup namedAttributeGroup : redefine.getAttributeGroupArray()) {
                    if (namedAttributeGroup.getName() != null) {
                        if (this.agRedefinitions.containsKey(namedAttributeGroup.getName())) {
                            stscState.error("Duplicate type redefinition: " + namedAttributeGroup.getName(), 49, (XmlObject) null);
                        } else {
                            this.agRedefinitions.put(namedAttributeGroup.getName(), namedAttributeGroup);
                        }
                    }
                }
            }
        }

        public void complainAboutMissingDefinitions() {
            if (this.stRedefinitions.isEmpty() && this.ctRedefinitions.isEmpty() && this.agRedefinitions.isEmpty() && this.mgRedefinitions.isEmpty()) {
                return;
            }
            StscState stscState = StscState.get();
            for (String str : this.stRedefinitions.keySet()) {
                stscState.error("Redefined simple type " + str + " not found in " + this.schemaLocation, 60, this.stRedefinitions.get(str));
            }
            for (String str2 : this.ctRedefinitions.keySet()) {
                stscState.error("Redefined complex type " + str2 + " not found in " + this.schemaLocation, 60, this.ctRedefinitions.get(str2));
            }
            for (String str3 : this.agRedefinitions.keySet()) {
                stscState.error("Redefined attribute group " + str3 + " not found in " + this.schemaLocation, 60, this.agRedefinitions.get(str3));
            }
            for (String str4 : this.mgRedefinitions.keySet()) {
                stscState.error("Redefined model group " + str4 + " not found in " + this.schemaLocation, 60, this.mgRedefinitions.get(str4));
            }
        }

        public NamedAttributeGroup redefineAttributeGroup(String str) {
            if (str == null || !this.agRedefinitions.containsKey(str)) {
                return null;
            }
            return this.agRedefinitions.remove(str);
        }

        public TopLevelComplexType redefineComplexType(String str) {
            if (str == null || !this.ctRedefinitions.containsKey(str)) {
                return null;
            }
            return this.ctRedefinitions.remove(str);
        }

        public NamedGroup redefineModelGroup(String str) {
            if (str == null || !this.mgRedefinitions.containsKey(str)) {
                return null;
            }
            return this.mgRedefinitions.remove(str);
        }

        public TopLevelSimpleType redefineSimpleType(String str) {
            if (str == null || !this.stRedefinitions.containsKey(str)) {
                return null;
            }
            return this.stRedefinitions.remove(str);
        }
    }

    /* loaded from: classes13.dex */
    public static class RedefinitionMaster {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final short ATTRIBUTE_GROUP = 4;
        private static final short COMPLEX_TYPE = 2;
        private static final RedefinitionHolder[] EMPTY_REDEFINTION_HOLDER_ARRAY = new RedefinitionHolder[0];
        private static final short MODEL_GROUP = 3;
        private static final short SIMPLE_TYPE = 1;
        private Map<String, List<RedefinitionHolder>> agRedefinitions;
        private Map<String, List<RedefinitionHolder>> ctRedefinitions;
        private Map<String, List<RedefinitionHolder>> mgRedefinitions;
        private Map<String, List<RedefinitionHolder>> stRedefinitions;

        public RedefinitionMaster(RedefinitionHolder[] redefinitionHolderArr) {
            this.stRedefinitions = Collections.emptyMap();
            this.ctRedefinitions = Collections.emptyMap();
            this.agRedefinitions = Collections.emptyMap();
            this.mgRedefinitions = Collections.emptyMap();
            if (redefinitionHolderArr.length > 0) {
                this.stRedefinitions = new HashMap();
                this.ctRedefinitions = new HashMap();
                this.agRedefinitions = new HashMap();
                this.mgRedefinitions = new HashMap();
                for (RedefinitionHolder redefinitionHolder : redefinitionHolderArr) {
                    Iterator it2 = redefinitionHolder.stRedefinitions.keySet().iterator();
                    while (it2.hasNext()) {
                        this.stRedefinitions.computeIfAbsent((String) it2.next(), new Function() { // from class: org.apache.xmlbeans.impl.schema.e0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                List lambda$new$0;
                                lambda$new$0 = StscTranslator.RedefinitionMaster.lambda$new$0((String) obj);
                                return lambda$new$0;
                            }
                        }).add(redefinitionHolder);
                    }
                    Iterator it3 = redefinitionHolder.ctRedefinitions.keySet().iterator();
                    while (it3.hasNext()) {
                        this.ctRedefinitions.computeIfAbsent((String) it3.next(), new Function() { // from class: org.apache.xmlbeans.impl.schema.f0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                List lambda$new$1;
                                lambda$new$1 = StscTranslator.RedefinitionMaster.lambda$new$1((String) obj);
                                return lambda$new$1;
                            }
                        }).add(redefinitionHolder);
                    }
                    Iterator it4 = redefinitionHolder.agRedefinitions.keySet().iterator();
                    while (it4.hasNext()) {
                        this.agRedefinitions.computeIfAbsent((String) it4.next(), new Function() { // from class: org.apache.xmlbeans.impl.schema.g0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                List lambda$new$2;
                                lambda$new$2 = StscTranslator.RedefinitionMaster.lambda$new$2((String) obj);
                                return lambda$new$2;
                            }
                        }).add(redefinitionHolder);
                    }
                    Iterator it5 = redefinitionHolder.mgRedefinitions.keySet().iterator();
                    while (it5.hasNext()) {
                        this.mgRedefinitions.computeIfAbsent((String) it5.next(), new Function() { // from class: org.apache.xmlbeans.impl.schema.h0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                List lambda$new$3;
                                lambda$new$3 = StscTranslator.RedefinitionMaster.lambda$new$3((String) obj);
                                return lambda$new$3;
                            }
                        }).add(redefinitionHolder);
                    }
                }
            }
        }

        private String componentNameFromCode(short s) {
            return s != 1 ? s != 2 ? s != 3 ? s != 4 ? "" : "attribute group" : "model group" : "complex type" : "simple type";
        }

        private RedefinitionHolder[] doTopologicalSort(List<RedefinitionHolder> list, StscImporter.SchemaToProcess schemaToProcess, String str, short s) {
            RedefinitionHolder[] redefinitionHolderArr = new RedefinitionHolder[list.size()];
            int i = 0;
            for (RedefinitionHolder redefinitionHolder : list) {
                if (redefinitionHolder.schemaRedefined == schemaToProcess || redefinitionHolder.schemaRedefined.indirectIncludes(schemaToProcess)) {
                    redefinitionHolderArr[i] = redefinitionHolder;
                    i++;
                }
            }
            RedefinitionHolder[] redefinitionHolderArr2 = new RedefinitionHolder[i];
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i - 1) {
                RedefinitionHolder redefinitionHolder2 = redefinitionHolderArr[i2];
                int i3 = i2 + 1;
                for (int i4 = i3; i4 < i; i4++) {
                    if (redefinitionHolder2.schemaRedefined.indirectIncludes(redefinitionHolderArr[i4].schemaRedefined)) {
                        iArr[i2] = iArr[i2] + 1;
                    }
                    if (redefinitionHolderArr[i4].schemaRedefined.indirectIncludes(redefinitionHolder2.schemaRedefined)) {
                        iArr[i4] = iArr[i4] + 1;
                    }
                }
                i2 = i3;
            }
            int i5 = 0;
            boolean z = false;
            while (true) {
                XmlObject xmlObject = null;
                if (i5 >= i) {
                    break;
                }
                int i6 = -1;
                for (int i7 = 0; i7 < i; i7++) {
                    if (iArr[i7] == 0 && i6 < 0) {
                        i6 = i7;
                    }
                }
                if (i6 < 0) {
                    if (!z) {
                        StringBuilder sb = new StringBuilder();
                        for (int i8 = 0; i8 < i; i8++) {
                            RedefinitionHolder redefinitionHolder3 = redefinitionHolderArr[i8];
                            if (redefinitionHolder3 != null) {
                                sb.append(redefinitionHolder3.schemaLocation);
                                sb.append(',');
                                sb.append(' ');
                                if (xmlObject == null) {
                                    xmlObject = locationFromRedefinitionAndCode(redefinitionHolderArr[i8], str, s);
                                }
                            }
                        }
                        StscState.get().error("Detected circular redefinition of " + componentNameFromCode(s) + " \"" + str + "\"; Files involved: " + sb.toString(), 60, xmlObject);
                        z = true;
                    }
                    int i9 = i;
                    for (int i10 = 0; i10 < i; i10++) {
                        int i11 = iArr[i10];
                        if (i11 > 0 && i11 < i9) {
                            i6 = i10;
                            i9 = i11;
                        }
                    }
                    iArr[i6] = iArr[i6] - 1;
                } else {
                    int i12 = i5 + 1;
                    redefinitionHolderArr2[i5] = redefinitionHolderArr[i6];
                    for (int i13 = 0; i13 < i; i13++) {
                        RedefinitionHolder redefinitionHolder4 = redefinitionHolderArr[i13];
                        if (redefinitionHolder4 != null && redefinitionHolder4.schemaRedefined.indirectIncludes(redefinitionHolderArr[i6].schemaRedefined)) {
                            iArr[i13] = iArr[i13] - 1;
                        }
                    }
                    redefinitionHolderArr[i6] = null;
                    iArr[i6] = iArr[i6] - 1;
                    i5 = i12;
                }
            }
            for (int i14 = 1; i14 < i; i14++) {
                int i15 = i14 - 1;
                while (i15 >= 0 && redefinitionHolderArr2[i15] == null) {
                    i15--;
                }
                if (!redefinitionHolderArr2[i14].schemaRedefined.indirectIncludes(redefinitionHolderArr2[i15].schemaRedefined)) {
                    StscState.get().error("Detected multiple redefinitions of " + componentNameFromCode(s) + " \"" + str + "\"; Files involved: " + redefinitionHolderArr2[i15].schemaRedefined.getSourceName() + ", " + redefinitionHolderArr2[i14].schemaRedefined.getSourceName(), 49, locationFromRedefinitionAndCode(redefinitionHolderArr2[i14], str, s));
                    if (s == 1) {
                        redefinitionHolderArr2[i14].redefineSimpleType(str);
                    } else if (s == 2) {
                        redefinitionHolderArr2[i14].redefineComplexType(str);
                    } else if (s == 3) {
                        redefinitionHolderArr2[i14].redefineModelGroup(str);
                    } else if (s == 4) {
                        redefinitionHolderArr2[i14].redefineAttributeGroup(str);
                    }
                    redefinitionHolderArr2[i14] = null;
                }
            }
            return redefinitionHolderArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ List lambda$new$0(String str) {
            return new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ List lambda$new$1(String str) {
            return new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ List lambda$new$2(String str) {
            return new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ List lambda$new$3(String str) {
            return new ArrayList();
        }

        private XmlObject locationFromRedefinitionAndCode(RedefinitionHolder redefinitionHolder, String str, short s) {
            if (s == 1) {
                return (XmlObject) redefinitionHolder.stRedefinitions.get(str);
            }
            if (s == 2) {
                return (XmlObject) redefinitionHolder.ctRedefinitions.get(str);
            }
            if (s == 3) {
                return (XmlObject) redefinitionHolder.mgRedefinitions.get(str);
            }
            if (s != 4) {
                return null;
            }
            return (XmlObject) redefinitionHolder.agRedefinitions.get(str);
        }

        public RedefinitionHolder[] getAttributeGroupRedefinitions(String str, StscImporter.SchemaToProcess schemaToProcess) {
            List<RedefinitionHolder> list = this.agRedefinitions.get(str);
            return list == null ? EMPTY_REDEFINTION_HOLDER_ARRAY : doTopologicalSort(list, schemaToProcess, str, (short) 4);
        }

        public RedefinitionHolder[] getComplexTypeRedefinitions(String str, StscImporter.SchemaToProcess schemaToProcess) {
            List<RedefinitionHolder> list = this.ctRedefinitions.get(str);
            return list == null ? EMPTY_REDEFINTION_HOLDER_ARRAY : doTopologicalSort(list, schemaToProcess, str, (short) 2);
        }

        public RedefinitionHolder[] getModelGroupRedefinitions(String str, StscImporter.SchemaToProcess schemaToProcess) {
            List<RedefinitionHolder> list = this.mgRedefinitions.get(str);
            return list == null ? EMPTY_REDEFINTION_HOLDER_ARRAY : doTopologicalSort(list, schemaToProcess, str, (short) 3);
        }

        public RedefinitionHolder[] getSimpleTypeRedefinitions(String str, StscImporter.SchemaToProcess schemaToProcess) {
            List<RedefinitionHolder> list = this.stRedefinitions.get(str);
            return list == null ? EMPTY_REDEFINTION_HOLDER_ARRAY : doTopologicalSort(list, schemaToProcess, str, (short) 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void addAllDefinitions(StscImporter.SchemaToProcess[] schemaToProcessArr) {
        boolean z;
        StscImporter.SchemaToProcess[] schemaToProcessArr2 = schemaToProcessArr;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (StscImporter.SchemaToProcess schemaToProcess : schemaToProcessArr2) {
            List<StscImporter.SchemaToProcess> redefines = schemaToProcess.getRedefines();
            if (redefines != null) {
                List<RedefineDocument.Redefine> redefineObjects = schemaToProcess.getRedefineObjects();
                Iterator<StscImporter.SchemaToProcess> it2 = redefines.iterator();
                Iterator<RedefineDocument.Redefine> it3 = redefineObjects.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new RedefinitionHolder(it2.next(), it3.next()));
                }
            }
        }
        RedefinitionMaster redefinitionMaster = new RedefinitionMaster((RedefinitionHolder[]) arrayList.toArray(new RedefinitionHolder[0]));
        StscState stscState = StscState.get();
        int length = schemaToProcessArr2.length;
        int i2 = 0;
        while (i2 < length) {
            StscImporter.SchemaToProcess schemaToProcess2 = schemaToProcessArr2[i2];
            SchemaDocument.Schema schema = schemaToProcess2.getSchema();
            String chameleonNamespace = schemaToProcess2.getChameleonNamespace();
            if (schema.sizeOfNotationArray() > 0) {
                stscState.warning("Schema <notation> is not yet supported for this release.", 51, schema.getNotationArray(i));
            }
            String targetNamespace = schema.getTargetNamespace();
            if (chameleonNamespace == null || targetNamespace != null) {
                chameleonNamespace = targetNamespace;
                z = i;
            } else {
                z = 1;
            }
            if (chameleonNamespace == null) {
                chameleonNamespace = "";
            }
            if (chameleonNamespace.length() > 0 || !isEmptySchema(schema)) {
                stscState.registerContribution(chameleonNamespace, schema.documentProperties().getSourceName());
                stscState.addNewContainer(chameleonNamespace);
            }
            ArrayList arrayList2 = new ArrayList();
            TopLevelComplexType[] complexTypeArray = schema.getComplexTypeArray();
            int length2 = complexTypeArray.length;
            int i3 = i;
            while (i3 < length2) {
                TopLevelComplexType topLevelComplexType = complexTypeArray[i3];
                RedefinitionHolder[] complexTypeRedefinitions = redefinitionMaster.getComplexTypeRedefinitions(topLevelComplexType.getName(), schemaToProcess2);
                int length3 = complexTypeRedefinitions.length;
                TopLevelComplexType topLevelComplexType2 = topLevelComplexType;
                int i4 = 0;
                while (i4 < length3) {
                    int i5 = length3;
                    RedefinitionHolder redefinitionHolder = complexTypeRedefinitions[i4];
                    int i6 = length;
                    if (redefinitionHolder != null) {
                        TopLevelComplexType redefineComplexType = redefinitionHolder.redefineComplexType(topLevelComplexType2.getName());
                        arrayList2.add(topLevelComplexType2);
                        topLevelComplexType2 = redefineComplexType;
                    }
                    i4++;
                    length3 = i5;
                    length = i6;
                }
                int i7 = length;
                SchemaTypeImpl translateGlobalComplexType = translateGlobalComplexType(topLevelComplexType2, chameleonNamespace, z, arrayList2.size() > 0);
                stscState.addGlobalType(translateGlobalComplexType, null);
                int size = arrayList2.size() - 1;
                while (size >= 0) {
                    SchemaTypeImpl translateGlobalComplexType2 = translateGlobalComplexType((TopLevelComplexType) arrayList2.remove(size), chameleonNamespace, z, size > 0);
                    stscState.addGlobalType(translateGlobalComplexType2, translateGlobalComplexType);
                    size--;
                    translateGlobalComplexType = translateGlobalComplexType2;
                }
                i3++;
                length = i7;
            }
            int i8 = length;
            TopLevelSimpleType[] simpleTypeArray = schema.getSimpleTypeArray();
            int length4 = simpleTypeArray.length;
            int i9 = 0;
            while (i9 < length4) {
                TopLevelSimpleType topLevelSimpleType = simpleTypeArray[i9];
                RedefinitionHolder[] simpleTypeRedefinitions = redefinitionMaster.getSimpleTypeRedefinitions(topLevelSimpleType.getName(), schemaToProcess2);
                int length5 = simpleTypeRedefinitions.length;
                int i10 = 0;
                while (i10 < length5) {
                    TopLevelSimpleType[] topLevelSimpleTypeArr = simpleTypeArray;
                    RedefinitionHolder redefinitionHolder2 = simpleTypeRedefinitions[i10];
                    int i11 = length4;
                    if (redefinitionHolder2 != null) {
                        TopLevelSimpleType redefineSimpleType = redefinitionHolder2.redefineSimpleType(topLevelSimpleType.getName());
                        arrayList2.add(topLevelSimpleType);
                        topLevelSimpleType = redefineSimpleType;
                    }
                    i10++;
                    simpleTypeArray = topLevelSimpleTypeArr;
                    length4 = i11;
                }
                TopLevelSimpleType[] topLevelSimpleTypeArr2 = simpleTypeArray;
                int i12 = length4;
                SchemaTypeImpl translateGlobalSimpleType = translateGlobalSimpleType(topLevelSimpleType, chameleonNamespace, z, arrayList2.size() > 0);
                stscState.addGlobalType(translateGlobalSimpleType, null);
                int size2 = arrayList2.size() - 1;
                while (size2 >= 0) {
                    SchemaTypeImpl translateGlobalSimpleType2 = translateGlobalSimpleType((TopLevelSimpleType) arrayList2.remove(size2), chameleonNamespace, z, size2 > 0);
                    stscState.addGlobalType(translateGlobalSimpleType2, translateGlobalSimpleType);
                    size2--;
                    translateGlobalSimpleType = translateGlobalSimpleType2;
                }
                i9++;
                simpleTypeArray = topLevelSimpleTypeArr2;
                length4 = i12;
            }
            for (TopLevelElement topLevelElement : schema.getElementArray()) {
                stscState.addDocumentType(translateDocumentType(topLevelElement, chameleonNamespace, z), QNameHelper.forLNS(topLevelElement.getName(), chameleonNamespace));
            }
            for (TopLevelAttribute topLevelAttribute : schema.getAttributeArray()) {
                stscState.addAttributeType(translateAttributeType(topLevelAttribute, chameleonNamespace, z), QNameHelper.forLNS(topLevelAttribute.getName(), chameleonNamespace));
            }
            NamedGroup[] groupArray = schema.getGroupArray();
            int length6 = groupArray.length;
            int i13 = 0;
            while (i13 < length6) {
                NamedGroup namedGroup = groupArray[i13];
                RedefinitionHolder[] modelGroupRedefinitions = redefinitionMaster.getModelGroupRedefinitions(namedGroup.getName(), schemaToProcess2);
                int length7 = modelGroupRedefinitions.length;
                int i14 = 0;
                while (i14 < length7) {
                    NamedGroup[] namedGroupArr = groupArray;
                    RedefinitionHolder redefinitionHolder3 = modelGroupRedefinitions[i14];
                    int i15 = length6;
                    if (redefinitionHolder3 != null) {
                        NamedGroup redefineModelGroup = redefinitionHolder3.redefineModelGroup(namedGroup.getName());
                        arrayList2.add(namedGroup);
                        namedGroup = redefineModelGroup;
                    }
                    i14++;
                    groupArray = namedGroupArr;
                    length6 = i15;
                }
                NamedGroup[] namedGroupArr2 = groupArray;
                int i16 = length6;
                SchemaModelGroupImpl translateModelGroup = translateModelGroup(namedGroup, chameleonNamespace, z, arrayList2.size() > 0);
                stscState.addModelGroup(translateModelGroup, null);
                int size3 = arrayList2.size() - 1;
                while (size3 >= 0) {
                    SchemaModelGroupImpl translateModelGroup2 = translateModelGroup((NamedGroup) arrayList2.remove(size3), chameleonNamespace, z, size3 > 0);
                    stscState.addModelGroup(translateModelGroup2, translateModelGroup);
                    size3--;
                    translateModelGroup = translateModelGroup2;
                }
                i13++;
                groupArray = namedGroupArr2;
                length6 = i16;
            }
            NamedAttributeGroup[] attributeGroupArray = schema.getAttributeGroupArray();
            int length8 = attributeGroupArray.length;
            int i17 = 0;
            while (i17 < length8) {
                NamedAttributeGroup namedAttributeGroup = attributeGroupArray[i17];
                RedefinitionHolder[] attributeGroupRedefinitions = redefinitionMaster.getAttributeGroupRedefinitions(namedAttributeGroup.getName(), schemaToProcess2);
                int length9 = attributeGroupRedefinitions.length;
                int i18 = 0;
                while (i18 < length9) {
                    NamedAttributeGroup[] namedAttributeGroupArr = attributeGroupArray;
                    RedefinitionHolder redefinitionHolder4 = attributeGroupRedefinitions[i18];
                    RedefinitionMaster redefinitionMaster2 = redefinitionMaster;
                    if (redefinitionHolder4 != null) {
                        NamedAttributeGroup redefineAttributeGroup = redefinitionHolder4.redefineAttributeGroup(namedAttributeGroup.getName());
                        arrayList2.add(namedAttributeGroup);
                        namedAttributeGroup = redefineAttributeGroup;
                    }
                    i18++;
                    attributeGroupArray = namedAttributeGroupArr;
                    redefinitionMaster = redefinitionMaster2;
                }
                NamedAttributeGroup[] namedAttributeGroupArr2 = attributeGroupArray;
                RedefinitionMaster redefinitionMaster3 = redefinitionMaster;
                SchemaAttributeGroupImpl translateAttributeGroup = translateAttributeGroup(namedAttributeGroup, chameleonNamespace, z, arrayList2.size() > 0);
                stscState.addAttributeGroup(translateAttributeGroup, null);
                int size4 = arrayList2.size() - 1;
                while (size4 >= 0) {
                    SchemaAttributeGroupImpl translateAttributeGroup2 = translateAttributeGroup((NamedAttributeGroup) arrayList2.remove(size4), chameleonNamespace, z, size4 > 0);
                    stscState.addAttributeGroup(translateAttributeGroup2, translateAttributeGroup);
                    size4--;
                    translateAttributeGroup = translateAttributeGroup2;
                }
                i17++;
                attributeGroupArray = namedAttributeGroupArr2;
                redefinitionMaster = redefinitionMaster3;
            }
            RedefinitionMaster redefinitionMaster4 = redefinitionMaster;
            for (AnnotationDocument.Annotation annotation : schema.getAnnotationArray()) {
                stscState.addAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(chameleonNamespace), schema, annotation), chameleonNamespace);
            }
            i2++;
            schemaToProcessArr2 = schemaToProcessArr;
            redefinitionMaster = redefinitionMaster4;
            length = i8;
            i = 0;
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((RedefinitionHolder) it4.next()).complainAboutMissingDefinitions();
        }
    }

    public static BigInteger buildBigInt(XmlAnySimpleType xmlAnySimpleType) {
        if (xmlAnySimpleType == null) {
            return null;
        }
        String stringValue = xmlAnySimpleType.getStringValue();
        try {
            BigInteger bigInteger = new BigInteger(stringValue);
            if (bigInteger.signum() >= 0) {
                return bigInteger;
            }
            StscState.get().error(XmlErrorCodes.INVALID_VALUE, new Object[]{stringValue, "nonNegativeInteger"}, xmlAnySimpleType);
            return null;
        } catch (NumberFormatException e) {
            StscState.get().error(XmlErrorCodes.INVALID_VALUE_DETAIL, new Object[]{stringValue, "nonNegativeInteger", e.getMessage()}, xmlAnySimpleType);
            return null;
        }
    }

    public static XmlNonNegativeInteger buildNnInteger(XmlAnySimpleType xmlAnySimpleType) {
        BigInteger buildBigInt = buildBigInt(xmlAnySimpleType);
        try {
            XmlNonNegativeIntegerImpl xmlNonNegativeIntegerImpl = new XmlNonNegativeIntegerImpl();
            xmlNonNegativeIntegerImpl.setBigIntegerValue(buildBigInt);
            xmlNonNegativeIntegerImpl.setImmutable();
            return xmlNonNegativeIntegerImpl;
        } catch (XmlValueOutOfRangeException unused) {
            StscState.get().error("Internal error processing number", 21, xmlAnySimpleType);
            return null;
        }
    }

    public static XmlPositiveInteger buildPosInteger(XmlAnySimpleType xmlAnySimpleType) {
        BigInteger buildBigInt = buildBigInt(xmlAnySimpleType);
        try {
            XmlPositiveIntegerImpl xmlPositiveIntegerImpl = new XmlPositiveIntegerImpl();
            xmlPositiveIntegerImpl.setBigIntegerValue(buildBigInt);
            xmlPositiveIntegerImpl.setImmutable();
            return xmlPositiveIntegerImpl;
        } catch (XmlValueOutOfRangeException unused) {
            StscState.get().error("Internal error processing number", 21, xmlAnySimpleType);
            return null;
        }
    }

    private static SchemaType checkRecursiveGroupReference(QName[] qNameArr, QName qName, SchemaTypeImpl schemaTypeImpl) {
        QName[] groupReferenceContext;
        if (qNameArr.length < 1) {
            return null;
        }
        while (schemaTypeImpl != null && schemaTypeImpl.getName() == null && !schemaTypeImpl.isDocumentType()) {
            if (qName.equals(schemaTypeImpl.getContainerField().getName()) && (groupReferenceContext = schemaTypeImpl.getGroupReferenceContext()) != null && groupReferenceContext.length == qNameArr.length) {
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= qNameArr.length) {
                        z = true;
                        break;
                    }
                    QName qName2 = qNameArr[i];
                    if ((qName2 != null || groupReferenceContext[i] != null) && (qName2 == null || !qName2.equals(groupReferenceContext[i]))) {
                        break;
                    }
                    i++;
                }
                if (z) {
                    return schemaTypeImpl;
                }
            }
            schemaTypeImpl = (SchemaTypeImpl) schemaTypeImpl.getOuterType();
        }
        return null;
    }

    private static boolean checkXPathSyntax(String str) {
        boolean matches;
        if (str == null) {
            return false;
        }
        String removeWhitespace = removeWhitespace(str);
        RegularExpression regularExpression = XPATH_REGEXP;
        synchronized (regularExpression) {
            matches = regularExpression.matches(removeWhitespace);
        }
        return matches;
    }

    public static void copyGlobalAttributeToLocalAttribute(SchemaGlobalAttributeImpl schemaGlobalAttributeImpl, SchemaLocalAttributeImpl schemaLocalAttributeImpl) {
        schemaLocalAttributeImpl.init(schemaGlobalAttributeImpl.getName(), schemaGlobalAttributeImpl.getTypeRef(), schemaGlobalAttributeImpl.getUse(), schemaGlobalAttributeImpl.getDefaultText(), schemaGlobalAttributeImpl.getParseObject(), schemaGlobalAttributeImpl._defaultValue, schemaGlobalAttributeImpl.isFixed(), schemaGlobalAttributeImpl.getWSDLArrayType(), schemaGlobalAttributeImpl.getAnnotation(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void copyGlobalElementToLocalElement(SchemaGlobalElement schemaGlobalElement, SchemaLocalElementImpl schemaLocalElementImpl) {
        schemaLocalElementImpl.setNameAndTypeRef(schemaGlobalElement.getName(), schemaGlobalElement.getType().getRef());
        schemaLocalElementImpl.setNillable(schemaGlobalElement.isNillable());
        schemaLocalElementImpl.setDefault(schemaGlobalElement.getDefaultText(), schemaGlobalElement.isFixed(), ((SchemaGlobalElementImpl) schemaGlobalElement).getParseObject());
        schemaLocalElementImpl.setIdentityConstraints(((SchemaLocalElementImpl) schemaGlobalElement).getIdentityConstraintRefs());
        schemaLocalElementImpl.setBlock(schemaGlobalElement.blockExtension(), schemaGlobalElement.blockRestriction(), schemaGlobalElement.blockSubstitution());
        schemaLocalElementImpl.setAbstract(schemaGlobalElement.isAbstract());
        SchemaParticle schemaParticle = (SchemaParticle) schemaGlobalElement;
        schemaLocalElementImpl.setTransitionRules(schemaParticle.acceptedStartNames(), schemaParticle.isSkippable());
        schemaLocalElementImpl.setAnnotation(schemaGlobalElement.getAnnotation());
    }

    public static FormChoice findAttributeFormDefault(XmlObject xmlObject) {
        XmlCursor newCursor = xmlObject.newCursor();
        do {
            try {
                if (newCursor.getObject().schemaType() == SchemaDocument.Schema.type) {
                    FormChoice xgetAttributeFormDefault = ((SchemaDocument.Schema) newCursor.getObject()).xgetAttributeFormDefault();
                    newCursor.close();
                    return xgetAttributeFormDefault;
                }
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
        } while (newCursor.toParent());
        newCursor.close();
        return null;
    }

    public static FormChoice findElementFormDefault(XmlObject xmlObject) {
        XmlCursor newCursor = xmlObject.newCursor();
        do {
            try {
                if (newCursor.getObject().schemaType() == SchemaDocument.Schema.type) {
                    FormChoice xgetElementFormDefault = ((SchemaDocument.Schema) newCursor.getObject()).xgetElementFormDefault();
                    newCursor.close();
                    return xgetElementFormDefault;
                }
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
        } while (newCursor.toParent());
        newCursor.close();
        return null;
    }

    private static String findFilename(XmlObject xmlObject) {
        return StscState.get().sourceNameForUri(xmlObject.documentProperties().getSourceName());
    }

    private static Object getUserData(XmlObject xmlObject) {
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            XmlCursor.XmlBookmark bookmark = newCursor.getBookmark(SchemaBookmark.class);
            newCursor.close();
            if (bookmark instanceof SchemaBookmark) {
                return ((SchemaBookmark) bookmark).getValue();
            }
            return null;
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

    private static boolean isEmptySchema(SchemaDocument.Schema schema) {
        XmlCursor newCursor = schema.newCursor();
        try {
            boolean z = !newCursor.toFirstChild();
            newCursor.close();
            return z;
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

    private static boolean isReservedTypeName(QName qName) {
        return BuiltinSchemaTypeSystem.get().findType(qName) != null;
    }

    private static String removeWhitespace(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!XMLChar.isSpace(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static SchemaTypeImpl translateAnonymousSimpleType(SimpleType simpleType, String str, boolean z, String str2, String str3, List<SchemaType> list, SchemaType schemaType) {
        StscState stscState = StscState.get();
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(stscState.getContainer(str));
        schemaTypeImpl.setSimpleType(true);
        schemaTypeImpl.setParseContext(simpleType, str, z, str2, str3, false);
        schemaTypeImpl.setOuterSchemaTypeRef(schemaType.getRef());
        schemaTypeImpl.setAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), simpleType));
        schemaTypeImpl.setUserData(getUserData(simpleType));
        list.add(schemaTypeImpl);
        return schemaTypeImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0, types: [java.util.List, java.util.List<org.apache.xmlbeans.SchemaType>] */
    /* JADX WARN: Type inference failed for: r5v11, types: [org.apache.xmlbeans.impl.schema.SchemaLocalAttributeImpl] */
    public static SchemaLocalAttributeImpl translateAttribute(Attribute attribute, String str, String str2, boolean z, List<SchemaType> list, SchemaType schemaType, SchemaAttributeModel schemaAttributeModel, boolean z2) {
        SchemaGlobalAttributeImpl schemaGlobalAttributeImpl;
        QName forLNS;
        QName qName;
        SchemaTypeImpl schemaTypeImpl;
        LocalSimpleType localSimpleType;
        SchemaType schemaType2;
        int i;
        boolean z3;
        String str3;
        String str4;
        boolean z4;
        int i2;
        String str5;
        boolean z5;
        SOAPArrayType sOAPArrayType;
        SOAPArrayType sOAPArrayType2;
        StscState stscState = StscState.get();
        String name = attribute.getName();
        QName ref = attribute.getRef();
        if (ref != null && name != null) {
            if (name.equals(ref.getLocalPart()) && uriMatch(str, ref.getNamespaceURI())) {
                stscState.warning(XmlErrorCodes.SCHEMA_ATTR$REF_OR_NAME_HAS_BOTH, new Object[]{name}, attribute.xgetRef());
            } else {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$REF_OR_NAME_HAS_BOTH, new Object[]{name}, attribute.xgetRef());
            }
            name = null;
        }
        if (ref == null && name == null) {
            stscState.error(XmlErrorCodes.SCHEMA_ATTR$REF_OR_NAME_HAS_NEITHER, (Object[]) null, attribute);
            return null;
        }
        if (name != null && !XMLChar.isValidNCName(name)) {
            stscState.error(XmlErrorCodes.INVALID_VALUE, new Object[]{name, "name"}, attribute.xgetName());
        }
        if (z2) {
            schemaGlobalAttributeImpl = new SchemaLocalAttributeImpl();
        } else {
            SchemaGlobalAttributeImpl schemaGlobalAttributeImpl2 = new SchemaGlobalAttributeImpl(StscState.get().getContainer(str));
            schemaGlobalAttributeImpl2.setParseContext(attribute, str, z);
            schemaGlobalAttributeImpl = schemaGlobalAttributeImpl2;
        }
        SchemaGlobalAttributeImpl schemaGlobalAttributeImpl3 = schemaGlobalAttributeImpl;
        if (ref != null) {
            if (attribute.getType() != null) {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$REF_FEATURES, new Object[]{"type"}, attribute.xgetType());
            }
            if (attribute.getSimpleType() != null) {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$REF_FEATURES, new Object[]{"<simpleType>"}, attribute.getSimpleType());
            }
            if (attribute.getForm() != null) {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$REF_FEATURES, new Object[]{"form"}, attribute.xgetForm());
            }
            SchemaGlobalAttributeImpl findGlobalAttribute = stscState.findGlobalAttribute(ref, z ? str : null, str);
            if (findGlobalAttribute == null) {
                stscState.notFoundError(ref, 3, attribute.xgetRef(), true);
                return null;
            }
            i = findGlobalAttribute.getUse();
            schemaType2 = findGlobalAttribute.getType();
            str3 = findGlobalAttribute.getDefaultText();
            if (str3 != null) {
                z3 = findGlobalAttribute.isFixed();
                str4 = z3 ? str3 : null;
            } else {
                str4 = null;
                z3 = false;
            }
            qName = ref;
        } else {
            if (z2) {
                FormChoice xgetForm = attribute.xgetForm();
                if (xgetForm != null) {
                    z4 = xgetForm.getStringValue().equals("qualified");
                } else if (str2 != null) {
                    z4 = str2.equals("qualified");
                } else {
                    FormChoice findAttributeFormDefault = findAttributeFormDefault(attribute);
                    z4 = findAttributeFormDefault != null && findAttributeFormDefault.getStringValue().equals("qualified");
                }
                forLNS = z4 ? QNameHelper.forLNS(name, str) : QNameHelper.forLN(name);
            } else {
                forLNS = QNameHelper.forLNS(name, str);
            }
            qName = forLNS;
            if (attribute.getType() != null) {
                schemaTypeImpl = stscState.findGlobalType(attribute.getType(), z ? str : null, str);
                if (schemaTypeImpl == null) {
                    stscState.notFoundError(attribute.getType(), 0, attribute.xgetType(), true);
                }
            } else {
                schemaTypeImpl = null;
            }
            if (qName.getNamespaceURI().equals("http://www.w3.org/2001/XMLSchema-instance")) {
                stscState.error(XmlErrorCodes.NO_XSI, new Object[]{"http://www.w3.org/2001/XMLSchema-instance"}, attribute.xgetName());
            }
            if (qName.getNamespaceURI().length() == 0 && qName.getLocalPart().equals("xmlns")) {
                stscState.error(XmlErrorCodes.NO_XMLNS, (Object[]) null, attribute.xgetName());
            }
            LocalSimpleType simpleType = attribute.getSimpleType();
            if (schemaTypeImpl == null || simpleType == null) {
                localSimpleType = simpleType;
            } else {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$TYPE_ATTR_OR_NESTED_TYPE, (Object[]) null, simpleType);
                localSimpleType = null;
            }
            if (localSimpleType != null) {
                SchemaTypeImpl schemaTypeImpl2 = new SchemaTypeImpl(stscState.getContainer(str));
                schemaTypeImpl2.setContainerField(schemaGlobalAttributeImpl3);
                schemaTypeImpl2.setOuterSchemaTypeRef(schemaType == null ? null : schemaType.getRef());
                list.add(schemaTypeImpl2);
                schemaTypeImpl2.setSimpleType(true);
                LocalSimpleType localSimpleType2 = localSimpleType;
                schemaTypeImpl2.setParseContext(localSimpleType, str, z, null, null, false);
                schemaTypeImpl2.setAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), localSimpleType2));
                schemaTypeImpl2.setUserData(getUserData(localSimpleType2));
                schemaType2 = schemaTypeImpl2;
            } else {
                schemaType2 = schemaTypeImpl;
            }
            if (schemaType2 == null && schemaAttributeModel != null && schemaAttributeModel.getAttribute(qName) != null) {
                schemaType2 = schemaAttributeModel.getAttribute(qName).getType();
            }
            i = 2;
            z3 = false;
            str3 = null;
            str4 = null;
        }
        if (schemaType2 == null) {
            schemaType2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        if (!schemaType2.isSimpleType()) {
            stscState.error("Attributes must have a simple type (not complex).", 46, attribute);
            schemaType2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        if (!attribute.isSetUse() || (i = translateUseCode(attribute.xgetUse())) == 2 || z3) {
            String str6 = str3;
            i2 = i;
            str5 = str6;
        } else {
            i2 = i;
            str5 = null;
        }
        if (attribute.isSetDefault() || attribute.isSetFixed()) {
            if (z3 && !attribute.isSetFixed()) {
                stscState.error("A use of a fixed attribute definition must also be fixed", 9, attribute.xgetFixed());
            }
            boolean isSetFixed = attribute.isSetFixed();
            if (attribute.isSetDefault() && isSetFixed) {
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$DEFAULT_OR_FIXED, (Object[]) null, attribute.xgetFixed());
                z5 = false;
            } else {
                z5 = isSetFixed;
            }
            Object fixed = z5 ? attribute.getFixed() : attribute.getDefault();
            if (str4 == null || str4.equals(fixed)) {
                sOAPArrayType = null;
                str4 = fixed;
            } else {
                sOAPArrayType = null;
                stscState.error(XmlErrorCodes.SCHEMA_ATTR$FIXED_NOT_MATCH, (Object[]) null, attribute.xgetFixed());
            }
        } else {
            z5 = z3;
            str4 = str5;
            sOAPArrayType = null;
        }
        if (!z2) {
            schemaGlobalAttributeImpl3.setFilename(findFilename(attribute));
        }
        XmlCursor newCursor = attribute.newCursor();
        try {
            String attributeText = newCursor.getAttributeText(WSDL_ARRAYTYPE_NAME);
            newCursor.close();
            if (attributeText != null) {
                try {
                    sOAPArrayType2 = new SOAPArrayType(attributeText, new NamespaceContext(attribute));
                } catch (XmlValueOutOfRangeException unused) {
                    stscState.error(XmlErrorCodes.SOAPARRAY, new Object[]{attributeText}, attribute);
                }
                schemaGlobalAttributeImpl3.init(qName, schemaType2.getRef(), i2, str4, attribute, null, z5, sOAPArrayType2, SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), attribute), getUserData(attribute));
                return schemaGlobalAttributeImpl3;
            }
            sOAPArrayType2 = sOAPArrayType;
            schemaGlobalAttributeImpl3.init(qName, schemaType2.getRef(), i2, str4, attribute, null, z5, sOAPArrayType2, SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), attribute), getUserData(attribute));
            return schemaGlobalAttributeImpl3;
        } finally {
        }
    }

    public static SchemaAttributeGroupImpl translateAttributeGroup(AttributeGroup attributeGroup, String str, boolean z, boolean z2) {
        String name = attributeGroup.getName();
        if (name == null) {
            StscState.get().error(XmlErrorCodes.MISSING_NAME, new Object[]{"attribute group"}, attributeGroup);
            return null;
        }
        SchemaContainer container = StscState.get().getContainer(str);
        SchemaAttributeGroupImpl schemaAttributeGroupImpl = new SchemaAttributeGroupImpl(container);
        SchemaAnnotationImpl annotation = SchemaAnnotationImpl.getAnnotation(container, attributeGroup);
        FormChoice findAttributeFormDefault = findAttributeFormDefault(attributeGroup);
        schemaAttributeGroupImpl.init(QNameHelper.forLNS(name, str), str, z, findAttributeFormDefault == null ? null : findAttributeFormDefault.getStringValue(), z2, attributeGroup, annotation, getUserData(attributeGroup));
        schemaAttributeGroupImpl.setFilename(findFilename(attributeGroup));
        return schemaAttributeGroupImpl;
    }

    private static SchemaTypeImpl translateAttributeType(TopLevelAttribute topLevelAttribute, String str, boolean z) {
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(StscState.get().getContainer(str));
        schemaTypeImpl.setAttributeType(true);
        schemaTypeImpl.setParseContext(topLevelAttribute, str, z, null, null, false);
        schemaTypeImpl.setFilename(findFilename(topLevelAttribute));
        return schemaTypeImpl;
    }

    private static SchemaTypeImpl translateDocumentType(TopLevelElement topLevelElement, String str, boolean z) {
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(StscState.get().getContainer(str));
        schemaTypeImpl.setDocumentType(true);
        schemaTypeImpl.setParseContext(topLevelElement, str, z, null, null, false);
        schemaTypeImpl.setFilename(findFilename(topLevelElement));
        return schemaTypeImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0358 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0336 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r26v0, types: [java.util.List, java.util.List<org.apache.xmlbeans.SchemaType>] */
    /* JADX WARN: Type inference failed for: r2v39, types: [org.apache.xmlbeans.impl.schema.SchemaLocalElementImpl] */
    /* JADX WARN: Type inference failed for: r4v19, types: [int] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21, types: [int] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [int] */
    /* JADX WARN: Type inference failed for: r4v52 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r4v55 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    /* JADX WARN: Type inference failed for: r5v5, types: [int] */
    /* JADX WARN: Type inference failed for: r5v6, types: [int] */
    /* JADX WARN: Type inference failed for: r5v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.xmlbeans.impl.schema.SchemaLocalElementImpl translateElement(org.apache.xmlbeans.impl.p119xb.xsdschema.Element r21, java.lang.String r22, boolean r23, java.lang.String r24, java.lang.String r25, java.util.List<org.apache.xmlbeans.SchemaType> r26, org.apache.xmlbeans.SchemaType r27) {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscTranslator.translateElement(org.apache.xmlbeans.impl.xb.xsdschema.Element, java.lang.String, boolean, java.lang.String, java.lang.String, java.util.List, org.apache.xmlbeans.SchemaType):org.apache.xmlbeans.impl.schema.SchemaLocalElementImpl");
    }

    private static SchemaTypeImpl translateGlobalComplexType(TopLevelComplexType topLevelComplexType, String str, boolean z, boolean z2) {
        StscState stscState = StscState.get();
        String name = topLevelComplexType.getName();
        if (name == null) {
            stscState.error(XmlErrorCodes.MISSING_NAME, new Object[]{"global type"}, topLevelComplexType);
            return null;
        }
        if (!XMLChar.isValidNCName(name)) {
            stscState.error(XmlErrorCodes.INVALID_VALUE, new Object[]{name, "name"}, topLevelComplexType.xgetName());
        }
        QName forLNS = QNameHelper.forLNS(name, str);
        if (isReservedTypeName(forLNS)) {
            stscState.warning(XmlErrorCodes.RESERVED_TYPE_NAME, new Object[]{QNameHelper.pretty(forLNS)}, topLevelComplexType);
            return null;
        }
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(stscState.getContainer(str));
        schemaTypeImpl.setParseContext(topLevelComplexType, str, z, null, null, z2);
        schemaTypeImpl.setFilename(findFilename(topLevelComplexType));
        schemaTypeImpl.setName(QNameHelper.forLNS(name, str));
        schemaTypeImpl.setAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), topLevelComplexType));
        schemaTypeImpl.setUserData(getUserData(topLevelComplexType));
        return schemaTypeImpl;
    }

    private static SchemaTypeImpl translateGlobalSimpleType(TopLevelSimpleType topLevelSimpleType, String str, boolean z, boolean z2) {
        StscState stscState = StscState.get();
        String name = topLevelSimpleType.getName();
        if (name == null) {
            stscState.error(XmlErrorCodes.MISSING_NAME, new Object[]{"global type"}, topLevelSimpleType);
            return null;
        }
        if (!XMLChar.isValidNCName(name)) {
            stscState.error(XmlErrorCodes.INVALID_VALUE, new Object[]{name, "name"}, topLevelSimpleType.xgetName());
        }
        QName forLNS = QNameHelper.forLNS(name, str);
        if (isReservedTypeName(forLNS)) {
            stscState.warning(XmlErrorCodes.RESERVED_TYPE_NAME, new Object[]{QNameHelper.pretty(forLNS)}, topLevelSimpleType);
            return null;
        }
        SchemaTypeImpl schemaTypeImpl = new SchemaTypeImpl(stscState.getContainer(str));
        schemaTypeImpl.setSimpleType(true);
        schemaTypeImpl.setParseContext(topLevelSimpleType, str, z, null, null, z2);
        schemaTypeImpl.setFilename(findFilename(topLevelSimpleType));
        schemaTypeImpl.setName(forLNS);
        schemaTypeImpl.setAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), topLevelSimpleType));
        schemaTypeImpl.setUserData(getUserData(topLevelSimpleType));
        return schemaTypeImpl;
    }

    private static SchemaIdentityConstraintImpl translateIdentityConstraint(Keybase keybase, String str, boolean z) {
        StscState stscState = StscState.get();
        String xpath = keybase.getSelector() == null ? null : keybase.getSelector().getXpath();
        if (!checkXPathSyntax(xpath)) {
            stscState.error(XmlErrorCodes.SELECTOR_XPATH, new Object[]{xpath}, keybase.getSelector().xgetXpath());
            return null;
        }
        FieldDocument.Field[] fieldArray = keybase.getFieldArray();
        for (FieldDocument.Field field : fieldArray) {
            if (!checkXPathSyntax(field.getXpath())) {
                stscState.error(XmlErrorCodes.FIELDS_XPATH, new Object[]{field.getXpath()}, field.xgetXpath());
                return null;
            }
        }
        SchemaIdentityConstraintImpl schemaIdentityConstraintImpl = new SchemaIdentityConstraintImpl(stscState.getContainer(str));
        schemaIdentityConstraintImpl.setName(QNameHelper.forLNS(keybase.getName(), str));
        schemaIdentityConstraintImpl.setSelector(keybase.getSelector().getXpath());
        schemaIdentityConstraintImpl.setParseContext(keybase, str, z);
        schemaIdentityConstraintImpl.setAnnotation(SchemaAnnotationImpl.getAnnotation(stscState.getContainer(str), keybase));
        schemaIdentityConstraintImpl.setUserData(getUserData(keybase));
        HashMap hashMap = new HashMap();
        XmlCursor newCursor = keybase.newCursor();
        try {
            newCursor.getAllNamespaces(hashMap);
            newCursor.close();
            hashMap.remove("");
            schemaIdentityConstraintImpl.setNSMap(hashMap);
            int length = fieldArray.length;
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                strArr[i] = fieldArray[i].getXpath();
            }
            schemaIdentityConstraintImpl.setFields(strArr);
            try {
                schemaIdentityConstraintImpl.buildPaths();
                stscState.addIdConstraint(schemaIdentityConstraintImpl);
                schemaIdentityConstraintImpl.setFilename(findFilename(keybase));
                return stscState.findIdConstraint(schemaIdentityConstraintImpl.getName(), str, null);
            } catch (XPath.XPathCompileException e) {
                stscState.error(XmlErrorCodes.INVALID_XPATH, new Object[]{e.getMessage()}, keybase);
                return null;
            }
        } finally {
        }
    }

    public static SchemaModelGroupImpl translateModelGroup(NamedGroup namedGroup, String str, boolean z, boolean z2) {
        String name = namedGroup.getName();
        if (name == null) {
            StscState.get().error(XmlErrorCodes.MISSING_NAME, new Object[]{"model group"}, namedGroup);
            return null;
        }
        SchemaContainer container = StscState.get().getContainer(str);
        SchemaModelGroupImpl schemaModelGroupImpl = new SchemaModelGroupImpl(container);
        SchemaAnnotationImpl annotation = SchemaAnnotationImpl.getAnnotation(container, namedGroup);
        FormChoice findElementFormDefault = findElementFormDefault(namedGroup);
        FormChoice findAttributeFormDefault = findAttributeFormDefault(namedGroup);
        schemaModelGroupImpl.init(QNameHelper.forLNS(name, str), str, z, findElementFormDefault == null ? null : findElementFormDefault.getStringValue(), findAttributeFormDefault == null ? null : findAttributeFormDefault.getStringValue(), z2, namedGroup, annotation, getUserData(namedGroup));
        schemaModelGroupImpl.setFilename(findFilename(namedGroup));
        return schemaModelGroupImpl;
    }

    public static int translateUseCode(Attribute.Use use) {
        if (use == null) {
            return 2;
        }
        String stringValue = use.getStringValue();
        if (stringValue.equals("optional")) {
            return 2;
        }
        if (stringValue.equals("required")) {
            return 3;
        }
        return stringValue.equals("prohibited") ? 1 : 2;
    }

    public static boolean uriMatch(String str, String str2) {
        return str == null ? str2 == null || str2.equals("") : str2 == null ? str.equals("") : str.equals(str2);
    }
}
