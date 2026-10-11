package com.sun.org.apache.xalan.internal.templates;

import com.bumptech.glide.load.engine.GlideException;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionNode;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.axes.AxesWalker;
import com.sun.org.apache.xpath.internal.axes.FilterExprIteratorSimple;
import com.sun.org.apache.xpath.internal.axes.FilterExprWalker;
import com.sun.org.apache.xpath.internal.axes.LocPathIterator;
import com.sun.org.apache.xpath.internal.axes.SelfIteratorNoPredicate;
import com.sun.org.apache.xpath.internal.axes.WalkerFactory;
import com.sun.org.apache.xpath.internal.axes.WalkingIterator;
import com.sun.org.apache.xpath.internal.operations.Variable;
import com.sun.org.apache.xpath.internal.operations.VariableSafeAbsRef;
import java.util.Vector;
import org.w3c.dom.DOMException;

/* loaded from: classes10.dex */
public class RedundentExprEliminator extends XSLTVisitor {
    public static final boolean DEBUG = false;
    public static final boolean DIAGNOSE_MULTISTEPLIST = false;
    public static final boolean DIAGNOSE_NUM_PATHS_REDUCED = false;
    static final String PSUEDOVARNAMESPACE = "http://xml.apache.org/xalan/psuedovar";
    private static int m_uniquePseudoVarID = 1;
    AbsPathChecker m_absPathChecker = new AbsPathChecker();
    VarNameCollector m_varNameCollector = new VarNameCollector();
    boolean m_isSameContext = true;
    Vector m_absPaths = new Vector();
    Vector m_paths = null;

    /* loaded from: classes10.dex */
    public class MultistepExprHolder implements Cloneable {
        ExpressionOwner m_exprOwner;
        MultistepExprHolder m_next;
        final int m_stepCount;

        public MultistepExprHolder(ExpressionOwner expressionOwner, int i, MultistepExprHolder multistepExprHolder) {
            this.m_exprOwner = expressionOwner;
            RedundentExprEliminator.assertion(expressionOwner != null, "exprOwner can not be null!");
            this.m_stepCount = i;
            this.m_next = multistepExprHolder;
        }

        public MultistepExprHolder addInSortedOrder(ExpressionOwner expressionOwner, int i) {
            MultistepExprHolder multistepExprHolder = null;
            for (MultistepExprHolder multistepExprHolder2 = this; multistepExprHolder2 != null; multistepExprHolder2 = multistepExprHolder2.m_next) {
                if (i >= multistepExprHolder2.m_stepCount) {
                    MultistepExprHolder multistepExprHolder3 = new MultistepExprHolder(expressionOwner, i, multistepExprHolder2);
                    if (multistepExprHolder == null) {
                        return multistepExprHolder3;
                    }
                    multistepExprHolder.m_next = multistepExprHolder3;
                    return this;
                }
                multistepExprHolder = multistepExprHolder2;
            }
            multistepExprHolder.m_next = new MultistepExprHolder(expressionOwner, i, null);
            return this;
        }

        public Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public void diagnose() {
            System.err.print("Found multistep iterators: " + getLength() + GlideException.C1935a.f14609h);
            while (this != null) {
                System.err.print("" + this.m_stepCount);
                this = this.m_next;
                if (this != null) {
                    System.err.print(", ");
                }
            }
            System.err.println();
        }

        public int getLength() {
            int i = 0;
            while (this != null) {
                i++;
                this = this.m_next;
            }
            return i;
        }

        public MultistepExprHolder unlink(MultistepExprHolder multistepExprHolder) {
            MultistepExprHolder multistepExprHolder2 = null;
            for (MultistepExprHolder multistepExprHolder3 = this; multistepExprHolder3 != null; multistepExprHolder3 = multistepExprHolder3.m_next) {
                if (multistepExprHolder3 == multistepExprHolder) {
                    if (multistepExprHolder2 == null) {
                        this = multistepExprHolder3.m_next;
                    } else {
                        multistepExprHolder2.m_next = multistepExprHolder3.m_next;
                    }
                    multistepExprHolder3.m_next = null;
                    return this;
                }
                multistepExprHolder2 = multistepExprHolder3;
            }
            RedundentExprEliminator.assertion(false, "unlink failed!!!");
            return null;
        }
    }

    private final void assertIsLocPathIterator(Expression expression, ExpressionOwner expressionOwner) throws RuntimeException {
        String str;
        if (expression instanceof LocPathIterator) {
            return;
        }
        if (expression instanceof Variable) {
            str = "Programmer's assertion: expr1 not an iterator: " + ((Variable) expression).getQName();
        } else {
            str = "Programmer's assertion: expr1 not an iterator: " + expression.getClass().getName();
        }
        throw new RuntimeException(str + ", " + expressionOwner.getClass().getName() + " " + expression.exprGetParent());
    }

    public static void assertion(boolean z, String str) {
        if (!z) {
            throw new RuntimeException(XSLMessages.createMessage("ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR", new Object[]{str}));
        }
    }

    private static synchronized int getPseudoVarID() {
        int i;
        synchronized (RedundentExprEliminator.class) {
            i = m_uniquePseudoVarID;
            m_uniquePseudoVarID = i + 1;
        }
        return i;
    }

    private static void validateNewAddition(Vector vector, ExpressionOwner expressionOwner, LocPathIterator locPathIterator) throws RuntimeException {
        assertion(expressionOwner.getExpression() == locPathIterator, "owner.getExpression() != path!!!");
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            ExpressionOwner expressionOwner2 = (ExpressionOwner) vector.elementAt(i);
            assertion(expressionOwner2 != expressionOwner, "duplicate owner on the list!!!");
            assertion(expressionOwner2.getExpression() != locPathIterator, "duplicate expression on the list!!!");
        }
    }

    public ElemVariable addVarDeclToElem(ElemTemplateElement elemTemplateElement, LocPathIterator locPathIterator, ElemVariable elemVariable) throws DOMException {
        ElemTemplateElement firstChildElem = elemTemplateElement.getFirstChildElem();
        locPathIterator.callVisitors(null, this.m_varNameCollector);
        if (this.m_varNameCollector.getVarCount() > 0) {
            ElemVariable prevVariableElem = getPrevVariableElem(getElemFromExpression(locPathIterator));
            while (true) {
                if (prevVariableElem == null) {
                    break;
                }
                if (this.m_varNameCollector.doesOccur(prevVariableElem.getName())) {
                    elemTemplateElement = prevVariableElem.getParentElem();
                    firstChildElem = prevVariableElem.getNextSiblingElem();
                    break;
                }
                prevVariableElem = getPrevVariableElem(prevVariableElem);
            }
        }
        if (firstChildElem != null && 41 == firstChildElem.getXSLToken()) {
            if (!isParam(locPathIterator)) {
                while (firstChildElem != null) {
                    firstChildElem = firstChildElem.getNextSiblingElem();
                    if (firstChildElem != null && 41 != firstChildElem.getXSLToken()) {
                        break;
                    }
                }
            } else {
                return null;
            }
        }
        elemTemplateElement.insertBefore(elemVariable, firstChildElem);
        this.m_varNameCollector.reset();
        return elemVariable;
    }

    public LocPathIterator changePartToRef(QName qName, WalkingIterator walkingIterator, int i, boolean z) {
        Variable variable = new Variable();
        variable.setQName(qName);
        variable.setIsGlobal(z);
        if (z) {
            variable.setIndex(getElemFromExpression(walkingIterator).getStylesheetRoot().getVariablesAndParamsComposed().size() - 1);
        }
        int i2 = 0;
        AxesWalker axesWalker = walkingIterator.getFirstWalker();
        while (i2 < i) {
            assertion(axesWalker != null, "Walker should not be null!");
            i2++;
            axesWalker = axesWalker.getNextWalker();
        }
        if (axesWalker == null) {
            FilterExprIteratorSimple filterExprIteratorSimple = new FilterExprIteratorSimple(variable);
            filterExprIteratorSimple.exprSetParent(walkingIterator.exprGetParent());
            return filterExprIteratorSimple;
        }
        FilterExprWalker filterExprWalker = new FilterExprWalker(walkingIterator);
        filterExprWalker.setInnerExpression(variable);
        filterExprWalker.exprSetParent(walkingIterator);
        filterExprWalker.setNextWalker(axesWalker);
        axesWalker.setPrevWalker(filterExprWalker);
        walkingIterator.setFirstWalker(filterExprWalker);
        return walkingIterator;
    }

    public void changeToVarRef(QName qName, ExpressionOwner expressionOwner, Vector vector, ElemTemplateElement elemTemplateElement) {
        Variable variableSafeAbsRef = vector == this.m_absPaths ? new VariableSafeAbsRef() : new Variable();
        variableSafeAbsRef.setQName(qName);
        if (vector == this.m_absPaths) {
            variableSafeAbsRef.setIndex(((StylesheetRoot) elemTemplateElement).getVariablesAndParamsComposed().size() - 1);
            variableSafeAbsRef.setIsGlobal(true);
        }
        expressionOwner.setExpression(variableSafeAbsRef);
    }

    public int countAncestors(ElemTemplateElement elemTemplateElement) {
        int i = 0;
        while (elemTemplateElement != null) {
            i++;
            elemTemplateElement = elemTemplateElement.getParentElem();
        }
        return i;
    }

    public int countSteps(LocPathIterator locPathIterator) {
        if (!(locPathIterator instanceof WalkingIterator)) {
            return 1;
        }
        int i = 0;
        for (AxesWalker firstWalker = ((WalkingIterator) locPathIterator).getFirstWalker(); firstWalker != null; firstWalker = firstWalker.getNextWalker()) {
            i++;
        }
        return i;
    }

    public ElemVariable createGlobalPseudoVarDecl(QName qName, StylesheetRoot stylesheetRoot, LocPathIterator locPathIterator) throws DOMException {
        ElemVariable elemVariable = new ElemVariable();
        elemVariable.setIsTopLevel(true);
        elemVariable.setSelect(new XPath(locPathIterator));
        elemVariable.setName(qName);
        Vector variablesAndParamsComposed = stylesheetRoot.getVariablesAndParamsComposed();
        elemVariable.setIndex(variablesAndParamsComposed.size());
        variablesAndParamsComposed.addElement(elemVariable);
        return elemVariable;
    }

    public WalkingIterator createIteratorFromSteps(WalkingIterator walkingIterator, int i) {
        WalkingIterator walkingIterator2 = new WalkingIterator(walkingIterator.getPrefixResolver());
        try {
            AxesWalker axesWalker = (AxesWalker) walkingIterator.getFirstWalker().clone();
            walkingIterator2.setFirstWalker(axesWalker);
            axesWalker.setLocPathIterator(walkingIterator2);
            int i2 = 1;
            AxesWalker axesWalker2 = axesWalker;
            while (i2 < i) {
                AxesWalker axesWalker3 = (AxesWalker) axesWalker2.getNextWalker().clone();
                axesWalker2.setNextWalker(axesWalker3);
                axesWalker3.setLocPathIterator(walkingIterator2);
                i2++;
                axesWalker2 = axesWalker3;
            }
            axesWalker2.setNextWalker(null);
            return walkingIterator2;
        } catch (CloneNotSupportedException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    public ElemVariable createLocalPseudoVarDecl(QName qName, ElemTemplateElement elemTemplateElement, LocPathIterator locPathIterator) throws DOMException {
        ElemVariablePsuedo elemVariablePsuedo = new ElemVariablePsuedo();
        elemVariablePsuedo.setSelect(new XPath(locPathIterator));
        elemVariablePsuedo.setName(qName);
        ElemVariable addVarDeclToElem = addVarDeclToElem(elemTemplateElement, locPathIterator, elemVariablePsuedo);
        locPathIterator.exprSetParent(addVarDeclToElem);
        return addVarDeclToElem;
    }

    public MultistepExprHolder createMultistepExprList(Vector vector) {
        int countSteps;
        int size = vector.size();
        MultistepExprHolder multistepExprHolder = null;
        for (int i = 0; i < size; i++) {
            ExpressionOwner expressionOwner = (ExpressionOwner) vector.elementAt(i);
            if (expressionOwner != null && (countSteps = countSteps((LocPathIterator) expressionOwner.getExpression())) > 1) {
                multistepExprHolder = multistepExprHolder == null ? new MultistepExprHolder(expressionOwner, countSteps, null) : multistepExprHolder.addInSortedOrder(expressionOwner, countSteps);
            }
        }
        if (multistepExprHolder == null || multistepExprHolder.getLength() <= 1) {
            return null;
        }
        return multistepExprHolder;
    }

    public ElemVariable createPseudoVarDecl(ElemTemplateElement elemTemplateElement, LocPathIterator locPathIterator, boolean z) throws DOMException {
        QName qName = new QName(PSUEDOVARNAMESPACE, "#" + getPseudoVarID());
        return z ? createGlobalPseudoVarDecl(qName, (StylesheetRoot) elemTemplateElement, locPathIterator) : createLocalPseudoVarDecl(qName, elemTemplateElement, locPathIterator);
    }

    public void diagnoseLineNumber(Expression expression) {
        ElemTemplateElement elemFromExpression = getElemFromExpression(expression);
        System.err.println("   " + elemFromExpression.getSystemId() + " Line " + elemFromExpression.getLineNumber());
    }

    public void diagnoseMultistepList(int i, int i2, boolean z) {
        if (i > 0) {
            System.err.print("Found multistep matches: " + i + ", " + i2 + " length");
            if (z) {
                System.err.println(" (global)");
            } else {
                System.err.println();
            }
        }
    }

    public void diagnoseNumPaths(Vector vector, int i, int i2) {
        if (i > 0) {
            if (vector == this.m_paths) {
                System.err.println("Eliminated " + i + " total paths!");
                System.err.println("Consolodated " + i2 + " redundent paths!");
                return;
            }
            System.err.println("Eliminated " + i + " total global paths!");
            System.err.println("Consolodated " + i2 + " redundent global paths!");
        }
    }

    public void eleminateRedundent(ElemTemplateElement elemTemplateElement, Vector vector) {
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            ExpressionOwner expressionOwner = (ExpressionOwner) vector.elementAt(i);
            if (expressionOwner != null) {
                findAndEliminateRedundant(i + 1, i, expressionOwner, elemTemplateElement, vector);
            }
        }
        eleminateSharedPartialPaths(elemTemplateElement, vector);
    }

    public void eleminateRedundentGlobals(StylesheetRoot stylesheetRoot) {
        eleminateRedundent(stylesheetRoot, this.m_absPaths);
    }

    public void eleminateRedundentLocals(ElemTemplateElement elemTemplateElement) {
        eleminateRedundent(elemTemplateElement, this.m_paths);
    }

    public void eleminateSharedPartialPaths(ElemTemplateElement elemTemplateElement, Vector vector) {
        MultistepExprHolder createMultistepExprList = createMultistepExprList(vector);
        if (createMultistepExprList != null) {
            boolean z = vector == this.m_absPaths;
            int i = createMultistepExprList.m_stepCount - 1;
            while (i >= 1) {
                MultistepExprHolder multistepExprHolder = createMultistepExprList;
                while (createMultistepExprList != null && createMultistepExprList.m_stepCount >= i) {
                    multistepExprHolder = matchAndEliminatePartialPaths(createMultistepExprList, multistepExprHolder, z, i, elemTemplateElement);
                    createMultistepExprList = createMultistepExprList.m_next;
                }
                i--;
                createMultistepExprList = multistepExprHolder;
            }
        }
    }

    public int findAndEliminateRedundant(int i, int i2, ExpressionOwner expressionOwner, ElemTemplateElement elemTemplateElement, Vector vector) throws DOMException {
        int size = vector.size();
        Expression expression = expressionOwner.getExpression();
        boolean z = vector == this.m_absPaths;
        LocPathIterator locPathIterator = (LocPathIterator) expression;
        int countSteps = countSteps(locPathIterator);
        int i3 = 0;
        MultistepExprHolder multistepExprHolder = null;
        MultistepExprHolder multistepExprHolder2 = null;
        for (int i4 = i; i4 < size; i4++) {
            ExpressionOwner expressionOwner2 = (ExpressionOwner) vector.elementAt(i4);
            if (expressionOwner2 != null) {
                Expression expression2 = expressionOwner2.getExpression();
                if (expression2.deepEquals(locPathIterator)) {
                    if (multistepExprHolder == null) {
                        multistepExprHolder2 = new MultistepExprHolder(expressionOwner, countSteps, null);
                        i3++;
                        multistepExprHolder = multistepExprHolder2;
                    }
                    MultistepExprHolder multistepExprHolder3 = new MultistepExprHolder(expressionOwner2, countSteps, null);
                    multistepExprHolder2.m_next = multistepExprHolder3;
                    vector.setElementAt(null, i4);
                    i3++;
                    multistepExprHolder2 = multistepExprHolder3;
                }
            }
        }
        if (i3 == 0 && z) {
            multistepExprHolder = new MultistepExprHolder(expressionOwner, countSteps, null);
            i3++;
        }
        if (multistepExprHolder != null) {
            ElemTemplateElement findCommonAncestor = z ? elemTemplateElement : findCommonAncestor(multistepExprHolder);
            ElemVariable createPseudoVarDecl = createPseudoVarDecl(findCommonAncestor, (LocPathIterator) multistepExprHolder.m_exprOwner.getExpression(), z);
            QName name = createPseudoVarDecl.getName();
            while (multistepExprHolder != null) {
                changeToVarRef(name, multistepExprHolder.m_exprOwner, vector, findCommonAncestor);
                multistepExprHolder = multistepExprHolder.m_next;
            }
            vector.setElementAt(createPseudoVarDecl.getSelect(), i2);
        }
        return i3;
    }

    public ElemTemplateElement findCommonAncestor(MultistepExprHolder multistepExprHolder) {
        int length = multistepExprHolder.getLength();
        ElemTemplateElement[] elemTemplateElementArr = new ElemTemplateElement[length];
        int[] iArr = new int[length];
        int i = 10000;
        MultistepExprHolder multistepExprHolder2 = multistepExprHolder;
        for (int i2 = 0; i2 < length; i2++) {
            ElemTemplateElement elemFromExpression = getElemFromExpression(multistepExprHolder2.m_exprOwner.getExpression());
            elemTemplateElementArr[i2] = elemFromExpression;
            int countAncestors = countAncestors(elemFromExpression);
            iArr[i2] = countAncestors;
            if (countAncestors < i) {
                i = countAncestors;
            }
            multistepExprHolder2 = multistepExprHolder2.m_next;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (i4 > i) {
                int i5 = i4 - i;
                for (int i6 = 0; i6 < i5; i6++) {
                    elemTemplateElementArr[i3] = elemTemplateElementArr[i3].getParentElem();
                }
            }
        }
        while (true) {
            int i7 = i - 1;
            if (i < 0) {
                assertion(false, "Could not find common ancestor!!!");
                return null;
            }
            ElemTemplateElement elemTemplateElement = elemTemplateElementArr[0];
            boolean z = true;
            int i8 = 1;
            while (true) {
                if (i8 >= length) {
                    break;
                }
                if (elemTemplateElement != elemTemplateElementArr[i8]) {
                    z = false;
                    break;
                }
                i8++;
            }
            if (z && isNotSameAsOwner(multistepExprHolder, elemTemplateElement) && elemTemplateElement.canAcceptVariables()) {
                return elemTemplateElement;
            }
            for (int i9 = 0; i9 < length; i9++) {
                elemTemplateElementArr[i9] = elemTemplateElementArr[i9].getParentElem();
            }
            i = i7;
        }
    }

    public ElemTemplateElement getElemFromExpression(Expression expression) {
        for (ExpressionNode exprGetParent = expression.exprGetParent(); exprGetParent != null; exprGetParent = exprGetParent.exprGetParent()) {
            if (exprGetParent instanceof ElemTemplateElement) {
                return (ElemTemplateElement) exprGetParent;
            }
        }
        throw new RuntimeException(XSLMessages.createMessage("ER_ASSERT_NO_TEMPLATE_PARENT", null));
    }

    public ElemTemplateElement getPrevElementWithinContext(ElemTemplateElement elemTemplateElement) {
        ElemTemplateElement previousSiblingElem = elemTemplateElement.getPreviousSiblingElem();
        if (previousSiblingElem == null) {
            previousSiblingElem = elemTemplateElement.getParentElem();
        }
        if (previousSiblingElem == null) {
            return previousSiblingElem;
        }
        int xSLToken = previousSiblingElem.getXSLToken();
        if (28 == xSLToken || 19 == xSLToken || 25 == xSLToken) {
            return null;
        }
        return previousSiblingElem;
    }

    public ElemVariable getPrevVariableElem(ElemTemplateElement elemTemplateElement) {
        int xSLToken;
        do {
            elemTemplateElement = getPrevElementWithinContext(elemTemplateElement);
            if (elemTemplateElement == null) {
                return null;
            }
            xSLToken = elemTemplateElement.getXSLToken();
            if (73 == xSLToken) {
                break;
            }
        } while (41 != xSLToken);
        return (ElemVariable) elemTemplateElement;
    }

    public boolean isAbsolute(LocPathIterator locPathIterator) {
        int analysisBits = locPathIterator.getAnalysisBits();
        boolean z = WalkerFactory.isSet(analysisBits, 134217728) || WalkerFactory.isSet(analysisBits, 536870912);
        return z ? this.m_absPathChecker.checkAbsolute(locPathIterator) : z;
    }

    public boolean isNotSameAsOwner(MultistepExprHolder multistepExprHolder, ElemTemplateElement elemTemplateElement) {
        while (multistepExprHolder != null) {
            if (getElemFromExpression(multistepExprHolder.m_exprOwner.getExpression()) == elemTemplateElement) {
                return false;
            }
            multistepExprHolder = multistepExprHolder.m_next;
        }
        return true;
    }

    public boolean isParam(ExpressionNode expressionNode) {
        while (expressionNode != null && !(expressionNode instanceof ElemTemplateElement)) {
            expressionNode = expressionNode.exprGetParent();
        }
        if (expressionNode == null) {
            return false;
        }
        for (ElemTemplateElement elemTemplateElement = (ElemTemplateElement) expressionNode; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.getParentElem()) {
            int xSLToken = elemTemplateElement.getXSLToken();
            if (xSLToken == 19 || xSLToken == 25) {
                return false;
            }
            if (xSLToken == 41) {
                return true;
            }
        }
        return false;
    }

    public MultistepExprHolder matchAndEliminatePartialPaths(MultistepExprHolder multistepExprHolder, MultistepExprHolder multistepExprHolder2, boolean z, int i, ElemTemplateElement elemTemplateElement) {
        ExpressionOwner expressionOwner;
        ExpressionOwner expressionOwner2 = multistepExprHolder.m_exprOwner;
        if (expressionOwner2 == null) {
            return multistepExprHolder2;
        }
        WalkingIterator walkingIterator = (WalkingIterator) expressionOwner2.getExpression();
        if (partialIsVariable(multistepExprHolder, i)) {
            return multistepExprHolder2;
        }
        MultistepExprHolder multistepExprHolder3 = null;
        MultistepExprHolder multistepExprHolder4 = null;
        for (MultistepExprHolder multistepExprHolder5 = multistepExprHolder2; multistepExprHolder5 != null; multistepExprHolder5 = multistepExprHolder5.m_next) {
            if (multistepExprHolder5 != multistepExprHolder && (expressionOwner = multistepExprHolder5.m_exprOwner) != null && stepsEqual(walkingIterator, (WalkingIterator) expressionOwner.getExpression(), i)) {
                if (multistepExprHolder3 == null) {
                    try {
                        multistepExprHolder4 = (MultistepExprHolder) multistepExprHolder.clone();
                    } catch (CloneNotSupportedException unused) {
                    }
                    try {
                        multistepExprHolder.m_exprOwner = null;
                    } catch (CloneNotSupportedException unused2) {
                        multistepExprHolder3 = multistepExprHolder4;
                        multistepExprHolder4 = multistepExprHolder3;
                        multistepExprHolder4.m_next = null;
                        multistepExprHolder3 = multistepExprHolder4;
                        multistepExprHolder4.m_next = (MultistepExprHolder) multistepExprHolder5.clone();
                        multistepExprHolder5.m_exprOwner = null;
                        multistepExprHolder4 = multistepExprHolder4.m_next;
                        multistepExprHolder4.m_next = null;
                    }
                    multistepExprHolder4.m_next = null;
                    multistepExprHolder3 = multistepExprHolder4;
                }
                try {
                    multistepExprHolder4.m_next = (MultistepExprHolder) multistepExprHolder5.clone();
                    multistepExprHolder5.m_exprOwner = null;
                } catch (CloneNotSupportedException unused3) {
                }
                multistepExprHolder4 = multistepExprHolder4.m_next;
                multistepExprHolder4.m_next = null;
            }
        }
        if (multistepExprHolder3 != null) {
            if (!z) {
                elemTemplateElement = findCommonAncestor(multistepExprHolder3);
            }
            ElemVariable createPseudoVarDecl = createPseudoVarDecl(elemTemplateElement, createIteratorFromSteps((WalkingIterator) multistepExprHolder3.m_exprOwner.getExpression(), i), z);
            while (multistepExprHolder3 != null) {
                ExpressionOwner expressionOwner3 = multistepExprHolder3.m_exprOwner;
                expressionOwner3.setExpression(changePartToRef(createPseudoVarDecl.getName(), (WalkingIterator) expressionOwner3.getExpression(), i, z));
                multistepExprHolder3 = multistepExprHolder3.m_next;
            }
        }
        return multistepExprHolder2;
    }

    public int oldFindAndEliminateRedundant(int i, int i2, ExpressionOwner expressionOwner, ElemTemplateElement elemTemplateElement, Vector vector) throws DOMException {
        int size = vector.size();
        Expression expression = expressionOwner.getExpression();
        boolean z = vector == this.m_absPaths;
        LocPathIterator locPathIterator = (LocPathIterator) expression;
        int i3 = 0;
        boolean z2 = false;
        QName qName = null;
        for (int i4 = i; i4 < size; i4++) {
            ExpressionOwner expressionOwner2 = (ExpressionOwner) vector.elementAt(i4);
            if (expressionOwner2 != null) {
                Expression expression2 = expressionOwner2.getExpression();
                if (expression2.deepEquals(locPathIterator)) {
                    if (!z2) {
                        ElemVariable createPseudoVarDecl = createPseudoVarDecl(elemTemplateElement, locPathIterator, z);
                        if (createPseudoVarDecl == null) {
                            return 0;
                        }
                        QName name = createPseudoVarDecl.getName();
                        changeToVarRef(name, expressionOwner, vector, elemTemplateElement);
                        vector.setElementAt(createPseudoVarDecl.getSelect(), i2);
                        i3++;
                        qName = name;
                        z2 = true;
                    }
                    changeToVarRef(qName, expressionOwner2, vector, elemTemplateElement);
                    vector.setElementAt(null, i4);
                    i3++;
                }
            }
        }
        if (i3 != 0 || vector != this.m_absPaths) {
            return i3;
        }
        ElemVariable createPseudoVarDecl2 = createPseudoVarDecl(elemTemplateElement, locPathIterator, true);
        if (createPseudoVarDecl2 == null) {
            return 0;
        }
        changeToVarRef(createPseudoVarDecl2.getName(), expressionOwner, vector, elemTemplateElement);
        vector.setElementAt(createPseudoVarDecl2.getSelect(), i2);
        return i3 + 1;
    }

    public boolean partialIsVariable(MultistepExprHolder multistepExprHolder, int i) {
        return 1 == i && (((WalkingIterator) multistepExprHolder.m_exprOwner.getExpression()).getFirstWalker() instanceof FilterExprWalker);
    }

    public boolean stepsEqual(WalkingIterator walkingIterator, WalkingIterator walkingIterator2, int i) {
        AxesWalker firstWalker = walkingIterator.getFirstWalker();
        AxesWalker firstWalker2 = walkingIterator2.getFirstWalker();
        for (int i2 = 0; i2 < i; i2++) {
            if (firstWalker == null || firstWalker2 == null || !firstWalker.deepEquals(firstWalker2)) {
                return false;
            }
            firstWalker = firstWalker.getNextWalker();
            firstWalker2 = firstWalker2.getNextWalker();
        }
        assertion((firstWalker == null && firstWalker2 == null) ? false : true, "Total match is incorrect!");
        return true;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitor
    public boolean visitInstruction(ElemTemplateElement elemTemplateElement) {
        int xSLToken = elemTemplateElement.getXSLToken();
        if (xSLToken != 17 && xSLToken != 19 && xSLToken != 28) {
            if (xSLToken != 35 && xSLToken != 64) {
                return true;
            }
            boolean z = this.m_isSameContext;
            this.m_isSameContext = false;
            elemTemplateElement.callChildVisitors(this);
            this.m_isSameContext = z;
            return false;
        }
        if (xSLToken == 28) {
            ElemForEach elemForEach = (ElemForEach) elemTemplateElement;
            elemForEach.getSelect().callVisitors(elemForEach, this);
        }
        Vector vector = this.m_paths;
        this.m_paths = new Vector();
        elemTemplateElement.callChildVisitors(this, false);
        eleminateRedundentLocals(elemTemplateElement);
        this.m_paths = vector;
        return false;
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitLocationPath(ExpressionOwner expressionOwner, LocPathIterator locPathIterator) {
        Vector vector;
        Vector vector2;
        if (locPathIterator instanceof SelfIteratorNoPredicate) {
            return true;
        }
        if (locPathIterator instanceof WalkingIterator) {
            AxesWalker firstWalker = ((WalkingIterator) locPathIterator).getFirstWalker();
            if ((firstWalker instanceof FilterExprWalker) && firstWalker.getNextWalker() == null && (((FilterExprWalker) firstWalker).getInnerExpression() instanceof Variable)) {
                return true;
            }
        }
        if (isAbsolute(locPathIterator) && (vector2 = this.m_absPaths) != null) {
            vector2.addElement(expressionOwner);
        } else if (this.m_isSameContext && (vector = this.m_paths) != null) {
            vector.addElement(expressionOwner);
        }
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.XPathVisitor
    public boolean visitPredicate(ExpressionOwner expressionOwner, Expression expression) {
        boolean z = this.m_isSameContext;
        this.m_isSameContext = false;
        expression.callVisitors(expressionOwner, this);
        this.m_isSameContext = z;
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.XSLTVisitor
    public boolean visitTopLevelInstruction(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement.getXSLToken() != 19) {
            return true;
        }
        return visitInstruction(elemTemplateElement);
    }
}
