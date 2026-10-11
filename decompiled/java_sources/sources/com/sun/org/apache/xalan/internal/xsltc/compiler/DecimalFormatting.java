package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;
import com.sun.org.apache.bcel.internal.generic.INVOKESPECIAL;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xml.internal.utils.XML11Char;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class DecimalFormatting extends TopLevelElement {
    private static final String DFS_CLASS = "java.text.DecimalFormatSymbols";
    private static final String DFS_SIG = "Ljava/text/DecimalFormatSymbols;";
    private QName _name = null;

    public static void translateDefaultDFS(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        int addMethodref = constantPool.addMethodref(DFS_CLASS, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/Locale;)V");
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(new PUSH(constantPool, ""));
        instructionList.append(new NEW(constantPool.addClass(DFS_CLASS)));
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        instructionList.append(new GETSTATIC(constantPool.addFieldref(Constants.LOCALE_CLASS, "US", Constants.LOCALE_SIG)));
        instructionList.append(new INVOKESPECIAL(addMethodref));
        int addMethodref2 = constantPool.addMethodref(DFS_CLASS, "setNaN", "(Ljava/lang/String;)V");
        instructionList.append(stackInstruction);
        instructionList.append(new PUSH(constantPool, "NaN"));
        instructionList.append(new INVOKEVIRTUAL(addMethodref2));
        int addMethodref3 = constantPool.addMethodref(DFS_CLASS, "setInfinity", "(Ljava/lang/String;)V");
        instructionList.append(stackInstruction);
        instructionList.append(new PUSH(constantPool, "Infinity"));
        instructionList.append(new INVOKEVIRTUAL(addMethodref3));
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(Constants.TRANSLET_CLASS, "addDecimalFormat", "(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V")));
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute("name");
        if (attribute.length() > 0 && !XML11Char.isXML11ValidQName(attribute)) {
            parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) attribute, (SyntaxTreeNode) this));
        }
        QName qNameIgnoreDefaultNs = parser.getQNameIgnoreDefaultNs(attribute);
        this._name = qNameIgnoreDefaultNs;
        if (qNameIgnoreDefaultNs == null) {
            this._name = parser.getQNameIgnoreDefaultNs("");
        }
        SymbolTable symbolTable = parser.getSymbolTable();
        if (symbolTable.getDecimalFormatting(this._name) != null) {
            reportWarning(this, parser, ErrorMsg.SYMBOLS_REDEF_ERR, this._name.toString());
        } else {
            symbolTable.addDecimalFormatting(this._name, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0198 A[SYNTHETIC] */
    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator r17, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator r18) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xsltc.compiler.DecimalFormatting.translate(com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator):void");
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        return Type.Void;
    }
}
