package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETFIELD;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.GOTO_W;
import com.sun.org.apache.bcel.internal.generic.IFLT;
import com.sun.org.apache.bcel.internal.generic.IFNE;
import com.sun.org.apache.bcel.internal.generic.IFNONNULL;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPEQ;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPLT;
import com.sun.org.apache.bcel.internal.generic.IF_ICMPNE;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.dtm.Axis;
import java.util.Vector;

/* loaded from: classes10.dex */
class StepPattern extends RelativePathPattern {
    private static final int GENERAL_CONTEXT = 2;
    private static final int NO_CONTEXT = 0;
    private static final int SIMPLE_CONTEXT = 1;
    protected final int _axis;
    private int _contextCase;
    protected final int _nodeType;
    protected Vector _predicates;
    private Step _step = null;
    private boolean _isEpsilon = false;
    private double _priority = Double.MAX_VALUE;

    public StepPattern(int i, int i2, Vector vector) {
        this._axis = i;
        this._nodeType = i2;
        this._predicates = vector;
    }

    private int analyzeCases() {
        int size = this._predicates.size();
        boolean z = true;
        for (int i = 0; i < size && z; i++) {
            Predicate predicate = (Predicate) this._predicates.elementAt(i);
            if (predicate.isNthPositionFilter() || predicate.hasPositionCall() || predicate.hasLastCall()) {
                z = false;
            }
        }
        if (z) {
            return 0;
        }
        return size == 1 ? 1 : 2;
    }

    private String getNextFieldName() {
        return "__step_pattern_iter_" + getXSLTC().nextStepPatternSerial();
    }

    private void translateGeneralContext(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        int i;
        BranchHandle branchHandle;
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        String nextFieldName = getNextFieldName();
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("step_pattern_tmp1", Util.getJCRefType("I"), instructionList.getEnd(), null);
        instructionList.append(new ISTORE(addLocalVariable.getIndex()));
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("step_pattern_tmp2", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        if (classGenerator.isExternal()) {
            i = 0;
            branchHandle = null;
        } else {
            classGenerator.addField(new Field(2, constantPool.addUtf8(nextFieldName), constantPool.addUtf8("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), null, constantPool.getConstantPool()));
            i = constantPool.addFieldref(classGenerator.getClassName(), nextFieldName, "Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;");
            instructionList.append(classGenerator.loadTranslet());
            instructionList.append(new GETFIELD(i));
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
            branchHandle = instructionList.append((BranchInstruction) new IFNONNULL(null));
            instructionList.append(classGenerator.loadTranslet());
        }
        this._step.translate(classGenerator, methodGenerator);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        if (!classGenerator.isExternal()) {
            instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
            instructionList.append(new PUTFIELD(i));
            branchHandle.setTarget(instructionList.append(InstructionConstants.NOP));
        }
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_PARENT, Constants.GET_PARENT_SIG), 2));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(methodGenerator.setStartNode());
        LocalVariableGen addLocalVariable3 = methodGenerator.addLocalVariable("step_pattern_tmp3", Util.getJCRefType("I"), instructionList.getEnd(), null);
        BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
        InstructionHandle append2 = instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        InstructionHandle append3 = instructionList.append(methodGenerator.nextNode());
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ISTORE(addLocalVariable3.getIndex()));
        this._falseList.add(instructionList.append((BranchInstruction) new IFLT(null)));
        instructionList.append(new ILOAD(addLocalVariable3.getIndex()));
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        instructionList.append((BranchInstruction) new IF_ICMPLT(append2));
        instructionList.append(new ILOAD(addLocalVariable3.getIndex()));
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        this._falseList.add(instructionList.append((BranchInstruction) new IF_ICMPNE(null)));
        append.setTarget(append3);
    }

    private void translateKernel(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int i = this._nodeType;
        if (i == 1) {
            int addInterfaceMethodref = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "isElement", "(I)Z");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(InstructionConstants.SWAP);
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref, 2));
            BranchHandle append = instructionList.append((BranchInstruction) new IFNE(null));
            this._falseList.add(instructionList.append((BranchInstruction) new GOTO_W(null)));
            append.setTarget(instructionList.append(InstructionConstants.NOP));
            return;
        }
        if (i == 2) {
            int addInterfaceMethodref2 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "isAttribute", "(I)Z");
            instructionList.append(methodGenerator.loadDOM());
            instructionList.append(InstructionConstants.SWAP);
            instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref2, 2));
            BranchHandle append2 = instructionList.append((BranchInstruction) new IFNE(null));
            this._falseList.add(instructionList.append((BranchInstruction) new GOTO_W(null)));
            append2.setTarget(instructionList.append(InstructionConstants.NOP));
            return;
        }
        int addInterfaceMethodref3 = constantPool.addInterfaceMethodref(Constants.DOM_INTF, "getExpandedTypeID", Constants.GET_PARENT_SIG);
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(new INVOKEINTERFACE(addInterfaceMethodref3, 2));
        instructionList.append(new PUSH(constantPool, this._nodeType));
        BranchHandle append3 = instructionList.append((BranchInstruction) new IF_ICMPEQ(null));
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO_W(null)));
        append3.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    private void translateNoContext(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(InstructionConstants.SWAP);
        instructionList.append(methodGenerator.storeCurrentNode());
        if (!this._isEpsilon) {
            instructionList.append(methodGenerator.loadCurrentNode());
            translateKernel(classGenerator, methodGenerator);
        }
        int size = this._predicates.size();
        for (int i = 0; i < size; i++) {
            Expression expr = ((Predicate) this._predicates.elementAt(i)).getExpr();
            expr.translateDesynthesized(classGenerator, methodGenerator);
            this._trueList.append(expr._trueList);
            this._falseList.append(expr._falseList);
        }
        backPatchTrueList(instructionList.append(methodGenerator.storeCurrentNode()));
        BranchHandle append = instructionList.append((BranchInstruction) new GOTO(null));
        backPatchFalseList(instructionList.append(methodGenerator.storeCurrentNode()));
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO(null)));
        append.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    private void translateSimpleContext(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        LocalVariableGen addLocalVariable = methodGenerator.addLocalVariable("step_pattern_tmp1", Util.getJCRefType("I"), instructionList.getEnd(), null);
        instructionList.append(new ISTORE(addLocalVariable.getIndex()));
        if (!this._isEpsilon) {
            instructionList.append(new ILOAD(addLocalVariable.getIndex()));
            translateKernel(classGenerator, methodGenerator);
        }
        instructionList.append(methodGenerator.loadCurrentNode());
        instructionList.append(methodGenerator.loadIterator());
        int addMethodref = constantPool.addMethodref(Constants.MATCHING_ITERATOR, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V");
        this._step.translate(classGenerator, methodGenerator);
        LocalVariableGen addLocalVariable2 = methodGenerator.addLocalVariable("step_pattern_tmp2", Util.getJCRefType("Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), instructionList.getEnd(), null);
        instructionList.append(new ASTORE(addLocalVariable2.getIndex()));
        instructionList.append(new NEW(constantPool.addClass(Constants.MATCHING_ITERATOR)));
        instructionList.append(InstructionConstants.DUP);
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        instructionList.append(new ALOAD(addLocalVariable2.getIndex()));
        instructionList.append(new INVOKESPECIAL(addMethodref));
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        instructionList.append(new INVOKEINTERFACE(constantPool.addInterfaceMethodref(Constants.DOM_INTF, Constants.GET_PARENT, Constants.GET_PARENT_SIG), 2));
        instructionList.append(methodGenerator.setStartNode());
        instructionList.append(methodGenerator.storeIterator());
        instructionList.append(new ILOAD(addLocalVariable.getIndex()));
        instructionList.append(methodGenerator.storeCurrentNode());
        Expression expr = ((Predicate) this._predicates.elementAt(0)).getExpr();
        expr.translateDesynthesized(classGenerator, methodGenerator);
        InstructionHandle append = instructionList.append(methodGenerator.storeIterator());
        instructionList.append(methodGenerator.storeCurrentNode());
        expr.backPatchTrueList(append);
        BranchHandle append2 = instructionList.append((BranchInstruction) new GOTO(null));
        InstructionHandle append3 = instructionList.append(methodGenerator.storeIterator());
        instructionList.append(methodGenerator.storeCurrentNode());
        expr.backPatchFalseList(append3);
        this._falseList.add(instructionList.append((BranchInstruction) new GOTO(null)));
        append2.setTarget(instructionList.append(InstructionConstants.NOP));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public int getAxis() {
        return this._axis;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public double getDefaultPriority() {
        double d = this._priority;
        if (d != Double.MAX_VALUE) {
            return d;
        }
        if (hasPredicates()) {
            return 0.5d;
        }
        int i = this._nodeType;
        if (i != -1) {
            return (i == 0 || i >= 14) ? 0.0d : -0.5d;
        }
        return -0.5d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public StepPattern getKernelPattern() {
        return this;
    }

    public int getNodeType() {
        return this._nodeType;
    }

    public boolean hasPredicates() {
        Vector vector = this._predicates;
        return vector != null && vector.size() > 0;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public boolean isWildcard() {
        return this._isEpsilon && !hasPredicates();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
    public void reduceKernelPattern() {
        this._isEpsilon = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void setParser(Parser parser) {
        super.setParser(parser);
        Vector vector = this._predicates;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i < size; i++) {
                Predicate predicate = (Predicate) this._predicates.elementAt(i);
                predicate.setParser(parser);
                predicate.setParent(this);
            }
        }
    }

    public StepPattern setPredicates(Vector vector) {
        this._predicates = vector;
        return this;
    }

    public void setPriority(double d) {
        this._priority = d;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
    public String toString() {
        String num;
        StringBuffer stringBuffer = new StringBuffer("stepPattern(\"");
        stringBuffer.append(Axis.getNames(this._axis));
        stringBuffer.append("\", ");
        if (this._isEpsilon) {
            num = "epsilon{" + Integer.toString(this._nodeType) + "}";
        } else {
            num = Integer.toString(this._nodeType);
        }
        stringBuffer.append(num);
        if (this._predicates != null) {
            stringBuffer.append(", ");
            stringBuffer.append(this._predicates.toString());
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (!hasPredicates()) {
            if (isWildcard()) {
                instructionList.append(InstructionConstants.POP);
                return;
            } else {
                translateKernel(classGenerator, methodGenerator);
                return;
            }
        }
        int i = this._contextCase;
        if (i == 0) {
            translateNoContext(classGenerator, methodGenerator);
        } else if (i != 1) {
            translateGeneralContext(classGenerator, methodGenerator);
        } else {
            translateSimpleContext(classGenerator, methodGenerator);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern, com.sun.org.apache.xalan.internal.xsltc.compiler.Expression, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        Step step;
        if (hasPredicates()) {
            int size = this._predicates.size();
            for (int i = 0; i < size; i++) {
                ((Predicate) this._predicates.elementAt(i)).typeCheck(symbolTable);
            }
            int analyzeCases = analyzeCases();
            this._contextCase = analyzeCases;
            Step step2 = null;
            if (analyzeCases == 1) {
                if (((Predicate) this._predicates.elementAt(0)).isNthPositionFilter()) {
                    this._contextCase = 2;
                    step = new Step(this._axis, this._nodeType, this._predicates);
                } else {
                    step = new Step(this._axis, this._nodeType, null);
                }
                step2 = step;
            } else if (analyzeCases == 2) {
                int size2 = this._predicates.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((Predicate) this._predicates.elementAt(i2)).dontOptimize();
                }
                step2 = new Step(this._axis, this._nodeType, this._predicates);
            }
            if (step2 != null) {
                step2.setParser(getParser());
                step2.typeCheck(symbolTable);
                this._step = step2;
            }
        }
        return this._axis == 3 ? Type.Element : Type.Attribute;
    }
}
