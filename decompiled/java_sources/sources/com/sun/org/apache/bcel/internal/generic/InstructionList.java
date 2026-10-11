package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.util.ByteSequence;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes10.dex */
public class InstructionList implements Serializable {
    private int[] byte_positions;
    private ArrayList observers;
    private InstructionHandle start = null;
    private InstructionHandle end = null;
    private int length = 0;

    public InstructionList() {
    }

    private void clear() {
        this.end = null;
        this.start = null;
        this.length = 0;
    }

    public static InstructionHandle findHandle(InstructionHandle[] instructionHandleArr, int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        do {
            int i5 = (i4 + i3) / 2;
            int i6 = iArr[i5];
            if (i6 == i2) {
                return instructionHandleArr[i5];
            }
            if (i2 < i6) {
                i3 = i5 - 1;
            } else {
                i4 = i5 + 1;
            }
        } while (i4 <= i3);
        return null;
    }

    private InstructionHandle findInstruction1(Instruction instruction) {
        for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
            if (instructionHandle.instruction == instruction) {
                return instructionHandle;
            }
        }
        return null;
    }

    private InstructionHandle findInstruction2(Instruction instruction) {
        for (InstructionHandle instructionHandle = this.end; instructionHandle != null; instructionHandle = instructionHandle.prev) {
            if (instructionHandle.instruction == instruction) {
                return instructionHandle;
            }
        }
        return null;
    }

    private void remove(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) throws TargetLostException {
        InstructionHandle instructionHandle3;
        InstructionHandle instructionHandle4;
        InstructionHandle instructionHandle5;
        if (instructionHandle == null && instructionHandle2 == null) {
            instructionHandle4 = this.start;
            this.end = null;
            this.start = null;
            instructionHandle5 = instructionHandle4;
        } else {
            if (instructionHandle == null) {
                instructionHandle3 = this.start;
                this.start = instructionHandle2;
            } else {
                instructionHandle3 = instructionHandle.next;
                instructionHandle.next = instructionHandle2;
            }
            if (instructionHandle2 == null) {
                instructionHandle5 = this.end;
                this.end = instructionHandle;
                instructionHandle4 = instructionHandle3;
            } else {
                InstructionHandle instructionHandle6 = instructionHandle2.prev;
                instructionHandle2.prev = instructionHandle;
                instructionHandle4 = instructionHandle3;
                instructionHandle5 = instructionHandle6;
            }
        }
        instructionHandle4.prev = null;
        instructionHandle5.next = null;
        ArrayList arrayList = new ArrayList();
        for (InstructionHandle instructionHandle7 = instructionHandle4; instructionHandle7 != null; instructionHandle7 = instructionHandle7.next) {
            instructionHandle7.getInstruction().dispose();
        }
        StringBuffer stringBuffer = new StringBuffer("{ ");
        while (instructionHandle4 != null) {
            InstructionHandle instructionHandle8 = instructionHandle4.next;
            this.length--;
            if (instructionHandle4.hasTargeters()) {
                arrayList.add(instructionHandle4);
                stringBuffer.append(instructionHandle4.toString(true) + " ");
                instructionHandle4.prev = null;
                instructionHandle4.next = null;
            } else {
                instructionHandle4.dispose();
            }
            instructionHandle4 = instructionHandle8;
        }
        stringBuffer.append("}");
        if (arrayList.isEmpty()) {
            return;
        }
        InstructionHandle[] instructionHandleArr = new InstructionHandle[arrayList.size()];
        arrayList.toArray(instructionHandleArr);
        throw new TargetLostException(instructionHandleArr, stringBuffer.toString());
    }

    public void addObserver(InstructionListObserver instructionListObserver) {
        if (this.observers == null) {
            this.observers = new ArrayList();
        }
        this.observers.add(instructionListObserver);
    }

    public InstructionHandle append(InstructionHandle instructionHandle, InstructionList instructionList) {
        if (instructionList != null) {
            if (instructionList.isEmpty()) {
                return instructionHandle;
            }
            InstructionHandle instructionHandle2 = instructionHandle.next;
            InstructionHandle instructionHandle3 = instructionList.start;
            instructionHandle.next = instructionHandle3;
            instructionHandle3.prev = instructionHandle;
            InstructionHandle instructionHandle4 = instructionList.end;
            instructionHandle4.next = instructionHandle2;
            if (instructionHandle2 != null) {
                instructionHandle2.prev = instructionHandle4;
            } else {
                this.end = instructionHandle4;
            }
            this.length += instructionList.length;
            instructionList.clear();
            return instructionHandle3;
        }
        throw new ClassGenException("Appending null InstructionList");
    }

    public boolean contains(InstructionHandle instructionHandle) {
        if (instructionHandle == null) {
            return false;
        }
        for (InstructionHandle instructionHandle2 = this.start; instructionHandle2 != null; instructionHandle2 = instructionHandle2.next) {
            if (instructionHandle2 == instructionHandle) {
                return true;
            }
        }
        return false;
    }

    public InstructionList copy() {
        HashMap hashMap = new HashMap();
        InstructionList instructionList = new InstructionList();
        for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
            Instruction copy = instructionHandle.instruction.copy();
            if (copy instanceof BranchInstruction) {
                hashMap.put(instructionHandle, instructionList.append((BranchInstruction) copy));
            } else {
                hashMap.put(instructionHandle, instructionList.append(copy));
            }
        }
        InstructionHandle instructionHandle2 = this.start;
        InstructionHandle instructionHandle3 = instructionList.start;
        while (instructionHandle2 != null) {
            Instruction instruction = instructionHandle2.instruction;
            Instruction instruction2 = instructionHandle3.instruction;
            if (instruction instanceof BranchInstruction) {
                BranchInstruction branchInstruction = (BranchInstruction) instruction;
                BranchInstruction branchInstruction2 = (BranchInstruction) instruction2;
                branchInstruction2.setTarget((InstructionHandle) hashMap.get(branchInstruction.getTarget()));
                if (branchInstruction instanceof Select) {
                    InstructionHandle[] targets = ((Select) branchInstruction).getTargets();
                    InstructionHandle[] targets2 = ((Select) branchInstruction2).getTargets();
                    for (int i = 0; i < targets.length; i++) {
                        targets2[i] = (InstructionHandle) hashMap.get(targets[i]);
                    }
                }
            }
            instructionHandle2 = instructionHandle2.next;
            instructionHandle3 = instructionHandle3.next;
        }
        return instructionList;
    }

    public void delete(InstructionHandle instructionHandle) throws TargetLostException {
        remove(instructionHandle.prev, instructionHandle.next);
    }

    public void dispose() {
        for (InstructionHandle instructionHandle = this.end; instructionHandle != null; instructionHandle = instructionHandle.prev) {
            instructionHandle.dispose();
        }
        clear();
    }

    public byte[] getByteCode() {
        setPositions();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
                instructionHandle.instruction.dump(dataOutputStream);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }

    public InstructionHandle getEnd() {
        return this.end;
    }

    public InstructionHandle[] getInstructionHandles() {
        InstructionHandle[] instructionHandleArr = new InstructionHandle[this.length];
        InstructionHandle instructionHandle = this.start;
        for (int i = 0; i < this.length; i++) {
            instructionHandleArr[i] = instructionHandle;
            instructionHandle = instructionHandle.next;
        }
        return instructionHandleArr;
    }

    public int[] getInstructionPositions() {
        return this.byte_positions;
    }

    public Instruction[] getInstructions() {
        ByteSequence byteSequence = new ByteSequence(getByteCode());
        ArrayList arrayList = new ArrayList();
        while (byteSequence.available() > 0) {
            try {
                arrayList.add(Instruction.readInstruction(byteSequence));
            } catch (IOException e) {
                throw new ClassGenException(e.toString());
            }
        }
        Instruction[] instructionArr = new Instruction[arrayList.size()];
        arrayList.toArray(instructionArr);
        return instructionArr;
    }

    public int getLength() {
        return this.length;
    }

    public InstructionHandle getStart() {
        return this.start;
    }

    public InstructionHandle insert(InstructionHandle instructionHandle, InstructionList instructionList) {
        if (instructionList != null) {
            if (instructionList.isEmpty()) {
                return instructionHandle;
            }
            InstructionHandle instructionHandle2 = instructionHandle.prev;
            InstructionHandle instructionHandle3 = instructionList.start;
            InstructionHandle instructionHandle4 = instructionList.end;
            instructionHandle.prev = instructionHandle4;
            instructionHandle4.next = instructionHandle;
            instructionHandle3.prev = instructionHandle2;
            if (instructionHandle2 != null) {
                instructionHandle2.next = instructionHandle3;
            } else {
                this.start = instructionHandle3;
            }
            this.length += instructionList.length;
            instructionList.clear();
            return instructionHandle3;
        }
        throw new ClassGenException("Inserting null InstructionList");
    }

    public boolean isEmpty() {
        return this.start == null;
    }

    public Iterator iterator() {
        return new Iterator() { // from class: com.sun.org.apache.bcel.internal.generic.InstructionList.1

            /* renamed from: ih */
            private InstructionHandle f64070ih;

            {
                this.f64070ih = InstructionList.this.start;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f64070ih != null;
            }

            @Override // java.util.Iterator
            public Object next() {
                InstructionHandle instructionHandle = this.f64070ih;
                this.f64070ih = instructionHandle.next;
                return instructionHandle;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public void move(InstructionHandle instructionHandle, InstructionHandle instructionHandle2, InstructionHandle instructionHandle3) {
        if (instructionHandle == null || instructionHandle2 == null) {
            throw new ClassGenException("Invalid null handle: From " + instructionHandle + " to " + instructionHandle2);
        }
        if (instructionHandle3 == instructionHandle || instructionHandle3 == instructionHandle2) {
            throw new ClassGenException("Invalid range: From " + instructionHandle + " to " + instructionHandle2 + " contains target " + instructionHandle3);
        }
        InstructionHandle instructionHandle4 = instructionHandle;
        while (true) {
            InstructionHandle instructionHandle5 = instructionHandle2.next;
            if (instructionHandle4 == instructionHandle5) {
                InstructionHandle instructionHandle6 = instructionHandle.prev;
                if (instructionHandle6 != null) {
                    instructionHandle6.next = instructionHandle5;
                } else {
                    this.start = instructionHandle5;
                }
                if (instructionHandle5 != null) {
                    instructionHandle5.prev = instructionHandle6;
                } else {
                    this.end = instructionHandle6;
                }
                instructionHandle2.next = null;
                instructionHandle.prev = null;
                if (instructionHandle3 == null) {
                    instructionHandle2.next = this.start;
                    this.start = instructionHandle;
                    return;
                }
                InstructionHandle instructionHandle7 = instructionHandle3.next;
                instructionHandle3.next = instructionHandle;
                instructionHandle.prev = instructionHandle3;
                instructionHandle2.next = instructionHandle7;
                if (instructionHandle7 != null) {
                    instructionHandle7.prev = instructionHandle2;
                    return;
                }
                return;
            }
            if (instructionHandle4 == null) {
                throw new ClassGenException("Invalid range: From " + instructionHandle + " to " + instructionHandle2);
            }
            if (instructionHandle4 == instructionHandle3) {
                throw new ClassGenException("Invalid range: From " + instructionHandle + " to " + instructionHandle2 + " contains target " + instructionHandle3);
            }
            instructionHandle4 = instructionHandle4.next;
        }
    }

    public void redirectBranches(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        for (InstructionHandle instructionHandle3 = this.start; instructionHandle3 != null; instructionHandle3 = instructionHandle3.next) {
            Instruction instruction = instructionHandle3.getInstruction();
            if (instruction instanceof BranchInstruction) {
                BranchInstruction branchInstruction = (BranchInstruction) instruction;
                if (branchInstruction.getTarget() == instructionHandle) {
                    branchInstruction.setTarget(instructionHandle2);
                }
                if (branchInstruction instanceof Select) {
                    Select select = (Select) branchInstruction;
                    InstructionHandle[] targets = select.getTargets();
                    for (int i = 0; i < targets.length; i++) {
                        if (targets[i] == instructionHandle) {
                            select.setTarget(i, instructionHandle2);
                        }
                    }
                }
            }
        }
    }

    public void redirectExceptionHandlers(CodeExceptionGen[] codeExceptionGenArr, InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        for (int i = 0; i < codeExceptionGenArr.length; i++) {
            if (codeExceptionGenArr[i].getStartPC() == instructionHandle) {
                codeExceptionGenArr[i].setStartPC(instructionHandle2);
            }
            if (codeExceptionGenArr[i].getEndPC() == instructionHandle) {
                codeExceptionGenArr[i].setEndPC(instructionHandle2);
            }
            if (codeExceptionGenArr[i].getHandlerPC() == instructionHandle) {
                codeExceptionGenArr[i].setHandlerPC(instructionHandle2);
            }
        }
    }

    public void redirectLocalVariables(LocalVariableGen[] localVariableGenArr, InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        for (int i = 0; i < localVariableGenArr.length; i++) {
            InstructionHandle start = localVariableGenArr[i].getStart();
            InstructionHandle end = localVariableGenArr[i].getEnd();
            if (start == instructionHandle) {
                localVariableGenArr[i].setStart(instructionHandle2);
            }
            if (end == instructionHandle) {
                localVariableGenArr[i].setEnd(instructionHandle2);
            }
        }
    }

    public void removeObserver(InstructionListObserver instructionListObserver) {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            arrayList.remove(instructionListObserver);
        }
    }

    public void replaceConstantPool(ConstantPoolGen constantPoolGen, ConstantPoolGen constantPoolGen2) {
        for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
            Instruction instruction = instructionHandle.instruction;
            if (instruction instanceof CPInstruction) {
                CPInstruction cPInstruction = (CPInstruction) instruction;
                cPInstruction.setIndex(constantPoolGen2.addConstant(constantPoolGen.getConstant(cPInstruction.getIndex()), constantPoolGen));
            }
        }
    }

    public void setPositions() {
        setPositions(false);
    }

    public int size() {
        return this.length;
    }

    public String toString() {
        return toString(true);
    }

    public void update() {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((InstructionListObserver) it2.next()).notify(this);
            }
        }
    }

    public boolean contains(Instruction instruction) {
        return findInstruction1(instruction) != null;
    }

    public void delete(Instruction instruction) throws TargetLostException {
        InstructionHandle findInstruction1 = findInstruction1(instruction);
        if (findInstruction1 != null) {
            delete(findInstruction1);
            return;
        }
        throw new ClassGenException("Instruction " + instruction + " is not contained in this list.");
    }

    public void setPositions(boolean z) {
        int[] iArr = new int[this.length];
        if (z) {
            for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
                Instruction instruction = instructionHandle.instruction;
                if (instruction instanceof BranchInstruction) {
                    Instruction instruction2 = ((BranchInstruction) instruction).getTarget().instruction;
                    if (contains(instruction2)) {
                        if (instruction instanceof Select) {
                            for (InstructionHandle instructionHandle2 : ((Select) instruction).getTargets()) {
                                instruction2 = instructionHandle2.instruction;
                                if (!contains(instruction2)) {
                                    throw new ClassGenException("Branch target of " + Constants.OPCODE_NAMES[instruction.opcode] + ":" + instruction2 + " not in instruction list");
                                }
                            }
                        }
                        if (!(instructionHandle instanceof BranchHandle)) {
                            throw new ClassGenException("Branch instruction " + Constants.OPCODE_NAMES[instruction.opcode] + ":" + instruction2 + " not contained in BranchHandle.");
                        }
                    } else {
                        throw new ClassGenException("Branch target of " + Constants.OPCODE_NAMES[instruction.opcode] + ":" + instruction2 + " not in instruction list");
                    }
                }
            }
        }
        InstructionHandle instructionHandle3 = this.start;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (instructionHandle3 != null) {
            Instruction instruction3 = instructionHandle3.instruction;
            instructionHandle3.setPosition(i);
            int i4 = i2 + 1;
            iArr[i2] = i;
            switch (instruction3.getOpcode()) {
                case 167:
                case 168:
                    i3 += 2;
                    break;
                case 170:
                case 171:
                    i3 += 3;
                    break;
            }
            i += instruction3.getLength();
            instructionHandle3 = instructionHandle3.next;
            i2 = i4;
        }
        int i5 = 0;
        for (InstructionHandle instructionHandle4 = this.start; instructionHandle4 != null; instructionHandle4 = instructionHandle4.next) {
            i5 += instructionHandle4.updatePosition(i5, i3);
        }
        InstructionHandle instructionHandle5 = this.start;
        int i6 = 0;
        int i7 = 0;
        while (instructionHandle5 != null) {
            Instruction instruction4 = instructionHandle5.instruction;
            instructionHandle5.setPosition(i7);
            iArr[i6] = i7;
            i7 += instruction4.getLength();
            instructionHandle5 = instructionHandle5.next;
            i6++;
        }
        int[] iArr2 = new int[i6];
        this.byte_positions = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, i6);
    }

    public String toString(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        for (InstructionHandle instructionHandle = this.start; instructionHandle != null; instructionHandle = instructionHandle.next) {
            stringBuffer.append(instructionHandle.toString(z) + "\n");
        }
        return stringBuffer.toString();
    }

    public InstructionList(Instruction instruction) {
        append(instruction);
    }

    public InstructionHandle findHandle(int i) {
        return findHandle(getInstructionHandles(), this.byte_positions, this.length, i);
    }

    public void delete(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) throws TargetLostException {
        remove(instructionHandle.prev, instructionHandle2.next);
    }

    public void delete(Instruction instruction, Instruction instruction2) throws TargetLostException {
        InstructionHandle findInstruction1 = findInstruction1(instruction);
        if (findInstruction1 != null) {
            InstructionHandle findInstruction2 = findInstruction2(instruction2);
            if (findInstruction2 != null) {
                delete(findInstruction1, findInstruction2);
                return;
            }
            throw new ClassGenException("Instruction " + instruction2 + " is not contained in this list.");
        }
        throw new ClassGenException("Instruction " + instruction + " is not contained in this list.");
    }

    public InstructionList(BranchInstruction branchInstruction) {
        append(branchInstruction);
    }

    public InstructionHandle append(Instruction instruction, InstructionList instructionList) {
        InstructionHandle findInstruction2 = findInstruction2(instruction);
        if (findInstruction2 != null) {
            return append(findInstruction2, instructionList);
        }
        throw new ClassGenException("Instruction " + instruction + " is not contained in this list.");
    }

    public InstructionHandle insert(InstructionList instructionList) {
        if (isEmpty()) {
            append(instructionList);
            return this.start;
        }
        return insert(this.start, instructionList);
    }

    public InstructionList(CompoundInstruction compoundInstruction) {
        append(compoundInstruction.getInstructionList());
    }

    public InstructionHandle append(InstructionList instructionList) {
        if (instructionList != null) {
            if (instructionList.isEmpty()) {
                return null;
            }
            if (isEmpty()) {
                this.start = instructionList.start;
                this.end = instructionList.end;
                this.length = instructionList.length;
                instructionList.clear();
                return this.start;
            }
            return append(this.end, instructionList);
        }
        throw new ClassGenException("Appending null InstructionList");
    }

    private void insert(InstructionHandle instructionHandle) {
        if (isEmpty()) {
            this.end = instructionHandle;
            this.start = instructionHandle;
            instructionHandle.prev = null;
            instructionHandle.next = null;
        } else {
            InstructionHandle instructionHandle2 = this.start;
            instructionHandle2.prev = instructionHandle;
            instructionHandle.next = instructionHandle2;
            instructionHandle.prev = null;
            this.start = instructionHandle;
        }
        this.length++;
    }

    public InstructionList(byte[] bArr) {
        InstructionHandle append;
        ByteSequence byteSequence = new ByteSequence(bArr);
        InstructionHandle[] instructionHandleArr = new InstructionHandle[bArr.length];
        int[] iArr = new int[bArr.length];
        int i = 0;
        while (byteSequence.available() > 0) {
            try {
                int index = byteSequence.getIndex();
                iArr[i] = index;
                Instruction readInstruction = Instruction.readInstruction(byteSequence);
                if (readInstruction instanceof BranchInstruction) {
                    append = append((BranchInstruction) readInstruction);
                } else {
                    append = append(readInstruction);
                }
                append.setPosition(index);
                instructionHandleArr[i] = append;
                i++;
            } catch (IOException e) {
                throw new ClassGenException(e.toString());
            }
        }
        int[] iArr2 = new int[i];
        this.byte_positions = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            InstructionHandle instructionHandle = instructionHandleArr[i2];
            if (instructionHandle instanceof BranchHandle) {
                BranchInstruction branchInstruction = (BranchInstruction) instructionHandle.instruction;
                InstructionHandle findHandle = findHandle(instructionHandleArr, iArr, i, branchInstruction.position + branchInstruction.getIndex());
                if (findHandle != null) {
                    branchInstruction.setTarget(findHandle);
                    if (branchInstruction instanceof Select) {
                        Select select = (Select) branchInstruction;
                        int[] indices = select.getIndices();
                        for (int i3 = 0; i3 < indices.length; i3++) {
                            InstructionHandle findHandle2 = findHandle(instructionHandleArr, iArr, i, branchInstruction.position + indices[i3]);
                            if (findHandle2 != null) {
                                select.setTarget(i3, findHandle2);
                            } else {
                                throw new ClassGenException("Couldn't find target for switch: " + branchInstruction);
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    throw new ClassGenException("Couldn't find target for branch: " + branchInstruction);
                }
            }
        }
    }

    public void move(InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        move(instructionHandle, instructionHandle, instructionHandle2);
    }

    private void append(InstructionHandle instructionHandle) {
        if (isEmpty()) {
            this.end = instructionHandle;
            this.start = instructionHandle;
            instructionHandle.prev = null;
            instructionHandle.next = null;
        } else {
            InstructionHandle instructionHandle2 = this.end;
            instructionHandle2.next = instructionHandle;
            instructionHandle.prev = instructionHandle2;
            instructionHandle.next = null;
            this.end = instructionHandle;
        }
        this.length++;
    }

    public InstructionHandle insert(Instruction instruction, InstructionList instructionList) {
        InstructionHandle findInstruction1 = findInstruction1(instruction);
        if (findInstruction1 != null) {
            return insert(findInstruction1, instructionList);
        }
        throw new ClassGenException("Instruction " + instruction + " is not contained in this list.");
    }

    public InstructionHandle insert(Instruction instruction) {
        InstructionHandle instructionHandle = InstructionHandle.getInstructionHandle(instruction);
        insert(instructionHandle);
        return instructionHandle;
    }

    public BranchHandle insert(BranchInstruction branchInstruction) {
        BranchHandle branchHandle = BranchHandle.getBranchHandle(branchInstruction);
        insert(branchHandle);
        return branchHandle;
    }

    public InstructionHandle insert(Instruction instruction, Instruction instruction2) {
        return insert(instruction, new InstructionList(instruction2));
    }

    public InstructionHandle append(Instruction instruction) {
        InstructionHandle instructionHandle = InstructionHandle.getInstructionHandle(instruction);
        append(instructionHandle);
        return instructionHandle;
    }

    public InstructionHandle insert(Instruction instruction, CompoundInstruction compoundInstruction) {
        return insert(instruction, compoundInstruction.getInstructionList());
    }

    public InstructionHandle insert(CompoundInstruction compoundInstruction) {
        return insert(compoundInstruction.getInstructionList());
    }

    public BranchHandle append(BranchInstruction branchInstruction) {
        BranchHandle branchHandle = BranchHandle.getBranchHandle(branchInstruction);
        append(branchHandle);
        return branchHandle;
    }

    public InstructionHandle insert(InstructionHandle instructionHandle, Instruction instruction) {
        return insert(instructionHandle, new InstructionList(instruction));
    }

    public InstructionHandle insert(InstructionHandle instructionHandle, CompoundInstruction compoundInstruction) {
        return insert(instructionHandle, compoundInstruction.getInstructionList());
    }

    public InstructionHandle append(Instruction instruction, Instruction instruction2) {
        return append(instruction, new InstructionList(instruction2));
    }

    public BranchHandle insert(InstructionHandle instructionHandle, BranchInstruction branchInstruction) {
        BranchHandle branchHandle = BranchHandle.getBranchHandle(branchInstruction);
        InstructionList instructionList = new InstructionList();
        instructionList.append(branchHandle);
        insert(instructionHandle, instructionList);
        return branchHandle;
    }

    public InstructionHandle append(Instruction instruction, CompoundInstruction compoundInstruction) {
        return append(instruction, compoundInstruction.getInstructionList());
    }

    public InstructionHandle append(CompoundInstruction compoundInstruction) {
        return append(compoundInstruction.getInstructionList());
    }

    public InstructionHandle append(InstructionHandle instructionHandle, CompoundInstruction compoundInstruction) {
        return append(instructionHandle, compoundInstruction.getInstructionList());
    }

    public InstructionHandle append(InstructionHandle instructionHandle, Instruction instruction) {
        return append(instructionHandle, new InstructionList(instruction));
    }

    public BranchHandle append(InstructionHandle instructionHandle, BranchInstruction branchInstruction) {
        BranchHandle branchHandle = BranchHandle.getBranchHandle(branchInstruction);
        InstructionList instructionList = new InstructionList();
        instructionList.append(branchHandle);
        append(instructionHandle, instructionList);
        return branchHandle;
    }
}
