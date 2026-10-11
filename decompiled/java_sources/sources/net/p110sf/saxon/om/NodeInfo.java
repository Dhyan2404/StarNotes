package net.p110sf.saxon.om;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public interface NodeInfo extends Item, Location, ActiveSource {
    default ActiveSource asActiveSource() {
        return new NodeSource(this);
    }

    @Override // net.p110sf.saxon.om.Item
    AtomicSequence atomize() throws XPathException;

    default AttributeMap attributes() {
        AttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
        if (getNodeKind() == 1) {
            AxisIterator iterateAxis = iterateAxis(2);
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    break;
                }
                emptyAttributeMap = emptyAttributeMap.put(new AttributeInfo(NameOfNode.makeName(next), (SimpleType) next.getSchemaType(), next.getStringValue(), Loc.NONE, 0));
            }
        }
        return emptyAttributeMap;
    }

    default Iterable<? extends NodeInfo> children() {
        return new Navigator.ChildrenAsIterable(this);
    }

    int compareOrder(NodeInfo nodeInfo);

    default void copy(Receiver receiver, int i, Location location) throws XPathException {
        Navigator.copy(this, receiver, i, location);
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    default void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        Sender.sendDocumentInfo(this, receiver, new Loc(getSystemId(), -1, -1));
    }

    boolean equals(Object obj);

    void generateId(StringBuilder sb);

    NamespaceMap getAllNamespaces();

    String getAttributeValue(String str, String str2);

    String getBaseURI();

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    default int getColumnNumber() {
        return -1;
    }

    default Configuration getConfiguration() {
        return getTreeInfo().getConfiguration();
    }

    NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr);

    String getDisplayName();

    int getFingerprint();

    @Override // net.p110sf.saxon.om.Item
    default Genre getGenre() {
        return Genre.NODE;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    default int getLineNumber() {
        return -1;
    }

    String getLocalPart();

    int getNodeKind();

    NodeInfo getParent();

    String getPrefix();

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    default String getPublicId() {
        return null;
    }

    NodeInfo getRoot();

    default SchemaType getSchemaType() {
        int nodeKind = getNodeKind();
        if (nodeKind != 1) {
            if (nodeKind == 2) {
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            }
            if (nodeKind != 9) {
                return null;
            }
        }
        return Untyped.getInstance();
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    String getSystemId();

    TreeInfo getTreeInfo();

    String getURI();

    boolean hasChildNodes();

    boolean hasFingerprint();

    int hashCode();

    default boolean isId() {
        return false;
    }

    default boolean isIdref() {
        return false;
    }

    default boolean isNilled() {
        return false;
    }

    default boolean isSameNodeInfo(NodeInfo nodeInfo) {
        return equals(nodeInfo);
    }

    @Override // net.p110sf.saxon.om.Item
    default boolean isStreamed() {
        return false;
    }

    default AxisIterator iterateAxis(int i) {
        return iterateAxis(i, AnyNodeTest.getInstance());
    }

    AxisIterator iterateAxis(int i, NodePredicate nodePredicate);

    @Override // javax.xml.transform.Source
    void setSystemId(String str);

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    default String toShortString() {
        int nodeKind = getNodeKind();
        if (nodeKind == 1) {
            return "<" + getDisplayName() + XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT;
        }
        if (nodeKind == 2) {
            return "@" + getDisplayName();
        }
        if (nodeKind == 3) {
            return "text(\"" + Err.truncate30(getUnicodeStringValue()) + "\")";
        }
        if (nodeKind == 7) {
            return "<?" + getDisplayName() + "?>";
        }
        if (nodeKind == 8) {
            return XMLStreamWriterImpl.START_COMMENT + Err.truncate30(getUnicodeStringValue()) + XMLStreamWriterImpl.END_COMMENT;
        }
        if (nodeKind == 9) {
            return "document-node()";
        }
        String str = "";
        if (nodeKind != 13) {
            return "";
        }
        String localPart = getLocalPart();
        StringBuilder sb = new StringBuilder();
        sb.append("xmlns");
        if (!localPart.equals("")) {
            str = ":" + localPart;
        }
        sb.append(str);
        sb.append("=\"");
        sb.append(getUnicodeStringValue());
        sb.append('\"');
        return sb.toString();
    }

    default Iterable<? extends NodeInfo> children(NodePredicate nodePredicate) {
        return new Navigator.ChildrenAsIterable(this, nodePredicate);
    }
}
