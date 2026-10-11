package net.p110sf.saxon.type;

import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public interface SimpleType extends SchemaType, HyperType {
    SchemaType getBuiltInBaseType();

    AtomicSequence getTypedValue(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules) throws ValidationException;

    int getWhitespaceAction();

    @Override // net.p110sf.saxon.type.SchemaType
    boolean isAtomicType();

    boolean isBuiltInType();

    boolean isListType();

    boolean isUnionType();

    UnicodeString postprocess(UnicodeString unicodeString) throws ValidationException;

    UnicodeString preprocess(UnicodeString unicodeString) throws ValidationException;

    ValidationFailure validateContent(UnicodeString unicodeString, NamespaceResolver namespaceResolver, ConversionRules conversionRules);
}
