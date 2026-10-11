package net.p110sf.saxon.functions;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import java.util.Properties;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.sort.DocumentOrderIterator;
import net.p110sf.saxon.expr.sort.GlobalOrderComparer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class Innermost extends SystemFunction {

    /* renamed from: h */
    public boolean f100242h = false;

    /* renamed from: net.sf.saxon.functions.Innermost$a */
    /* loaded from: classes11.dex */
    public class C18359a implements SequenceIterator {

        /* renamed from: e */
        public SequenceIterator f100243e;

        /* renamed from: f */
        public NodeInfo f100244f;

        /* renamed from: g */
        public int f100245g = 0;

        public C18359a(SequenceIterator sequenceIterator) throws XPathException {
            this.f100244f = null;
            this.f100243e = sequenceIterator;
            this.f100244f = (NodeInfo) sequenceIterator.next();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100243e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100243e.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            if (this.f100244f == null) {
                this.f100245g = -1;
                return null;
            }
            while (true) {
                NodeInfo nodeInfo = (NodeInfo) this.f100243e.next();
                if (nodeInfo == null) {
                    NodeInfo nodeInfo2 = this.f100244f;
                    this.f100245g++;
                    this.f100244f = null;
                    return nodeInfo2;
                }
                if (Navigator.isAncestorOrSelf(this.f100244f, nodeInfo)) {
                    this.f100244f = nodeInfo;
                } else {
                    this.f100245g++;
                    NodeInfo nodeInfo3 = this.f100244f;
                    this.f100244f = nodeInfo;
                    return nodeInfo3;
                }
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return SequenceTool.toLazySequence(innermost(sequenceArr[0].iterate()));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void exportAttributes(ExpressionPresenter expressionPresenter) {
        super.exportAttributes(expressionPresenter);
        if (this.f100242h) {
            expressionPresenter.emitAttribute("flags", "p");
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return ArchiveFormatCode.ARCHIVE_FORMAT_XAR;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void importAttributes(Properties properties) throws XPathException {
        super.importAttributes(properties);
        String property = properties.getProperty("flags");
        if (property == null || !property.contains("p")) {
            return;
        }
        this.f100242h = true;
    }

    public SequenceIterator innermost(SequenceIterator sequenceIterator) throws XPathException {
        if (!this.f100242h) {
            sequenceIterator = new DocumentOrderIterator(sequenceIterator, GlobalOrderComparer.getInstance());
        }
        return new C18359a(sequenceIterator);
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if ((expressionArr[0].getSpecialProperties() & 524288) != 0) {
            return expressionArr[0];
        }
        if ((expressionArr[0].getSpecialProperties() & 131072) != 0) {
            this.f100242h = true;
        }
        return super.makeOptimizedFunctionCall(expressionVisitor, contextItemStaticInfo, expressionArr);
    }
}
