package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class CallTemplate extends Instruction {
    private QName _name;
    private Object[] _parameters = null;
    private Template _calleeTemplate = null;

    private void buildParameterList() {
        Vector parameters = this._calleeTemplate.getParameters();
        int size = parameters.size();
        this._parameters = new Object[size];
        for (int i = 0; i < size; i++) {
            this._parameters[i] = parameters.elementAt(i);
        }
        int elementCount = elementCount();
        for (int i2 = 0; i2 < elementCount; i2++) {
            Object elementAt = elementAt(i2);
            if (elementAt instanceof WithParam) {
                WithParam withParam = (WithParam) elementAt;
                QName name = withParam.getName();
                int i3 = 0;
                while (true) {
                    if (i3 < size) {
                        Object obj = this._parameters[i3];
                        if ((obj instanceof Param) && ((Param) obj).getName() == name) {
                            withParam.setDoParameterOptimization(true);
                            this._parameters[i3] = withParam;
                            break;
                        }
                        if ((obj instanceof WithParam) && ((WithParam) obj).getName() == name) {
                            withParam.setDoParameterOptimization(true);
                            this._parameters[i3] = withParam;
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        System.out.print("CallTemplate");
        Util.println(" name " + this._name);
        displayContents(i + 4);
    }

    public Template getCalleeTemplate() {
        Template lookupTemplate = getXSLTC().getParser().getSymbolTable().lookupTemplate(this._name);
        if (lookupTemplate.isSimpleNamedTemplate()) {
            return lookupTemplate;
        }
        return null;
    }

    public boolean hasWithParams() {
        return elementCount() > 0;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute = getAttribute("name");
        if (attribute.length() > 0) {
            if (!XML11Char.isXML11ValidQName(attribute)) {
                parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) attribute, (SyntaxTreeNode) this));
            }
            this._name = parser.getQNameIgnoreDefaultNs(attribute);
        } else {
            reportError(this, parser, ErrorMsg.REQUIRED_ATTR_ERR, "name");
        }
        parseChildren(parser);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        Stylesheet stylesheet = classGenerator.getStylesheet();
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        if (stylesheet.hasLocalParams() || hasContents()) {
            Template calleeTemplate = getCalleeTemplate();
            this._calleeTemplate = calleeTemplate;
            if (calleeTemplate != null) {
                buildParameterList();
            } else {
                int addMethodref = constantPool.addMethodref(Constants.TRANSLET_CLASS, Constants.PUSH_PARAM_FRAME, "()V");
                instructionList.append(classGenerator.loadTranslet());
                instructionList.append(new INVOKEVIRTUAL(addMethodref));
                translateContents(classGenerator, methodGenerator);
            }
        }
        String className = stylesheet.getClassName();
        String escape = Util.escape(this._name.toString());
        instructionList.append(classGenerator.loadTranslet());
        instructionList.append(methodGenerator.loadDOM());
        instructionList.append(methodGenerator.loadIterator());
        instructionList.append(methodGenerator.loadHandler());
        instructionList.append(methodGenerator.loadCurrentNode());
        StringBuffer stringBuffer = new StringBuffer("(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I");
        Template template = this._calleeTemplate;
        if (template != null) {
            template.getParameters();
            int length = this._parameters.length;
            for (int i = 0; i < length; i++) {
                SyntaxTreeNode syntaxTreeNode = (SyntaxTreeNode) this._parameters[i];
                stringBuffer.append(Constants.OBJECT_SIG);
                if (syntaxTreeNode instanceof Param) {
                    instructionList.append(InstructionConstants.ACONST_NULL);
                } else {
                    syntaxTreeNode.translate(classGenerator, methodGenerator);
                }
            }
        }
        stringBuffer.append(")V");
        instructionList.append(new INVOKEVIRTUAL(constantPool.addMethodref(className, escape, stringBuffer.toString())));
        if (this._calleeTemplate == null) {
            if (stylesheet.hasLocalParams() || hasContents()) {
                int addMethodref2 = constantPool.addMethodref(Constants.TRANSLET_CLASS, Constants.POP_PARAM_FRAME, "()V");
                instructionList.append(classGenerator.loadTranslet());
                instructionList.append(new INVOKEVIRTUAL(addMethodref2));
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        if (symbolTable.lookupTemplate(this._name) == null) {
            throw new TypeCheckError(new ErrorMsg(ErrorMsg.TEMPLATE_UNDEF_ERR, (Object) this._name, (SyntaxTreeNode) this));
        }
        typeCheckContents(symbolTable);
        return Type.Void;
    }
}
