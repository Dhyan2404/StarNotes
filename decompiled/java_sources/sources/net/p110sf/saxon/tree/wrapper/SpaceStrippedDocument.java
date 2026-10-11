package net.p110sf.saxon.tree.wrapper;

import java.util.Iterator;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.tiny.TinyTree;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class SpaceStrippedDocument extends GenericTreeInfo {

    /* renamed from: j */
    public final SpaceStrippingRule f102718j;

    /* renamed from: k */
    public final boolean f102719k;

    /* renamed from: l */
    public final boolean f102720l;

    /* renamed from: m */
    public final TreeInfo f102721m;

    public SpaceStrippedDocument(TreeInfo treeInfo, SpaceStrippingRule spaceStrippingRule) {
        super(treeInfo.getConfiguration());
        setRootNode(wrap(treeInfo.getRootNode()));
        this.f102718j = spaceStrippingRule;
        this.f102721m = treeInfo;
        this.f102719k = m64587b(treeInfo);
        this.f102720l = m64586a(treeInfo);
    }

    /* renamed from: a */
    public static boolean m64586a(TreeInfo treeInfo) {
        if (!treeInfo.isTyped()) {
            return false;
        }
        AxisIterator iterateAxis = treeInfo.getRootNode().iterateAxis(4, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return false;
            }
            SchemaType schemaType = next.getSchemaType();
            if (schemaType.isComplexType() && ((ComplexType) schemaType).hasAssertions()) {
                return true;
            }
        }
    }

    /* renamed from: b */
    public static boolean m64587b(TreeInfo treeInfo) {
        NodeInfo next;
        if (treeInfo instanceof TinyTree) {
            return ((TinyTree) treeInfo).hasXmlSpacePreserveAttribute();
        }
        AxisIterator iterateAxis = treeInfo.getRootNode().iterateAxis(4, NodeKindTest.ELEMENT);
        do {
            next = iterateAxis.next();
            if (next == null) {
                return false;
            }
        } while (!"preserve".equals(next.getAttributeValue("http://www.w3.org/XML/1998/namespace", "space")));
        return true;
    }

    public boolean containsAssertions() {
        return this.f102720l;
    }

    public boolean containsPreserveSpace() {
        return this.f102719k;
    }

    public SpaceStrippingRule getStrippingRule() {
        return this.f102718j;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        return this.f102721m.getUnparsedEntity(str);
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        return this.f102721m.getUnparsedEntityNames();
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public boolean isTyped() {
        return this.f102721m.isTyped();
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        NodeInfo selectID = this.f102721m.selectID(str, false);
        if (selectID == null) {
            return null;
        }
        return wrap(selectID);
    }

    public SpaceStrippedNode wrap(NodeInfo nodeInfo) {
        return SpaceStrippedNode.makeWrapper(nodeInfo, this, null);
    }
}
