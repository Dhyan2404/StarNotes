package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
import com.sun.org.apache.bcel.internal.generic.INVOKEVIRTUAL;
import com.sun.org.apache.bcel.internal.generic.InstructionConstants;
import com.sun.org.apache.bcel.internal.generic.InstructionList;
import com.sun.org.apache.bcel.internal.generic.PUSH;
import com.sun.org.apache.bcel.internal.generic.PUTFIELD;
import com.sun.org.apache.bcel.internal.generic.StackInstruction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.Util;
import com.sun.org.apache.xml.internal.serializer.Encodings;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.StringTokenizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class Output extends TopLevelElement {
    private static final String HTML_VERSION = "4.0";
    private static final String STRING_SIG = "Ljava/lang/String;";
    private static final String XML_VERSION = "1.0";
    private String _cdata;
    private String _doctypePublic;
    private String _doctypeSystem;
    private String _encoding;
    private String _indentamount;
    private String _mediaType;
    private String _method;
    private String _standalone;
    private String _version;
    private boolean _omitHeader = false;
    private boolean _indent = false;
    private boolean _disabled = false;

    private void transferAttribute(Output output, String str) {
        if (hasAttribute(str) || !output.hasAttribute(str)) {
            return;
        }
        addAttribute(str, output.getAttribute(str));
    }

    public void disable() {
        this._disabled = true;
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void display(int i) {
        indent(i);
        Util.println("Output " + this._method);
    }

    public boolean enabled() {
        return !this._disabled;
    }

    public String getCdata() {
        return this._cdata;
    }

    public String getOutputMethod() {
        return this._method;
    }

    public void mergeOutput(Output output) {
        transferAttribute(output, "version");
        transferAttribute(output, "method");
        transferAttribute(output, "encoding");
        transferAttribute(output, "doctype-system");
        transferAttribute(output, "doctype-public");
        transferAttribute(output, "media-type");
        transferAttribute(output, "indent");
        transferAttribute(output, "omit-xml-declaration");
        transferAttribute(output, "standalone");
        if (output.hasAttribute("cdata-section-elements")) {
            addAttribute("cdata-section-elements", output.getAttribute("cdata-section-elements") + ' ' + getAttribute("cdata-section-elements"));
        }
        String lookupPrefix = lookupPrefix("http://xml.apache.org/xalan");
        if (lookupPrefix != null) {
            transferAttribute(output, lookupPrefix + ":indent-amount");
        }
        String lookupPrefix2 = lookupPrefix(com.sun.org.apache.xml.internal.utils.Constants.S_BUILTIN_OLD_EXTENSIONS_URL);
        if (lookupPrefix2 != null) {
            transferAttribute(output, lookupPrefix2 + ":indent-amount");
        }
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void parseContents(Parser parser) {
        Properties properties = new Properties();
        parser.setOutput(this);
        if (this._disabled) {
            return;
        }
        String attribute = getAttribute("version");
        this._version = attribute;
        if (attribute.equals("")) {
            this._version = null;
        } else {
            properties.setProperty("version", this._version);
        }
        String attribute2 = getAttribute("method");
        this._method = attribute2;
        if (attribute2.equals("")) {
            this._method = null;
        }
        String str = this._method;
        if (str != null) {
            String lowerCase = str.toLowerCase();
            this._method = lowerCase;
            if (lowerCase.equals("xml") || this._method.equals("html") || this._method.equals("text") || (XML11Char.isXML11ValidQName(this._method) && this._method.indexOf(":") > 0)) {
                properties.setProperty("method", this._method);
            } else {
                reportError(this, parser, ErrorMsg.INVALID_METHOD_IN_OUTPUT, this._method);
            }
        }
        String attribute3 = getAttribute("encoding");
        this._encoding = attribute3;
        if (attribute3.equals("")) {
            this._encoding = null;
        } else {
            try {
                new OutputStreamWriter(System.out, Encodings.convertMime2JavaEncoding(this._encoding));
            } catch (UnsupportedEncodingException unused) {
                parser.reportError(4, new ErrorMsg(ErrorMsg.UNSUPPORTED_ENCODING, (Object) this._encoding, (SyntaxTreeNode) this));
            }
            properties.setProperty("encoding", this._encoding);
        }
        String attribute4 = getAttribute("omit-xml-declaration");
        if (!attribute4.equals("")) {
            if (attribute4.equals("yes")) {
                this._omitHeader = true;
            }
            properties.setProperty("omit-xml-declaration", attribute4);
        }
        String attribute5 = getAttribute("standalone");
        this._standalone = attribute5;
        if (attribute5.equals("")) {
            this._standalone = null;
        } else {
            properties.setProperty("standalone", this._standalone);
        }
        String attribute6 = getAttribute("doctype-system");
        this._doctypeSystem = attribute6;
        if (attribute6.equals("")) {
            this._doctypeSystem = null;
        } else {
            properties.setProperty("doctype-system", this._doctypeSystem);
        }
        String attribute7 = getAttribute("doctype-public");
        this._doctypePublic = attribute7;
        if (attribute7.equals("")) {
            this._doctypePublic = null;
        } else {
            properties.setProperty("doctype-public", this._doctypePublic);
        }
        String attribute8 = getAttribute("cdata-section-elements");
        this._cdata = attribute8;
        if (attribute8.equals("")) {
            this._cdata = null;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            StringTokenizer stringTokenizer = new StringTokenizer(this._cdata);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (!XML11Char.isXML11ValidQName(nextToken)) {
                    parser.reportError(3, new ErrorMsg("INVALID_QNAME_ERR", (Object) nextToken, (SyntaxTreeNode) this));
                }
                stringBuffer.append(parser.getQName(nextToken).toString());
                stringBuffer.append(' ');
            }
            String stringBuffer2 = stringBuffer.toString();
            this._cdata = stringBuffer2;
            properties.setProperty("cdata-section-elements", stringBuffer2);
        }
        String attribute9 = getAttribute("indent");
        if (attribute9.equals("")) {
            String str2 = this._method;
            if (str2 != null && str2.equals("html")) {
                this._indent = true;
            }
        } else {
            if (attribute9.equals("yes")) {
                this._indent = true;
            }
            properties.setProperty("indent", attribute9);
        }
        String attribute10 = getAttribute(lookupPrefix("http://xml.apache.org/xalan"), "indent-amount");
        this._indentamount = attribute10;
        if (attribute10.equals("")) {
            this._indentamount = getAttribute(lookupPrefix(com.sun.org.apache.xml.internal.utils.Constants.S_BUILTIN_OLD_EXTENSIONS_URL), "indent-amount");
        }
        if (!this._indentamount.equals("")) {
            properties.setProperty("indent_amount", this._indentamount);
        }
        String attribute11 = getAttribute("media-type");
        this._mediaType = attribute11;
        if (attribute11.equals("")) {
            this._mediaType = null;
        } else {
            properties.setProperty("media-type", this._mediaType);
        }
        String str3 = this._method;
        if (str3 != null) {
            if (str3.equals("html")) {
                if (this._version == null) {
                    this._version = "4.0";
                }
                if (this._mediaType == null) {
                    this._mediaType = "text/html";
                }
            } else if (this._method.equals("text") && this._mediaType == null) {
                this._mediaType = "text/plain";
            }
        }
        parser.getCurrentStylesheet().setOutputProperties(properties);
    }

    @Override // com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement, com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode
    public void translate(ClassGenerator classGenerator, MethodGenerator methodGenerator) {
        if (this._disabled) {
            return;
        }
        ConstantPoolGen constantPool = classGenerator.getConstantPool();
        InstructionList instructionList = methodGenerator.getInstructionList();
        instructionList.append(classGenerator.loadTranslet());
        String str = this._version;
        if (str != null && !str.equals("1.0")) {
            int addFieldref = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_version", "Ljava/lang/String;");
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, this._version));
            instructionList.append(new PUTFIELD(addFieldref));
        }
        if (this._method != null) {
            int addFieldref2 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_method", "Ljava/lang/String;");
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, this._method));
            instructionList.append(new PUTFIELD(addFieldref2));
        }
        if (this._encoding != null) {
            int addFieldref3 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_encoding", "Ljava/lang/String;");
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, this._encoding));
            instructionList.append(new PUTFIELD(addFieldref3));
        }
        if (this._omitHeader) {
            int addFieldref4 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_omitHeader", Constants.HASIDCALL_INDEX_SIG);
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, this._omitHeader));
            instructionList.append(new PUTFIELD(addFieldref4));
        }
        if (this._standalone != null) {
            int addFieldref5 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_standalone", "Ljava/lang/String;");
            instructionList.append(InstructionConstants.DUP);
            instructionList.append(new PUSH(constantPool, this._standalone));
            instructionList.append(new PUTFIELD(addFieldref5));
        }
        int addFieldref6 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_doctypeSystem", "Ljava/lang/String;");
        StackInstruction stackInstruction = InstructionConstants.DUP;
        instructionList.append(stackInstruction);
        instructionList.append(new PUSH(constantPool, this._doctypeSystem));
        instructionList.append(new PUTFIELD(addFieldref6));
        int addFieldref7 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_doctypePublic", "Ljava/lang/String;");
        instructionList.append(stackInstruction);
        instructionList.append(new PUSH(constantPool, this._doctypePublic));
        instructionList.append(new PUTFIELD(addFieldref7));
        if (this._mediaType != null) {
            int addFieldref8 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_mediaType", "Ljava/lang/String;");
            instructionList.append(stackInstruction);
            instructionList.append(new PUSH(constantPool, this._mediaType));
            instructionList.append(new PUTFIELD(addFieldref8));
        }
        if (this._indent) {
            int addFieldref9 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_indent", Constants.HASIDCALL_INDEX_SIG);
            instructionList.append(stackInstruction);
            instructionList.append(new PUSH(constantPool, this._indent));
            instructionList.append(new PUTFIELD(addFieldref9));
        }
        String str2 = this._indentamount;
        if (str2 != null && !str2.equals("")) {
            int addFieldref10 = constantPool.addFieldref(Constants.TRANSLET_CLASS, "_indentamount", "I");
            instructionList.append(stackInstruction);
            instructionList.append(new PUSH(constantPool, Integer.parseInt(this._indentamount)));
            instructionList.append(new PUTFIELD(addFieldref10));
        }
        if (this._cdata != null) {
            int addMethodref = constantPool.addMethodref(Constants.TRANSLET_CLASS, "addCdataElement", "(Ljava/lang/String;)V");
            StringTokenizer stringTokenizer = new StringTokenizer(this._cdata);
            while (stringTokenizer.hasMoreTokens()) {
                instructionList.append(InstructionConstants.DUP);
                instructionList.append(new PUSH(constantPool, stringTokenizer.nextToken()));
                instructionList.append(new INVOKEVIRTUAL(addMethodref));
            }
        }
        instructionList.append(InstructionConstants.POP);
    }
}
