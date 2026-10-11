package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.BranchHandle;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.GOTO_W;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import java.util.Dictionary;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class TestSeq {
    private Template _default;
    private InstructionList _instructionList;
    private int _kernelType;
    private Mode _mode;
    private Vector _patterns;
    private InstructionHandle _start;

    public TestSeq(Vector vector, Mode mode) {
        this(vector, -2, mode);
    }

    private LocationPathPattern getPattern(int i) {
        return (LocationPathPattern) this._patterns.elementAt(i);
    }

    private InstructionHandle getTemplateHandle(Template template) {
        return this._mode.getTemplateInstructionHandle(template);
    }

    public InstructionHandle compile(ClassGenerator classGenerator, MethodGenerator methodGenerator, InstructionHandle instructionHandle) {
        InstructionHandle instructionHandle2 = this._start;
        if (instructionHandle2 != null) {
            return instructionHandle2;
        }
        int size = this._patterns.size();
        if (size == 0) {
            InstructionHandle templateHandle = getTemplateHandle(this._default);
            this._start = templateHandle;
            return templateHandle;
        }
        Template template = this._default;
        if (template != null) {
            instructionHandle = getTemplateHandle(template);
        }
        for (int i = size - 1; i >= 0; i--) {
            LocationPathPattern pattern = getPattern(i);
            Template template2 = pattern.getTemplate();
            InstructionList instructionList = new InstructionList();
            instructionList.append(methodGenerator.loadCurrentNode());
            InstructionList instructionList2 = methodGenerator.getInstructionList(pattern);
            if (instructionList2 == null) {
                instructionList2 = pattern.compile(classGenerator, methodGenerator);
                methodGenerator.addInstructionList(pattern, instructionList2);
            }
            InstructionList copy = instructionList2.copy();
            FlowList trueList = pattern.getTrueList();
            if (trueList != null) {
                trueList = trueList.copyAndRedirect(instructionList2, copy);
            }
            FlowList falseList = pattern.getFalseList();
            if (falseList != null) {
                falseList = falseList.copyAndRedirect(instructionList2, copy);
            }
            instructionList.append(copy);
            BranchHandle append = instructionList.append((BranchInstruction) new GOTO_W(getTemplateHandle(template2)));
            if (trueList != null) {
                trueList.backPatch(append);
            }
            if (falseList != null) {
                falseList.backPatch(instructionHandle);
            }
            instructionHandle = instructionList.getStart();
            InstructionList instructionList3 = this._instructionList;
            if (instructionList3 != null) {
                instructionList.append(instructionList3);
            }
            this._instructionList = instructionList;
        }
        this._start = instructionHandle;
        return instructionHandle;
    }

    public void findTemplates(Dictionary dictionary) {
        Template template = this._default;
        if (template != null) {
            dictionary.put(template, this);
        }
        for (int i = 0; i < this._patterns.size(); i++) {
            dictionary.put(((LocationPathPattern) this._patterns.elementAt(i)).getTemplate(), this);
        }
    }

    public InstructionList getInstructionList() {
        return this._instructionList;
    }

    public int getPosition() {
        return (this._patterns.size() == 0 ? this._default : ((Pattern) this._patterns.elementAt(0)).getTemplate()).getPosition();
    }

    public double getPriority() {
        return (this._patterns.size() == 0 ? this._default : ((Pattern) this._patterns.elementAt(0)).getTemplate()).getPriority();
    }

    public void reduce() {
        Vector vector = new Vector();
        int size = this._patterns.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            LocationPathPattern locationPathPattern = (LocationPathPattern) this._patterns.elementAt(i);
            locationPathPattern.reduceKernelPattern();
            if (locationPathPattern.isWildcard()) {
                this._default = locationPathPattern.getTemplate();
                break;
            } else {
                vector.addElement(locationPathPattern);
                i++;
            }
        }
        this._patterns = vector;
    }

    public String toString() {
        int size = this._patterns.size();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < size; i++) {
            LocationPathPattern locationPathPattern = (LocationPathPattern) this._patterns.elementAt(i);
            if (i == 0) {
                stringBuffer.append("Testseq for kernel " + this._kernelType);
                stringBuffer.append('\n');
            }
            stringBuffer.append("   pattern " + i + ": ");
            stringBuffer.append(locationPathPattern.toString());
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public TestSeq(Vector vector, int i, Mode mode) {
        this._default = null;
        this._start = null;
        this._patterns = vector;
        this._kernelType = i;
        this._mode = mode;
    }
}
