package net.p110sf.saxon.tree.linked;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public interface NodeFactory {
    ElementImpl makeElementNode(NodeInfo nodeInfo, NodeName nodeName, SchemaType schemaType, boolean z, AttributeMap attributeMap, NamespaceMap namespaceMap, PipelineConfiguration pipelineConfiguration, Location location, int i);

    TextImpl makeTextNode(NodeInfo nodeInfo, UnicodeString unicodeString);
}
