package net.p110sf.saxon.sxpath;

import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.expr.parser.TypeChecker;
import net.p110sf.saxon.lib.CollectionFinder;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.ResourceResolver;
import net.p110sf.saxon.lib.UnparsedTextURIResolver;
import net.p110sf.saxon.om.DocumentKey;
import net.p110sf.saxon.om.DocumentPool;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ManualIterator;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XPathDynamicContext {

    /* renamed from: a */
    public final ItemType f102157a;

    /* renamed from: b */
    public final XPathContextMajor f102158b;

    /* renamed from: c */
    public final SlotManager f102159c;

    public XPathDynamicContext(ItemType itemType, XPathContextMajor xPathContextMajor, SlotManager slotManager) {
        this.f102157a = itemType;
        this.f102158b = xPathContextMajor;
        this.f102159c = slotManager;
    }

    public void checkExternalVariables(SlotManager slotManager, int i) throws XPathException {
        Sequence[] stackFrameValues = this.f102158b.getStackFrame().getStackFrameValues();
        for (int i2 = 0; i2 < i; i2++) {
            if (stackFrameValues[i2] == null) {
                throw new XPathException("No value has been supplied for variable $" + slotManager.getVariableMap().get(i2).getDisplayName());
            }
        }
    }

    public CollectionFinder getCollectionFinder() {
        return this.f102158b.getController().getCollectionFinder();
    }

    public Item getContextItem() {
        return this.f102158b.getContextItem();
    }

    public ErrorReporter getErrorReporter() {
        return this.f102158b.getErrorReporter();
    }

    public ResourceResolver getResourceResolver() {
        return this.f102158b.getResourceResolver();
    }

    public UnparsedTextURIResolver getUnparsedTextURIResolver() {
        return this.f102158b.getController().getUnparsedTextURIResolver();
    }

    public XPathContext getXPathContextObject() {
        return this.f102158b;
    }

    public void setCollectionFinder(CollectionFinder collectionFinder) {
        this.f102158b.getController().setCollectionFinder(collectionFinder);
    }

    public void setContextItem(Item item) throws XPathException {
        Controller controller;
        boolean z = item instanceof NodeInfo;
        if (z && !((NodeInfo) item).getConfiguration().isCompatible(this.f102158b.getConfiguration())) {
            throw new XPathException("Supplied node must be built using the same or a compatible Configuration", SaxonErrorCode.SXXP0004);
        }
        if (!this.f102157a.matches(item, this.f102158b.getConfiguration().getTypeHierarchy())) {
            throw new XPathException("Supplied context item does not match required context item type " + this.f102157a);
        }
        this.f102158b.setCurrentIterator(new ManualIterator(item));
        if (z) {
            NodeInfo nodeInfo = (NodeInfo) item;
            if (nodeInfo.getSystemId() == null || (controller = this.f102158b.getController()) == null) {
                return;
            }
            DocumentPool documentPool = controller.getDocumentPool();
            DocumentKey documentKey = new DocumentKey(nodeInfo.getSystemId());
            if (documentPool.find(documentKey) == null) {
                documentPool.add(nodeInfo.getTreeInfo(), documentKey);
            }
        }
    }

    public void setErrorReporter(ErrorReporter errorReporter) {
        this.f102158b.setErrorReporter(errorReporter);
    }

    public void setResourceResolver(ResourceResolver resourceResolver) {
        this.f102158b.setResourceResolver(resourceResolver);
    }

    public void setUnparsedTextURIResolver(UnparsedTextURIResolver unparsedTextURIResolver) {
        this.f102158b.getController().setUnparsedTextURIResolver(unparsedTextURIResolver);
    }

    public void setVariable(XPathVariable xPathVariable, Sequence sequence) throws XPathException {
        XPathException testConformance;
        SequenceType requiredType = xPathVariable.getRequiredType();
        if (requiredType != SequenceType.ANY_SEQUENCE && (testConformance = TypeChecker.testConformance(sequence, requiredType, this.f102158b)) != null) {
            throw testConformance;
        }
        SequenceIterator iterate = sequence.iterate();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                int localSlotNumber = xPathVariable.getLocalSlotNumber();
                if (!xPathVariable.getVariableQName().equals(localSlotNumber >= this.f102159c.getNumberOfVariables() ? null : this.f102159c.getVariableMap().get(localSlotNumber))) {
                    throw new XPathException("Supplied XPathVariable is bound to the wrong slot: perhaps it was created using a different static context");
                }
                this.f102158b.setLocalVariable(localSlotNumber, sequence);
                return;
            }
            if ((next instanceof NodeInfo) && !((NodeInfo) next).getConfiguration().isCompatible(this.f102158b.getConfiguration())) {
                throw new XPathException("Supplied node must be built using the same or a compatible Configuration", SaxonErrorCode.SXXP0004);
            }
        }
    }
}
