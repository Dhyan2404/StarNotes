package net.p110sf.saxon.type;

import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NodeTest;

/* loaded from: classes11.dex */
public interface SchemaDeclaration {
    StructuredQName getComponentName();

    int getFingerprint();

    SchemaType getType() throws MissingComponentException;

    boolean hasTypeAlternatives();

    boolean isAbstract();

    boolean isNillable();

    NodeTest makeSchemaNodeTest() throws MissingComponentException;
}
