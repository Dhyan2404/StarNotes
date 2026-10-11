package org.apache.xmlbeans.impl.schema;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaIdentityConstraint;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.XBeanDebug;

/* loaded from: classes13.dex */
public class StscChecker {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private static boolean blockSetOK(SchemaLocalElement schemaLocalElement, SchemaLocalElement schemaLocalElement2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (schemaLocalElement.blockRestriction() && !schemaLocalElement2.blockRestriction()) {
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$DISALLOWED_SUBSTITUTIONS, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), "restriction", printParticle((SchemaParticle) schemaLocalElement)}, xmlObject));
            return false;
        }
        if (schemaLocalElement.blockExtension() && !schemaLocalElement2.blockExtension()) {
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$DISALLOWED_SUBSTITUTIONS, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), "extension", printParticle((SchemaParticle) schemaLocalElement)}, xmlObject));
            return false;
        }
        if (!schemaLocalElement.blockSubstitution() || schemaLocalElement2.blockSubstitution()) {
            return true;
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$DISALLOWED_SUBSTITUTIONS, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), "substitution", printParticle((SchemaParticle) schemaLocalElement)}, xmlObject));
        return false;
    }

    public static void checkAll() {
        StscState stscState = StscState.get();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(stscState.documentTypes()));
        arrayList.addAll(Arrays.asList(stscState.attributeTypes()));
        arrayList.addAll(Arrays.asList(stscState.redefinedGlobalTypes()));
        arrayList.addAll(Arrays.asList(stscState.globalTypes()));
        for (int i = 0; i < arrayList.size(); i++) {
            SchemaType schemaType = (SchemaType) arrayList.get(i);
            if (!stscState.noPvr() && !schemaType.isDocumentType()) {
                checkRestriction((SchemaTypeImpl) schemaType);
            }
            checkFields((SchemaTypeImpl) schemaType);
            arrayList.addAll(Arrays.asList(schemaType.getAnonymousTypes()));
        }
        checkSubstitutionGroups(stscState.globalElements());
    }

    private static boolean checkAllDerivationsForRestriction(SchemaType schemaType, SchemaType schemaType2, Collection<XmlError> collection, XmlObject xmlObject) {
        HashSet hashSet = schemaType.getSimpleVariety() == 2 ? new HashSet(Arrays.asList(schemaType.getUnionConstituentTypes())) : null;
        for (SchemaType schemaType3 = schemaType2; !schemaType.equals(schemaType3) && hashSet != null && !hashSet.contains(schemaType3); schemaType3 = schemaType3.getBaseType()) {
            if (schemaType3.getDerivationType() != 1) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$TYPE_RESTRICTED, new Object[]{printType(schemaType2), printType(schemaType), printType(schemaType3)}, xmlObject));
                return false;
            }
        }
        return true;
    }

    private static void checkElementDefaults(SchemaParticle schemaParticle, XmlObject xmlObject, SchemaType schemaType) {
        String str;
        String localPart;
        String str2;
        if (schemaParticle == null) {
            return;
        }
        int particleType = schemaParticle.getParticleType();
        int i = 0;
        if (particleType == 1 || particleType == 2 || particleType == 3) {
            SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
            int length = particleChildren.length;
            while (i < length) {
                checkElementDefaults(particleChildren[i], xmlObject, schemaType);
                i++;
            }
            return;
        }
        if (particleType != 4) {
            return;
        }
        String defaultText = schemaParticle.getDefaultText();
        if (defaultText != null) {
            if (schemaParticle.getType().isSimpleType() || schemaParticle.getType().getContentType() == 2) {
                try {
                    XmlAnySimpleType defaultValue = schemaParticle.getDefaultValue();
                    XmlOptions xmlOptions = new XmlOptions();
                    xmlOptions.setValidateTextOnly();
                    if (!defaultValue.validate(xmlOptions)) {
                        throw new Exception();
                    }
                    SchemaPropertyImpl schemaPropertyImpl = (SchemaPropertyImpl) schemaType.getElementProperty(schemaParticle.getName());
                    if (schemaPropertyImpl != null && schemaPropertyImpl.getDefaultText() != null) {
                        schemaPropertyImpl.setDefaultValue(new XmlValueRef(defaultValue));
                    }
                } catch (Exception unused) {
                    str2 = schemaParticle.isFixed() ? "fixed" : "default";
                    XmlObject selectAttribute = xmlObject.selectAttribute("", str2);
                    StscState stscState = StscState.get();
                    Object[] objArr = {QNameHelper.pretty(schemaParticle.getName()), str2, defaultText, QNameHelper.pretty(schemaParticle.getType().getName())};
                    if (selectAttribute == null) {
                        selectAttribute = xmlObject;
                    }
                    stscState.error(XmlErrorCodes.ELEM_PROPERTIES$CONSTRAINT_VALID, objArr, selectAttribute);
                }
            } else if (schemaParticle.getType().getContentType() == 4) {
                if (schemaParticle.getType().getContentModel().isSkippable()) {
                    SchemaPropertyImpl schemaPropertyImpl2 = (SchemaPropertyImpl) schemaType.getElementProperty(schemaParticle.getName());
                    if (schemaPropertyImpl2 != null && schemaPropertyImpl2.getDefaultText() != null) {
                        schemaPropertyImpl2.setDefaultValue(new XmlValueRef(XmlString.type.newValue(defaultText)));
                    }
                } else {
                    str2 = schemaParticle.isFixed() ? "fixed" : "default";
                    XmlObject selectAttribute2 = xmlObject.selectAttribute("", str2);
                    StscState stscState2 = StscState.get();
                    Object[] objArr2 = {QNameHelper.pretty(schemaParticle.getName()), str2, defaultText};
                    if (selectAttribute2 == null) {
                        selectAttribute2 = xmlObject;
                    }
                    stscState2.error(XmlErrorCodes.ELEM_DEFAULT_VALID$MIXED_AND_EMPTIABLE, objArr2, selectAttribute2);
                }
            } else if (schemaParticle.getType().getContentType() == 3) {
                XmlObject selectAttribute3 = xmlObject.selectAttribute("", "default");
                StscState stscState3 = StscState.get();
                Object[] objArr3 = {QNameHelper.pretty(schemaParticle.getName()), defaultText, "element"};
                if (selectAttribute3 == null) {
                    selectAttribute3 = xmlObject;
                }
                stscState3.error(XmlErrorCodes.ELEM_DEFAULT_VALID$SIMPLE_TYPE_OR_MIXED, objArr3, selectAttribute3);
            } else if (schemaParticle.getType().getContentType() == 1) {
                XmlObject selectAttribute4 = xmlObject.selectAttribute("", "default");
                StscState stscState4 = StscState.get();
                Object[] objArr4 = {QNameHelper.pretty(schemaParticle.getName()), defaultText, Constants.ELEMNAME_EMPTY_STRING};
                if (selectAttribute4 == null) {
                    selectAttribute4 = xmlObject;
                }
                stscState4.error(XmlErrorCodes.ELEM_DEFAULT_VALID$SIMPLE_TYPE_OR_MIXED, objArr4, selectAttribute4);
            }
        }
        SchemaTypeImpl schemaTypeImpl = BuiltinSchemaTypeSystem.ST_ID;
        if (schemaTypeImpl.isAssignableFrom(schemaParticle.getType())) {
            str = schemaTypeImpl.getName().getLocalPart();
        } else {
            SchemaTypeImpl schemaTypeImpl2 = BuiltinSchemaTypeSystem.ST_IDREF;
            if (schemaTypeImpl2.isAssignableFrom(schemaParticle.getType())) {
                str = schemaTypeImpl2.getName().getLocalPart();
            } else {
                SchemaTypeImpl schemaTypeImpl3 = BuiltinSchemaTypeSystem.ST_IDREFS;
                if (schemaTypeImpl3.isAssignableFrom(schemaParticle.getType())) {
                    str = schemaTypeImpl3.getName().getLocalPart();
                } else {
                    SchemaTypeImpl schemaTypeImpl4 = BuiltinSchemaTypeSystem.ST_ENTITY;
                    if (schemaTypeImpl4.isAssignableFrom(schemaParticle.getType())) {
                        str = schemaTypeImpl4.getName().getLocalPart();
                    } else {
                        SchemaTypeImpl schemaTypeImpl5 = BuiltinSchemaTypeSystem.ST_ENTITIES;
                        if (schemaTypeImpl5.isAssignableFrom(schemaParticle.getType())) {
                            str = schemaTypeImpl5.getName().getLocalPart();
                        } else if (BuiltinSchemaTypeSystem.ST_NOTATION.isAssignableFrom(schemaParticle.getType())) {
                            if (schemaParticle.getType().getBuiltinTypeCode() == 8) {
                                StscState stscState5 = StscState.get();
                                Object[] objArr5 = {QNameHelper.pretty(schemaParticle.getName())};
                                XmlObject xmlObject2 = ((SchemaLocalElementImpl) schemaParticle)._parseObject;
                                stscState5.recover(XmlErrorCodes.ELEM_NOTATION_TYPE_FORBIDDEN, objArr5, xmlObject2 == null ? xmlObject : xmlObject2.selectAttribute("", "type"));
                                localPart = null;
                            } else {
                                if (schemaParticle.getType().getSimpleVariety() == 2) {
                                    for (SchemaType schemaType2 : schemaParticle.getType().getUnionConstituentTypes()) {
                                        if (schemaType2.getBuiltinTypeCode() == 8) {
                                            StscState stscState6 = StscState.get();
                                            Object[] objArr6 = {QNameHelper.pretty(schemaParticle.getName())};
                                            XmlObject xmlObject3 = ((SchemaLocalElementImpl) schemaParticle)._parseObject;
                                            stscState6.recover(XmlErrorCodes.ELEM_NOTATION_TYPE_FORBIDDEN, objArr6, xmlObject3 == null ? xmlObject : xmlObject3.selectAttribute("", "type"));
                                        }
                                    }
                                }
                                localPart = BuiltinSchemaTypeSystem.ST_NOTATION.getName().getLocalPart();
                            }
                            while (schemaType.getOuterType() != null) {
                                schemaType = schemaType.getOuterType();
                            }
                            if (!schemaType.isDocumentType() ? schemaType.getName().getNamespaceURI().length() > 0 : schemaType.getDocumentElementName().getNamespaceURI().length() > 0) {
                                i = 1;
                            }
                            if (i != 0) {
                                StscState stscState7 = StscState.get();
                                Object[] objArr7 = {QNameHelper.pretty(schemaParticle.getName())};
                                XmlObject xmlObject4 = ((SchemaLocalElementImpl) schemaParticle)._parseObject;
                                if (xmlObject4 == null) {
                                    xmlObject4 = xmlObject;
                                }
                                stscState7.warning(XmlErrorCodes.ELEM_COMPATIBILITY_TARGETNS, objArr7, xmlObject4);
                            }
                            str = localPart;
                        } else {
                            str = null;
                        }
                    }
                }
            }
        }
        if (str != null) {
            StscState stscState8 = StscState.get();
            Object[] objArr8 = {QNameHelper.pretty(schemaParticle.getName()), str};
            XmlObject xmlObject5 = ((SchemaLocalElementImpl) schemaParticle)._parseObject;
            if (xmlObject5 != null) {
                xmlObject = xmlObject5.selectAttribute("", "type");
            }
            stscState8.warning(XmlErrorCodes.ELEM_COMPATIBILITY_TYPE, objArr8, xmlObject);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e7, code lost:
    
        if (r8.getName().getNamespaceURI().length() > 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkFields(org.apache.xmlbeans.impl.schema.SchemaTypeImpl r17) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscChecker.checkFields(org.apache.xmlbeans.impl.schema.SchemaTypeImpl):void");
    }

    private static boolean checkFixed(SchemaLocalElement schemaLocalElement, SchemaLocalElement schemaLocalElement2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (!schemaLocalElement.isFixed() || schemaLocalElement.getDefaultText().equals(schemaLocalElement2.getDefaultText())) {
            return true;
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$FIXED, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), schemaLocalElement2.getDefaultText(), printParticle((SchemaParticle) schemaLocalElement), schemaLocalElement.getDefaultText()}, xmlObject));
        return false;
    }

    private static boolean checkForIdentityConstraintExistence(SchemaIdentityConstraint[] schemaIdentityConstraintArr, SchemaIdentityConstraint schemaIdentityConstraint) {
        for (SchemaIdentityConstraint schemaIdentityConstraint2 : schemaIdentityConstraintArr) {
            if (schemaIdentityConstraint2.getName().equals(schemaIdentityConstraint.getName())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean checkGroupOccurrenceOK(org.apache.xmlbeans.SchemaParticle r5, org.apache.xmlbeans.SchemaParticle r6, java.util.Collection<org.apache.xmlbeans.XmlError> r7, org.apache.xmlbeans.XmlObject r8) {
        /*
            java.math.BigInteger r0 = java.math.BigInteger.ZERO
            int r1 = r6.getParticleType()
            r2 = 1
            if (r1 == r2) goto L1a
            r3 = 2
            if (r1 == r3) goto L11
            r3 = 3
            if (r1 == r3) goto L1a
            r1 = r0
            goto L22
        L11:
            java.math.BigInteger r0 = getEffectiveMinRangeChoice(r6)
            java.math.BigInteger r1 = getEffectiveMaxRangeChoice(r6)
            goto L22
        L1a:
            java.math.BigInteger r0 = getEffectiveMinRangeAllSeq(r6)
            java.math.BigInteger r1 = getEffectiveMaxRangeAllSeq(r6)
        L22:
            java.math.BigInteger r3 = r5.getMinOccurs()
            int r0 = r0.compareTo(r3)
            r3 = 0
            if (r0 >= 0) goto L43
            java.lang.String r0 = printParticle(r6)
            java.lang.String r2 = printParticle(r5)
            java.lang.Object[] r0 = new java.lang.Object[]{r0, r2}
            java.lang.String r2 = "range-ok.1"
            org.apache.xmlbeans.XmlError r0 = org.apache.xmlbeans.XmlError.forObject(r2, r0, r8)
            r7.add(r0)
            r2 = r3
        L43:
            java.math.BigInteger r0 = r5.getMaxOccurs()
            if (r0 == 0) goto L7f
            java.lang.String r0 = "range-ok.2"
            if (r1 != 0) goto L61
            java.lang.String r6 = printParticle(r6)
            java.lang.String r5 = printParticle(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r6, r5}
            org.apache.xmlbeans.XmlError r5 = org.apache.xmlbeans.XmlError.forObject(r0, r5, r8)
            r7.add(r5)
            goto L80
        L61:
            java.math.BigInteger r4 = r5.getMaxOccurs()
            int r1 = r1.compareTo(r4)
            if (r1 <= 0) goto L7f
            java.lang.String r6 = printParticle(r6)
            java.lang.String r5 = printParticle(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r6, r5}
            org.apache.xmlbeans.XmlError r5 = org.apache.xmlbeans.XmlError.forObject(r0, r5, r8)
            r7.add(r5)
            goto L80
        L7f:
            r3 = r2
        L80:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscChecker.checkGroupOccurrenceOK(org.apache.xmlbeans.SchemaParticle, org.apache.xmlbeans.SchemaParticle, java.util.Collection, org.apache.xmlbeans.XmlObject):boolean");
    }

    private static boolean checkIdentityConstraints(SchemaLocalElement schemaLocalElement, SchemaLocalElement schemaLocalElement2, Collection<XmlError> collection, XmlObject xmlObject) {
        SchemaIdentityConstraint[] identityConstraints = schemaLocalElement.getIdentityConstraints();
        for (SchemaIdentityConstraint schemaIdentityConstraint : schemaLocalElement2.getIdentityConstraints()) {
            if (checkForIdentityConstraintExistence(identityConstraints, schemaIdentityConstraint)) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$IDENTITY_CONSTRAINTS, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), printParticle((SchemaParticle) schemaLocalElement)}, xmlObject));
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean checkRestriction(SchemaTypeImpl schemaTypeImpl) {
        if (schemaTypeImpl.getDerivationType() == 1 && !schemaTypeImpl.isSimpleType()) {
            StscState stscState = StscState.get();
            XmlObject parseObject = schemaTypeImpl.getParseObject();
            SchemaType baseType = schemaTypeImpl.getBaseType();
            if (baseType.isSimpleType()) {
                stscState.error(XmlErrorCodes.SCHEMA_COMPLEX_TYPE$COMPLEX_CONTENT, new Object[]{QNameHelper.pretty(baseType.getName())}, parseObject);
                return false;
            }
            int contentType = schemaTypeImpl.getContentType();
            if (contentType == 1) {
                int contentType2 = baseType.getContentType();
                if (contentType2 != 1) {
                    if (contentType2 != 3 && contentType2 != 4) {
                        stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$EMPTY_AND_NOT_SIMPLE, (Object[]) null, parseObject);
                        return false;
                    }
                    if (baseType.getContentModel() != null && !baseType.getContentModel().isSkippable()) {
                        stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$EMPTY_AND_ELEMENT_OR_MIXED_EMPTIABLE, (Object[]) null, parseObject);
                        return false;
                    }
                }
            } else if (contentType != 2) {
                if (contentType != 3) {
                    if (contentType == 4) {
                        if (baseType.getContentType() != 4) {
                            stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ELEMENT_OR_MIXED_AND_MIXED, (Object[]) null, parseObject);
                            return false;
                        }
                    }
                }
                if (baseType.getContentType() == 1) {
                    stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ELEMENT_OR_MIXED_AND_EMPTY, (Object[]) null, parseObject);
                    return false;
                }
                if (baseType.getContentType() == 2) {
                    stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ELEMENT_OR_MIXED_AND_SIMPLE, (Object[]) null, parseObject);
                    return false;
                }
                SchemaParticle contentModel = baseType.getContentModel();
                SchemaParticle contentModel2 = schemaTypeImpl.getContentModel();
                if (contentModel2 == null && schemaTypeImpl.getDerivationType() == 1) {
                    return true;
                }
                if (contentModel == null || contentModel2 == null) {
                    XBeanDebug.LOG.atTrace().withThrowable(new Exception("Stacktrace")).log("Null models that weren't caught by EMPTY_CONTENT: {} ({}), {} ({})", baseType, contentModel, schemaTypeImpl, contentModel2);
                    stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ELEMENT_OR_MIXED_AND_VALID, (Object[]) null, parseObject);
                    return false;
                }
                ArrayList arrayList = new ArrayList();
                if (!isParticleValidRestriction(contentModel, contentModel2, arrayList, parseObject)) {
                    if (arrayList.size() == 0) {
                        stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$ELEMENT_OR_MIXED_AND_VALID, (Object[]) null, parseObject);
                    } else {
                        stscState.getErrorListener().add(arrayList.get(arrayList.size() - 1));
                    }
                    return false;
                }
            } else {
                int contentType3 = baseType.getContentType();
                if (contentType3 == 2) {
                    SchemaType contentBasedOnType = schemaTypeImpl.getContentBasedOnType();
                    if (contentBasedOnType != baseType) {
                        while (baseType != null && !baseType.isSimpleType()) {
                            baseType = baseType.getContentBasedOnType();
                        }
                        if (baseType != null && !baseType.isAssignableFrom(contentBasedOnType)) {
                            stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$SC_NOT_DERIVED, (Object[]) null, parseObject);
                            return false;
                        }
                    }
                } else {
                    if (contentType3 != 4) {
                        stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$SC_AND_SIMPLE_TYPE_OR_MIXED, (Object[]) null, parseObject);
                        return false;
                    }
                    if (baseType.getContentModel() != null && !baseType.getContentModel().isSkippable()) {
                        stscState.error(XmlErrorCodes.COMPLEX_TYPE_RESTRICTION$SC_AND_MIXED_EMPTIABLE, (Object[]) null, parseObject);
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private static void checkSubstitutionGroups(SchemaGlobalElement[] schemaGlobalElementArr) {
        StscState stscState = StscState.get();
        for (SchemaGlobalElement schemaGlobalElement : schemaGlobalElementArr) {
            SchemaGlobalElement substitutionGroup = schemaGlobalElement.substitutionGroup();
            if (substitutionGroup != null) {
                SchemaType type = substitutionGroup.getType();
                SchemaType type2 = schemaGlobalElement.getType();
                XmlObject xmlObject = ((SchemaGlobalElementImpl) schemaGlobalElement)._parseObject;
                if (!type.isAssignableFrom(type2)) {
                    stscState.error(XmlErrorCodes.ELEM_PROPERTIES$SUBSTITUTION_VALID, new Object[]{QNameHelper.pretty(schemaGlobalElement.getName()), QNameHelper.pretty(substitutionGroup.getName())}, xmlObject);
                } else if (substitutionGroup.finalExtension() && substitutionGroup.finalRestriction()) {
                    stscState.error(XmlErrorCodes.ELEM_PROPERTIES$SUBSTITUTION_FINAL, new Object[]{QNameHelper.pretty(schemaGlobalElement.getName()), QNameHelper.pretty(substitutionGroup.getName()), "#all"}, xmlObject);
                } else if (!type.equals(type2)) {
                    if (substitutionGroup.finalExtension() && type2.getDerivationType() == 2) {
                        stscState.error(XmlErrorCodes.ELEM_PROPERTIES$SUBSTITUTION_FINAL, new Object[]{QNameHelper.pretty(schemaGlobalElement.getName()), QNameHelper.pretty(substitutionGroup.getName()), "extension"}, xmlObject);
                    } else if (substitutionGroup.finalRestriction() && type2.getDerivationType() == 1) {
                        stscState.error(XmlErrorCodes.ELEM_PROPERTIES$SUBSTITUTION_FINAL, new Object[]{QNameHelper.pretty(schemaGlobalElement.getName()), QNameHelper.pretty(substitutionGroup.getName()), "restriction"}, xmlObject);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0047, code lost:
    
        if (r0.compareTo(r3) > 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0056, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0054, code lost:
    
        if (r0.compareTo(r3) > 0) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a A[LOOP:0: B:2:0x000c->B:15:0x005a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d A[EDGE_INSN: B:16:0x005d->B:17:0x005d BREAK  A[LOOP:0: B:2:0x000c->B:15:0x005a], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.math.BigInteger getEffectiveMaxRangeAllSeq(org.apache.xmlbeans.SchemaParticle r12) {
        /*
            java.math.BigInteger r0 = java.math.BigInteger.ZERO
            org.apache.xmlbeans.SchemaParticle[] r1 = r12.getParticleChildren()
            int r2 = r1.length
            r3 = 0
            r4 = r0
            r5 = r3
            r6 = r5
            r3 = r4
        Lc:
            r7 = 0
            if (r5 >= r2) goto L5d
            r8 = r1[r5]
            int r9 = r8.getParticleType()
            r10 = 1
            if (r9 == r10) goto L4a
            r11 = 2
            if (r9 == r11) goto L3d
            r11 = 3
            if (r9 == r11) goto L4a
            r11 = 4
            if (r9 == r11) goto L25
            r11 = 5
            if (r9 == r11) goto L25
            goto L57
        L25:
            java.math.BigInteger r9 = r8.getMaxOccurs()
            if (r9 != 0) goto L2d
            r0 = r7
            goto L57
        L2d:
            int r9 = r8.getIntMaxOccurs()
            if (r9 <= 0) goto L57
            java.math.BigInteger r6 = r8.getMaxOccurs()
            java.math.BigInteger r4 = r4.add(r6)
            r6 = r10
            goto L57
        L3d:
            java.math.BigInteger r0 = getEffectiveMaxRangeChoice(r8)
            if (r0 == 0) goto L57
            int r8 = r0.compareTo(r3)
            if (r8 <= 0) goto L57
            goto L56
        L4a:
            java.math.BigInteger r0 = getEffectiveMaxRangeAllSeq(r8)
            if (r0 == 0) goto L57
            int r8 = r0.compareTo(r3)
            if (r8 <= 0) goto L57
        L56:
            r3 = r0
        L57:
            if (r0 != 0) goto L5a
            goto L5d
        L5a:
            int r5 = r5 + 1
            goto Lc
        L5d:
            if (r0 == 0) goto L75
            if (r6 == 0) goto L68
            java.math.BigInteger r0 = r12.getMaxOccurs()
            if (r0 != 0) goto L68
            goto L76
        L68:
            java.math.BigInteger r12 = r12.getMaxOccurs()
            java.math.BigInteger r0 = r4.add(r3)
            java.math.BigInteger r7 = r12.multiply(r0)
            goto L76
        L75:
            r7 = r0
        L76:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscChecker.getEffectiveMaxRangeAllSeq(org.apache.xmlbeans.SchemaParticle):java.math.BigInteger");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004d, code lost:
    
        if (r0.compareTo(r3) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005c, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005a, code lost:
    
        if (r0.compareTo(r3) > 0) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060 A[LOOP:0: B:2:0x000c->B:15:0x0060, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0063 A[EDGE_INSN: B:16:0x0063->B:17:0x0063 BREAK  A[LOOP:0: B:2:0x000c->B:15:0x0060], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.math.BigInteger getEffectiveMaxRangeChoice(org.apache.xmlbeans.SchemaParticle r12) {
        /*
            java.math.BigInteger r0 = java.math.BigInteger.ZERO
            org.apache.xmlbeans.SchemaParticle[] r1 = r12.getParticleChildren()
            int r2 = r1.length
            r3 = 0
            r4 = r0
            r5 = r3
            r6 = r5
            r3 = r4
        Lc:
            r7 = 0
            if (r5 >= r2) goto L63
            r8 = r1[r5]
            int r9 = r8.getParticleType()
            r10 = 1
            if (r9 == r10) goto L50
            r11 = 2
            if (r9 == r11) goto L43
            r11 = 3
            if (r9 == r11) goto L50
            r11 = 4
            if (r9 == r11) goto L25
            r11 = 5
            if (r9 == r11) goto L25
            goto L5d
        L25:
            java.math.BigInteger r9 = r8.getMaxOccurs()
            if (r9 != 0) goto L2d
            r0 = r7
            goto L5d
        L2d:
            int r9 = r8.getIntMaxOccurs()
            if (r9 <= 0) goto L5d
            java.math.BigInteger r6 = r8.getMaxOccurs()
            int r6 = r6.compareTo(r4)
            if (r6 <= 0) goto L41
            java.math.BigInteger r4 = r8.getMaxOccurs()
        L41:
            r6 = r10
            goto L5d
        L43:
            java.math.BigInteger r0 = getEffectiveMaxRangeChoice(r8)
            if (r0 == 0) goto L5d
            int r8 = r0.compareTo(r3)
            if (r8 <= 0) goto L5d
            goto L5c
        L50:
            java.math.BigInteger r0 = getEffectiveMaxRangeAllSeq(r8)
            if (r0 == 0) goto L5d
            int r8 = r0.compareTo(r3)
            if (r8 <= 0) goto L5d
        L5c:
            r3 = r0
        L5d:
            if (r0 != 0) goto L60
            goto L63
        L60:
            int r5 = r5 + 1
            goto Lc
        L63:
            if (r0 == 0) goto L7b
            if (r6 == 0) goto L6e
            java.math.BigInteger r0 = r12.getMaxOccurs()
            if (r0 != 0) goto L6e
            goto L7c
        L6e:
            java.math.BigInteger r12 = r12.getMaxOccurs()
            java.math.BigInteger r0 = r4.add(r3)
            java.math.BigInteger r7 = r12.multiply(r0)
            goto L7c
        L7b:
            r7 = r0
        L7c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.schema.StscChecker.getEffectiveMaxRangeChoice(org.apache.xmlbeans.SchemaParticle):java.math.BigInteger");
    }

    private static BigInteger getEffectiveMinRangeAllSeq(SchemaParticle schemaParticle) {
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        BigInteger bigInteger = BigInteger.ZERO;
        for (SchemaParticle schemaParticle2 : particleChildren) {
            int particleType = schemaParticle2.getParticleType();
            if (particleType != 1) {
                if (particleType == 2) {
                    bigInteger = bigInteger.add(getEffectiveMinRangeChoice(schemaParticle2));
                } else if (particleType != 3) {
                    if (particleType == 4 || particleType == 5) {
                        bigInteger = bigInteger.add(schemaParticle2.getMinOccurs());
                    }
                }
            }
            bigInteger = bigInteger.add(getEffectiveMinRangeAllSeq(schemaParticle2));
        }
        return schemaParticle.getMinOccurs().multiply(bigInteger);
    }

    private static BigInteger getEffectiveMinRangeChoice(SchemaParticle schemaParticle) {
        int i;
        BigInteger effectiveMinRangeAllSeq;
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        if (particleChildren.length == 0) {
            return BigInteger.ZERO;
        }
        int length = particleChildren.length;
        BigInteger bigInteger = null;
        while (i < length) {
            SchemaParticle schemaParticle2 = particleChildren[i];
            int particleType = schemaParticle2.getParticleType();
            if (particleType != 1) {
                if (particleType == 2) {
                    effectiveMinRangeAllSeq = getEffectiveMinRangeChoice(schemaParticle2);
                    if (bigInteger != null && bigInteger.compareTo(effectiveMinRangeAllSeq) <= 0) {
                    }
                    bigInteger = effectiveMinRangeAllSeq;
                } else if (particleType != 3) {
                    if ((particleType == 4 || particleType == 5) && (bigInteger == null || bigInteger.compareTo(schemaParticle2.getMinOccurs()) > 0)) {
                        bigInteger = schemaParticle2.getMinOccurs();
                    }
                }
            }
            effectiveMinRangeAllSeq = getEffectiveMinRangeAllSeq(schemaParticle2);
            i = (bigInteger != null && bigInteger.compareTo(effectiveMinRangeAllSeq) <= 0) ? i + 1 : 0;
            bigInteger = effectiveMinRangeAllSeq;
        }
        if (bigInteger == null) {
            bigInteger = BigInteger.ZERO;
        }
        return schemaParticle.getMinOccurs().multiply(bigInteger);
    }

    public static boolean isParticleValidRestriction(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (schemaParticle.equals(schemaParticle2)) {
            return true;
        }
        int particleType = schemaParticle.getParticleType();
        if (particleType == 1) {
            int particleType2 = schemaParticle2.getParticleType();
            if (particleType2 == 1) {
                return recurse(schemaParticle, schemaParticle2, collection, xmlObject);
            }
            if (particleType2 != 2) {
                if (particleType2 == 3) {
                    return recurseUnordered(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType2 == 4) {
                    return recurseAsIfGroup(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType2 != 5) {
                    XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Derived Type");
                }
            }
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION$INVALID_RESTRICTION, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle)}, xmlObject));
        } else if (particleType == 2) {
            int particleType3 = schemaParticle2.getParticleType();
            if (particleType3 != 1) {
                if (particleType3 == 2) {
                    return recurseLax(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType3 == 3) {
                    return mapAndSum(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType3 == 4) {
                    return recurseAsIfGroup(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType3 != 5) {
                    XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Derived Type");
                }
            }
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION$INVALID_RESTRICTION, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle)}, xmlObject));
        } else if (particleType == 3) {
            int particleType4 = schemaParticle2.getParticleType();
            if (particleType4 != 1 && particleType4 != 2) {
                if (particleType4 == 3) {
                    return recurse(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType4 == 4) {
                    return recurseAsIfGroup(schemaParticle, schemaParticle2, collection, xmlObject);
                }
                if (particleType4 != 5) {
                    XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Derived Type");
                }
            }
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION$INVALID_RESTRICTION, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle)}, xmlObject));
        } else if (particleType == 4) {
            int particleType5 = schemaParticle2.getParticleType();
            if (particleType5 != 1 && particleType5 != 2 && particleType5 != 3) {
                if (particleType5 == 4) {
                    return nameAndTypeOK((SchemaLocalElement) schemaParticle, (SchemaLocalElement) schemaParticle2, collection, xmlObject);
                }
                if (particleType5 != 5) {
                    XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Derived Type");
                }
            }
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION$INVALID_RESTRICTION, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle)}, xmlObject));
        } else if (particleType != 5) {
            XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Base Type");
        } else {
            int particleType6 = schemaParticle2.getParticleType();
            if (particleType6 == 1 || particleType6 == 2 || particleType6 == 3) {
                return nsRecurseCheckCardinality(schemaParticle, schemaParticle2, collection, xmlObject);
            }
            if (particleType6 == 4) {
                return nsCompat(schemaParticle, (SchemaLocalElement) schemaParticle2, collection, xmlObject);
            }
            if (particleType6 == 5) {
                return nsSubset(schemaParticle, schemaParticle2, collection, xmlObject);
            }
            XBeanDebug.LOG.atDebug().withThrowable(new Exception("stacktrace")).log("Unknown schema type for Derived Type");
        }
        return false;
    }

    private static boolean mapAndSum(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        SchemaParticle[] particleChildren = schemaParticle2.getParticleChildren();
        SchemaParticle[] particleChildren2 = schemaParticle.getParticleChildren();
        int length = particleChildren.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                BigInteger multiply = schemaParticle2.getMinOccurs().multiply(BigInteger.valueOf(schemaParticle2.getParticleChildren().length));
                BigInteger multiply2 = schemaParticle2.getMaxOccurs() == null ? null : schemaParticle2.getMaxOccurs().multiply(BigInteger.valueOf(schemaParticle2.getParticleChildren().length));
                if (multiply.compareTo(schemaParticle.getMinOccurs()) < 0) {
                    collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_MAP_AND_SUM$SUM_MIN_OCCURS_GTE_MIN_OCCURS, new Object[]{multiply.toString(), schemaParticle.getMinOccurs().toString()}, xmlObject));
                    return false;
                }
                if (schemaParticle.getMaxOccurs() == null || (multiply2 != null && multiply2.compareTo(schemaParticle.getMaxOccurs()) <= 0)) {
                    return true;
                }
                Object[] objArr = new Object[2];
                objArr[0] = multiply2 == null ? "unbounded" : multiply2.toString();
                objArr[1] = schemaParticle.getMaxOccurs().toString();
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_MAP_AND_SUM$SUM_MAX_OCCURS_LTE_MAX_OCCURS, objArr, xmlObject));
                return false;
            }
            SchemaParticle schemaParticle3 = particleChildren[i];
            int length2 = particleChildren2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z = false;
                    break;
                }
                if (isParticleValidRestriction(particleChildren2[i2], schemaParticle3, collection, xmlObject)) {
                    break;
                }
                i2++;
            }
            if (!z) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_MAP_AND_SUM$MAP, new Object[]{printParticle(schemaParticle3)}, xmlObject));
                return false;
            }
            i++;
        }
    }

    private static boolean nameAndTypeOK(SchemaLocalElement schemaLocalElement, SchemaLocalElement schemaLocalElement2, Collection<XmlError> collection, XmlObject xmlObject) {
        SchemaParticle schemaParticle = (SchemaParticle) schemaLocalElement;
        if (!schemaParticle.canStartWithElement(schemaLocalElement2.getName())) {
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NAME, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), printParticle(schemaParticle)}, xmlObject));
            return false;
        }
        if (!schemaLocalElement.isNillable() && schemaLocalElement2.isNillable()) {
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$NILLABLE, new Object[]{printParticle((SchemaParticle) schemaLocalElement2), printParticle((SchemaParticle) schemaLocalElement)}, xmlObject));
            return false;
        }
        if (occurrenceRangeOK((SchemaParticle) schemaLocalElement, (SchemaParticle) schemaLocalElement2, collection, xmlObject) && checkFixed(schemaLocalElement, schemaLocalElement2, collection, xmlObject) && checkIdentityConstraints(schemaLocalElement, schemaLocalElement2, collection, xmlObject) && typeDerivationOK(schemaLocalElement.getType(), schemaLocalElement2.getType(), collection, xmlObject)) {
            return blockSetOK(schemaLocalElement, schemaLocalElement2, collection, xmlObject);
        }
        return false;
    }

    private static boolean nsCompat(SchemaParticle schemaParticle, SchemaLocalElement schemaLocalElement, Collection<XmlError> collection, XmlObject xmlObject) {
        if (schemaParticle.getWildcardSet().contains(schemaLocalElement.getName())) {
            return occurrenceRangeOK(schemaParticle, (SchemaParticle) schemaLocalElement, collection, xmlObject);
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_NS_COMPAT$WILDCARD_VALID, new Object[]{printParticle((SchemaParticle) schemaLocalElement), printParticle(schemaParticle)}, xmlObject));
        return false;
    }

    private static boolean nsRecurseCheckCardinality(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        SchemaParticleImpl schemaParticleImpl = new SchemaParticleImpl();
        schemaParticleImpl.setParticleType(schemaParticle.getParticleType());
        schemaParticleImpl.setWildcardProcess(schemaParticle.getWildcardProcess());
        schemaParticleImpl.setWildcardSet(schemaParticle.getWildcardSet());
        schemaParticleImpl.setMinOccurs(BigInteger.ZERO);
        schemaParticleImpl.setMaxOccurs(null);
        schemaParticleImpl.setTransitionRules(schemaParticle.getWildcardSet(), true);
        schemaParticleImpl.setTransitionNotes(schemaParticle.getWildcardSet(), true);
        boolean z = true;
        for (SchemaParticle schemaParticle3 : schemaParticle2.getParticleChildren()) {
            int particleType = schemaParticle3.getParticleType();
            if (particleType == 1 || particleType == 2 || particleType == 3) {
                z = nsRecurseCheckCardinality(schemaParticleImpl, schemaParticle3, collection, xmlObject);
            } else if (particleType == 4) {
                z = nsCompat(schemaParticleImpl, (SchemaLocalElement) schemaParticle3, collection, xmlObject);
            } else if (particleType == 5) {
                z = nsSubset(schemaParticleImpl, schemaParticle3, collection, xmlObject);
            }
            if (!z) {
                break;
            }
        }
        return z ? checkGroupOccurrenceOK(schemaParticle, schemaParticle2, collection, xmlObject) : z;
    }

    private static boolean nsSubset(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (!occurrenceRangeOK(schemaParticle, schemaParticle2, collection, xmlObject)) {
            return false;
        }
        if (schemaParticle.getWildcardSet().inverse().isDisjoint(schemaParticle2.getWildcardSet())) {
            return true;
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_NS_SUBST$WILDCARD_SUBSET, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle)}, xmlObject));
        return false;
    }

    private static boolean occurrenceRangeOK(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (schemaParticle2.getMinOccurs().compareTo(schemaParticle.getMinOccurs()) < 0) {
            collection.add(XmlError.forObject(XmlErrorCodes.OCCURRENCE_RANGE$MIN_GTE_MIN, new Object[]{printParticle(schemaParticle2), schemaParticle2.getMinOccurs().toString(), printParticle(schemaParticle), schemaParticle.getMinOccurs().toString()}, xmlObject));
            return false;
        }
        if (schemaParticle.getMaxOccurs() == null || (schemaParticle2.getMaxOccurs() != null && schemaParticle.getMaxOccurs() != null && schemaParticle2.getMaxOccurs().compareTo(schemaParticle.getMaxOccurs()) <= 0)) {
            return true;
        }
        collection.add(XmlError.forObject(XmlErrorCodes.OCCURRENCE_RANGE$MAX_LTE_MAX, new Object[]{printParticle(schemaParticle2), printMaxOccurs(schemaParticle2.getMaxOccurs()), printParticle(schemaParticle), printMaxOccurs(schemaParticle.getMaxOccurs())}, xmlObject));
        return false;
    }

    private static String printMaxOccurs(BigInteger bigInteger) {
        return bigInteger == null ? "unbounded" : bigInteger.toString();
    }

    private static String printParticle(SchemaParticle schemaParticle) {
        int particleType = schemaParticle.getParticleType();
        if (particleType == 1) {
            return "<all>";
        }
        if (particleType == 2) {
            return "<choice>";
        }
        if (particleType == 3) {
            return "<sequence>";
        }
        if (particleType != 4) {
            return particleType != 5 ? "??" : "<any>";
        }
        return "<element name=\"" + QNameHelper.pretty(schemaParticle.getName()) + "\">";
    }

    private static String printParticles(List<SchemaParticle> list) {
        return printParticles((SchemaParticle[]) list.toArray(new SchemaParticle[0]));
    }

    private static String printType(SchemaType schemaType) {
        return schemaType.getName() != null ? QNameHelper.pretty(schemaType.getName()) : schemaType.toString();
    }

    private static boolean recurse(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        boolean z;
        if (!occurrenceRangeOK(schemaParticle, schemaParticle2, collection, xmlObject)) {
            return false;
        }
        SchemaParticle[] particleChildren = schemaParticle2.getParticleChildren();
        SchemaParticle[] particleChildren2 = schemaParticle.getParticleChildren();
        int i = 0;
        int i2 = 0;
        while (i < particleChildren.length && i2 < particleChildren2.length) {
            SchemaParticle schemaParticle3 = particleChildren[i];
            SchemaParticle schemaParticle4 = particleChildren2[i2];
            if (!isParticleValidRestriction(schemaParticle4, schemaParticle3, collection, xmlObject)) {
                if (!schemaParticle4.isSkippable()) {
                    collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$MAP_VALID, new Object[]{printParticle(schemaParticle3), printParticle(schemaParticle2), printParticle(schemaParticle4), printParticle(schemaParticle)}, xmlObject));
                    z = false;
                    break;
                }
            } else {
                i++;
            }
            i2++;
        }
        z = true;
        if (i < particleChildren.length) {
            collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$MAP, new Object[]{printParticle(schemaParticle2), printParticle(schemaParticle), printParticles(particleChildren, i)}, xmlObject));
            return false;
        }
        if (i2 < particleChildren2.length) {
            ArrayList arrayList = new ArrayList(particleChildren2.length);
            while (i2 < particleChildren2.length) {
                if (!particleChildren2[i2].isSkippable()) {
                    arrayList.add(particleChildren2[i2]);
                }
                i2++;
            }
            if (arrayList.size() > 0) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE$UNMAPPED_ARE_EMPTIABLE, new Object[]{printParticle(schemaParticle), printParticle(schemaParticle2), printParticles(arrayList)}, xmlObject));
                return false;
            }
        }
        return z;
    }

    private static boolean recurseAsIfGroup(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        SchemaParticleImpl schemaParticleImpl = new SchemaParticleImpl();
        schemaParticleImpl.setParticleType(schemaParticle.getParticleType());
        BigInteger bigInteger = BigInteger.ONE;
        schemaParticleImpl.setMinOccurs(bigInteger);
        schemaParticleImpl.setMaxOccurs(bigInteger);
        schemaParticleImpl.setParticleChildren(new SchemaParticle[]{schemaParticle2});
        return isParticleValidRestriction(schemaParticle, schemaParticleImpl, collection, xmlObject);
    }

    private static boolean recurseLax(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (!occurrenceRangeOK(schemaParticle, schemaParticle2, collection, xmlObject)) {
            return false;
        }
        SchemaParticle[] particleChildren = schemaParticle2.getParticleChildren();
        SchemaParticle[] particleChildren2 = schemaParticle.getParticleChildren();
        int i = 0;
        for (int i2 = 0; i < particleChildren.length && i2 < particleChildren2.length; i2++) {
            if (isParticleValidRestriction(particleChildren2[i2], particleChildren[i], collection, xmlObject)) {
                i++;
            }
        }
        if (i >= particleChildren.length) {
            return true;
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_LAX$MAP, new Object[]{printParticles(particleChildren2, i)}, xmlObject));
        return false;
    }

    private static boolean recurseUnordered(SchemaParticle schemaParticle, SchemaParticle schemaParticle2, Collection<XmlError> collection, XmlObject xmlObject) {
        boolean z;
        if (!occurrenceRangeOK(schemaParticle, schemaParticle2, collection, xmlObject)) {
            return false;
        }
        SchemaParticle[] particleChildren = schemaParticle.getParticleChildren();
        HashMap hashMap = new HashMap(10);
        Object obj = new Object();
        for (SchemaParticle schemaParticle3 : particleChildren) {
            hashMap.put(schemaParticle3.getName(), schemaParticle3);
        }
        for (SchemaParticle schemaParticle4 : schemaParticle2.getParticleChildren()) {
            Object obj2 = hashMap.get(schemaParticle4.getName());
            if (obj2 == null) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_UNORDERED$MAP, new Object[]{printParticle(schemaParticle4)}, xmlObject));
            } else if (obj2 == obj) {
                collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_UNORDERED$MAP_UNIQUE, new Object[]{printParticle(schemaParticle4)}, xmlObject));
            } else {
                SchemaParticle schemaParticle5 = (SchemaParticle) obj2;
                if (schemaParticle4.getMaxOccurs() == null || schemaParticle4.getMaxOccurs().compareTo(BigInteger.ONE) > 0) {
                    collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_UNORDERED$MAP_MAX_OCCURS_1, new Object[]{printParticle(schemaParticle4), printMaxOccurs(schemaParticle4.getMinOccurs())}, xmlObject));
                } else if (isParticleValidRestriction(schemaParticle5, schemaParticle4, collection, xmlObject)) {
                    hashMap.put(schemaParticle4.getName(), obj);
                }
            }
            z = false;
            break;
        }
        z = true;
        if (z) {
            for (QName qName : hashMap.keySet()) {
                if (hashMap.get(qName) != obj && !((SchemaParticle) hashMap.get(qName)).isSkippable()) {
                    collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_DERIVATION_RECURSE_UNORDERED$UNMAPPED_ARE_EMPTIABLE, new Object[]{printParticle((SchemaParticle) hashMap.get(qName))}, xmlObject));
                    z = false;
                }
            }
        }
        return z;
    }

    private static boolean typeDerivationOK(SchemaType schemaType, SchemaType schemaType2, Collection<XmlError> collection, XmlObject xmlObject) {
        if (schemaType.isAssignableFrom(schemaType2)) {
            return checkAllDerivationsForRestriction(schemaType, schemaType2, collection, xmlObject);
        }
        collection.add(XmlError.forObject(XmlErrorCodes.PARTICLE_RESTRICTION_NAME_AND_TYPE$TYPE_VALID, new Object[]{printType(schemaType2), printType(schemaType)}, xmlObject));
        return false;
    }

    private static String printParticles(SchemaParticle[] schemaParticleArr) {
        return printParticles(schemaParticleArr, 0, schemaParticleArr.length);
    }

    private static String printParticles(SchemaParticle[] schemaParticleArr, int i) {
        return printParticles(schemaParticleArr, i, schemaParticleArr.length);
    }

    private static String printParticles(SchemaParticle[] schemaParticleArr, int i, int i2) {
        StringBuilder sb = new StringBuilder(schemaParticleArr.length * 30);
        while (i < i2) {
            sb.append(printParticle(schemaParticleArr[i]));
            i++;
            if (i != i2) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }
}
