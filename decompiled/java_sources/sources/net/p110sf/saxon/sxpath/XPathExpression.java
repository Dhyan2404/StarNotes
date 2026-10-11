package net.p110sf.saxon.sxpath;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.SlotManager;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class XPathExpression {

    /* renamed from: a */
    public final StaticContext f102161a;

    /* renamed from: b */
    public final Expression f102162b;

    /* renamed from: c */
    public SlotManager f102163c;

    /* renamed from: d */
    public final Executable f102164d;

    /* renamed from: e */
    public int f102165e;

    public XPathExpression(StaticContext staticContext, Expression expression, Executable executable) {
        this.f102162b = expression;
        this.f102161a = staticContext;
        this.f102164d = executable;
    }

    /* renamed from: b */
    public final void m64072b(Item item) throws XPathException {
        if (item != null) {
            ItemType requiredContextItemType = this.f102161a.getRequiredContextItemType();
            if (requiredContextItemType.matches(item, this.f102161a.getConfiguration().getTypeHierarchy())) {
                return;
            }
            throw new XPathException("Supplied context item does not match required context item type " + requiredContextItemType);
        }
    }

    public XPathDynamicContext createDynamicContext() {
        XPathContextMajor xPathContextMajor = new XPathContextMajor(null, this.f102164d);
        xPathContextMajor.openStackFrame(this.f102163c);
        return new XPathDynamicContext(this.f102161a.getRequiredContextItemType(), xPathContextMajor, this.f102163c);
    }

    public boolean effectiveBooleanValue(XPathDynamicContext xPathDynamicContext) throws XPathException {
        return this.f102162b.effectiveBooleanValue(xPathDynamicContext.getXPathContextObject());
    }

    public List<Item> evaluate(XPathDynamicContext xPathDynamicContext) throws XPathException {
        final ArrayList arrayList = new ArrayList(20);
        SequenceTool.supply(this.f102162b.iterate(xPathDynamicContext.getXPathContextObject()), new ItemConsumer() { // from class: com.sunia.HTREnginev2.cmo
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                arrayList.add(item);
            }
        });
        return arrayList;
    }

    public Item evaluateSingle(XPathDynamicContext xPathDynamicContext) throws XPathException {
        SequenceIterator iterate = this.f102162b.iterate(xPathDynamicContext.getXPathContextObject());
        Item next = iterate.next();
        iterate.close();
        return next;
    }

    public Executable getExecutable() {
        return this.f102164d;
    }

    public Expression getInternalExpression() {
        return this.f102162b;
    }

    public SequenceIterator iterate(XPathDynamicContext xPathDynamicContext) throws XPathException {
        xPathDynamicContext.checkExternalVariables(this.f102163c, this.f102165e);
        return this.f102162b.iterate(xPathDynamicContext.getXPathContextObject());
    }

    public void setStackFrameMap(SlotManager slotManager, int i) {
        this.f102163c = slotManager;
        this.f102165e = i;
    }

    public XPathDynamicContext createDynamicContext(Item item) throws XPathException {
        m64072b(item);
        XPathContextMajor xPathContextMajor = new XPathContextMajor(item, this.f102164d);
        xPathContextMajor.openStackFrame(this.f102163c);
        return new XPathDynamicContext(this.f102161a.getRequiredContextItemType(), xPathContextMajor, this.f102163c);
    }

    public XPathDynamicContext createDynamicContext(Controller controller, Item item) throws XPathException {
        m64072b(item);
        if (controller == null) {
            return createDynamicContext(item);
        }
        XPathContextMajor newXPathContext = controller.newXPathContext();
        newXPathContext.openStackFrame(this.f102163c);
        XPathDynamicContext xPathDynamicContext = new XPathDynamicContext(this.f102161a.getRequiredContextItemType(), newXPathContext, this.f102163c);
        if (item != null) {
            xPathDynamicContext.setContextItem(item);
        }
        return xPathDynamicContext;
    }
}
