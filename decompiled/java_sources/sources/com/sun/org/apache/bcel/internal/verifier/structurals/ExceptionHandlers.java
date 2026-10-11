package com.sun.org.apache.bcel.internal.verifier.structurals;

import com.sun.org.apache.bcel.internal.generic.CodeExceptionGen;
import com.sun.org.apache.bcel.internal.generic.InstructionHandle;
import com.sun.org.apache.bcel.internal.generic.MethodGen;
import java.util.HashSet;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ExceptionHandlers {
    private Hashtable exceptionhandlers = new Hashtable();

    public ExceptionHandlers(MethodGen methodGen) {
        CodeExceptionGen[] exceptionHandlers = methodGen.getExceptionHandlers();
        for (int i = 0; i < exceptionHandlers.length; i++) {
            ExceptionHandler exceptionHandler = new ExceptionHandler(exceptionHandlers[i].getCatchType(), exceptionHandlers[i].getHandlerPC());
            for (InstructionHandle startPC = exceptionHandlers[i].getStartPC(); startPC != exceptionHandlers[i].getEndPC().getNext(); startPC = startPC.getNext()) {
                HashSet hashSet = (HashSet) this.exceptionhandlers.get(startPC);
                if (hashSet == null) {
                    hashSet = new HashSet();
                    this.exceptionhandlers.put(startPC, hashSet);
                }
                hashSet.add(exceptionHandler);
            }
        }
    }

    public ExceptionHandler[] getExceptionHandlers(InstructionHandle instructionHandle) {
        HashSet hashSet = (HashSet) this.exceptionhandlers.get(instructionHandle);
        return hashSet == null ? new ExceptionHandler[0] : (ExceptionHandler[]) hashSet.toArray(new ExceptionHandler[hashSet.size()]);
    }
}
