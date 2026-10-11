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
public class Outermost extends SystemFunction {

    /* renamed from: h */
    public boolean f100276h = false;

    /* renamed from: net.sf.saxon.functions.Outermost$a */
    /* loaded from: classes11.dex */
    public class C18365a implements SequenceIterator {

        /* renamed from: e */
        public SequenceIterator f100277e;

        /* renamed from: f */
        public NodeInfo f100278f = null;

        /* renamed from: g */
        public int f100279g = 0;

        public C18365a(SequenceIterator sequenceIterator) {
            this.f100277e = sequenceIterator;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f100277e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f100277e.discharge();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            NodeInfo nodeInfo;
            NodeInfo nodeInfo2;
            do {
                nodeInfo = (NodeInfo) this.f100277e.next();
                if (nodeInfo == null) {
                    this.f100278f = null;
                    this.f100279g = -1;
                    return null;
                }
                nodeInfo2 = this.f100278f;
                if (nodeInfo2 == null) {
                    break;
                }
            } while (Navigator.isAncestorOrSelf(nodeInfo2, nodeInfo));
            this.f100278f = nodeInfo;
            this.f100279g++;
            return nodeInfo;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        SequenceIterator iterate = sequenceArr[0].iterate();
        if (!this.f100276h) {
            iterate = new DocumentOrderIterator(iterate, GlobalOrderComparer.getInstance());
        }
        return SequenceTool.toLazySequence(new C18365a(iterate));
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void exportAttributes(ExpressionPresenter expressionPresenter) {
        super.exportAttributes(expressionPresenter);
        if (this.f100276h) {
            expressionPresenter.emitAttribute("flags", "p");
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        return ArchiveFormatCode.ARCHIVE_FORMAT_XAR;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "Outermost";
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public void importAttributes(Properties properties) throws XPathException {
        super.importAttributes(properties);
        String property = properties.getProperty("flags");
        if (property == null || !property.contains("p")) {
            return;
        }
        this.f100276h = true;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if ((expressionArr[0].getSpecialProperties() & 524288) != 0) {
            return expressionArr[0];
        }
        this.f100276h = (expressionArr[0].getSpecialProperties() & 131072) != 0;
        return null;
    }
}
