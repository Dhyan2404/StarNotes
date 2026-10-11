package org.apache.xmlbeans.impl.xpath;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.xpath.XPathExecutionContext;

/* loaded from: classes13.dex */
public class XPathExecutionContext {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ATTRS = 4;
    public static final int DESCEND = 2;
    public static final int HIT = 1;
    private PathContext[] _paths;
    private final ArrayList<QName> _stack = new ArrayList<>();
    private XPath _xpath;

    /* loaded from: classes13.dex */
    public final class PathContext {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private XPathStep _curr;
        private final List<XPathStep> _prev;

        private PathContext() {
            this._prev = new ArrayList();
        }

        private void backtrack() {
            XPathStep xPathStep = this._curr;
            if (xPathStep._hasBacktrack) {
                this._curr = xPathStep._backtrack;
                return;
            }
            this._curr = xPathStep._prev;
            while (true) {
                XPathStep xPathStep2 = this._curr;
                if (xPathStep2._deep) {
                    return;
                }
                int i = 0;
                while (!xPathStep2._deep) {
                    int i2 = i + 1;
                    if (!xPathStep2.match(top(i))) {
                        break;
                    }
                    xPathStep2 = xPathStep2._prev;
                    i = i2;
                }
                return;
                this._curr = this._curr._prev;
            }
        }

        private QName top(int i) {
            return (QName) XPathExecutionContext.this._stack.get((XPathExecutionContext.this._stack.size() - 1) - i);
        }

        public boolean attr(QName qName) {
            XPathStep xPathStep = this._curr;
            return xPathStep != null && xPathStep._attr && xPathStep.match(qName);
        }

        public int element(QName qName) {
            this._prev.add(this._curr);
            XPathStep xPathStep = this._curr;
            if (xPathStep == null) {
                return 0;
            }
            if (!xPathStep._attr && xPathStep.match(qName)) {
                XPathStep xPathStep2 = this._curr._next;
                this._curr = xPathStep2;
                if (xPathStep2._name != null) {
                    return xPathStep2._flags;
                }
                backtrack();
                XPathStep xPathStep3 = this._curr;
                if (xPathStep3 == null) {
                    return 1;
                }
                return 1 | xPathStep3._flags;
            }
            while (true) {
                backtrack();
                XPathStep xPathStep4 = this._curr;
                if (xPathStep4 == null) {
                    return 0;
                }
                if (xPathStep4.match(qName)) {
                    this._curr = this._curr._next;
                    break;
                }
                if (this._curr._deep) {
                    break;
                }
            }
            return this._curr._flags;
        }

        public void end() {
            this._curr = this._prev.remove(r0.size() - 1);
        }

        public void init(XPathStep xPathStep) {
            this._curr = xPathStep;
            this._prev.clear();
        }

        public int start() {
            XPathStep xPathStep = this._curr;
            if (xPathStep._name != null) {
                return xPathStep._flags;
            }
            this._curr = null;
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ PathContext lambda$init$0(int i) {
        return new PathContext();
    }

    public final boolean attr(QName qName) {
        boolean z = false;
        for (PathContext pathContext : this._paths) {
            z |= pathContext.attr(qName);
        }
        return z;
    }

    public final int element(QName qName) {
        this._stack.add(qName);
        int i = 0;
        for (PathContext pathContext : this._paths) {
            i |= pathContext.element(qName);
        }
        return i;
    }

    public final void end() {
        this._stack.remove(r0.size() - 1);
        for (PathContext pathContext : this._paths) {
            pathContext.end();
        }
    }

    public final void init(XPath xPath) {
        if (this._xpath != xPath) {
            this._xpath = xPath;
            PathContext[] pathContextArr = new PathContext[xPath._selector._paths.length];
            this._paths = pathContextArr;
            Arrays.setAll(pathContextArr, new IntFunction() { // from class: com.sunia.HTREnginev2.bmo
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    XPathExecutionContext.PathContext lambda$init$0;
                    lambda$init$0 = XPathExecutionContext.this.lambda$init$0(i);
                    return lambda$init$0;
                }
            });
        }
        this._stack.clear();
        int i = 0;
        while (true) {
            PathContext[] pathContextArr2 = this._paths;
            if (i >= pathContextArr2.length) {
                return;
            }
            pathContextArr2[i].init(xPath._selector._paths[i]);
            i++;
        }
    }

    public final int start() {
        int i = 0;
        for (PathContext pathContext : this._paths) {
            i |= pathContext.start();
        }
        return i;
    }
}
