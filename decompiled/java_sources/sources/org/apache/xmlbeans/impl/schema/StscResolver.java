package org.apache.xmlbeans.impl.schema;

import com.sunia.HTREnginev2.y1n;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Attribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.Element;
import org.apache.xmlbeans.impl.p119xb.xsdschema.KeyrefDocument;
import org.apache.xmlbeans.impl.schema.StscResolver;

/* loaded from: classes13.dex */
public class StscResolver {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SchemaType.Ref[] lambda$makeRefArray$0(int i) {
        return new SchemaType.Ref[i];
    }

    private static SchemaType.Ref[] makeRefArray(Collection<SchemaType> collection) {
        return (SchemaType.Ref[]) collection.stream().map(new y1n()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.o2n
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                SchemaType.Ref[] lambda$makeRefArray$0;
                lambda$makeRefArray$0 = StscResolver.lambda$makeRefArray$0(i);
                return lambda$makeRefArray$0;
            }
        });
    }

    public static void resolveAll() {
        StscState stscState = StscState.get();
        for (SchemaType schemaType : stscState.documentTypes()) {
            resolveSubstitutionGroup((SchemaTypeImpl) schemaType);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(stscState.documentTypes()));
        arrayList.addAll(Arrays.asList(stscState.attributeTypes()));
        arrayList.addAll(Arrays.asList(stscState.redefinedGlobalTypes()));
        arrayList.addAll(Arrays.asList(stscState.globalTypes()));
        for (int i = 0; i < arrayList.size(); i++) {
            SchemaType schemaType2 = (SchemaType) arrayList.get(i);
            resolveType((SchemaTypeImpl) schemaType2);
            arrayList.addAll(Arrays.asList(schemaType2.getAnonymousTypes()));
        }
        resolveIdentityConstraints();
    }

    public static void resolveAttributeType(SchemaTypeImpl schemaTypeImpl) {
        ArrayList arrayList = new ArrayList();
        SchemaGlobalAttributeImpl schemaGlobalAttributeImpl = (SchemaGlobalAttributeImpl) StscTranslator.translateAttribute((Attribute) schemaTypeImpl.getParseObject(), schemaTypeImpl.getTargetNamespace(), null, schemaTypeImpl.isChameleon(), arrayList, schemaTypeImpl, null, false);
        SchemaAttributeModelImpl schemaAttributeModelImpl = new SchemaAttributeModelImpl();
        if (schemaGlobalAttributeImpl != null) {
            StscState.get().addGlobalAttribute(schemaGlobalAttributeImpl);
            SchemaLocalAttributeImpl schemaLocalAttributeImpl = new SchemaLocalAttributeImpl();
            StscTranslator.copyGlobalAttributeToLocalAttribute(schemaGlobalAttributeImpl, schemaLocalAttributeImpl);
            schemaAttributeModelImpl.addAttribute(schemaLocalAttributeImpl);
        }
        schemaTypeImpl.setBaseTypeRef(BuiltinSchemaTypeSystem.ST_ANY_TYPE.getRef());
        schemaTypeImpl.setBaseDepth(schemaTypeImpl.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(1);
        schemaTypeImpl.setComplexTypeVariety(1);
        schemaTypeImpl.setContentModel(null, schemaAttributeModelImpl, Collections.EMPTY_MAP, StscComplexTypeResolver.buildAttributePropertyModelByQName(schemaAttributeModelImpl, schemaTypeImpl), false);
        QNameSet qNameSet = QNameSet.EMPTY;
        schemaTypeImpl.setWildcardSummary(qNameSet, false, qNameSet, false);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
    }

    public static void resolveDocumentType(SchemaTypeImpl schemaTypeImpl) {
        SchemaLocalElementImpl schemaLocalElementImpl;
        SchemaTypeImpl findDocumentType;
        ArrayList arrayList = new ArrayList();
        SchemaGlobalElementImpl schemaGlobalElementImpl = (SchemaGlobalElementImpl) StscTranslator.translateElement((Element) schemaTypeImpl.getParseObject(), schemaTypeImpl.getTargetNamespace(), schemaTypeImpl.isChameleon(), null, null, arrayList, schemaTypeImpl);
        if (schemaGlobalElementImpl != null) {
            StscState.get().addGlobalElement(schemaGlobalElementImpl);
            SchemaLocalElementImpl schemaLocalElementImpl2 = new SchemaLocalElementImpl();
            schemaLocalElementImpl2.setParticleType(4);
            StscTranslator.copyGlobalElementToLocalElement(schemaGlobalElementImpl, schemaLocalElementImpl2);
            BigInteger bigInteger = BigInteger.ONE;
            schemaLocalElementImpl2.setMinOccurs(bigInteger);
            schemaLocalElementImpl2.setMaxOccurs(bigInteger);
            schemaLocalElementImpl2.setTransitionNotes(QNameSet.EMPTY, true);
            schemaLocalElementImpl = schemaLocalElementImpl2;
        } else {
            schemaLocalElementImpl = null;
        }
        Map<QName, SchemaProperty> buildContentPropertyModelByQName = StscComplexTypeResolver.buildContentPropertyModelByQName(schemaLocalElementImpl, schemaTypeImpl);
        if (schemaTypeImpl.getSubstitutionGroup() == null) {
            findDocumentType = BuiltinSchemaTypeSystem.ST_ANY_TYPE;
        } else {
            findDocumentType = StscState.get().findDocumentType(schemaTypeImpl.getSubstitutionGroup(), schemaTypeImpl.isChameleon() ? schemaTypeImpl.getTargetNamespace() : null, null);
        }
        schemaTypeImpl.setBaseTypeRef(findDocumentType.getRef());
        schemaTypeImpl.setBaseDepth(findDocumentType.getBaseDepth() + 1);
        schemaTypeImpl.setDerivationType(1);
        schemaTypeImpl.setComplexTypeVariety(3);
        schemaTypeImpl.setContentModel(schemaLocalElementImpl, new SchemaAttributeModelImpl(), buildContentPropertyModelByQName, Collections.EMPTY_MAP, false);
        QNameSet qNameSet = QNameSet.EMPTY;
        schemaTypeImpl.setWildcardSummary(qNameSet, false, qNameSet, false);
        schemaTypeImpl.setAnonymousTypeRefs(makeRefArray(arrayList));
    }

    public static void resolveIdentityConstraints() {
        StscState stscState = StscState.get();
        for (SchemaIdentityConstraintImpl schemaIdentityConstraintImpl : stscState.idConstraints()) {
            if (!schemaIdentityConstraintImpl.isResolved()) {
                KeyrefDocument.Keyref keyref = (KeyrefDocument.Keyref) schemaIdentityConstraintImpl.getParseObject();
                QName refer = keyref.getRefer();
                SchemaIdentityConstraintImpl findIdConstraint = stscState.findIdConstraint(refer, schemaIdentityConstraintImpl.getChameleonNamespace(), schemaIdentityConstraintImpl.getTargetNamespace());
                if (findIdConstraint == null) {
                    stscState.notFoundError(refer, 5, keyref, true);
                } else {
                    if (findIdConstraint.getConstraintCategory() == 2) {
                        stscState.error(XmlErrorCodes.IDENTITY_CONSTRAINT_PROPERTIES$KEYREF_REFERS_TO_KEYREF, (Object[]) null, schemaIdentityConstraintImpl.getParseObject());
                    }
                    if (findIdConstraint.getFields().length != schemaIdentityConstraintImpl.getFields().length) {
                        stscState.error(XmlErrorCodes.IDENTITY_CONSTRAINT_PROPERTIES$KEY_KEYREF_FIELD_COUNT_EQ, (Object[]) null, schemaIdentityConstraintImpl.getParseObject());
                    }
                    schemaIdentityConstraintImpl.setReferencedKey(findIdConstraint.getRef());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0071 -> B:14:0x0072). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean resolveSubstitutionGroup(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r8) {
        /*
            boolean r0 = r8.isSGResolved()
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            boolean r0 = r8.isSGResolving()
            if (r0 == 0) goto L1f
            org.apache.xmlbeans.impl.schema.StscState r0 = org.apache.xmlbeans.impl.schema.StscState.get()
            r1 = 13
            org.apache.xmlbeans.XmlObject r8 = r8.getParseObject()
            java.lang.String r2 = "Cyclic dependency error"
            r0.error(r2, r1, r8)
            r8 = 0
            return r8
        L1f:
            r8.startResolvingSGs()
            org.apache.xmlbeans.XmlObject r0 = r8.getParseObject()
            org.apache.xmlbeans.impl.xb.xsdschema.TopLevelElement r0 = (org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelElement) r0
            javax.xml.namespace.QName r2 = new javax.xml.namespace.QName
            java.lang.String r3 = r8.getTargetNamespace()
            java.lang.String r4 = r0.getName()
            r2.<init>(r3, r4)
            boolean r3 = r0.isSetSubstitutionGroup()
            r4 = 0
            if (r3 == 0) goto L71
            org.apache.xmlbeans.impl.schema.StscState r3 = org.apache.xmlbeans.impl.schema.StscState.get()
            javax.xml.namespace.QName r5 = r0.getSubstitutionGroup()
            java.lang.String r6 = r8.getChameleonNamespace()
            java.lang.String r7 = r8.getTargetNamespace()
            org.apache.xmlbeans.impl.schema.SchemaTypeImpl r3 = r3.findDocumentType(r5, r6, r7)
            if (r3 != 0) goto L62
            org.apache.xmlbeans.impl.schema.StscState r5 = org.apache.xmlbeans.impl.schema.StscState.get()
            javax.xml.namespace.QName r6 = r0.getSubstitutionGroup()
            org.apache.xmlbeans.XmlQName r0 = r0.xgetSubstitutionGroup()
            r5.notFoundError(r6, r1, r0, r1)
            goto L72
        L62:
            boolean r5 = resolveSubstitutionGroup(r3)
            if (r5 != 0) goto L69
            goto L71
        L69:
            javax.xml.namespace.QName r0 = r0.getSubstitutionGroup()
            r8.setSubstitutionGroup(r0)
            goto L72
        L71:
            r3 = r4
        L72:
            if (r3 == 0) goto L95
            r3.addSubstitutionGroupMember(r2)
            javax.xml.namespace.QName r0 = r3.getSubstitutionGroup()
            if (r0 != 0) goto L7e
            goto L95
        L7e:
            org.apache.xmlbeans.impl.schema.StscState r0 = org.apache.xmlbeans.impl.schema.StscState.get()
            javax.xml.namespace.QName r5 = r3.getSubstitutionGroup()
            java.lang.String r3 = r3.getChameleonNamespace()
            org.apache.xmlbeans.impl.schema.SchemaTypeImpl r3 = r0.findDocumentType(r5, r3, r4)
            boolean r0 = resolveSubstitutionGroup(r3)
            if (r0 != 0) goto L72
            goto L71
        L95:
            r8.finishResolvingSGs()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscResolver.resolveSubstitutionGroup(org.apache.xmlbeans.impl.schema.SchemaTypeImpl):boolean");
    }

    public static boolean resolveType(SchemaTypeImpl schemaTypeImpl) {
        if (schemaTypeImpl.isResolved()) {
            return true;
        }
        if (schemaTypeImpl.isResolving()) {
            StscState.get().error("Cyclic dependency error", 13, schemaTypeImpl.getParseObject());
            return false;
        }
        schemaTypeImpl.startResolving();
        if (schemaTypeImpl.isDocumentType()) {
            resolveDocumentType(schemaTypeImpl);
        } else if (schemaTypeImpl.isAttributeType()) {
            resolveAttributeType(schemaTypeImpl);
        } else if (schemaTypeImpl.isSimpleType()) {
            StscSimpleTypeResolver.resolveSimpleType(schemaTypeImpl);
        } else {
            StscComplexTypeResolver.resolveComplexType(schemaTypeImpl);
        }
        schemaTypeImpl.finishResolving();
        return true;
    }
}
