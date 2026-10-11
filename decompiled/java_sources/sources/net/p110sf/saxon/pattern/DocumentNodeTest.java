package net.p110sf.saxon.pattern;

import java.util.Optional;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class DocumentNodeTest extends NodeTest {

    /* renamed from: i */
    public final NodeTest f100892i;

    public DocumentNodeTest(NodeTest nodeTest) {
        this.f100892i = nodeTest;
    }

    public boolean equals(Object obj) {
        return (obj instanceof DocumentNodeTest) && ((DocumentNodeTest) obj).f100892i.equals(this.f100892i);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public Optional<String> explainMismatch(Item item, TypeHierarchy typeHierarchy) {
        Optional<String> explainMismatch = super.explainMismatch(item, typeHierarchy);
        if (explainMismatch.isPresent()) {
            return explainMismatch;
        }
        AxisIterator iterateAxis = ((NodeInfo) item).iterateAxis(3);
        boolean z = false;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return Optional.empty();
            }
            int nodeKind = next.getNodeKind();
            if (nodeKind == 3) {
                return Optional.of("The supplied document node has text node children");
            }
            if (nodeKind == 1) {
                if (z) {
                    return Optional.of("The supplied document node has more than one element child");
                }
                if (!this.f100892i.test(next)) {
                    String str = "The supplied document node has an element child (" + Err.depict(next) + ") that does not satisfy the element test";
                    Optional<String> explainMismatch2 = this.f100892i.explainMismatch(next, typeHierarchy);
                    if (explainMismatch2.isPresent()) {
                        str = str + ". " + explainMismatch2.get();
                    }
                    return Optional.of(str);
                }
                z = true;
            }
        }
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public final double getDefaultPriority() {
        return this.f100892i.getDefaultPriority();
    }

    public NodeTest getElementTest() {
        return this.f100892i;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getFullAlphaCode() {
        return getBasicAlphaCode() + " e[" + this.f100892i.getFullAlphaCode() + IteratorUtils.f104924b;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public int getPrimitiveType() {
        return 9;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.DOCUMENT;
    }

    public int hashCode() {
        return this.f100892i.hashCode() ^ 12345;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        if (i != 9) {
            return false;
        }
        throw new UnsupportedOperationException("DocumentNodeTest doesn't support this method");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        if (nodeInfo.getNodeKind() != 9) {
            return false;
        }
        AxisIterator iterateAxis = nodeInfo.iterateAxis(3);
        boolean z = false;
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return z;
            }
            int nodeKind = next.getNodeKind();
            if (nodeKind == 3) {
                return false;
            }
            if (nodeKind == 1) {
                if (z || !this.f100892i.test(next)) {
                    return false;
                }
                z = true;
            }
        }
    }

    public String toString() {
        return "document-node(" + this.f100892i + ')';
    }
}
