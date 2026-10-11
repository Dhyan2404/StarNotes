package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.GOTO;
import com.sun.org.apache.bcel.internal.generic.IFEQ;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import java.util.Enumeration;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Choose extends Instruction {
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("Choose");
        int i2 = i + 4;
        indent(i2);
        displayContents(i2);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Vector vector = new Vector();
        Enumeration elements = elements();
        getLineNumber();
        Otherwise otherwise = null;
        while (elements.hasMoreElements()) {
            Object nextElement = elements.nextElement();
            if (nextElement instanceof When) {
                vector.addElement(nextElement);
            } else if (nextElement instanceof Otherwise) {
                if (otherwise == null) {
                    otherwise = (Otherwise) nextElement;
                } else {
                    getParser().reportError(3, new ErrorMsg(ErrorMsg.MULTIPLE_OTHERWISE_ERR, (SyntaxTreeNode) this));
                }
            } else if (nextElement instanceof Text) {
                ((Text) nextElement).ignore();
            } else {
                getParser().reportError(3, new ErrorMsg(ErrorMsg.WHEN_ELEMENT_ERR, (SyntaxTreeNode) this));
            }
        }
        if (vector.size() == 0) {
            getParser().reportError(3, new ErrorMsg(ErrorMsg.MISSING_WHEN_ERR, (SyntaxTreeNode) this));
            return;
        }
        InstructionList instructionList = methodGenerator.getInstructionList();
        Vector vector2 = new Vector();
        Enumeration elements2 = vector.elements();
        BranchHandle branchHandle = null;
        InstructionHandle instructionHandle = null;
        while (elements2.hasMoreElements()) {
            When when = (When) elements2.nextElement();
            Expression test = when.getTest();
            instructionList.getEnd();
            if (branchHandle != null) {
                branchHandle.setTarget(instructionList.append(InstructionConstants.NOP));
            }
            test.translateDesynthesized(classGenerator, methodGenerator);
            if (test instanceof FunctionCall) {
                try {
                    if (((FunctionCall) test).typeCheck(getParser().getSymbolTable()) != Type.Boolean) {
                        test._falseList.add(instructionList.append((BranchInstruction) new IFEQ(null)));
                    }
                } catch (TypeCheckError unused) {
                }
            }
            InstructionHandle end = instructionList.getEnd();
            if (!when.ignore()) {
                when.translateContents(classGenerator, methodGenerator);
            }
            vector2.addElement(instructionList.append((BranchInstruction) new GOTO(null)));
            if (elements2.hasMoreElements() || otherwise != null) {
                branchHandle = instructionList.append((BranchInstruction) new GOTO(null));
                test.backPatchFalseList(branchHandle);
            } else {
                instructionHandle = instructionList.append(InstructionConstants.NOP);
                test.backPatchFalseList(instructionHandle);
            }
            test.backPatchTrueList(end.getNext());
        }
        if (otherwise != null) {
            com.sun.org.apache.bcel.internal.generic.Instruction instruction = InstructionConstants.NOP;
            branchHandle.setTarget(instructionList.append(instruction));
            otherwise.translateContents(classGenerator, methodGenerator);
            instructionHandle = instructionList.append(instruction);
        }
        Enumeration elements3 = vector2.elements();
        while (elements3.hasMoreElements()) {
            ((BranchHandle) elements3.nextElement()).setTarget(instructionHandle);
        }
    }
}
