package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public abstract class AttributeCreator extends SimpleNodeConstructor implements ValidatingInstruction {

    /* renamed from: r */
    public static final /* synthetic */ boolean f99624r = false;

    /* renamed from: o */
    public int f99626o;

    /* renamed from: q */
    public boolean f99628q;

    /* renamed from: n */
    public SimpleType f99625n = null;

    /* renamed from: p */
    public int f99627p = 0;

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor, net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public int computeSpecialProperties() {
        int computeSpecialProperties = super.computeSpecialProperties();
        return getValidationAction() == 4 ? computeSpecialProperties | 134217728 : computeSpecialProperties;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return NodeKindTest.ATTRIBUTE;
    }

    public int getOptions() {
        return this.f99627p;
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public int getValidationAction() {
        return this.f99626o;
    }

    @Override // net.p110sf.saxon.expr.instruct.Instruction, net.p110sf.saxon.expr.Expression
    public boolean isInstruction() {
        return this.f99628q;
    }

    @Override // net.p110sf.saxon.expr.instruct.SimpleNodeConstructor
    public void processValue(UnicodeString unicodeString, Outputter outputter, XPathContext xPathContext) throws XPathException {
        NodeName evaluateNodeName = evaluateNodeName(xPathContext);
        int options = getOptions();
        SimpleType schemaType = getSchemaType();
        int validationAction = getValidationAction();
        if (schemaType != null) {
            ValidationFailure validateContent = schemaType.validateContent(unicodeString, DummyNamespaceResolver.getInstance(), xPathContext.getConfiguration().getConversionRules());
            if (validateContent != null) {
                ValidationFailure validationFailure = new ValidationFailure("Attribute value " + Err.wrap(unicodeString, 4) + " does not match the required type " + schemaType.getDescription() + ". " + validateContent.getMessage());
                validationFailure.setSchemaType(schemaType);
                validationFailure.setErrorCode("XTTE1540");
                throw validationFailure.makeException();
            }
        } else if (validationAction == 1 || validationAction == 2) {
            try {
                schemaType = xPathContext.getConfiguration().validateAttribute(evaluateNodeName.getStructuredQName(), unicodeString, validationAction);
            } catch (ValidationException e) {
                XPathException makeXPathException = XPathException.makeXPathException(e);
                makeXPathException.maybeSetErrorCode(validationAction == 1 ? "XTTE1510" : "XTTE1515");
                makeXPathException.setXPathContext(xPathContext);
                makeXPathException.maybeSetLocation(getLocation());
                makeXPathException.setIsTypeError(true);
                throw makeXPathException;
            }
        } else {
            schemaType = BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        SimpleType simpleType = schemaType;
        if (evaluateNodeName.equals(StandardNames.XML_ID_NAME)) {
            unicodeString = Whitespace.collapseWhitespace(unicodeString);
        }
        try {
            outputter.attribute(evaluateNodeName, simpleType, unicodeString.toString(), getLocation(), options);
        } catch (XPathException e2) {
            throw Instruction.dynamicError(getLocation(), e2, xPathContext);
        }
    }

    public void setInstruction(boolean z) {
        this.f99628q = z;
    }

    public void setNoSpecialChars() {
        this.f99627p |= 4;
    }

    public void setOptions(int i) {
        this.f99627p = i;
    }

    public void setRejectDuplicates() {
        this.f99627p |= 32;
    }

    public void setSchemaType(SimpleType simpleType) {
        this.f99625n = simpleType;
    }

    public void setValidationAction(int i) {
        this.f99626o = i;
    }

    public void validateOrphanAttribute(Orphan orphan, XPathContext xPathContext) throws XPathException {
        ConversionRules conversionRules = xPathContext.getConfiguration().getConversionRules();
        SimpleType schemaType = getSchemaType();
        int validationAction = getValidationAction();
        if (schemaType == null) {
            if (validationAction == 1 || validationAction == 2) {
                try {
                    orphan.setTypeAnnotation(xPathContext.getController().getConfiguration().validateAttribute(NameOfNode.makeName(orphan).getStructuredQName(), orphan.getUnicodeStringValue(), validationAction));
                    return;
                } catch (ValidationException e) {
                    XPathException makeXPathException = XPathException.makeXPathException(e);
                    makeXPathException.setErrorCodeQName(e.getErrorCodeQName());
                    makeXPathException.setXPathContext(xPathContext);
                    makeXPathException.setLocation(getLocation());
                    makeXPathException.setIsTypeError(true);
                    throw makeXPathException;
                }
            }
            return;
        }
        ValidationFailure validateContent = schemaType.validateContent(orphan.getUnicodeStringValue(), DummyNamespaceResolver.getInstance(), conversionRules);
        if (validateContent == null) {
            orphan.setTypeAnnotation(schemaType);
            if (schemaType.isNamespaceSensitive()) {
                throw new XPathException("Cannot validate a parentless attribute whose content is namespace-sensitive", "XTTE1545");
            }
            return;
        }
        validateContent.setMessage("Attribute value " + Err.wrap(orphan.getUnicodeStringValue(), 4) + " does not the match the required type " + schemaType.getDescription() + ". " + validateContent.getMessage());
        validateContent.setErrorCode("XTTE1555");
        validateContent.setLocator(getLocation());
        throw validateContent.makeException();
    }

    @Override // net.p110sf.saxon.expr.instruct.ValidatingInstruction
    public SimpleType getSchemaType() {
        return this.f99625n;
    }
}
