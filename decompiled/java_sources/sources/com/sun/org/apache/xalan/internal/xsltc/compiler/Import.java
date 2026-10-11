package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.TypeCheckError;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import java.util.Enumeration;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes10.dex */
final class Import extends TopLevelElement {
    private Stylesheet _imported = null;

    public Stylesheet getImportedStylesheet() {
        return this._imported;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        String attribute;
        XMLReader xMLReader;
        XSLTC xsltc = parser.getXSLTC();
        Stylesheet currentStylesheet = parser.getCurrentStylesheet();
        try {
            try {
                attribute = getAttribute("href");
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (currentStylesheet.checkForLoop(attribute)) {
                parser.reportError(2, new ErrorMsg(ErrorMsg.CIRCULAR_INCLUDE_ERR, (Object) attribute, (SyntaxTreeNode) this));
                return;
            }
            String systemId = currentStylesheet.getSystemId();
            SourceLoader sourceLoader = currentStylesheet.getSourceLoader();
            InputSource inputSource = null;
            XMLReader xMLReader2 = null;
            if (sourceLoader != null) {
                InputSource loadSource = sourceLoader.loadSource(attribute, systemId, xsltc);
                if (loadSource != null) {
                    attribute = loadSource.getSystemId();
                    xMLReader2 = xsltc.getXMLReader();
                }
                xMLReader = xMLReader2;
                inputSource = loadSource;
            } else {
                xMLReader = null;
            }
            if (inputSource == null) {
                attribute = SystemIDResolver.getAbsoluteURI(attribute, systemId);
                inputSource = new InputSource(attribute);
            }
            SyntaxTreeNode parse = xMLReader != null ? parser.parse(xMLReader, inputSource) : parser.parse(inputSource);
            if (parse == null) {
                return;
            }
            Stylesheet makeStylesheet = parser.makeStylesheet(parse);
            this._imported = makeStylesheet;
            if (makeStylesheet == null) {
                return;
            }
            makeStylesheet.setSourceLoader(sourceLoader);
            this._imported.setSystemId(attribute);
            this._imported.setParentStylesheet(currentStylesheet);
            this._imported.setImportingStylesheet(currentStylesheet);
            this._imported.setTemplateInlining(currentStylesheet.getTemplateInlining());
            int currentImportPrecedence = parser.getCurrentImportPrecedence();
            int nextImportPrecedence = parser.getNextImportPrecedence();
            this._imported.setImportPrecedence(currentImportPrecedence);
            currentStylesheet.setImportPrecedence(nextImportPrecedence);
            parser.setCurrentStylesheet(this._imported);
            this._imported.parseContents(parser);
            Enumeration elements = this._imported.elements();
            Stylesheet topLevelStylesheet = parser.getTopLevelStylesheet();
            while (elements.hasMoreElements()) {
                Object nextElement = elements.nextElement();
                if (nextElement instanceof TopLevelElement) {
                    if (nextElement instanceof Variable) {
                        topLevelStylesheet.addVariable((Variable) nextElement);
                    } else if (nextElement instanceof Param) {
                        topLevelStylesheet.addParam((Param) nextElement);
                    } else {
                        topLevelStylesheet.addElement((TopLevelElement) nextElement);
                    }
                }
            }
        } finally {
            parser.setCurrentStylesheet(currentStylesheet);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public Type typeCheck(SymbolTable symbolTable) throws TypeCheckError {
        return Type.Void;
    }
}
