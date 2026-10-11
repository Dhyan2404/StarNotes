package net.p110sf.saxon.pull;

import java.util.List;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface PullProvider {
    void close();

    PullEvent current();

    AtomicValue getAtomicValue();

    AttributeMap getAttributes() throws XPathException;

    NamespaceBinding[] getNamespaceDeclarations() throws XPathException;

    NodeName getNodeName();

    PipelineConfiguration getPipelineConfiguration();

    SchemaType getSchemaType();

    Location getSourceLocator();

    UnicodeString getStringValue() throws XPathException;

    List<UnparsedEntity> getUnparsedEntities();

    PullEvent next() throws XPathException;

    void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration);

    PullEvent skipToMatchingEnd() throws XPathException;
}
