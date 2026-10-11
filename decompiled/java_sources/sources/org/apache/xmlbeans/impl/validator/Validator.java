package org.apache.xmlbeans.impl.validator;

import com.sunia.HTREnginev2.vzn;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.SchemaAttributeModel;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaGlobalAttribute;
import org.apache.xmlbeans.SchemaGlobalElement;
import org.apache.xmlbeans.SchemaLocalAttribute;
import org.apache.xmlbeans.SchemaLocalElement;
import org.apache.xmlbeans.SchemaParticle;
import org.apache.xmlbeans.SchemaProperty;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.XmlQName;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlValidationError;
import org.apache.xmlbeans.impl.common.IdentityConstraint;
import org.apache.xmlbeans.impl.common.InvalidLexicalValueException;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.common.ValidatorListener;
import org.apache.xmlbeans.impl.common.XmlWhitespace;
import org.apache.xmlbeans.impl.schema.SchemaTypeImpl;
import org.apache.xmlbeans.impl.schema.SchemaTypeVisitorImpl;
import org.apache.xmlbeans.impl.util.XsTypeConverter;
import org.apache.xmlbeans.impl.values.JavaBase64Holder;
import org.apache.xmlbeans.impl.values.JavaBase64HolderEx;
import org.apache.xmlbeans.impl.values.JavaBooleanHolder;
import org.apache.xmlbeans.impl.values.JavaBooleanHolderEx;
import org.apache.xmlbeans.impl.values.JavaDecimalHolderEx;
import org.apache.xmlbeans.impl.values.JavaDoubleHolderEx;
import org.apache.xmlbeans.impl.values.JavaFloatHolderEx;
import org.apache.xmlbeans.impl.values.JavaGDateHolderEx;
import org.apache.xmlbeans.impl.values.JavaGDurationHolderEx;
import org.apache.xmlbeans.impl.values.JavaHexBinaryHolder;
import org.apache.xmlbeans.impl.values.JavaHexBinaryHolderEx;
import org.apache.xmlbeans.impl.values.JavaNotationHolderEx;
import org.apache.xmlbeans.impl.values.JavaQNameHolder;
import org.apache.xmlbeans.impl.values.JavaQNameHolderEx;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.JavaUriHolderEx;
import org.apache.xmlbeans.impl.values.NamespaceContext;
import org.apache.xmlbeans.impl.values.TypeStoreVisitor;
import org.apache.xmlbeans.impl.values.XmlListImpl;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;

/* loaded from: classes13.dex */
public final class Validator implements ValidatorListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private boolean _booleanValue;
    private byte[] _byteArrayValue;
    private final IdentityConstraint _constraintEngine;
    private BigDecimal _decimalValue;
    private double _doubleValue;
    private int _eatContent;
    private Collection<XmlError> _errorListener;
    private int _errorState;
    private float _floatValue;
    private GDate _gdateValue;
    private GDuration _gdurationValue;
    private final SchemaTypeLoader _globalTypes;
    private boolean _invalid;
    private List<SchemaType> _listTypes;
    private List<Object> _listValue;
    private SchemaLocalAttribute _localAttribute;
    private SchemaLocalElement _localElement;
    private QName _qnameValue;
    private final SchemaField _rootField;
    private final SchemaType _rootType;
    private State _stateStack;
    private final boolean _strict;
    private String _stringValue;
    private int _suspendErrors;
    private final boolean _treatLaxAsSkip;
    private SchemaType _unionType;
    private final ValidatorVC _vc;
    private final LinkedList<TypeStoreVisitor> _visitorPool = new LinkedList<>();
    private SchemaAttributeModel _wildcardAttribute;
    private SchemaParticle _wildcardElement;

    /* loaded from: classes13.dex */
    public static final class State {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        SchemaAttributeModel _attrModel;
        HashSet<QName> _attrs;
        boolean _canHaveAttrs;
        boolean _canHaveElements;
        boolean _canHaveMixedContent;
        SchemaField _field;
        boolean _hasSimpleContent;
        boolean _isEmpty;
        boolean _isNil;
        State _next;
        boolean _sawText;
        SchemaType _type;
        SchemaTypeVisitorImpl _visitor;

        private State() {
        }

        public SchemaParticle currentParticle() {
            return this._visitor.currentParticle();
        }

        public boolean end() {
            return !this._canHaveElements || this._visitor.visit(null);
        }

        public boolean test(QName qName) {
            return this._canHaveElements && this._visitor.testValid(qName);
        }

        public boolean visit(QName qName) {
            return this._canHaveElements && this._visitor.visit(qName);
        }
    }

    /* loaded from: classes13.dex */
    public class ValidatorVC implements ValidationContext {
        ValidatorListener.Event _event;

        private ValidatorVC() {
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str) {
            Validator.this.emitError(this._event, str, null, null, 1001);
        }

        @Override // org.apache.xmlbeans.impl.common.ValidationContext
        public void invalid(String str, Object[] objArr) {
            Validator.this.emitError(this._event, str, objArr, null, null, 1001, null);
        }
    }

    public Validator(SchemaType schemaType, SchemaField schemaField, SchemaTypeLoader schemaTypeLoader, XmlOptions xmlOptions, Collection<XmlError> collection) {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        this._errorListener = maskNull.getErrorListener();
        this._treatLaxAsSkip = maskNull.isValidateTreatLaxAsSkip();
        this._strict = maskNull.isValidateStrict();
        if (this._errorListener == null) {
            this._errorListener = collection;
        }
        this._constraintEngine = new IdentityConstraint(this._errorListener, schemaType.isDocumentType());
        this._globalTypes = schemaTypeLoader;
        this._rootType = schemaType;
        this._rootField = schemaField;
        this._vc = new ValidatorVC();
    }

    private void addToList(SchemaType schemaType) {
        if (schemaType.getSimpleVariety() == 1 || schemaType.getSimpleVariety() == 2) {
            if (schemaType.getUnionMemberTypes().length > 0 && getUnionType() != null) {
                schemaType = getUnionType();
                this._unionType = null;
            }
            this._listTypes.add(schemaType);
            if (schemaType.getPrimitiveType() == null) {
                this._listValue.add(null);
                return;
            }
            switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
                case 2:
                case 6:
                    this._listValue.add(this._stringValue);
                    return;
                case 3:
                    this._listValue.add(this._booleanValue ? Boolean.TRUE : Boolean.FALSE);
                    this._booleanValue = false;
                    return;
                case 4:
                case 5:
                    this._listValue.add(this._byteArrayValue);
                    this._byteArrayValue = null;
                    return;
                case 7:
                case 8:
                    this._listValue.add(this._qnameValue);
                    this._qnameValue = null;
                    return;
                case 9:
                    this._listValue.add(Float.valueOf(this._floatValue));
                    this._floatValue = 0.0f;
                    return;
                case 10:
                    this._listValue.add(Double.valueOf(this._doubleValue));
                    this._doubleValue = 0.0d;
                    return;
                case 11:
                    this._listValue.add(this._decimalValue);
                    this._decimalValue = null;
                    return;
                case 12:
                    this._listValue.add(this._stringValue);
                    this._stringValue = null;
                    return;
                case 13:
                    this._listValue.add(this._gdurationValue);
                    this._gdurationValue = null;
                    return;
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    this._listValue.add(this._gdateValue);
                    this._gdateValue = null;
                    return;
                default:
                    throw new RuntimeException("Unexpected primitive type code");
            }
        }
    }

    private void attrEvent(ValidatorListener.Event event) {
        QName name = event.getName();
        State state = topState();
        if (state._attrs == null) {
            state._attrs = new HashSet<>();
        }
        if (state._attrs.contains(name)) {
            emitFieldError(event, XmlErrorCodes.XML_DUPLICATE_ATTRIBUTE, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
            return;
        }
        state._attrs.add(name);
        if (!state._canHaveAttrs) {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$NO_WILDCARD, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
            return;
        }
        SchemaAttributeModel schemaAttributeModel = state._attrModel;
        SchemaLocalAttribute attribute = schemaAttributeModel == null ? null : schemaAttributeModel.getAttribute(name);
        if (attribute != null) {
            this._localAttribute = attribute;
            if (attribute.getUse() == 1) {
                emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$PROHIBITED_ATTRIBUTE, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
                return;
            } else {
                this._constraintEngine.attr(event, name, attribute.getType(), validateSimpleType(attribute.getType(), attribute, event, false, false));
                return;
            }
        }
        int wildcardProcess = state._attrModel.getWildcardProcess();
        SchemaAttributeModel schemaAttributeModel2 = state._attrModel;
        this._wildcardAttribute = schemaAttributeModel2;
        if (wildcardProcess == 0) {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$NO_WILDCARD, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
            return;
        }
        if (!schemaAttributeModel2.getWildcardSet().contains(name)) {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$NOT_WILDCARD_VALID, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
            return;
        }
        if (wildcardProcess != 3) {
            if (wildcardProcess == 2 && this._treatLaxAsSkip) {
                return;
            }
            SchemaGlobalAttribute findAttribute = this._globalTypes.findAttribute(name);
            this._localAttribute = findAttribute;
            if (findAttribute != null) {
                this._constraintEngine.attr(event, name, findAttribute.getType(), validateSimpleType(findAttribute.getType(), findAttribute, event, false, false));
            } else {
                if (wildcardProcess == 2) {
                    return;
                }
                emitFieldError(event, XmlErrorCodes.ASSESS_ATTR_SCHEMA_VALID$NOT_RESOLVED, new Object[]{QNameHelper.pretty(name)}, name, null, null, 1000, state._type);
            }
        }
    }

    private void beginEvent(ValidatorListener.Event event) {
        QName qName;
        SchemaField schemaField;
        SchemaField schemaField2;
        SchemaType type;
        SchemaField schemaField3;
        SchemaType schemaType;
        SchemaType schemaType2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        this._localElement = null;
        this._wildcardElement = null;
        State state = topState();
        if (state == null) {
            type = this._rootType;
            schemaField3 = this._rootField;
        } else {
            QName name = event.getName();
            state._isEmpty = false;
            if (state._isNil) {
                QName name2 = state._field.getName();
                SchemaType schemaType3 = state._type;
                emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_CONTENT, null, name2, schemaType3, null, 4, schemaType3);
                this._eatContent = 1;
                return;
            }
            SchemaField schemaField4 = state._field;
            if (schemaField4 == null || !schemaField4.isFixed()) {
                qName = name;
            } else {
                Object[] objArr = {QNameHelper.pretty(state._field.getName())};
                QName name3 = state._field.getName();
                SchemaType schemaType4 = state._type;
                qName = name;
                emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_WITH_CONTENT, objArr, name3, schemaType4, null, 2, schemaType4);
            }
            if (!state.visit(qName)) {
                findDetailedErrorBegin(event, state, qName);
                this._eatContent = 1;
                return;
            }
            SchemaParticle currentParticle = state.currentParticle();
            this._wildcardElement = currentParticle;
            if (currentParticle.getParticleType() != 5) {
                if (currentParticle.getName().equals(qName)) {
                    schemaField = (SchemaField) currentParticle;
                } else {
                    if (((SchemaLocalElement) currentParticle).blockSubstitution()) {
                        Object[] objArr2 = {QNameHelper.pretty(qName)};
                        SchemaType schemaType5 = state._type;
                        emitFieldError(event, XmlErrorCodes.PARTICLE_VALID$BLOCK_SUBSTITUTION, objArr2, qName, schemaType5, null, 2, schemaType5);
                        this._eatContent = 1;
                        return;
                    }
                    SchemaGlobalElement findElement = this._globalTypes.findElement(qName);
                    this._localElement = findElement;
                    schemaField = findElement;
                }
                schemaField2 = schemaField;
            } else {
                if (!currentParticle.getWildcardSet().contains(qName)) {
                    emitFieldError(event, XmlErrorCodes.PARTICLE_VALID$NOT_WILDCARD_VALID, new Object[]{QNameHelper.pretty(qName)}, qName, null, null, 2, state._type);
                    this._eatContent = 1;
                    return;
                }
                int wildcardProcess = currentParticle.getWildcardProcess();
                if (wildcardProcess == 3 || (wildcardProcess == 2 && this._treatLaxAsSkip)) {
                    this._eatContent = 1;
                    return;
                }
                SchemaGlobalElement findElement2 = this._globalTypes.findElement(qName);
                this._localElement = findElement2;
                schemaField2 = findElement2;
                if (findElement2 == null) {
                    if (wildcardProcess == 1) {
                        Object[] objArr3 = {QNameHelper.pretty(qName)};
                        SchemaType schemaType6 = state._type;
                        emitFieldError(event, XmlErrorCodes.ASSESS_ELEM_SCHEMA_VALID$NOT_RESOLVED, objArr3, qName, schemaType6, null, 2, schemaType6);
                    }
                    this._eatContent = 1;
                    return;
                }
            }
            type = schemaField2.getType();
            schemaField3 = schemaField2;
        }
        SchemaType schemaType7 = type;
        SchemaField schemaField5 = schemaField3;
        if (schemaType7.isNoType()) {
            schemaType = schemaType7;
            emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$NO_TYPE, null, event.getName(), null, null, 3, null);
            this._eatContent = 1;
        } else {
            schemaType = schemaType7;
        }
        String xsiType = event.getXsiType();
        if (xsiType != null) {
            int i = this._errorState;
            this._suspendErrors++;
            try {
                try {
                    ValidatorVC validatorVC = this._vc;
                    validatorVC._event = null;
                    SchemaType findType = this._globalTypes.findType(JavaQNameHolder.validateLexical(xsiType, validatorVC, event));
                    this._suspendErrors--;
                    schemaType2 = findType;
                } catch (Throwable unused) {
                    this._errorState++;
                    this._suspendErrors--;
                    schemaType2 = null;
                }
                if (i != this._errorState) {
                    emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_INVALID_QNAME, new Object[]{xsiType}, event.getName(), schemaType2, null, 3, state == null ? null : state._type);
                    this._eatContent = 1;
                    return;
                } else if (schemaType2 == null) {
                    emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_NOT_FOUND, new Object[]{xsiType}, event.getName(), null, null, 3, null);
                    this._eatContent = 1;
                    return;
                }
            } catch (Throwable th) {
                this._suspendErrors--;
                throw th;
            }
        } else {
            schemaType2 = null;
        }
        if (schemaType2 != null && !schemaType2.equals(schemaType)) {
            if (!schemaType.isAssignableFrom(schemaType2)) {
                emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_NOT_DERIVED, new Object[]{schemaType2, schemaType}, event.getName(), schemaType, null, 3, state == null ? null : state._type);
                this._eatContent = 1;
                return;
            }
            if (schemaType.blockExtension()) {
                for (SchemaType schemaType8 = schemaType2; !schemaType8.equals(schemaType); schemaType8 = schemaType8.getBaseType()) {
                    if (schemaType8.getDerivationType() == 2) {
                        emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_BLOCK_EXTENSION, new Object[]{schemaType2, schemaType}, event.getName(), schemaType, null, 3, state == null ? null : state._type);
                        this._eatContent = 1;
                        return;
                    }
                }
            }
            if (schemaType.blockRestriction()) {
                for (SchemaType schemaType9 = schemaType2; !schemaType9.equals(schemaType); schemaType9 = schemaType9.getBaseType()) {
                    if (schemaType9.getDerivationType() == 1) {
                        emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_BLOCK_RESTRICTION, new Object[]{schemaType2, schemaType}, event.getName(), schemaType, null, 3, state == null ? null : state._type);
                        this._eatContent = 1;
                        return;
                    }
                }
            }
            if (schemaField5 instanceof SchemaLocalElement) {
                SchemaLocalElement schemaLocalElement = (SchemaLocalElement) schemaField5;
                this._localElement = schemaLocalElement;
                if (schemaLocalElement.blockExtension() || schemaLocalElement.blockRestriction()) {
                    for (SchemaType schemaType10 = schemaType2; !schemaType10.equals(schemaType); schemaType10 = schemaType10.getBaseType()) {
                        if ((schemaType10.getDerivationType() == 1 && schemaLocalElement.blockRestriction()) || (schemaType10.getDerivationType() == 2 && schemaLocalElement.blockExtension())) {
                            emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_PROHIBITED_SUBST, new Object[]{schemaType2, QNameHelper.pretty(schemaLocalElement.getName())}, schemaLocalElement.getName(), null, null, 3, null);
                            this._eatContent = 1;
                            return;
                        }
                    }
                }
            }
            schemaType = schemaType2;
        }
        boolean z5 = schemaField5 instanceof SchemaLocalElement;
        if (z5) {
            SchemaLocalElement schemaLocalElement2 = (SchemaLocalElement) schemaField5;
            this._localElement = schemaLocalElement2;
            if (schemaLocalElement2.isAbstract()) {
                emitError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$ABSTRACT, new Object[]{QNameHelper.pretty(schemaLocalElement2.getName())}, schemaLocalElement2.getName(), null, 3, null);
                this._eatContent = 1;
                return;
            }
        }
        if (schemaType.isAbstract()) {
            emitError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$ABSTRACT, new Object[]{schemaType}, event.getName(), schemaType, 3, state == null ? null : state._type);
            this._eatContent = 1;
            return;
        }
        String xsiNil = event.getXsiNil();
        if (xsiNil != null) {
            ValidatorVC validatorVC2 = this._vc;
            validatorVC2._event = event;
            z = JavaBooleanHolder.validateLexical(xsiNil, validatorVC2);
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        if (z2 && (schemaField5 == null || !schemaField5.isNillable())) {
            emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$NOT_NILLABLE, null, schemaField5 == null ? null : schemaField5.getName(), schemaType, null, 3, state == null ? null : state._type);
            this._eatContent = 1;
            return;
        }
        if (z && schemaField5 != null && schemaField5.isFixed()) {
            z3 = z;
            z4 = z5;
            emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_FIXED, null, schemaField5.getName(), schemaType, null, 3, state == null ? null : state._type);
        } else {
            z3 = z;
            z4 = z5;
        }
        newState(schemaType, schemaField5, z3);
        this._constraintEngine.element(event, schemaType, z4 ? ((SchemaLocalElement) schemaField5).getIdentityConstraints() : null);
    }

    private boolean derivedFromInteger(SchemaType schemaType) {
        int builtinTypeCode = schemaType.getBuiltinTypeCode();
        while (builtinTypeCode == 0) {
            schemaType = schemaType.getBaseType();
            builtinTypeCode = schemaType.getBuiltinTypeCode();
        }
        return builtinTypeCode >= 22 && builtinTypeCode <= 34;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void emitError(ValidatorListener.Event event, String str, QName qName, SchemaType schemaType, int i) {
        emitError(event, str, null, null, 0, null, qName, schemaType, null, i, null);
    }

    private void emitFieldError(ValidatorListener.Event event, String str, Object[] objArr, QName qName, SchemaType schemaType, List<QName> list, int i, SchemaType schemaType2) {
        SchemaField schemaField;
        State state = this._stateStack;
        emitError(event, null, str, objArr, 0, (state == null || (schemaField = state._field) == null) ? null : schemaField.getName(), qName, schemaType, list, i, schemaType2);
    }

    private void endAttrsEvent(ValidatorListener.Event event) {
        State state = topState();
        SchemaAttributeModel schemaAttributeModel = state._attrModel;
        if (schemaAttributeModel != null) {
            for (SchemaLocalAttribute schemaLocalAttribute : schemaAttributeModel.getAttributes()) {
                HashSet<QName> hashSet = state._attrs;
                if (hashSet == null || !hashSet.contains(schemaLocalAttribute.getName())) {
                    if (schemaLocalAttribute.getUse() == 3) {
                        emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_REQUIRED_ATTRIBUTE, new Object[]{QNameHelper.pretty(schemaLocalAttribute.getName())}, schemaLocalAttribute.getName(), null, null, 1000, state._type);
                    } else if (schemaLocalAttribute.isDefault() || schemaLocalAttribute.isFixed()) {
                        this._constraintEngine.attr(event, schemaLocalAttribute.getName(), schemaLocalAttribute.getType(), schemaLocalAttribute.getDefaultText());
                    }
                }
            }
        }
    }

    private void endEvent(ValidatorListener.Event event) {
        this._localElement = null;
        this._wildcardElement = null;
        State state = topState();
        if (!state._isNil) {
            if (!state.end()) {
                findDetailedErrorEnd(event, state);
            }
            if (state._isEmpty) {
                handleText(event, true, state._field);
            }
        }
        popState(event);
        this._constraintEngine.endElement(event);
    }

    private void findDetailedErrorBegin(ValidatorListener.Event event, State state, QName qName) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (SchemaProperty schemaProperty : state._type.getElementProperties()) {
            if (state.test(schemaProperty.getName())) {
                if (BigInteger.ZERO.compareTo(schemaProperty.getMinOccurs()) == 0) {
                    arrayList2.add(schemaProperty.getName());
                } else {
                    arrayList.add(schemaProperty.getName());
                }
            }
        }
        ArrayList arrayList3 = arrayList.size() > 0 ? arrayList : arrayList2;
        if (arrayList3.size() > 0) {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$EXPECTED_DIFFERENT_ELEMENT, new Object[]{Integer.valueOf(arrayList3.size()), (String) arrayList3.stream().map(new vzn()).collect(Collectors.joining(" ")), QNameHelper.pretty(qName)}, qName, null, arrayList3, 1, state._type);
        } else {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ELEMENT_NOT_ALLOWED, new Object[]{QNameHelper.pretty(qName)}, qName, null, null, 1, state._type);
        }
    }

    private void findDetailedErrorEnd(ValidatorListener.Event event, State state) {
        SchemaProperty[] elementProperties = state._type.getElementProperties();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (SchemaProperty schemaProperty : elementProperties) {
            if (state.test(schemaProperty.getName())) {
                if (BigInteger.ZERO.compareTo(schemaProperty.getMinOccurs()) == 0) {
                    arrayList2.add(schemaProperty.getName());
                } else {
                    arrayList.add(schemaProperty.getName());
                }
            }
        }
        ArrayList arrayList3 = arrayList.size() > 0 ? arrayList : arrayList2;
        if (arrayList3.size() > 0) {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_ELEMENT, new Object[]{Integer.valueOf(arrayList3.size()), (String) arrayList3.stream().map(new vzn()).collect(Collectors.joining(" "))}, null, null, arrayList3, 1, state._type);
        } else {
            emitFieldError(event, XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$EXPECTED_ELEMENT, null, null, null, null, 2, state._type);
        }
    }

    private void handleText(ValidatorListener.Event event, boolean z, SchemaField schemaField) {
        State state = topState();
        if (!state._sawText) {
            if (state._hasSimpleContent) {
                this._constraintEngine.text(event, state._type, validateSimpleType(state._type, schemaField, event, z, true), false);
            } else if (state._canHaveMixedContent) {
                SchemaType schemaType = XmlString.type;
                this._constraintEngine.text(event, schemaType, validateSimpleType(schemaType, schemaField, event, z, true), false);
            } else if (z) {
                this._constraintEngine.text(event, state._type, null, true);
            } else {
                this._constraintEngine.text(event, state._type, "", false);
            }
        }
        if (!z && !state._canHaveMixedContent && !event.textIsWhitespace() && !state._hasSimpleContent) {
            if (schemaField instanceof SchemaLocalElement) {
                SchemaLocalElement schemaLocalElement = (SchemaLocalElement) schemaField;
                emitError(event, state._type.getContentType() == 1 ? XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$EMPTY_WITH_CONTENT : XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ELEMENT_ONLY_WITH_TEXT, new Object[]{QNameHelper.pretty(schemaLocalElement.getName())}, schemaLocalElement.getName(), schemaField.getType(), 3, null);
            } else {
                emitError(event, "Can't have mixed content", event.getName(), state._type, 3);
            }
        }
        if (z) {
            return;
        }
        state._sawText = true;
    }

    private SchemaTypeVisitorImpl initVisitor(SchemaParticle schemaParticle) {
        if (this._visitorPool.isEmpty()) {
            return new SchemaTypeVisitorImpl(schemaParticle);
        }
        SchemaTypeVisitorImpl schemaTypeVisitorImpl = (SchemaTypeVisitorImpl) this._visitorPool.removeLast();
        schemaTypeVisitorImpl.init(schemaParticle);
        return schemaTypeVisitorImpl;
    }

    private void newState(SchemaType schemaType, SchemaField schemaField, boolean z) {
        State state = new State();
        state._type = schemaType;
        state._field = schemaField;
        state._isEmpty = true;
        state._isNil = z;
        if (schemaType.isSimpleType()) {
            state._hasSimpleContent = true;
        } else {
            state._canHaveAttrs = true;
            state._attrModel = schemaType.getAttributeModel();
            int contentType = schemaType.getContentType();
            if (contentType != 1) {
                if (contentType != 2) {
                    if (contentType != 3) {
                        if (contentType != 4) {
                            throw new RuntimeException("Unexpected content type");
                        }
                        state._canHaveMixedContent = true;
                    }
                    SchemaParticle contentModel = schemaType.getContentModel();
                    boolean z2 = contentModel != null;
                    state._canHaveElements = z2;
                    if (z2) {
                        state._visitor = initVisitor(contentModel);
                    }
                } else {
                    state._hasSimpleContent = true;
                }
            }
        }
        pushState(state);
    }

    private void poolVisitor(SchemaTypeVisitorImpl schemaTypeVisitorImpl) {
        this._visitorPool.add(schemaTypeVisitorImpl);
    }

    private void popState(ValidatorListener.Event event) {
        SchemaTypeVisitorImpl schemaTypeVisitorImpl = this._stateStack._visitor;
        if (schemaTypeVisitorImpl != null) {
            poolVisitor(schemaTypeVisitorImpl);
            this._stateStack._visitor = null;
        }
        this._stateStack = this._stateStack._next;
    }

    private void pushState(State state) {
        state._next = this._stateStack;
        this._stateStack = state;
    }

    private void resetValues() {
        this._localAttribute = null;
        this._wildcardAttribute = null;
        this._stringValue = null;
        this._decimalValue = null;
        this._booleanValue = false;
        this._floatValue = 0.0f;
        this._doubleValue = 0.0d;
        this._qnameValue = null;
        this._gdateValue = null;
        this._gdurationValue = null;
        this._byteArrayValue = null;
        this._listValue = null;
        this._listTypes = null;
        this._unionType = null;
    }

    private void textEvent(ValidatorListener.Event event) {
        State state = topState();
        if (state._isNil) {
            QName name = state._field.getName();
            SchemaType schemaType = state._type;
            emitFieldError(event, XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_CONTENT, null, name, schemaType, null, 4, schemaType);
        } else {
            handleText(event, false, state._field);
        }
        state._isEmpty = false;
    }

    private State topState() {
        return this._stateStack;
    }

    private void validateAtomicType(SchemaType schemaType, String str, ValidatorListener.Event event) {
        int i = this._errorState;
        this._vc._event = event;
        switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
            case 2:
                this._stringValue = str;
                return;
            case 3:
                this._booleanValue = JavaBooleanHolderEx.validateLexical(str, schemaType, this._vc);
                return;
            case 4:
                byte[] validateLexical = JavaBase64Holder.validateLexical(str, schemaType, this._vc);
                if (validateLexical != null) {
                    JavaBase64HolderEx.validateValue(validateLexical, schemaType, this._vc);
                }
                this._byteArrayValue = validateLexical;
                return;
            case 5:
                byte[] validateLexical2 = JavaHexBinaryHolder.validateLexical(str, schemaType, this._vc);
                if (validateLexical2 != null) {
                    JavaHexBinaryHolderEx.validateValue(validateLexical2, schemaType, this._vc);
                }
                this._byteArrayValue = validateLexical2;
                return;
            case 6:
                JavaUriHolderEx.validateLexical(str, schemaType, this._vc);
                if (this._strict) {
                    try {
                        XsTypeConverter.lexAnyURI(str);
                    } catch (InvalidLexicalValueException unused) {
                        this._vc.invalid("anyURI", new Object[]{str});
                    }
                }
                this._stringValue = str;
                return;
            case 7:
                QName validateLexical3 = JavaQNameHolderEx.validateLexical(str, schemaType, this._vc, event);
                if (i == this._errorState) {
                    JavaQNameHolderEx.validateValue(validateLexical3, schemaType, this._vc);
                }
                this._qnameValue = validateLexical3;
                return;
            case 8:
                QName validateLexical4 = JavaNotationHolderEx.validateLexical(str, schemaType, this._vc, event);
                if (i == this._errorState) {
                    JavaNotationHolderEx.validateValue(validateLexical4, schemaType, this._vc);
                }
                this._qnameValue = validateLexical4;
                return;
            case 9:
                float validateLexical5 = JavaFloatHolderEx.validateLexical(str, schemaType, this._vc);
                if (i == this._errorState) {
                    JavaFloatHolderEx.validateValue(validateLexical5, schemaType, this._vc);
                }
                this._floatValue = validateLexical5;
                return;
            case 10:
                double validateLexical6 = JavaDoubleHolderEx.validateLexical(str, schemaType, this._vc);
                if (i == this._errorState) {
                    JavaDoubleHolderEx.validateValue(validateLexical6, schemaType, this._vc);
                }
                this._doubleValue = validateLexical6;
                return;
            case 11:
                JavaDecimalHolderEx.validateLexical(str, schemaType, this._vc);
                if (derivedFromInteger(schemaType) && str.lastIndexOf(46) >= 0) {
                    this._vc.invalid("integer", new Object[]{str});
                }
                if (i == this._errorState) {
                    BigDecimal bigDecimal = new BigDecimal(str);
                    this._decimalValue = bigDecimal;
                    JavaDecimalHolderEx.validateValue(bigDecimal, schemaType, this._vc);
                    return;
                }
                return;
            case 12:
                JavaStringEnumerationHolderEx.validateLexical(str, schemaType, this._vc);
                this._stringValue = str;
                return;
            case 13:
                GDuration validateLexical7 = JavaGDurationHolderEx.validateLexical(str, schemaType, this._vc);
                if (validateLexical7 != null) {
                    JavaGDurationHolderEx.validateValue(validateLexical7, schemaType, this._vc);
                }
                this._gdurationValue = validateLexical7;
                return;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                break;
            case 21:
                if (this._strict && str.length() == 6 && str.charAt(4) == '-' && str.charAt(5) == '-') {
                    this._vc.invalid("date", new Object[]{str});
                    break;
                }
                break;
            default:
                throw new RuntimeException("Unexpected primitive type code");
        }
        GDate validateLexical8 = JavaGDateHolderEx.validateLexical(str, schemaType, this._vc);
        if (validateLexical8 != null) {
            JavaGDateHolderEx.validateValue(validateLexical8, schemaType, this._vc);
        }
        this._gdateValue = validateLexical8;
    }

    private void validateListType(SchemaType schemaType, String str, ValidatorListener.Event event) {
        char c;
        char c2;
        int intValue;
        int intValue2;
        int intValue3;
        int i = this._errorState;
        if (!schemaType.matchPatternFacet(str)) {
            emitError(event, XmlErrorCodes.DATATYPE_VALID$PATTERN_VALID, new Object[]{"list", str, QNameHelper.readable(schemaType)}, null, schemaType, 2000, null);
        }
        String[] split_list = XmlListImpl.split_list(str);
        XmlAnySimpleType facet = schemaType.getFacet(0);
        if (facet != null && (intValue3 = ((SimpleValue) facet).getIntValue()) != split_list.length) {
            emitError(event, XmlErrorCodes.DATATYPE_LENGTH_VALID$LIST_LENGTH, new Object[]{str, Integer.valueOf(split_list.length), Integer.valueOf(intValue3), QNameHelper.readable(schemaType)}, null, schemaType, 2000, null);
        }
        XmlAnySimpleType facet2 = schemaType.getFacet(1);
        if (facet2 == null || (intValue2 = ((SimpleValue) facet2).getIntValue()) <= split_list.length) {
            c = 1;
        } else {
            c = 1;
            emitError(event, XmlErrorCodes.DATATYPE_LENGTH_VALID$LIST_LENGTH, new Object[]{str, Integer.valueOf(split_list.length), Integer.valueOf(intValue2), QNameHelper.readable(schemaType)}, null, schemaType, 2000, null);
        }
        XmlAnySimpleType facet3 = schemaType.getFacet(2);
        if (facet3 == null || (intValue = ((SimpleValue) facet3).getIntValue()) >= split_list.length) {
            c2 = 2;
        } else {
            c2 = 2;
            emitError(event, XmlErrorCodes.DATATYPE_LENGTH_VALID$LIST_LENGTH, new Object[]{str, Integer.valueOf(split_list.length), Integer.valueOf(intValue), QNameHelper.readable(schemaType)}, null, schemaType, 2000, null);
        }
        SchemaType listItemType = schemaType.getListItemType();
        this._listValue = new ArrayList();
        this._listTypes = new ArrayList();
        for (String str2 : split_list) {
            validateSimpleType(listItemType, str2, event);
            addToList(listItemType);
        }
        if (i != this._errorState || schemaType.getEnumerationValues() == null) {
            return;
        }
        NamespaceContext.push(new NamespaceContext(event));
        try {
            try {
                ((SchemaTypeImpl) schemaType).newValidatingValue(str);
            } catch (XmlValueOutOfRangeException unused) {
                Object[] objArr = new Object[3];
                objArr[0] = "list";
                objArr[c] = str;
                objArr[c2] = QNameHelper.readable(schemaType);
                emitError(event, XmlErrorCodes.DATATYPE_ENUM_VALID, objArr, null, schemaType, 2000, null);
            }
        } finally {
            NamespaceContext.pop();
        }
    }

    private String validateSimpleType(SchemaType schemaType, SchemaField schemaField, ValidatorListener.Event event, boolean z, boolean z2) {
        String str;
        String str2;
        if (!schemaType.isSimpleType() && schemaType.getContentType() != 2) {
            return null;
        }
        if (schemaType.isNoType()) {
            emitError(event, schemaField.isAttribute() ? XmlErrorCodes.ATTR_LOCALLY_VALID$NO_TYPE : XmlErrorCodes.ELEM_LOCALLY_VALID$NO_TYPE, null, schemaField.getName(), schemaType, 3, null);
            return null;
        }
        if (z) {
            str = "";
        } else {
            int whiteSpaceRule = schemaType.getWhiteSpaceRule();
            str = whiteSpaceRule == 1 ? event.getText() : event.getText(whiteSpaceRule);
        }
        if (str.length() == 0 && z2 && schemaField != null && (schemaField.isDefault() || schemaField.isFixed())) {
            if (XmlQName.type.isAssignableFrom(schemaType)) {
                emitError(event, "Default QName values are unsupported for " + QNameHelper.readable(schemaType) + " - ignoring.", null, null, 2, schemaField.getName(), null, schemaType, null, 3, null);
                return null;
            }
            String collapse = XmlWhitespace.collapse(schemaField.getDefaultText(), schemaType.getWhiteSpaceRule());
            if (validateSimpleType(schemaType, collapse, event)) {
                return collapse;
            }
            return null;
        }
        if (!validateSimpleType(schemaType, str, event)) {
            return null;
        }
        if (schemaField != null && schemaField.isFixed()) {
            String collapse2 = XmlWhitespace.collapse(schemaField.getDefaultText(), schemaType.getWhiteSpaceRule());
            if (!validateSimpleType(schemaType, collapse2, event)) {
                return null;
            }
            if (!schemaType.newValue(str).valueEquals(schemaType.newValue(collapse2))) {
                if (schemaField.isAttribute()) {
                    emitError(event, XmlErrorCodes.ATTR_LOCALLY_VALID$FIXED, new Object[]{str, collapse2, QNameHelper.pretty(event.getName())}, null, schemaField.getType(), 3, null);
                } else {
                    if (schemaField.getType().getContentType() == 4) {
                        str2 = XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_MIXED_CONTENT;
                    } else {
                        str2 = schemaType.isSimpleType() ? XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_SIMPLE_TYPE : null;
                    }
                    emitError(event, str2, new Object[]{str, collapse2}, schemaField.getName(), schemaField.getType(), 3, null);
                }
                return null;
            }
        }
        return str;
    }

    private void validateUnionType(SchemaType schemaType, String str, ValidatorListener.Event event) {
        if (!schemaType.matchPatternFacet(str)) {
            emitError(event, XmlErrorCodes.DATATYPE_VALID$PATTERN_VALID, new Object[]{"union", str, QNameHelper.readable(schemaType)}, null, schemaType, 3000, null);
        }
        SchemaType[] unionMemberTypes = schemaType.getUnionMemberTypes();
        int i = this._errorState;
        String str2 = str;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            if (i2 >= unionMemberTypes.length) {
                break;
            }
            int whiteSpaceRule = unionMemberTypes[i2].getWhiteSpaceRule();
            if (whiteSpaceRule == 0) {
                whiteSpaceRule = 1;
            }
            if (whiteSpaceRule != i3) {
                str2 = XmlWhitespace.collapse(str, whiteSpaceRule);
                i3 = whiteSpaceRule;
            }
            int i4 = this._errorState;
            this._suspendErrors++;
            try {
                validateSimpleType(unionMemberTypes[i2], str2, event);
                this._suspendErrors--;
                if (i4 == this._errorState) {
                    this._unionType = unionMemberTypes[i2];
                    break;
                }
                i2++;
            } catch (Throwable th) {
                this._suspendErrors--;
                throw th;
            }
        }
        this._errorState = i;
        if (i2 >= unionMemberTypes.length) {
            emitError(event, XmlErrorCodes.DATATYPE_VALID$UNION, new Object[]{str, QNameHelper.readable(schemaType)}, null, schemaType, 3000, null);
            return;
        }
        XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues != null) {
            NamespaceContext.push(new NamespaceContext(event));
            try {
                try {
                    XmlAnySimpleType newValue = schemaType.newValue(str);
                    int i5 = 0;
                    while (i5 < enumerationValues.length && !newValue.valueEquals(enumerationValues[i5])) {
                        i5++;
                    }
                    if (i5 >= enumerationValues.length) {
                        emitError(event, XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{"union", str, QNameHelper.readable(schemaType)}, null, schemaType, 3000, null);
                    }
                } catch (XmlValueOutOfRangeException unused) {
                    emitError(event, XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{"union", str, QNameHelper.readable(schemaType)}, null, schemaType, 3000, null);
                }
            } finally {
                NamespaceContext.pop();
            }
        }
    }

    public boolean getBooleanValue() {
        return this._booleanValue;
    }

    public byte[] getByteArrayValue() {
        return this._byteArrayValue;
    }

    public SchemaLocalAttribute getCurrentAttribute() {
        return this._localAttribute;
    }

    public SchemaLocalElement getCurrentElement() {
        State state;
        SchemaLocalElement schemaLocalElement = this._localElement;
        if (schemaLocalElement != null) {
            return schemaLocalElement;
        }
        if (this._eatContent <= 0 && (state = this._stateStack) != null) {
            SchemaField schemaField = state._field;
            if (schemaField instanceof SchemaLocalElement) {
                return (SchemaLocalElement) schemaField;
            }
        }
        return null;
    }

    public SchemaType getCurrentElementSchemaType() {
        State state = topState();
        if (state != null) {
            return state._type;
        }
        return null;
    }

    public SchemaAttributeModel getCurrentWildcardAttribute() {
        return this._wildcardAttribute;
    }

    public SchemaParticle getCurrentWildcardElement() {
        return this._wildcardElement;
    }

    public BigDecimal getDecimalValue() {
        return this._decimalValue;
    }

    public double getDoubleValue() {
        return this._doubleValue;
    }

    public float getFloatValue() {
        return this._floatValue;
    }

    public GDate getGDateValue() {
        return this._gdateValue;
    }

    public GDuration getGDurationValue() {
        return this._gdurationValue;
    }

    public List<SchemaType> getListTypes() {
        return this._listTypes;
    }

    public List<Object> getListValue() {
        return this._listValue;
    }

    public QName getQNameValue() {
        return this._qnameValue;
    }

    public String getStringValue() {
        return this._stringValue;
    }

    public SchemaType getUnionType() {
        return this._unionType;
    }

    public boolean isValid() {
        return !this._invalid && this._constraintEngine.isValid();
    }

    @Override // org.apache.xmlbeans.impl.common.ValidatorListener
    public void nextEvent(int i, ValidatorListener.Event event) {
        resetValues();
        int i2 = this._eatContent;
        if (i2 > 0) {
            if (i == 1) {
                this._eatContent = i2 + 1;
                return;
            } else {
                if (i != 2) {
                    return;
                }
                this._eatContent = i2 - 1;
                return;
            }
        }
        if (i == 1) {
            beginEvent(event);
            return;
        }
        if (i == 2) {
            endEvent(event);
            return;
        }
        if (i == 3) {
            textEvent(event);
        } else if (i == 4) {
            attrEvent(event);
        } else {
            if (i != 5) {
                return;
            }
            endAttrsEvent(event);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void emitError(ValidatorListener.Event event, String str, Object[] objArr, QName qName, SchemaType schemaType, int i, SchemaType schemaType2) {
        emitError(event, null, str, objArr, 0, null, qName, schemaType, null, i, schemaType2);
    }

    private void emitError(ValidatorListener.Event event, String str, String str2, Object[] objArr, int i, QName qName, QName qName2, SchemaType schemaType, List<QName> list, int i2, SchemaType schemaType2) {
        XmlValidationError forLocationWithDetails;
        this._errorState++;
        if (this._suspendErrors == 0) {
            if (i == 0) {
                this._invalid = true;
            }
            if (this._errorListener != null) {
                XmlCursor locationAsCursor = event.getLocationAsCursor();
                if (locationAsCursor != null) {
                    forLocationWithDetails = XmlValidationError.forCursorWithDetails(str, str2, objArr, i, locationAsCursor, qName, qName2, schemaType, list, i2, schemaType2);
                } else {
                    forLocationWithDetails = XmlValidationError.forLocationWithDetails(str, str2, objArr, i, event.getLocation(), qName, qName2, schemaType, list, i2, schemaType2);
                }
                this._errorListener.add(forLocationWithDetails);
            }
        }
    }

    private boolean validateSimpleType(SchemaType schemaType, String str, ValidatorListener.Event event) {
        if (!schemaType.isSimpleType() && schemaType.getContentType() != 2) {
            throw new RuntimeException("Not a simple type");
        }
        int i = this._errorState;
        int simpleVariety = schemaType.getSimpleVariety();
        if (simpleVariety == 1) {
            validateAtomicType(schemaType, str, event);
        } else if (simpleVariety == 2) {
            validateUnionType(schemaType, str, event);
        } else if (simpleVariety == 3) {
            validateListType(schemaType, str, event);
        } else {
            throw new RuntimeException("Unexpected simple variety");
        }
        return i == this._errorState;
    }
}
