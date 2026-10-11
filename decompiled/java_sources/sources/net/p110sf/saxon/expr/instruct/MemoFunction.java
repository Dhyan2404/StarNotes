package net.p110sf.saxon.expr.instruct;

import java.util.HashMap;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.QNameValue;

/* loaded from: classes11.dex */
public class MemoFunction extends UserFunction {
    /* renamed from: c */
    public static String m62779c(Sequence[] sequenceArr) throws XPathException {
        StringBuilder sb = new StringBuilder(256);
        for (Sequence sequence : sequenceArr) {
            SequenceIterator iterate = sequence.iterate();
            while (true) {
                Item next = iterate.next();
                if (next != null) {
                    if (next instanceof NodeInfo) {
                        ((NodeInfo) next).generateId(sb);
                    } else if (next instanceof QNameValue) {
                        sb.append(Type.displayTypeName(next));
                        sb.append('/');
                        sb.append(((QNameValue) next).getClarkName());
                    } else if (next instanceof AtomicValue) {
                        sb.append(Type.displayTypeName(next));
                        sb.append('/');
                        sb.append(next.getUnicodeStringValue());
                    } else if (next instanceof Function) {
                        sb.append(next.getClass().getName());
                        sb.append("@");
                        sb.append("" + System.identityHashCode(next));
                    }
                    sb.append((char) 1);
                }
            }
            sb.append((char) 2);
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.expr.instruct.UserFunction, net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String m62779c = m62779c(sequenceArr);
        Controller controller = xPathContext.getController();
        HashMap hashMap = (HashMap) controller.getUserData(this, "memo-function-cache");
        Sequence sequence = hashMap == null ? null : (Sequence) hashMap.get(m62779c);
        if (sequence != null) {
            return sequence;
        }
        Sequence call = super.call(xPathContext, sequenceArr);
        if (hashMap == null) {
            hashMap = new HashMap(32);
            controller.setUserData(this, "memo-function-cache", hashMap);
        }
        hashMap.put(m62779c, call);
        return call;
    }

    @Override // net.p110sf.saxon.expr.instruct.UserFunction
    public void computeEvaluationMode() {
        this.evaluator = ExpressionTool.eagerEvaluator(getBody());
    }

    @Override // net.p110sf.saxon.expr.instruct.UserFunction
    public boolean isMemoFunction() {
        return true;
    }
}
