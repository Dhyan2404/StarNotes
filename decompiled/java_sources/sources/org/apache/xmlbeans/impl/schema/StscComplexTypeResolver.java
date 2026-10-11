package org.apache.xmlbeans.impl.schema;

import com.sunia.HTREnginev2.wwd;
import com.sunia.HTREnginev2.y1n;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.QNameSetBuilder;
import org.apache.xmlbeans.QNameSetSpecification;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaLocalAttribute;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexRestrictionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Group;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleExtensionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleRestrictionType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Wildcard;
import org.apache.xmlbeans.impl.schema.StscComplexTypeResolver;

/* loaded from: classes13.dex */
public class StscComplexTypeResolver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ANY_ATTRIBUTE_CODE = 102;
    private static final int ATTRIBUTE_CODE = 100;
    private static final int ATTRIBUTE_GROUP_CODE = 101;
    private static final int MODEL_GROUP_CODE = 100;
    private static final Map<QName, Integer> attributeCodeMap;
    private static final CodeForNameEntry[] attributeCodes;
    private static final Map<QName, Integer> particleCodeMap;
    private static final CodeForNameEntry[] particleCodes;

    /* loaded from: classes13.dex */
    public static class CodeForNameEntry {
        public int code;
        public QName name;

        public CodeForNameEntry(QName qName, int i) {
            this.name = qName;
            this.code = i;
        }
    }

    /* loaded from: classes13.dex */
    public static class RedefinitionForGroup {
        private final SchemaModelGroupImpl group;
        private boolean seenRedefinition = false;

        public RedefinitionForGroup(SchemaModelGroupImpl schemaModelGroupImpl) {
            this.group = schemaModelGroupImpl;
        }

        public SchemaModelGroupImpl getGroup() {
            return this.group;
        }

        public boolean isSeenRedefinition() {
            return this.seenRedefinition;
        }

        public void setSeenRedefinition(boolean z) {
            this.seenRedefinition = z;
        }
    }

    /* loaded from: classes13.dex */
    public static class WildcardResult {
        boolean hasWildcards;
        QNameSet typedWildcards;

        public WildcardResult(QNameSet qNameSet, boolean z) {
            this.typedWildcards = qNameSet;
            this.hasWildcards = z;
        }
    }

    static {
        CodeForNameEntry[] codeForNameEntryArr = {new CodeForNameEntry(QNameHelper.forLNS("all", "http://www.w3.org/2001/XMLSchema"), 1), new CodeForNameEntry(QNameHelper.forLNS("sequence", "http://www.w3.org/2001/XMLSchema"), 3), new CodeForNameEntry(QNameHelper.forLNS("choice", "http://www.w3.org/2001/XMLSchema"), 2), new CodeForNameEntry(QNameHelper.forLNS("element", "http://www.w3.org/2001/XMLSchema"), 4), new CodeForNameEntry(QNameHelper.forLNS("any", "http://www.w3.org/2001/XMLSchema"), 5), new CodeForNameEntry(QNameHelper.forLNS("group", "http://www.w3.org/2001/XMLSchema"), 100)};
        particleCodes = codeForNameEntryArr;
        particleCodeMap = (Map) Stream.of((Object[]) codeForNameEntryArr).collect(Collectors.toMap(new Function() { // from class: org.apache.xmlbeans.impl.schema.a0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                QName qName;
                qName = ((StscComplexTypeResolver.CodeForNameEntry) obj).name;
                return qName;
            }
        }, new Function() { // from class: org.apache.xmlbeans.impl.schema.b0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$static$5;
                lambda$static$5 = StscComplexTypeResolver.lambda$static$5((StscComplexTypeResolver.CodeForNameEntry) obj);
                return lambda$static$5;
            }
        }));
        CodeForNameEntry[] codeForNameEntryArr2 = {new CodeForNameEntry(QNameHelper.forLNS("attribute", "http://www.w3.org/2001/XMLSchema"), 100), new CodeForNameEntry(QNameHelper.forLNS("attributeGroup", "http://www.w3.org/2001/XMLSchema"), 101), new CodeForNameEntry(QNameHelper.forLNS("anyAttribute", "http://www.w3.org/2001/XMLSchema"), 102)};
        attributeCodes = codeForNameEntryArr2;
        attributeCodeMap = (Map) Stream.of((Object[]) codeForNameEntryArr2).collect(Collectors.toMap(new Function() { // from class: org.apache.xmlbeans.impl.schema.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                QName qName;
                qName = ((StscComplexTypeResolver.CodeForNameEntry) obj).name;
                return qName;
            }
        }, new Function() { // from class: org.apache.xmlbeans.impl.schema.d0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer lambda$static$7;
                lambda$static$7 = StscComplexTypeResolver.lambda$static$7((StscComplexTypeResolver.CodeForNameEntry) obj);
                return lambda$static$7;
            }
        }));
    }

    public static void addMinusPointlessParticles(List<SchemaParticle> list, SchemaParticle schemaParticle, int i) {
        if (schemaParticle == null) {
            return;
        }
        int particleType = schemaParticle.getParticleType();
        if (particleType != 2) {
            if (particleType == 3 && i == 3 && schemaParticle.isSingleton()) {
                list.addAll(Arrays.asList(schemaParticle.getParticleChildren()));
                return;
            }
        } else if (i == 2 && schemaParticle.isSingleton()) {
            list.addAll(Arrays.asList(schemaParticle.getParticleChildren()));
            return;
        }
        list.add(schemaParticle);
    }

    private static boolean afterMapSubsumedByStartMap(Map<SchemaParticle, QNameSet> map, Map<SchemaParticle, QNameSet> map2) {
        if (map2.size() > map.size()) {
            return false;
        }
        if (map2.isEmpty()) {
            return true;
        }
        for (SchemaParticle schemaParticle : map.keySet()) {
            if (schemaParticle.getParticleType() == 5 && map2.containsKey(schemaParticle) && !map.get(schemaParticle).containsAll(map2.get(schemaParticle))) {
                return false;
            }
            map2.remove(schemaParticle);
            if (map2.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static Map<QName, SchemaProperty> buildAttributePropertyModelByQName(SchemaAttributeModel schemaAttributeModel, final SchemaType schemaType) {
        return (Map) Stream.of((Object[]) schemaAttributeModel.getAttributes()).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.g2n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SchemaLocalAttribute) obj).getName();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.h2n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SchemaProperty lambda$buildAttributePropertyModelByQName$3;
                lambda$buildAttributePropertyModelByQName$3 = StscComplexTypeResolver.lambda$buildAttributePropertyModelByQName$3(SchemaType.this, (SchemaLocalAttribute) obj);
                return lambda$buildAttributePropertyModelByQName$3;
            }
        }, throwingMerger(), new wwd()));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<javax.xml.namespace.QName, org.apache.xmlbeans.SchemaProperty> buildContentPropertyModelByQName(org.apache.xmlbeans.SchemaParticle r10, org.apache.xmlbeans.SchemaType r11) {
        /*
            if (r10 != 0) goto L7
            java.util.Map r10 = java.util.Collections.emptyMap()
            return r10
        L7:
            int r0 = r10.getParticleType()
            r1 = 0
            r2 = 1
            r3 = 0
            if (r0 == r2) goto L32
            r4 = 2
            if (r0 == r4) goto L2f
            r4 = 3
            if (r0 == r4) goto L32
            r2 = 4
            if (r0 == r2) goto L27
            r2 = 5
            if (r0 != r2) goto L21
            java.util.Map r0 = java.util.Collections.emptyMap()
            goto L30
        L21:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            r10.<init>()
            throw r10
        L27:
            r0 = r10
            org.apache.xmlbeans.SchemaLocalElement r0 = (org.apache.xmlbeans.SchemaLocalElement) r0
            java.util.Map r0 = buildElementPropertyModel(r0, r11)
            goto L30
        L2f:
            r0 = r1
        L30:
            r2 = r3
            goto L33
        L32:
            r0 = r1
        L33:
            if (r0 != 0) goto Lcf
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            org.apache.xmlbeans.SchemaParticle[] r4 = r10.getParticleChildren()
            int r5 = r4.length
        L3f:
            if (r3 >= r5) goto L80
            r6 = r4[r3]
            java.util.Map r6 = buildContentPropertyModelByQName(r6, r11)
            java.util.Collection r6 = r6.values()
            java.util.Iterator r6 = r6.iterator()
        L4f:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L7d
            java.lang.Object r7 = r6.next()
            org.apache.xmlbeans.SchemaProperty r7 = (org.apache.xmlbeans.SchemaProperty) r7
            javax.xml.namespace.QName r8 = r7.getName()
            java.lang.Object r8 = r0.get(r8)
            org.apache.xmlbeans.impl.schema.SchemaPropertyImpl r8 = (org.apache.xmlbeans.impl.schema.SchemaPropertyImpl) r8
            if (r8 != 0) goto L79
            if (r2 != 0) goto L71
            r8 = r7
            org.apache.xmlbeans.impl.schema.SchemaPropertyImpl r8 = (org.apache.xmlbeans.impl.schema.SchemaPropertyImpl) r8
            java.math.BigInteger r9 = java.math.BigInteger.ZERO
            r8.setMinOccurs(r9)
        L71:
            javax.xml.namespace.QName r8 = r7.getName()
            r0.put(r8, r7)
            goto L4f
        L79:
            mergeProperties(r8, r7, r2)
            goto L4f
        L7d:
            int r3 = r3 + 1
            goto L3f
        L80:
            java.math.BigInteger r11 = r10.getMinOccurs()
            java.math.BigInteger r10 = r10.getMaxOccurs()
            java.util.Collection r2 = r0.values()
            java.util.Iterator r2 = r2.iterator()
        L90:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Lcf
            java.lang.Object r3 = r2.next()
            org.apache.xmlbeans.SchemaProperty r3 = (org.apache.xmlbeans.SchemaProperty) r3
            java.math.BigInteger r4 = r3.getMinOccurs()
            java.math.BigInteger r5 = r3.getMaxOccurs()
            java.math.BigInteger r4 = r4.multiply(r11)
            if (r10 == 0) goto Lb4
            java.math.BigInteger r6 = java.math.BigInteger.ZERO
            boolean r7 = r10.equals(r6)
            if (r7 == 0) goto Lb4
            r5 = r6
            goto Lc6
        Lb4:
            if (r5 == 0) goto Lc6
            java.math.BigInteger r6 = java.math.BigInteger.ZERO
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto Lc6
            if (r10 != 0) goto Lc2
            r5 = r1
            goto Lc6
        Lc2:
            java.math.BigInteger r5 = r5.multiply(r10)
        Lc6:
            org.apache.xmlbeans.impl.schema.SchemaPropertyImpl r3 = (org.apache.xmlbeans.impl.schema.SchemaPropertyImpl) r3
            r3.setMinOccurs(r4)
            r3.setMaxOccurs(r5)
            goto L90
        Lcf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.buildContentPropertyModelByQName(org.apache.xmlbeans.SchemaParticle, org.apache.xmlbeans.SchemaType):java.util.Map");
    }

    public static Map<QName, SchemaProperty> buildElementPropertyModel(SchemaLocalElement schemaLocalElement, SchemaType schemaType) {
        SchemaProperty buildUseProperty = buildUseProperty(schemaLocalElement, schemaType);
        return Collections.singletonMap(buildUseProperty.getName(), buildUseProperty);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void buildStateMachine(org.apache.xmlbeans.SchemaParticle r11) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.buildStateMachine(org.apache.xmlbeans.SchemaParticle):void");
    }

    public static SchemaProperty buildUseProperty(SchemaField schemaField, SchemaType schemaType) {
        SchemaPropertyImpl schemaPropertyImpl = new SchemaPropertyImpl();
        schemaPropertyImpl.setName(schemaField.getName());
        schemaPropertyImpl.setContainerTypeRef(schemaType.getRef());
        schemaPropertyImpl.setTypeRef(schemaField.getType().getRef());
        schemaPropertyImpl.setAttribute(schemaField.isAttribute());
        schemaPropertyImpl.setDefault(schemaField.isDefault() ? 2 : 0);
        schemaPropertyImpl.setFixed(schemaField.isFixed() ? 2 : 0);
        schemaPropertyImpl.setNillable(schemaField.isNillable() ? 2 : 0);
        schemaPropertyImpl.setDefaultText(schemaField.getDefaultText());
        schemaPropertyImpl.setMinOccurs(schemaField.getMinOccurs());
        schemaPropertyImpl.setMaxOccurs(schemaField.getMaxOccurs());
        if (schemaField instanceof SchemaParticle) {
            schemaPropertyImpl.setDocumentation(((SchemaParticle) schemaField).getDocumentation());
        }
        if (schemaField instanceof SchemaLocalElementImpl) {
            schemaPropertyImpl.setAcceptedNames(((SchemaLocalElementImpl) schemaField).acceptedStartNames());
        }
        return schemaPropertyImpl;
    }

    public static SchemaParticle[] ensureStateMachine(SchemaParticle[] schemaParticleArr) {
        for (SchemaParticle schemaParticle : schemaParticleArr) {
            buildStateMachine(schemaParticle);
        }
        return schemaParticleArr;
    }

    public static SchemaParticle extendContentModel(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, XmlObject xmlObject) {
        if (schemaParticle2 == null) {
            return schemaParticle;
        }
        if (schemaParticle == null) {
            return schemaParticle2;
        }
        SchemaParticleImpl schemaParticleImpl = new SchemaParticleImpl();
        schemaParticleImpl.setParticleType(3);
        ArrayList arrayList = new ArrayList();
        addMinusPointlessParticles(arrayList, schemaParticle, 3);
        addMinusPointlessParticles(arrayList, schemaParticle2, 3);
        BigInteger bigInteger = BigInteger.ONE;
        schemaParticleImpl.setMinOccurs(bigInteger);
        schemaParticleImpl.setMaxOccurs(bigInteger);
        schemaParticleImpl.setParticleChildren((SchemaParticle[]) arrayList.toArray(new SchemaParticle[0]));
        return filterPointlessParticlesAndVerifyAllParticles(schemaParticleImpl, xmlObject);
    }

    public static Map<QName, SchemaType> extractElementModel(SchemaType schemaType) {
        return schemaType == null ? new HashMap() : (Map) Stream.of((Object[]) schemaType.getProperties()).filter(new Predicate() { // from class: com.sunia.HTREnginev2.m2n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$extractElementModel$1;
                lambda$extractElementModel$1 = StscComplexTypeResolver.lambda$extractElementModel$1((SchemaProperty) obj);
                return lambda$extractElementModel$1;
            }
        }).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.n2n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SchemaProperty) obj).getName();
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.t1n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SchemaProperty) obj).getType();
            }
        }));
    }

    public static BigInteger extractMaxOccurs(AllNNI allNNI) {
        if (allNNI == null) {
            return BigInteger.ONE;
        }
        if (allNNI.instanceType().getPrimitiveType().getBuiltinTypeCode() == 11) {
            return ((XmlInteger) allNNI).getBigIntegerValue();
        }
        return null;
    }

    public static BigInteger extractMinOccurs(XmlNonNegativeInteger xmlNonNegativeInteger) {
        BigInteger bigIntegerValue;
        return (xmlNonNegativeInteger == null || (bigIntegerValue = xmlNonNegativeInteger.getBigIntegerValue()) == null) ? BigInteger.ONE : bigIntegerValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.xmlbeans.SchemaParticle filterPointlessParticlesAndVerifyAllParticles(org.apache.xmlbeans.SchemaParticle r7, org.apache.xmlbeans.XmlObject r8) {
        /*
            java.math.BigInteger r0 = r7.getMaxOccurs()
            r1 = 0
            if (r0 == 0) goto L12
            java.math.BigInteger r0 = r7.getMaxOccurs()
            int r0 = r0.signum()
            if (r0 != 0) goto L12
            return r1
        L12:
            int r0 = r7.getParticleType()
            r2 = 4
            r3 = 0
            r4 = 1
            if (r0 == r4) goto L53
            r5 = 2
            if (r0 == r5) goto L2e
            r5 = 3
            if (r0 == r5) goto L53
            if (r0 == r2) goto L2d
            r8 = 5
            if (r0 != r8) goto L27
            goto L2d
        L27:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>()
            throw r7
        L2d:
            return r7
        L2e:
            org.apache.xmlbeans.SchemaParticle[] r0 = r7.getParticleChildren()
            int r0 = r0.length
            if (r0 != 0) goto L42
            java.math.BigInteger r0 = r7.getMinOccurs()
            java.math.BigInteger r5 = java.math.BigInteger.ZERO
            int r0 = r0.compareTo(r5)
            if (r0 != 0) goto L42
            return r1
        L42:
            boolean r0 = r7.isSingleton()
            if (r0 == 0) goto L6c
            int r0 = r7.countOfParticleChild()
            if (r0 != r4) goto L6c
            org.apache.xmlbeans.SchemaParticle r7 = r7.getParticleChild(r3)
            return r7
        L53:
            org.apache.xmlbeans.SchemaParticle[] r0 = r7.getParticleChildren()
            int r0 = r0.length
            if (r0 != 0) goto L5b
            return r1
        L5b:
            boolean r0 = r7.isSingleton()
            if (r0 == 0) goto L6c
            int r0 = r7.countOfParticleChild()
            if (r0 != r4) goto L6c
            org.apache.xmlbeans.SchemaParticle r7 = r7.getParticleChild(r3)
            return r7
        L6c:
            int r0 = r7.getParticleType()
            if (r0 != r4) goto L74
            r0 = r4
            goto L75
        L74:
            r0 = r3
        L75:
            if (r0 == 0) goto L92
            java.math.BigInteger r5 = r7.getMaxOccurs()
            if (r5 == 0) goto L89
            java.math.BigInteger r5 = r7.getMaxOccurs()
            java.math.BigInteger r6 = java.math.BigInteger.ONE
            int r5 = r5.compareTo(r6)
            if (r5 <= 0) goto L92
        L89:
            org.apache.xmlbeans.impl.schema.StscState r5 = org.apache.xmlbeans.impl.schema.StscState.get()
            java.lang.String r6 = "cos-all-limited.1.2a"
            r5.error(r6, r1, r8)
        L92:
            int r5 = r7.countOfParticleChild()
            if (r3 >= r5) goto Ld2
            org.apache.xmlbeans.SchemaParticle r5 = r7.getParticleChild(r3)
            int r6 = r5.getParticleType()
            if (r6 != r4) goto Lac
            org.apache.xmlbeans.impl.schema.StscState r5 = org.apache.xmlbeans.impl.schema.StscState.get()
            java.lang.String r6 = "cos-all-limited.1.2b"
            r5.error(r6, r1, r8)
            goto Lcf
        Lac:
            if (r0 == 0) goto Lcf
            int r6 = r5.getParticleType()
            if (r6 != r2) goto Lc6
            java.math.BigInteger r6 = r5.getMaxOccurs()
            if (r6 == 0) goto Lc6
            java.math.BigInteger r5 = r5.getMaxOccurs()
            java.math.BigInteger r6 = java.math.BigInteger.ONE
            int r5 = r5.compareTo(r6)
            if (r5 <= 0) goto Lcf
        Lc6:
            org.apache.xmlbeans.impl.schema.StscState r5 = org.apache.xmlbeans.impl.schema.StscState.get()
            java.lang.String r6 = "cos-all-limited.2"
            r5.error(r6, r1, r8)
        Lcf:
            int r3 = r3 + 1
            goto L92
        Ld2:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.filterPointlessParticlesAndVerifyAllParticles(org.apache.xmlbeans.SchemaParticle, org.apache.xmlbeans.XmlObject):org.apache.xmlbeans.SchemaParticle");
    }

    public static Group getContentModel(final ComplexType complexType) {
        complexType.getClass();
        return getContentModel((Supplier<? extends Group>[]) new Supplier[]{new Supplier() { // from class: com.sunia.HTREnginev2.u1n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexType.this.getAll();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.v1n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexType.this.getSequence();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.w1n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexType.this.getChoice();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.x1n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexType.this.getGroup();
            }
        }});
    }

    public static SchemaDocument.Schema getSchema(XmlObject xmlObject) {
        XmlObject object;
        XmlCursor newCursor = xmlObject.newCursor();
        do {
            try {
                if (!newCursor.toParent()) {
                    newCursor.close();
                    return null;
                }
                object = newCursor.getObject();
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
        } while (!object.schemaType().equals(SchemaDocument.Schema.type));
        SchemaDocument.Schema schema = (SchemaDocument.Schema) object;
        newCursor.close();
        return schema;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SchemaProperty lambda$buildAttributePropertyModelByQName$3(SchemaType schemaType, SchemaLocalAttribute schemaLocalAttribute) {
        return buildUseProperty(schemaLocalAttribute, schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$extractElementModel$1(SchemaProperty schemaProperty) {
        return !schemaProperty.isAttribute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SchemaType.Ref[] lambda$makeRefArray$0(int i) {
        return new SchemaType.Ref[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$static$5(CodeForNameEntry codeForNameEntry) {
        return Integer.valueOf(codeForNameEntry.code);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$static$7(CodeForNameEntry codeForNameEntry) {
        return Integer.valueOf(codeForNameEntry.code);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$throwingMerger$2(Object obj, Object obj2) {
        throw new IllegalStateException("Duplicate key " + obj.toString());
    }

    private static SchemaType.Ref[] makeRefArray(Collection<SchemaType> collection) {
        return (SchemaType.Ref[]) collection.stream().map(new y1n()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.z1n
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                SchemaType.Ref[] lambda$makeRefArray$0;
                lambda$makeRefArray$0 = StscComplexTypeResolver.lambda$makeRefArray$0(i);
                return lambda$makeRefArray$0;
            }
        });
    }

    public static void mergeProperties(SchemaPropertyImpl schemaPropertyImpl, SchemaProperty schemaProperty, boolean z) {
        BigInteger min;
        BigInteger max;
        BigInteger minOccurs = schemaPropertyImpl.getMinOccurs();
        BigInteger maxOccurs = schemaPropertyImpl.getMaxOccurs();
        if (z) {
            min = minOccurs.add(schemaProperty.getMinOccurs());
            if (maxOccurs != null) {
                if (schemaProperty.getMaxOccurs() != null) {
                    max = maxOccurs.add(schemaProperty.getMaxOccurs());
                    maxOccurs = max;
                }
                maxOccurs = null;
            }
        } else {
            min = minOccurs.min(schemaProperty.getMinOccurs());
            if (maxOccurs != null) {
                if (schemaProperty.getMaxOccurs() != null) {
                    max = maxOccurs.max(schemaProperty.getMaxOccurs());
                    maxOccurs = max;
                }
                maxOccurs = null;
            }
        }
        schemaPropertyImpl.setMinOccurs(min);
        schemaPropertyImpl.setMaxOccurs(maxOccurs);
        if (schemaProperty.hasNillable() != schemaPropertyImpl.hasNillable()) {
            schemaPropertyImpl.setNillable(1);
        }
        if (schemaProperty.hasDefault() != schemaPropertyImpl.hasDefault()) {
            schemaPropertyImpl.setDefault(1);
        }
        if (schemaProperty.hasFixed() != schemaPropertyImpl.hasFixed()) {
            schemaPropertyImpl.setFixed(1);
        }
        if (schemaPropertyImpl.getDefaultText() != null) {
            if (schemaProperty.getDefaultText() == null || !schemaPropertyImpl.getDefaultText().equals(schemaProperty.getDefaultText())) {
                schemaPropertyImpl.setDefaultText(null);
            }
        }
    }

    private static void particlesMatchingAfter(SchemaParticle schemaParticle, QNameSetSpecification qNameSetSpecification, Map<SchemaParticle, QNameSet> map, QNameSetBuilder qNameSetBuilder, boolean z) {
        int particleType = schemaParticle.getParticleType();
        boolean z2 = true;
        if (particleType == 1 || particleType == 2) {
            for (SchemaParticle schemaParticle2 : schemaParticle.getParticleChildren()) {
                particlesMatchingAfter(schemaParticle2, qNameSetSpecification, map, qNameSetBuilder, false);
            }
        } else if (particleType == 3) {
            SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
            if (particleChildren.length != 0) {
                if (particleChildren[particleChildren.length - 1].isSkippable()) {
                    QNameSetBuilder qNameSetBuilder2 = new QNameSetBuilder(qNameSetSpecification);
                    QNameSetBuilder qNameSetBuilder3 = new QNameSetBuilder();
                    for (int length = particleChildren.length - 1; length >= 0; length--) {
                        particlesMatchingAfter(particleChildren[length], qNameSetBuilder2, map, qNameSetBuilder3, false);
                        qNameSetBuilder.addAll(qNameSetBuilder3);
                        if (!particleChildren[length].isSkippable()) {
                            break;
                        }
                        qNameSetBuilder2.removeAll(qNameSetBuilder3);
                        if (qNameSetBuilder2.isEmpty()) {
                            break;
                        }
                        qNameSetBuilder3.clear();
                    }
                } else {
                    particlesMatchingAfter(particleChildren[0], qNameSetSpecification, map, qNameSetBuilder, false);
                }
            }
        }
        if (z) {
            return;
        }
        BigInteger minOccurs = schemaParticle.getMinOccurs();
        BigInteger maxOccurs = schemaParticle.getMaxOccurs();
        if (maxOccurs != null && minOccurs.compareTo(maxOccurs) >= 0) {
            z2 = false;
        }
        if (z2) {
            particlesMatchingStart(schemaParticle, qNameSetSpecification, map, qNameSetBuilder);
        }
    }

    private static void particlesMatchingStart(SchemaParticle schemaParticle, QNameSetSpecification qNameSetSpecification, Map<SchemaParticle, QNameSet> map, QNameSetBuilder qNameSetBuilder) {
        int particleType = schemaParticle.getParticleType();
        int i = 0;
        if (particleType == 1 || particleType == 2) {
            SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
            int length = particleChildren.length;
            while (i < length) {
                particlesMatchingStart(particleChildren[i], qNameSetSpecification, map, qNameSetBuilder);
                i++;
            }
            return;
        }
        if (particleType != 3) {
            if (particleType == 4) {
                if (qNameSetSpecification.contains(schemaParticle.getName())) {
                    map.put(schemaParticle, null);
                    qNameSetBuilder.add(schemaParticle.getName());
                    return;
                }
                return;
            }
            if (particleType == 5 && !qNameSetSpecification.isDisjoint(schemaParticle.getWildcardSet())) {
                map.put(schemaParticle, schemaParticle.getWildcardSet().intersect(qNameSetSpecification));
                qNameSetBuilder.addAll(schemaParticle.getWildcardSet());
                return;
            }
            return;
        }
        SchemaParticle[] particleChildren2 = schemaParticle.getParticleChildren();
        if (particleChildren2.length == 0) {
            return;
        }
        if (!particleChildren2[0].isSkippable()) {
            particlesMatchingStart(particleChildren2[0], qNameSetSpecification, map, qNameSetBuilder);
            return;
        }
        QNameSetBuilder qNameSetBuilder2 = new QNameSetBuilder(qNameSetSpecification);
        QNameSetBuilder qNameSetBuilder3 = new QNameSetBuilder();
        int length2 = particleChildren2.length;
        while (i < length2) {
            SchemaParticle schemaParticle2 = particleChildren2[i];
            particlesMatchingStart(schemaParticle2, qNameSetBuilder2, map, qNameSetBuilder3);
            qNameSetBuilder.addAll(qNameSetBuilder3);
            if (!schemaParticle2.isSkippable()) {
                return;
            }
            qNameSetBuilder2.removeAll(qNameSetBuilder3);
            if (qNameSetBuilder2.isEmpty()) {
                return;
            }
            qNameSetBuilder3.clear();
            i++;
        }
    }

    public static void resolveBasicComplexType(SchemaTypeImpl schemaTypeImpl) {
        ArrayList arrayList = new ArrayList();
        ComplexType complexType = (ComplexType) schemaTypeImpl.getParseObject();
        String targetNamespace = schemaTypeImpl.getTargetNamespace();
        boolean z = schemaTypeImpl.getChameleonNamespace() != null;
        Group contentModel = getContentModel(complexType);
        if (schemaTypeImpl.isRedefinition()) {
            StscState.get().error(XmlErrorCodes.SCHEMA_REDEFINE$EXTEND_OR_RESTRICT, new Object[]{"<complexType>"}, complexType);
        }
        SchemaParticle translateContentModel = translateContentModel(schemaTypeImpl, contentModel, targetNamespace, z, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), translateParticleCode(contentModel), arrayList, new LinkedHashMap(), false, null);
        boolean z2 = translateContentModel != null && translateContentModel.getParticleType() == 1;
        SchemaAttributeModelImpl schemaAttributeModelImpl = new SchemaAttributeModelImpl();
        translateAttributeModel(complexType, targetNamespace, z, schemaTypeImpl.getAttFormDefault(), arrayList, schemaTypeImpl, null, schemaAttributeModelImpl, null, true, null);
        WildcardResult summarizeEltWildcards = summarizeEltWildcards(translateContentModel);
        WildcardResult summarizeAttrWildcards = summarizeAttrWildcards(schemaAttributeModelImpl);
        if (translateContentModel != null) {
            buildStateMachine(translateContentModel);
            if (!StscState.get().noUpa() && !((SchemaParticleImpl) translateContentModel).isDeterministic()) {
                StscState.get().error(XmlErrorCodes.UNIQUE_PARTICLE_ATTRIBUTION, (Object[]) null, contentModel);
            }
        }
        Map<QName, SchemaProperty> buildContentPropertyModelByQName = buildContentPropertyModelByQName(translateContentModel, schemaTypeImpl);
        Map<QName, SchemaProperty> buildAttributePropertyModelByQName = buildAttributePropertyModelByQName(schemaAttributeModelImpl, schemaTypeImpl);
        int i = complexType.getMixed() ? 4 : translateContentModel == null ? 1 : 3;
        SchemaTypeImpl schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_TYPE;
        schemaTypeImpl.setBaseTypeRef(schemaTypeImpl2.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(2);
        schemaTypeImpl.setComplexTypeVariety(i);
        schemaTypeImpl.setContentModel(translateContentModel, schemaAttributeModelImpl, buildContentPropertyModelByQName, buildAttributePropertyModelByQName, z2);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
        schemaTypeImpl.setWildcardSummary(summarizeEltWildcards.typedWildcards, summarizeEltWildcards.hasWildcards, summarizeAttrWildcards.typedWildcards, summarizeAttrWildcards.hasWildcards);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0199  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveCcExtension(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r25, org.apache.xmlbeans.impl.p119xb.xsdschema.ExtensionType r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.resolveCcExtension(org.apache.xmlbeans.impl.schema.SchemaTypeImpl, org.apache.xmlbeans.impl.xb.xsdschema.ExtensionType, boolean):void");
    }

    public static void resolveCcRestriction(SchemaTypeImpl schemaTypeImpl, ComplexRestrictionType complexRestrictionType, boolean z) {
        SchemaTypeImpl findGlobalType;
        StscState stscState = StscState.get();
        String targetNamespace = schemaTypeImpl.getTargetNamespace();
        boolean z2 = schemaTypeImpl.getChameleonNamespace() != null;
        if (complexRestrictionType.getBase() == null) {
            stscState.error("A complexContent must define a base type", 28, complexRestrictionType);
            findGlobalType = null;
        } else {
            if (schemaTypeImpl.isRedefinition()) {
                findGlobalType = stscState.findRedefinedGlobalType(complexRestrictionType.getBase(), schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl);
                if (findGlobalType != null && !findGlobalType.getName().equals(schemaTypeImpl.getName())) {
                    stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$SAME_TYPE, new Object[]{"<complexType>", QNameHelper.pretty(findGlobalType.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, complexRestrictionType);
                }
            } else {
                findGlobalType = stscState.findGlobalType(complexRestrictionType.getBase(), schemaTypeImpl.getChameleonNamespace(), targetNamespace);
            }
            if (findGlobalType == null) {
                stscState.notFoundError(complexRestrictionType.getBase(), 0, complexRestrictionType.xgetBase(), true);
            }
        }
        if (findGlobalType == null) {
            findGlobalType = BuiltinSchemaTypeSystem.ST_ANY_TYPE;
        }
        if (findGlobalType != null && findGlobalType.finalRestriction()) {
            stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$FINAL, new Object[]{QNameHelper.pretty(findGlobalType.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, complexRestrictionType.xgetBase());
        }
        SchemaTypeImpl schemaTypeImpl2 = (findGlobalType == null || StscResolver.resolveType(findGlobalType)) ? findGlobalType : null;
        ArrayList arrayList = new ArrayList();
        Group contentModel = getContentModel(complexRestrictionType);
        SchemaParticle translateContentModel = translateContentModel(schemaTypeImpl, contentModel, targetNamespace, z2, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), translateParticleCode(contentModel), arrayList, new LinkedHashMap(), false, null);
        boolean z3 = translateContentModel != null && translateContentModel.getParticleType() == 1;
        SchemaAttributeModelImpl schemaAttributeModelImpl = schemaTypeImpl2 == null ? new SchemaAttributeModelImpl() : new SchemaAttributeModelImpl(schemaTypeImpl2.getAttributeModel());
        translateAttributeModel(complexRestrictionType, targetNamespace, z2, schemaTypeImpl.getAttFormDefault(), arrayList, schemaTypeImpl, null, schemaAttributeModelImpl, schemaTypeImpl2, false, null);
        WildcardResult summarizeEltWildcards = summarizeEltWildcards(translateContentModel);
        WildcardResult summarizeAttrWildcards = summarizeAttrWildcards(schemaAttributeModelImpl);
        if (translateContentModel != null) {
            buildStateMachine(translateContentModel);
            if (!StscState.get().noUpa() && !((SchemaParticleImpl) translateContentModel).isDeterministic()) {
                StscState.get().error(XmlErrorCodes.UNIQUE_PARTICLE_ATTRIBUTION, (Object[]) null, contentModel);
            }
        }
        Map<QName, SchemaProperty> buildContentPropertyModelByQName = buildContentPropertyModelByQName(translateContentModel, schemaTypeImpl);
        Map<QName, SchemaProperty> buildAttributePropertyModelByQName = buildAttributePropertyModelByQName(schemaAttributeModelImpl, schemaTypeImpl);
        int i = z ? 4 : translateContentModel == null ? 1 : 3;
        if (schemaTypeImpl2 != null) {
            schemaTypeImpl.setBaseTypeRef(schemaTypeImpl2.getRef());
            schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        }
        schemaTypeImpl.setDerivationType(1);
        schemaTypeImpl.setComplexTypeVariety(i);
        schemaTypeImpl.setContentModel(translateContentModel, schemaAttributeModelImpl, buildContentPropertyModelByQName, buildAttributePropertyModelByQName, z3);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
        schemaTypeImpl.setWildcardSummary(summarizeEltWildcards.typedWildcards, summarizeEltWildcards.hasWildcards, summarizeAttrWildcards.typedWildcards, summarizeAttrWildcards.hasWildcards);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d0, code lost:
    
        if (r1 != null) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveComplexType(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r16) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.resolveComplexType(org.apache.xmlbeans.impl.schema.SchemaTypeImpl):void");
    }

    public static void resolveErrorType(SchemaTypeImpl schemaTypeImpl) {
        throw new RuntimeException("This type of error recovery not yet implemented.");
    }

    public static void resolveScExtension(SchemaTypeImpl schemaTypeImpl, SimpleExtensionType simpleExtensionType) {
        SchemaTypeImpl findGlobalType;
        SchemaTypeImpl schemaTypeImpl2;
        StscState stscState = StscState.get();
        String targetNamespace = schemaTypeImpl.getTargetNamespace();
        boolean z = schemaTypeImpl.getChameleonNamespace() != null;
        if (simpleExtensionType.getBase() == null) {
            stscState.error("A simpleContent extension must define a base type", 28, simpleExtensionType);
            schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        } else {
            if (schemaTypeImpl.isRedefinition()) {
                findGlobalType = stscState.findRedefinedGlobalType(simpleExtensionType.getBase(), schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl);
                if (findGlobalType != null && !findGlobalType.getName().equals(schemaTypeImpl.getName())) {
                    stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$SAME_TYPE, new Object[]{"<simpleType>", QNameHelper.pretty(findGlobalType.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, simpleExtensionType);
                }
            } else {
                findGlobalType = stscState.findGlobalType(simpleExtensionType.getBase(), schemaTypeImpl.getChameleonNamespace(), targetNamespace);
            }
            if (findGlobalType == null) {
                stscState.notFoundError(simpleExtensionType.getBase(), 0, simpleExtensionType.xgetBase(), true);
                schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
            } else {
                schemaTypeImpl2 = findGlobalType;
            }
        }
        StscResolver.resolveType(schemaTypeImpl2);
        if (!schemaTypeImpl2.isSimpleType() && schemaTypeImpl2.getContentType() != 2) {
            stscState.error(XmlErrorCodes.SCHEMA_COMPLEX_TYPE$SIMPLE_CONTENT, new Object[]{QNameHelper.pretty(schemaTypeImpl2.getName())}, simpleExtensionType);
            schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        if (schemaTypeImpl2 != null && schemaTypeImpl2.finalExtension()) {
            stscState.error(XmlErrorCodes.COMPLEX_TYPE_EXTENSION$FINAL, new Object[]{QNameHelper.pretty(schemaTypeImpl2.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, simpleExtensionType.xgetBase());
        }
        resolveScExtensionPart2(schemaTypeImpl, schemaTypeImpl2, simpleExtensionType, targetNamespace, z);
    }

    public static void resolveScExtensionPart2(SchemaTypeImpl schemaTypeImpl, SchemaType schemaType, ExtensionType extensionType, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        SchemaAttributeModelImpl schemaAttributeModelImpl = new SchemaAttributeModelImpl(schemaType.getAttributeModel());
        translateAttributeModel(extensionType, str, z, schemaTypeImpl.getAttFormDefault(), arrayList, schemaTypeImpl, null, schemaAttributeModelImpl, schemaType, true, null);
        WildcardResult summarizeAttrWildcards = summarizeAttrWildcards(schemaAttributeModelImpl);
        Map<QName, SchemaProperty> buildAttributePropertyModelByQName = buildAttributePropertyModelByQName(schemaAttributeModelImpl, schemaTypeImpl);
        schemaTypeImpl.setBaseTypeRef(schemaType.getRef());
        SchemaTypeImpl schemaTypeImpl2 = (SchemaTypeImpl) schemaType;
        schemaTypeImpl.setBaseDepth(schemaTypeImpl2.getBaseDepth() + 1);
        schemaTypeImpl.setContentBasedOnTypeRef(schemaType.getRef());
        schemaTypeImpl.setDerivationType(2);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
        schemaTypeImpl.setWildcardSummary(QNameSet.EMPTY, false, summarizeAttrWildcards.typedWildcards, summarizeAttrWildcards.hasWildcards);
        schemaTypeImpl.setComplexTypeVariety(2);
        schemaTypeImpl.setContentModel(null, schemaAttributeModelImpl, null, buildAttributePropertyModelByQName, false);
        schemaTypeImpl.setSimpleTypeVariety(schemaType.getSimpleVariety());
        schemaTypeImpl.setPrimitiveTypeRef(schemaType.getPrimitiveType() == null ? null : schemaType.getPrimitiveType().getRef());
        int simpleVariety = schemaTypeImpl.getSimpleVariety();
        if (simpleVariety == 2) {
            schemaTypeImpl.setUnionMemberTypeRefs(makeRefArray(Arrays.asList(schemaType.getUnionMemberTypes())));
        } else if (simpleVariety == 3) {
            schemaTypeImpl.setListItemTypeRef(schemaType.getListItemType().getRef());
        }
        StscSimpleTypeResolver.resolveFacets(schemaTypeImpl, null, schemaTypeImpl2);
        StscSimpleTypeResolver.resolveFundamentalFacets(schemaTypeImpl);
    }

    public static void resolveScRestriction(SchemaTypeImpl schemaTypeImpl, SimpleRestrictionType simpleRestrictionType) {
        SchemaTypeImpl findGlobalType;
        SchemaTypeImpl schemaTypeImpl2;
        SchemaType listItemType;
        StscState stscState = StscState.get();
        String targetNamespace = schemaTypeImpl.getTargetNamespace();
        boolean z = schemaTypeImpl.getChameleonNamespace() != null;
        ArrayList arrayList = new ArrayList();
        SchemaTypeImpl translateAnonymousSimpleType = simpleRestrictionType.getSimpleType() != null ? StscTranslator.translateAnonymousSimpleType(simpleRestrictionType.getSimpleType(), targetNamespace, z, schemaTypeImpl.getElemFormDefault(), schemaTypeImpl.getAttFormDefault(), arrayList, schemaTypeImpl) : null;
        if (simpleRestrictionType.getBase() == null) {
            stscState.error("A simpleContent restriction must define a base type", 28, simpleRestrictionType);
            findGlobalType = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        } else if (schemaTypeImpl.isRedefinition()) {
            findGlobalType = stscState.findRedefinedGlobalType(simpleRestrictionType.getBase(), schemaTypeImpl.getChameleonNamespace(), schemaTypeImpl);
            if (findGlobalType != null && !findGlobalType.getName().equals(schemaTypeImpl.getName())) {
                stscState.error(XmlErrorCodes.SCHEMA_REDEFINE$SAME_TYPE, new Object[]{"<simpleType>", QNameHelper.pretty(findGlobalType.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, simpleRestrictionType);
            }
        } else {
            findGlobalType = stscState.findGlobalType(simpleRestrictionType.getBase(), schemaTypeImpl.getChameleonNamespace(), targetNamespace);
        }
        if (findGlobalType == null) {
            stscState.notFoundError(simpleRestrictionType.getBase(), 0, simpleRestrictionType.xgetBase(), true);
            findGlobalType = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        StscResolver.resolveType(findGlobalType);
        if (translateAnonymousSimpleType != null) {
            StscResolver.resolveType(translateAnonymousSimpleType);
            schemaTypeImpl2 = translateAnonymousSimpleType;
        } else {
            schemaTypeImpl2 = findGlobalType;
        }
        if (findGlobalType.isSimpleType()) {
            stscState.recover(XmlErrorCodes.COMPLEX_TYPE_PROPERTIES$SIMPLE_TYPE_EXTENSION, new Object[]{QNameHelper.pretty(findGlobalType.getName())}, simpleRestrictionType);
            findGlobalType = BuiltinSchemaTypeSystem.ST_ANY_SIMPLE;
        }
        SchemaTypeImpl schemaTypeImpl3 = findGlobalType;
        if (schemaTypeImpl3 != null && schemaTypeImpl3.finalRestriction()) {
            stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$FINAL, new Object[]{QNameHelper.pretty(schemaTypeImpl3.getName()), QNameHelper.pretty(schemaTypeImpl.getName())}, simpleRestrictionType.xgetBase());
        }
        SchemaAttributeModelImpl schemaAttributeModelImpl = schemaTypeImpl3 == null ? new SchemaAttributeModelImpl() : new SchemaAttributeModelImpl(schemaTypeImpl3.getAttributeModel());
        SchemaTypeImpl schemaTypeImpl4 = schemaTypeImpl2;
        translateAttributeModel(simpleRestrictionType, targetNamespace, z, schemaTypeImpl.getAttFormDefault(), arrayList, schemaTypeImpl, null, schemaAttributeModelImpl, schemaTypeImpl3, false, null);
        WildcardResult summarizeAttrWildcards = summarizeAttrWildcards(schemaAttributeModelImpl);
        Map<QName, SchemaProperty> buildAttributePropertyModelByQName = buildAttributePropertyModelByQName(schemaAttributeModelImpl, schemaTypeImpl);
        if (schemaTypeImpl3 != null) {
            schemaTypeImpl.setBaseTypeRef(schemaTypeImpl3.getRef());
            schemaTypeImpl.setBaseDepth(schemaTypeImpl3.getBaseDepth() + 1);
        }
        schemaTypeImpl.setContentBasedOnTypeRef(schemaTypeImpl4.getRef());
        schemaTypeImpl.setDerivationType(1);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
        schemaTypeImpl.setWildcardSummary(QNameSet.EMPTY, false, summarizeAttrWildcards.typedWildcards, summarizeAttrWildcards.hasWildcards);
        schemaTypeImpl.setComplexTypeVariety(2);
        schemaTypeImpl.setContentModel(null, schemaAttributeModelImpl, null, buildAttributePropertyModelByQName, false);
        schemaTypeImpl.setSimpleTypeVariety(schemaTypeImpl4.getSimpleVariety());
        schemaTypeImpl.setPrimitiveTypeRef(schemaTypeImpl4.getPrimitiveType() != null ? schemaTypeImpl4.getPrimitiveType().getRef() : null);
        int simpleVariety = schemaTypeImpl.getSimpleVariety();
        if (simpleVariety == 2) {
            schemaTypeImpl.setUnionMemberTypeRefs(makeRefArray(Arrays.asList(schemaTypeImpl4.getUnionMemberTypes())));
        } else if (simpleVariety == 3 && (listItemType = schemaTypeImpl4.getListItemType()) != null) {
            schemaTypeImpl.setListItemTypeRef(listItemType.getRef());
        }
        StscSimpleTypeResolver.resolveFacets(schemaTypeImpl, simpleRestrictionType, schemaTypeImpl4);
        StscSimpleTypeResolver.resolveFundamentalFacets(schemaTypeImpl);
    }

    public static WildcardResult summarizeAttrWildcards(SchemaAttributeModel schemaAttributeModel) {
        return schemaAttributeModel.getWildcardProcess() == 0 ? new WildcardResult(QNameSet.EMPTY, false) : schemaAttributeModel.getWildcardProcess() == 3 ? new WildcardResult(QNameSet.EMPTY, true) : new WildcardResult(schemaAttributeModel.getWildcardSet(), true);
    }

    public static WildcardResult summarizeEltWildcards(SchemaParticle schemaParticle) {
        if (schemaParticle == null) {
            return new WildcardResult(QNameSet.EMPTY, false);
        }
        int particleType = schemaParticle.getParticleType();
        if (particleType != 1 && particleType != 2 && particleType != 3) {
            if (particleType != 5) {
                return new WildcardResult(QNameSet.EMPTY, false);
            }
            return new WildcardResult(schemaParticle.getWildcardProcess() == 3 ? QNameSet.EMPTY : schemaParticle.getWildcardSet(), true);
        }
        QNameSetBuilder qNameSetBuilder = new QNameSetBuilder();
        boolean z = false;
        for (int i = 0; i < schemaParticle.countOfParticleChild(); i++) {
            WildcardResult summarizeEltWildcards = summarizeEltWildcards(schemaParticle.getParticleChild(i));
            qNameSetBuilder.addAll(summarizeEltWildcards.typedWildcards);
            z |= summarizeEltWildcards.hasWildcards;
        }
        return new WildcardResult(qNameSetBuilder.toQNameSet(), z);
    }

    private static <T> BinaryOperator<T> throwingMerger() {
        return new BinaryOperator() { // from class: com.sunia.HTREnginev2.f2n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object lambda$throwingMerger$2;
                lambda$throwingMerger$2 = StscComplexTypeResolver.lambda$throwingMerger$2(obj, obj2);
                return lambda$throwingMerger$2;
            }
        };
    }

    public static int translateAttributeCode(QName qName) {
        return attributeCodeMap.getOrDefault(qName, 0).intValue();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x003b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010e A[Catch: all -> 0x02af, TryCatch #2 {all -> 0x02af, blocks: (B:9:0x0025, B:11:0x0032, B:12:0x003b, B:15:0x0291, B:18:0x0040, B:20:0x0048, B:21:0x0051, B:24:0x005e, B:27:0x0066, B:29:0x006c, B:31:0x0072, B:33:0x007c, B:34:0x0086, B:36:0x0094, B:38:0x009d, B:39:0x00ac, B:40:0x005a, B:41:0x00bb, B:43:0x00c7, B:47:0x00d7, B:49:0x00dd, B:52:0x00ed, B:55:0x010e, B:56:0x0117, B:58:0x011d, B:59:0x0136, B:61:0x013c, B:65:0x014e, B:68:0x015c, B:77:0x0107, B:79:0x0183, B:82:0x01a2, B:84:0x01ad, B:85:0x01ce, B:87:0x01d9, B:90:0x01e5, B:92:0x01f3, B:94:0x0212, B:96:0x0218, B:97:0x0224, B:99:0x022b, B:101:0x0231, B:102:0x024d, B:104:0x0253, B:105:0x025a, B:107:0x0260, B:108:0x026d, B:110:0x0273, B:112:0x0279, B:114:0x027f, B:115:0x0264, B:117:0x026a), top: B:8:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0117 A[Catch: all -> 0x02af, TryCatch #2 {all -> 0x02af, blocks: (B:9:0x0025, B:11:0x0032, B:12:0x003b, B:15:0x0291, B:18:0x0040, B:20:0x0048, B:21:0x0051, B:24:0x005e, B:27:0x0066, B:29:0x006c, B:31:0x0072, B:33:0x007c, B:34:0x0086, B:36:0x0094, B:38:0x009d, B:39:0x00ac, B:40:0x005a, B:41:0x00bb, B:43:0x00c7, B:47:0x00d7, B:49:0x00dd, B:52:0x00ed, B:55:0x010e, B:56:0x0117, B:58:0x011d, B:59:0x0136, B:61:0x013c, B:65:0x014e, B:68:0x015c, B:77:0x0107, B:79:0x0183, B:82:0x01a2, B:84:0x01ad, B:85:0x01ce, B:87:0x01d9, B:90:0x01e5, B:92:0x01f3, B:94:0x0212, B:96:0x0218, B:97:0x0224, B:99:0x022b, B:101:0x0231, B:102:0x024d, B:104:0x0253, B:105:0x025a, B:107:0x0260, B:108:0x026d, B:110:0x0273, B:112:0x0279, B:114:0x027f, B:115:0x0264, B:117:0x026a), top: B:8:0x0025 }] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.apache.xmlbeans.impl.schema.StscState] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void translateAttributeModel(org.apache.xmlbeans.XmlObject r21, java.lang.String r22, boolean r23, java.lang.String r24, java.util.List<org.apache.xmlbeans.SchemaType> r25, org.apache.xmlbeans.SchemaType r26, java.util.Set<javax.xml.namespace.QName> r27, org.apache.xmlbeans.impl.schema.SchemaAttributeModelImpl r28, org.apache.xmlbeans.SchemaType r29, boolean r30, org.apache.xmlbeans.impl.schema.SchemaAttributeGroupImpl r31) {
        /*
            Method dump skipped, instructions count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.translateAttributeModel(org.apache.xmlbeans.XmlObject, java.lang.String, boolean, java.lang.String, java.util.List, org.apache.xmlbeans.SchemaType, java.util.Set, org.apache.xmlbeans.impl.schema.SchemaAttributeModelImpl, org.apache.xmlbeans.SchemaType, boolean, org.apache.xmlbeans.impl.schema.SchemaAttributeGroupImpl):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x01a9, code lost:
    
        r0 = r2.getObject();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.xmlbeans.SchemaParticle translateContentModel(org.apache.xmlbeans.SchemaType r22, org.apache.xmlbeans.XmlObject r23, java.lang.String r24, boolean r25, java.lang.String r26, java.lang.String r27, int r28, java.util.List<org.apache.xmlbeans.SchemaType> r29, java.util.Map<javax.xml.namespace.QName, org.apache.xmlbeans.SchemaType> r30, boolean r31, org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.RedefinitionForGroup r32) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscComplexTypeResolver.translateContentModel(org.apache.xmlbeans.SchemaType, org.apache.xmlbeans.XmlObject, java.lang.String, boolean, java.lang.String, java.lang.String, int, java.util.List, java.util.Map, boolean, org.apache.xmlbeans.impl.schema.StscComplexTypeResolver$RedefinitionForGroup):org.apache.xmlbeans.SchemaParticle");
    }

    private static int translateParticleCode(Group group) {
        if (group == null) {
            return 0;
        }
        XmlCursor newCursor = group.newCursor();
        try {
            int translateParticleCode = translateParticleCode(newCursor.getName());
            newCursor.close();
            return translateParticleCode;
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

    public static int translateWildcardProcess(Wildcard.ProcessContents processContents) {
        if (processContents == null) {
            return 1;
        }
        String stringValue = processContents.getStringValue();
        if ("lax".equals(stringValue)) {
            return 2;
        }
        return "skip".equals(stringValue) ? 3 : 1;
    }

    public static Group getContentModel(final ComplexRestrictionType complexRestrictionType) {
        complexRestrictionType.getClass();
        return getContentModel((Supplier<? extends Group>[]) new Supplier[]{new Supplier() { // from class: com.sunia.HTREnginev2.a2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexRestrictionType.this.getAll();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.b2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexRestrictionType.this.getSequence();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.c2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexRestrictionType.this.getChoice();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.e2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ComplexRestrictionType.this.getGroup();
            }
        }});
    }

    public static Group getContentModel(final ExtensionType extensionType) {
        extensionType.getClass();
        return getContentModel((Supplier<? extends Group>[]) new Supplier[]{new Supplier() { // from class: com.sunia.HTREnginev2.i2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtensionType.this.getAll();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.j2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtensionType.this.getSequence();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.k2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtensionType.this.getChoice();
            }
        }, new Supplier() { // from class: com.sunia.HTREnginev2.l2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return ExtensionType.this.getGroup();
            }
        }});
    }

    @SafeVarargs
    private static Group getContentModel(Supplier<? extends Group>... supplierArr) {
        return (Group) Stream.of((Object[]) supplierArr).map(new Function() { // from class: com.sunia.HTREnginev2.s1n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Group) ((Supplier) obj).get();
            }
        }).filter(new Predicate() { // from class: com.sunia.HTREnginev2.d2n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((Group) obj);
            }
        }).findFirst().orElse(null);
    }

    private static int translateParticleCode(QName qName) {
        return particleCodeMap.getOrDefault(qName, 0).intValue();
    }
}
