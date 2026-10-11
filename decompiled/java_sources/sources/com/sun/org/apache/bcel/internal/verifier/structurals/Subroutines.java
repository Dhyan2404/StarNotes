package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.onyx.android.sdk.cloudstorage.provider.onedrive.Scope;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ATHROW;
import com.sun.org.apache.bcel.internal.generic.BranchInstruction;
import com.sun.org.apache.bcel.internal.generic.CodeExceptionGen;
import com.sun.org.apache.bcel.internal.generic.GotoInstruction;
import com.sun.org.apache.bcel.internal.generic.IndexedInstruction;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.JsrInstruction;
import com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
import com.sun.org.apache.bcel.internal.generic.Select;
import com.sun.org.apache.bcel.internal.verifier.exc.AssertionViolatedException;
import com.sun.org.apache.bcel.internal.verifier.exc.StructuralCodeConstraintException;
import java.awt.Color;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: classes10.dex */
public class Subroutines {
    public final Subroutine TOPLEVEL;
    private Hashtable subroutines = new Hashtable();

    /* loaded from: classes10.dex */
    public class SubroutineImpl implements Subroutine {
        private InstructionHandle theRET;
        private final int UNSET = -1;
        private int localVariable = -1;
        private HashSet instructions = new HashSet();
        private HashSet theJSRs = new HashSet();

        public SubroutineImpl() {
        }

        private void _getRecursivelyAccessedLocalsIndicesHelper(HashSet hashSet, Subroutine[] subroutineArr) {
            for (int i = 0; i < subroutineArr.length; i++) {
                for (int i2 : subroutineArr[i].getAccessedLocalsIndices()) {
                    hashSet.add(new Integer(i2));
                }
                if (subroutineArr[i].subSubs().length != 0) {
                    _getRecursivelyAccessedLocalsIndicesHelper(hashSet, subroutineArr[i].subSubs());
                }
            }
        }

        public void addEnteringJsrInstruction(InstructionHandle instructionHandle) {
            if (instructionHandle == null || !(instructionHandle.getInstruction() instanceof JsrInstruction)) {
                throw new AssertionViolatedException("Expecting JsrInstruction InstructionHandle.");
            }
            int i = this.localVariable;
            if (i == -1) {
                throw new AssertionViolatedException("Set the localVariable first!");
            }
            if (i != ((ASTORE) ((JsrInstruction) instructionHandle.getInstruction()).getTarget().getInstruction()).getIndex()) {
                throw new AssertionViolatedException("Setting a wrong JsrInstruction.");
            }
            this.theJSRs.add(instructionHandle);
        }

        public void addInstruction(InstructionHandle instructionHandle) {
            if (this.theRET != null) {
                throw new AssertionViolatedException("All instructions must have been added before invoking setLeavingRET().");
            }
            this.instructions.add(instructionHandle);
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public boolean contains(InstructionHandle instructionHandle) {
            return this.instructions.contains(instructionHandle);
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public int[] getAccessedLocalsIndices() {
            HashSet hashSet = new HashSet();
            if (this.theRET == null && this != Subroutines.this.TOPLEVEL) {
                throw new AssertionViolatedException("This subroutine object must be built up completely before calculating accessed locals.");
            }
            Iterator it2 = this.instructions.iterator();
            while (it2.hasNext()) {
                InstructionHandle instructionHandle = (InstructionHandle) it2.next();
                if ((instructionHandle.getInstruction() instanceof LocalVariableInstruction) || (instructionHandle.getInstruction() instanceof RET)) {
                    int index = ((IndexedInstruction) instructionHandle.getInstruction()).getIndex();
                    hashSet.add(new Integer(index));
                    try {
                        if ((instructionHandle.getInstruction() instanceof LocalVariableInstruction) && ((LocalVariableInstruction) instructionHandle.getInstruction()).getType(null).getSize() == 2) {
                            hashSet.add(new Integer(index + 1));
                        }
                    } catch (RuntimeException unused) {
                        throw new AssertionViolatedException("Oops. BCEL did not like NULL as a ConstantPoolGen object.");
                    }
                }
            }
            int[] iArr = new int[hashSet.size()];
            Iterator it3 = hashSet.iterator();
            int i = -1;
            while (it3.hasNext()) {
                i++;
                iArr[i] = ((Integer) it3.next()).intValue();
            }
            return iArr;
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public InstructionHandle[] getEnteringJsrInstructions() {
            if (this == Subroutines.this.TOPLEVEL) {
                throw new AssertionViolatedException("getLeavingRET() called on top level pseudo-subroutine.");
            }
            return (InstructionHandle[]) this.theJSRs.toArray(new InstructionHandle[this.theJSRs.size()]);
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public InstructionHandle[] getInstructions() {
            return (InstructionHandle[]) this.instructions.toArray(new InstructionHandle[this.instructions.size()]);
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public InstructionHandle getLeavingRET() {
            if (this != Subroutines.this.TOPLEVEL) {
                return this.theRET;
            }
            throw new AssertionViolatedException("getLeavingRET() called on top level pseudo-subroutine.");
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public int[] getRecursivelyAccessedLocalsIndices() {
            HashSet hashSet = new HashSet();
            for (int i : getAccessedLocalsIndices()) {
                hashSet.add(new Integer(i));
            }
            _getRecursivelyAccessedLocalsIndicesHelper(hashSet, subSubs());
            int[] iArr = new int[hashSet.size()];
            Iterator it2 = hashSet.iterator();
            int i2 = -1;
            while (it2.hasNext()) {
                i2++;
                iArr[i2] = ((Integer) it2.next()).intValue();
            }
            return iArr;
        }

        public void setLeavingRET() {
            if (this.localVariable == -1) {
                throw new AssertionViolatedException("setLeavingRET() called for top-level 'subroutine' or forgot to set local variable first.");
            }
            Iterator it2 = this.instructions.iterator();
            InstructionHandle instructionHandle = null;
            while (it2.hasNext()) {
                InstructionHandle instructionHandle2 = (InstructionHandle) it2.next();
                if (instructionHandle2.getInstruction() instanceof RET) {
                    if (instructionHandle != null) {
                        throw new StructuralCodeConstraintException("Subroutine with more then one RET detected: '" + instructionHandle + "' and '" + instructionHandle2 + "'.");
                    }
                    instructionHandle = instructionHandle2;
                }
            }
            if (instructionHandle == null) {
                throw new StructuralCodeConstraintException("Subroutine without a RET detected.");
            }
            if (((RET) instructionHandle.getInstruction()).getIndex() == this.localVariable) {
                this.theRET = instructionHandle;
                return;
            }
            throw new StructuralCodeConstraintException("Subroutine uses '" + instructionHandle + "' which does not match the correct local variable '" + this.localVariable + "'.");
        }

        public void setLocalVariable(int i) {
            if (this.localVariable != -1) {
                throw new AssertionViolatedException("localVariable set twice.");
            }
            this.localVariable = i;
        }

        @Override // com.sun.org.apache.bcel.internal.verifier.structurals.Subroutine
        public Subroutine[] subSubs() {
            HashSet hashSet = new HashSet();
            Iterator it2 = this.instructions.iterator();
            while (it2.hasNext()) {
                Instruction instruction = ((InstructionHandle) it2.next()).getInstruction();
                if (instruction instanceof JsrInstruction) {
                    hashSet.add(Subroutines.this.getSubroutine(((JsrInstruction) instruction).getTarget()));
                }
            }
            return (Subroutine[]) hashSet.toArray(new Subroutine[hashSet.size()]);
        }

        public String toString() {
            String str = ("Subroutine: Local variable is '" + this.localVariable + "', JSRs are '" + this.theJSRs + "', RET is '" + this.theRET + "', Instructions: '" + this.instructions.toString() + "'.") + " Accessed local variable slots: '";
            for (int i : getAccessedLocalsIndices()) {
                str = str + i + " ";
            }
            String str2 = (str + "'.") + " Recursively (via subsub...routines) accessed local variable slots: '";
            for (int i2 : getRecursivelyAccessedLocalsIndices()) {
                str2 = str2 + i2 + " ";
            }
            return str2 + "'.";
        }
    }

    public Subroutines(MethodGen methodGen) {
        InstructionHandle[] instructionHandles = methodGen.getInstructionList().getInstructionHandles();
        CodeExceptionGen[] exceptionHandlers = methodGen.getExceptionHandlers();
        this.TOPLEVEL = new SubroutineImpl();
        HashSet hashSet = new HashSet();
        InstructionHandle instructionHandle = instructionHandles[0];
        for (InstructionHandle instructionHandle2 : instructionHandles) {
            Instruction instruction = instructionHandle2.getInstruction();
            if (instruction instanceof JsrInstruction) {
                hashSet.add(((JsrInstruction) instruction).getTarget());
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            SubroutineImpl subroutineImpl = new SubroutineImpl();
            InstructionHandle instructionHandle3 = (InstructionHandle) it2.next();
            subroutineImpl.setLocalVariable(((ASTORE) instructionHandle3.getInstruction()).getIndex());
            this.subroutines.put(instructionHandle3, subroutineImpl);
        }
        this.subroutines.put(instructionHandles[0], this.TOPLEVEL);
        hashSet.add(instructionHandles[0]);
        for (int i = 0; i < instructionHandles.length; i++) {
            Instruction instruction2 = instructionHandles[i].getInstruction();
            if (instruction2 instanceof JsrInstruction) {
                ((SubroutineImpl) getSubroutine(((JsrInstruction) instruction2).getTarget())).addEnteringJsrInstruction(instructionHandles[i]);
            }
        }
        HashSet hashSet2 = new HashSet();
        Hashtable hashtable = new Hashtable();
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            InstructionHandle instructionHandle4 = (InstructionHandle) it3.next();
            for (InstructionHandle instructionHandle5 : instructionHandles) {
                hashtable.put(instructionHandle5, Color.white);
            }
            hashtable.put(instructionHandle4, Color.gray);
            ArrayList arrayList = new ArrayList();
            arrayList.add(instructionHandle4);
            if (instructionHandle4 == instructionHandles[0]) {
                for (int i2 = 0; i2 < exceptionHandlers.length; i2++) {
                    hashtable.put(exceptionHandlers[i2].getHandlerPC(), Color.gray);
                    arrayList.add(exceptionHandlers[i2].getHandlerPC());
                }
            }
            while (arrayList.size() != 0) {
                InstructionHandle instructionHandle6 = (InstructionHandle) arrayList.remove(0);
                InstructionHandle[] successors = getSuccessors(instructionHandle6);
                for (int i3 = 0; i3 < successors.length; i3++) {
                    if (((Color) hashtable.get(successors[i3])) == Color.white) {
                        hashtable.put(successors[i3], Color.gray);
                        arrayList.add(successors[i3]);
                    }
                }
                hashtable.put(instructionHandle6, Color.black);
            }
            for (int i4 = 0; i4 < instructionHandles.length; i4++) {
                if (hashtable.get(instructionHandles[i4]) == Color.black) {
                    ((SubroutineImpl) (instructionHandle4 == instructionHandles[0] ? getTopLevel() : getSubroutine(instructionHandle4))).addInstruction(instructionHandles[i4]);
                    if (hashSet2.contains(instructionHandles[i4])) {
                        throw new StructuralCodeConstraintException("Instruction '" + instructionHandles[i4] + "' is part of more than one subroutine (or of the top level and a subroutine).");
                    }
                    hashSet2.add(instructionHandles[i4]);
                }
            }
            if (instructionHandle4 != instructionHandles[0]) {
                ((SubroutineImpl) getSubroutine(instructionHandle4)).setLeavingRET();
            }
        }
        for (int i5 = 0; i5 < exceptionHandlers.length; i5++) {
            for (InstructionHandle startPC = exceptionHandlers[i5].getStartPC(); startPC != exceptionHandlers[i5].getEndPC().getNext(); startPC = startPC.getNext()) {
                Enumeration elements = this.subroutines.elements();
                while (elements.hasMoreElements()) {
                    Subroutine subroutine = (Subroutine) elements.nextElement();
                    if (subroutine != this.subroutines.get(instructionHandles[0]) && subroutine.contains(startPC)) {
                        throw new StructuralCodeConstraintException("Subroutine instruction '" + startPC + "' is protected by an exception handler, '" + exceptionHandlers[i5] + "'. This is forbidden by the JustIce verifier due to its clear definition of subroutines.");
                    }
                }
            }
        }
        noRecursiveCalls(getTopLevel(), new HashSet());
    }

    private static InstructionHandle[] getSuccessors(InstructionHandle instructionHandle) {
        InstructionHandle[] instructionHandleArr = new InstructionHandle[0];
        InstructionHandle[] instructionHandleArr2 = new InstructionHandle[1];
        InstructionHandle[] instructionHandleArr3 = new InstructionHandle[2];
        Instruction instruction = instructionHandle.getInstruction();
        if ((instruction instanceof RET) || (instruction instanceof ReturnInstruction) || (instruction instanceof ATHROW)) {
            return instructionHandleArr;
        }
        if (instruction instanceof JsrInstruction) {
            instructionHandleArr2[0] = instructionHandle.getNext();
            return instructionHandleArr2;
        }
        if (instruction instanceof GotoInstruction) {
            instructionHandleArr2[0] = ((GotoInstruction) instruction).getTarget();
            return instructionHandleArr2;
        }
        if (!(instruction instanceof BranchInstruction)) {
            instructionHandleArr2[0] = instructionHandle.getNext();
            return instructionHandleArr2;
        }
        if (!(instruction instanceof Select)) {
            instructionHandleArr3[0] = instructionHandle.getNext();
            instructionHandleArr3[1] = ((BranchInstruction) instruction).getTarget();
            return instructionHandleArr3;
        }
        Select select = (Select) instruction;
        InstructionHandle[] targets = select.getTargets();
        InstructionHandle[] instructionHandleArr4 = new InstructionHandle[targets.length + 1];
        instructionHandleArr4[0] = select.getTarget();
        System.arraycopy(targets, 0, instructionHandleArr4, 1, targets.length);
        return instructionHandleArr4;
    }

    private void noRecursiveCalls(Subroutine subroutine, HashSet hashSet) {
        Subroutine[] subSubs = subroutine.subSubs();
        for (int i = 0; i < subSubs.length; i++) {
            int index = ((RET) subSubs[i].getLeavingRET().getInstruction()).getIndex();
            if (!hashSet.add(new Integer(index))) {
                SubroutineImpl subroutineImpl = (SubroutineImpl) subSubs[i];
                throw new StructuralCodeConstraintException("Subroutine with local variable '" + subroutineImpl.localVariable + "', JSRs '" + subroutineImpl.theJSRs + "', RET '" + subroutineImpl.theRET + "' is called by a subroutine which uses the same local variable index as itself; maybe even a recursive call? JustIce's clean definition of a subroutine forbids both.");
            }
            noRecursiveCalls(subSubs[i], hashSet);
            hashSet.remove(new Integer(index));
        }
    }

    public Subroutine getSubroutine(InstructionHandle instructionHandle) {
        Subroutine subroutine = (Subroutine) this.subroutines.get(instructionHandle);
        if (subroutine == null) {
            throw new AssertionViolatedException("Subroutine requested for an InstructionHandle that is not a leader of a subroutine.");
        }
        if (subroutine != this.TOPLEVEL) {
            return subroutine;
        }
        throw new AssertionViolatedException("TOPLEVEL special subroutine requested; use getTopLevel().");
    }

    public Subroutine getTopLevel() {
        return this.TOPLEVEL;
    }

    public Subroutine subroutineOf(InstructionHandle instructionHandle) {
        for (Subroutine subroutine : this.subroutines.values()) {
            if (subroutine.contains(instructionHandle)) {
                return subroutine;
            }
        }
        System.err.println("DEBUG: Please verify '" + instructionHandle + "' lies in dead code.");
        return null;
    }

    public String toString() {
        return "---\n" + this.subroutines.toString() + Scope.DELIM;
    }
}
