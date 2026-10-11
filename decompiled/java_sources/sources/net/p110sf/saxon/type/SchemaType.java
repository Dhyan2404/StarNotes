package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface SchemaType extends SchemaComponent {
    boolean allowsDerivation(int i);

    void analyzeContentExpression(Expression expression, int i) throws XPathException;

    AtomicSequence atomize(NodeInfo nodeInfo) throws XPathException;

    void checkTypeDerivationIsOK(SchemaType schemaType, int i) throws SchemaException;

    SchemaType getBaseType();

    int getBlock();

    int getDerivationMethod();

    String getDescription();

    String getDisplayName();

    String getEQName();

    int getFinalProhibitions();

    int getFingerprint();

    String getName();

    StructuredQName getStructuredQName();

    String getSystemId();

    String getTargetNamespace();

    boolean isAnonymousType();

    boolean isAtomicType();

    boolean isComplexType();

    boolean isIdRefType() throws MissingComponentException;

    boolean isIdType() throws MissingComponentException;

    boolean isSameType(SchemaType schemaType);

    boolean isSimpleType();
}
