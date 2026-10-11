package com.sun.org.apache.xalan.internal.xsltc.compiler.util;

import com.sun.org.apache.bcel.internal.generic.ALOAD;
import com.sun.org.apache.bcel.internal.generic.ASTORE;
import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.ICONST;
import com.sun.org.apache.bcel.internal.generic.ILOAD;
import com.sun.org.apache.bcel.internal.generic.INVOKEINTERFACE;
import com.sun.org.apache.bcel.internal.generic.ISTORE;
import com.sun.org.apache.bcel.internal.generic.Instruction;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.LocalVariableGen;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class MethodGenerator extends MethodGen implements Constants {
    private static final int DOM_INDEX = 1;
    private static final String END_ELEMENT_SIG = "(Ljava/lang/String;)V";
    private static final int HANDLER_INDEX = 3;
    protected static final int INVALID_INDEX = -1;
    private static final int ITERATOR_INDEX = 2;
    private static final String START_ELEMENT_SIG = "(Ljava/lang/String;)V";
    private boolean _allocatorInit;
    private final Instruction _aloadDom;
    private final Instruction _aloadHandler;
    private final Instruction _aloadIterator;
    private final Instruction _astoreDom;
    private final Instruction _astoreHandler;
    private final Instruction _astoreIterator;
    private final Instruction _attribute;
    private final Instruction _endDocument;
    private final Instruction _endElement;
    private Instruction _iloadCurrent;
    private Instruction _istoreCurrent;
    private InstructionList _mapTypeSub;
    private final Instruction _namespace;
    private final Instruction _nextNode;
    private Hashtable _preCompiled;
    private final Instruction _reset;
    private final Instruction _setStartNode;
    private SlotAllocator _slotAllocator;
    private final Instruction _startDocument;
    private final Instruction _startElement;
    private final Instruction _uniqueAttribute;

    public MethodGenerator(int i, com.sun.org.apache.bcel.internal.generic.Type type, com.sun.org.apache.bcel.internal.generic.Type[] typeArr, String[] strArr, String str, String str2, InstructionList instructionList, ConstantPoolGen constantPoolGen) {
        super(i, type, typeArr, strArr, str, str2, instructionList, constantPoolGen);
        this._allocatorInit = false;
        this._preCompiled = new Hashtable();
        this._astoreHandler = new ASTORE(3);
        this._aloadHandler = new ALOAD(3);
        this._astoreIterator = new ASTORE(2);
        this._aloadIterator = new ALOAD(2);
        this._aloadDom = new ALOAD(1);
        this._astoreDom = new ASTORE(1);
        this._startElement = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "startElement", "(Ljava/lang/String;)V"), 2);
        this._endElement = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "endElement", "(Ljava/lang/String;)V"), 2);
        this._attribute = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, Constants.ADD_ATTRIBUTE, "(Ljava/lang/String;Ljava/lang/String;)V"), 3);
        this._uniqueAttribute = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "addUniqueAttribute", "(Ljava/lang/String;Ljava/lang/String;I)V"), 4);
        this._namespace = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "namespaceAfterStartElement", "(Ljava/lang/String;Ljava/lang/String;)V"), 3);
        this._startDocument = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "startDocument", "()V"), 1);
        this._endDocument = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.TRANSLET_OUTPUT_INTERFACE, "endDocument", "()V"), 1);
        this._setStartNode = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.NODE_ITERATOR, Constants.SET_START_NODE, "(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), 2);
        this._reset = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.NODE_ITERATOR, Constants.RESET, "()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;"), 1);
        this._nextNode = new INVOKEINTERFACE(constantPoolGen.addInterfaceMethodref(Constants.NODE_ITERATOR, Constants.NEXT, "()I"), 1);
        SlotAllocator slotAllocator = new SlotAllocator();
        this._slotAllocator = slotAllocator;
        slotAllocator.initialize(getLocalVariables());
        this._allocatorInit = true;
    }

    public void addInstructionList(Pattern pattern, InstructionList instructionList) {
        this._preCompiled.put(pattern, instructionList);
    }

    @Override // com.sun.org.apache.bcel.internal.generic.MethodGen
    public LocalVariableGen addLocalVariable(String str, com.sun.org.apache.bcel.internal.generic.Type type, InstructionHandle instructionHandle, InstructionHandle instructionHandle2) {
        return this._allocatorInit ? addLocalVariable2(str, type, instructionHandle) : super.addLocalVariable(str, type, instructionHandle, instructionHandle2);
    }

    public LocalVariableGen addLocalVariable2(String str, com.sun.org.apache.bcel.internal.generic.Type type, InstructionHandle instructionHandle) {
        return super.addLocalVariable(str, type, this._slotAllocator.allocateSlot(type), instructionHandle, null);
    }

    public final Instruction attribute() {
        return this._attribute;
    }

    public final Instruction endDocument() {
        return this._endDocument;
    }

    public final Instruction endElement() {
        return this._endElement;
    }

    public InstructionList getInstructionList(Pattern pattern) {
        return (InstructionList) this._preCompiled.get(pattern);
    }

    public int getLocalIndex(String str) {
        return getLocalVariable(str).getIndex();
    }

    public LocalVariableGen getLocalVariable(String str) {
        LocalVariableGen[] localVariables = getLocalVariables();
        for (int i = 0; i < localVariables.length; i++) {
            if (localVariables[i].getName().equals(str)) {
                return localVariables[i];
            }
        }
        return null;
    }

    public Instruction loadContextNode() {
        return loadCurrentNode();
    }

    public Instruction loadCurrentNode() {
        if (this._iloadCurrent == null) {
            int localIndex = getLocalIndex(Keywords.FUNC_CURRENT_STRING);
            if (localIndex > 0) {
                this._iloadCurrent = new ILOAD(localIndex);
            } else {
                this._iloadCurrent = new ICONST(0);
            }
        }
        return this._iloadCurrent;
    }

    public Instruction loadDOM() {
        return this._aloadDom;
    }

    public Instruction loadHandler() {
        return this._aloadHandler;
    }

    public Instruction loadIterator() {
        return this._aloadIterator;
    }

    public final Instruction namespace() {
        return this._namespace;
    }

    public final Instruction nextNode() {
        return this._nextNode;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.MethodGen
    public void removeLocalVariable(LocalVariableGen localVariableGen) {
        this._slotAllocator.releaseSlot(localVariableGen);
        super.removeLocalVariable(localVariableGen);
    }

    public final Instruction reset() {
        return this._reset;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.MethodGen
    public void setMaxLocals() {
        int maxLocals = super.getMaxLocals();
        LocalVariableGen[] localVariables = super.getLocalVariables();
        if (localVariables != null && localVariables.length > maxLocals) {
            maxLocals = localVariables.length;
        }
        if (maxLocals < 5) {
            maxLocals = 5;
        }
        super.setMaxLocals(maxLocals);
    }

    public final Instruction setStartNode() {
        return this._setStartNode;
    }

    public final Instruction startDocument() {
        return this._startDocument;
    }

    public final Instruction startElement() {
        return this._startElement;
    }

    public Instruction storeContextNode() {
        return storeCurrentNode();
    }

    public Instruction storeCurrentNode() {
        Instruction instruction = this._istoreCurrent;
        if (instruction != null) {
            return instruction;
        }
        ISTORE istore = new ISTORE(getLocalIndex(Keywords.FUNC_CURRENT_STRING));
        this._istoreCurrent = istore;
        return istore;
    }

    public Instruction storeDOM() {
        return this._astoreDom;
    }

    public Instruction storeHandler() {
        return this._astoreHandler;
    }

    public Instruction storeIterator() {
        return this._astoreIterator;
    }

    public final Instruction uniqueAttribute() {
        return this._uniqueAttribute;
    }
}
