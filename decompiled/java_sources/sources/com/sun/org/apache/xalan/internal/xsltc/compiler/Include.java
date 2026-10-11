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

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Include extends TopLevelElement {
    private Stylesheet _included = null;

    public Stylesheet getIncludedStylesheet() {
        return this._included;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        XMLReader xMLReader;
        XSLTC xsltc = parser.getXSLTC();
        Stylesheet currentStylesheet = parser.getCurrentStylesheet();
        String attribute = getAttribute("href");
        try {
            try {
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
            this._included = makeStylesheet;
            if (makeStylesheet == null) {
                return;
            }
            makeStylesheet.setSourceLoader(sourceLoader);
            this._included.setSystemId(attribute);
            this._included.setParentStylesheet(currentStylesheet);
            this._included.setIncludingStylesheet(currentStylesheet);
            this._included.setTemplateInlining(currentStylesheet.getTemplateInlining());
            this._included.setImportPrecedence(currentStylesheet.getImportPrecedence());
            parser.setCurrentStylesheet(this._included);
            this._included.parseContents(parser);
            Enumeration elements = this._included.elements();
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
