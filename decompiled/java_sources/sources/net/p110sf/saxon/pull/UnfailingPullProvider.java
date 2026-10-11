package net.p110sf.saxon.pull;

import java.util.List;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface UnfailingPullProvider extends PullProvider {
    @Override // net.p110sf.saxon.pull.PullProvider
    void close();

    @Override // net.p110sf.saxon.pull.PullProvider
    PullEvent current();

    @Override // net.p110sf.saxon.pull.PullProvider
    AtomicValue getAtomicValue();

    @Override // net.p110sf.saxon.pull.PullProvider
    AttributeMap getAttributes();

    @Override // net.p110sf.saxon.pull.PullProvider
    NamespaceBinding[] getNamespaceDeclarations();

    @Override // net.p110sf.saxon.pull.PullProvider
    NodeName getNodeName();

    @Override // net.p110sf.saxon.pull.PullProvider
    SchemaType getSchemaType();

    @Override // net.p110sf.saxon.pull.PullProvider
    Location getSourceLocator();

    @Override // net.p110sf.saxon.pull.PullProvider
    UnicodeString getStringValue() throws XPathException;

    @Override // net.p110sf.saxon.pull.PullProvider
    List<UnparsedEntity> getUnparsedEntities();

    @Override // net.p110sf.saxon.pull.PullProvider
    PullEvent next() throws XPathException;

    @Override // net.p110sf.saxon.pull.PullProvider
    PullEvent skipToMatchingEnd();
}
