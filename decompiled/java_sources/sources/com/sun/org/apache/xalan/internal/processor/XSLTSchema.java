package com.sun.org.apache.xalan.internal.processor;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xalan.internal.templates.ElemApplyImport;
import com.sun.org.apache.xalan.internal.templates.ElemApplyTemplates;
import com.sun.org.apache.xalan.internal.templates.ElemAttribute;
import com.sun.org.apache.xalan.internal.templates.ElemCallTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemChoose;
import com.sun.org.apache.xalan.internal.templates.ElemComment;
import com.sun.org.apache.xalan.internal.templates.ElemCopy;
import com.sun.org.apache.xalan.internal.templates.ElemCopyOf;
import com.sun.org.apache.xalan.internal.templates.ElemElement;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFuncResult;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFunction;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionDecl;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionScript;
import com.sun.org.apache.xalan.internal.templates.ElemFallback;
import com.sun.org.apache.xalan.internal.templates.ElemForEach;
import com.sun.org.apache.xalan.internal.templates.ElemIf;
import com.sun.org.apache.xalan.internal.templates.ElemLiteralResult;
import com.sun.org.apache.xalan.internal.templates.ElemMessage;
import com.sun.org.apache.xalan.internal.templates.ElemNumber;
import com.sun.org.apache.xalan.internal.templates.ElemOtherwise;
import com.sun.org.apache.xalan.internal.templates.ElemPI;
import com.sun.org.apache.xalan.internal.templates.ElemParam;
import com.sun.org.apache.xalan.internal.templates.ElemSort;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemText;
import com.sun.org.apache.xalan.internal.templates.ElemTextLiteral;
import com.sun.org.apache.xalan.internal.templates.ElemUnknown;
import com.sun.org.apache.xalan.internal.templates.ElemValueOf;
import com.sun.org.apache.xalan.internal.templates.ElemVariable;
import com.sun.org.apache.xalan.internal.templates.ElemWhen;
import com.sun.org.apache.xalan.internal.templates.ElemWithParam;
import com.sun.org.apache.xml.internal.utils.QName;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class XSLTSchema extends XSLTElementDef {
    private Hashtable m_availElems = new Hashtable();

    public XSLTSchema() {
        build();
    }

    public void addAvailableElement(QName qName) {
        this.m_availElems.put(qName, qName);
    }

    public void build() {
        XSLTAttributeDef xSLTAttributeDef = new XSLTAttributeDef((String) null, "href", 2, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef2 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_ELEMENTS, 12, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef3 = new XSLTAttributeDef((String) null, "method", 9, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef4 = new XSLTAttributeDef((String) null, "version", 13, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef5 = new XSLTAttributeDef((String) null, "encoding", 1, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef6 = new XSLTAttributeDef((String) null, "omit-xml-declaration", 8, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef7 = new XSLTAttributeDef((String) null, "standalone", 8, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef8 = new XSLTAttributeDef((String) null, "doctype-public", 1, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef9 = new XSLTAttributeDef((String) null, "doctype-system", 1, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef10 = new XSLTAttributeDef((String) null, "cdata-section-elements", 19, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef11 = new XSLTAttributeDef((String) null, "indent", 8, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef12 = new XSLTAttributeDef((String) null, "media-type", 1, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef13 = new XSLTAttributeDef((String) null, "name", 9, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef14 = new XSLTAttributeDef((String) null, "name", 18, true, true, 2);
        XSLTAttributeDef xSLTAttributeDef15 = new XSLTAttributeDef((String) null, "name", 17, true, true, 2);
        XSLTAttributeDef xSLTAttributeDef16 = new XSLTAttributeDef((String) null, "name", 9, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef17 = new XSLTAttributeDef((String) null, "use", 5, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef18 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_NAMESPACE, 2, false, true, 2);
        XSLTAttributeDef xSLTAttributeDef19 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_DECIMALSEPARATOR, 6, false, 1, ".");
        XSLTAttributeDef xSLTAttributeDef20 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_INFINITY, 1, false, 1, "Infinity");
        XSLTAttributeDef xSLTAttributeDef21 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_MINUSSIGN, 6, false, 1, "-");
        XSLTAttributeDef xSLTAttributeDef22 = new XSLTAttributeDef((String) null, "NaN", 1, false, 1, "NaN");
        XSLTAttributeDef xSLTAttributeDef23 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_PERCENT, 6, false, 1, "%");
        XSLTAttributeDef xSLTAttributeDef24 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_PERMILLE, 6, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef25 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_ZERODIGIT, 6, false, 1, "0");
        XSLTAttributeDef xSLTAttributeDef26 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_DIGIT, 6, false, 1, "#");
        XSLTAttributeDef xSLTAttributeDef27 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_PATTERNSEPARATOR, 6, false, 1, AndroidTreeView.f47214k);
        XSLTAttributeDef xSLTAttributeDef28 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_GROUPINGSEPARATOR, 6, false, 1, ",");
        XSLTAttributeDef xSLTAttributeDef29 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_USEATTRIBUTESETS, 10, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef30 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_TEST, 5, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef31 = new XSLTAttributeDef((String) null, "select", 5, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef32 = new XSLTAttributeDef((String) null, "select", 5, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef33 = new XSLTAttributeDef((String) null, "select", 5, false, 1, "node()");
        XSLTAttributeDef xSLTAttributeDef34 = new XSLTAttributeDef((String) null, "select", 5, false, 1, ".");
        XSLTAttributeDef xSLTAttributeDef35 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_MATCH, 4, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef36 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_MATCH, 4, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef37 = new XSLTAttributeDef((String) null, "priority", 7, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef38 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_MODE, 9, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef39 = new XSLTAttributeDef("http://www.w3.org/XML/1998/namespace", "space", false, false, false, 2, "default", 2, "preserve", 1);
        XSLTAttributeDef xSLTAttributeDef40 = new XSLTAttributeDef("http://www.w3.org/XML/1998/namespace", "space", 2, false, true, 1);
        XSLTAttributeDef xSLTAttributeDef41 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_STYLESHEET_PREFIX, 1, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef42 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_RESULT_PREFIX, 1, true, false, 1);
        XSLTAttributeDef xSLTAttributeDef43 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING, 8, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef44 = new XSLTAttributeDef(null, "level", false, false, false, 1, Constants.ATTRVAL_SINGLE, 1, Constants.ATTRVAL_MULTI, 2, "any", 3);
        xSLTAttributeDef44.setDefault(Constants.ATTRVAL_SINGLE);
        XSLTAttributeDef xSLTAttributeDef45 = new XSLTAttributeDef((String) null, "count", 4, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef46 = new XSLTAttributeDef((String) null, "from", 4, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef47 = new XSLTAttributeDef((String) null, "value", 5, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef48 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_FORMAT, 1, false, true, 1);
        xSLTAttributeDef48.setDefault("1");
        XSLTAttributeDef xSLTAttributeDef49 = new XSLTAttributeDef((String) null, "lang", 13, false, true, 1);
        XSLTAttributeDef xSLTAttributeDef50 = new XSLTAttributeDef(null, Constants.ATTRNAME_LETTERVALUE, false, true, false, 1, Constants.ATTRVAL_ALPHABETIC, 1, Constants.ATTRVAL_TRADITIONAL, 2);
        XSLTAttributeDef xSLTAttributeDef51 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_GROUPINGSEPARATOR, 6, false, true, 1);
        XSLTAttributeDef xSLTAttributeDef52 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_GROUPINGSIZE, 7, false, true, 1);
        XSLTAttributeDef xSLTAttributeDef53 = new XSLTAttributeDef(null, Constants.ATTRNAME_DATATYPE, false, true, true, 1, "text", 1, "number", 1);
        xSLTAttributeDef53.setDefault("text");
        XSLTAttributeDef xSLTAttributeDef54 = new XSLTAttributeDef(null, Constants.ATTRNAME_ORDER, false, true, false, 1, Constants.ATTRVAL_ORDER_ASCENDING, 1, Constants.ATTRVAL_ORDER_DESCENDING, 2);
        xSLTAttributeDef54.setDefault(Constants.ATTRVAL_ORDER_ASCENDING);
        XSLTAttributeDef xSLTAttributeDef55 = new XSLTAttributeDef(null, Constants.ATTRNAME_CASEORDER, false, true, false, 1, Constants.ATTRVAL_CASEORDER_UPPER, 1, Constants.ATTRVAL_CASEORDER_LOWER, 2);
        XSLTAttributeDef xSLTAttributeDef56 = new XSLTAttributeDef((String) null, Constants.ATTRNAME_TERMINATE, 8, false, false, 1);
        xSLTAttributeDef56.setDefault(SVGParser.f16048t);
        XSLTAttributeDef xSLTAttributeDef57 = new XSLTAttributeDef("http://www.w3.org/1999/XSL/Transform", Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES, 20, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef58 = new XSLTAttributeDef("http://www.w3.org/1999/XSL/Transform", Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES, 15, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef59 = new XSLTAttributeDef("http://www.w3.org/1999/XSL/Transform", Constants.ATTRNAME_USEATTRIBUTESETS, 10, false, false, 1);
        XSLTAttributeDef xSLTAttributeDef60 = new XSLTAttributeDef("http://www.w3.org/1999/XSL/Transform", "version", 13, false, false, 1);
        XSLTElementDef xSLTElementDef = new XSLTElementDef(this, null, "text()", null, null, null, new ProcessorCharacters(), ElemTextLiteral.class);
        xSLTElementDef.setType(2);
        XSLTElementDef xSLTElementDef2 = new XSLTElementDef(this, null, "text()", null, null, null, null, ElemTextLiteral.class);
        xSLTElementDef.setType(2);
        XSLTAttributeDef xSLTAttributeDef61 = new XSLTAttributeDef((String) null, "*", 3, false, true, 2);
        XSLTAttributeDef xSLTAttributeDef62 = new XSLTAttributeDef("http://www.w3.org/1999/XSL/Transform", "*", 1, false, false, 2);
        XSLTElementDef[] xSLTElementDefArr = new XSLTElementDef[24];
        XSLTElementDef[] xSLTElementDefArr2 = new XSLTElementDef[24];
        XSLTElementDef[] xSLTElementDefArr3 = new XSLTElementDef[24];
        XSLTElementDef[] xSLTElementDefArr4 = new XSLTElementDef[15];
        XSLTElementDef xSLTElementDef3 = new XSLTElementDef(this, (String) null, "*", (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef40, xSLTAttributeDef57, xSLTAttributeDef58, xSLTAttributeDef59, xSLTAttributeDef60, xSLTAttributeDef62, xSLTAttributeDef61}, (XSLTElementProcessor) new ProcessorLRE(), ElemLiteralResult.class, 20, true);
        XSLTElementDef xSLTElementDef4 = new XSLTElementDef(this, "*", "unknown", (String) null, xSLTElementDefArr, new XSLTAttributeDef[]{xSLTAttributeDef57, xSLTAttributeDef58, xSLTAttributeDef59, xSLTAttributeDef60, xSLTAttributeDef62, xSLTAttributeDef61}, (XSLTElementProcessor) new ProcessorUnknown(), ElemUnknown.class, 20, true);
        XSLTElementDef xSLTElementDef5 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_VALUEOF_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef31, xSLTAttributeDef43}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemValueOf.class, 20, true);
        XSLTElementDef xSLTElementDef6 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_COPY_OF_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef31}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemCopyOf.class, 20, true);
        XSLTElementDef xSLTElementDef7 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "number", (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef44, xSLTAttributeDef45, xSLTAttributeDef46, xSLTAttributeDef47, xSLTAttributeDef48, xSLTAttributeDef49, xSLTAttributeDef50, xSLTAttributeDef51, xSLTAttributeDef52}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemNumber.class, 20, true);
        XSLTElementDef xSLTElementDef8 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_SORT_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef34, xSLTAttributeDef49, xSLTAttributeDef53, xSLTAttributeDef54, xSLTAttributeDef55}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemSort.class, 19, true);
        XSLTElementDef xSLTElementDef9 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_WITHPARAM_STRING, (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef32}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemWithParam.class, 19, true);
        XSLTElementDef xSLTElementDef10 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_APPLY_TEMPLATES_STRING, (String) null, new XSLTElementDef[]{xSLTElementDef8, xSLTElementDef9}, new XSLTAttributeDef[]{xSLTAttributeDef33, xSLTAttributeDef38}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemApplyTemplates.class, 20, true);
        XSLTElementDef xSLTElementDef11 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_APPLY_IMPORTS_STRING, null, null, new XSLTAttributeDef[0], new ProcessorTemplateElem(), ElemApplyImport.class);
        XSLTElementDef xSLTElementDef12 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_FOREACH_STRING, null, xSLTElementDefArr2, new XSLTAttributeDef[]{xSLTAttributeDef31, xSLTAttributeDef39}, new ProcessorTemplateElem(), ElemForEach.class, true, false, true, 20, true);
        XSLTElementDef xSLTElementDef13 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_IF_STRING, (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef30, xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemIf.class, 20, true);
        XSLTElementDef xSLTElementDef14 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_CHOOSE_STRING, null, new XSLTElementDef[]{new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_WHEN_STRING, null, r0, new XSLTAttributeDef[]{xSLTAttributeDef30, xSLTAttributeDef39}, new ProcessorTemplateElem(), ElemWhen.class, false, true, 1, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_OTHERWISE_STRING, null, r0, new XSLTAttributeDef[]{xSLTAttributeDef39}, new ProcessorTemplateElem(), ElemOtherwise.class, false, false, 2, false)}, new XSLTAttributeDef[]{xSLTAttributeDef39}, new ProcessorTemplateElem(), ElemChoose.class, true, false, true, 20, true);
        XSLTElementDef xSLTElementDef15 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "attribute", (String) null, xSLTElementDefArr4, new XSLTAttributeDef[]{xSLTAttributeDef14, xSLTAttributeDef18, xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemAttribute.class, 20, true);
        XSLTElementDef xSLTElementDef16 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_CALLTEMPLATE_STRING, (String) null, new XSLTElementDef[]{xSLTElementDef9}, new XSLTAttributeDef[]{xSLTAttributeDef13}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemCallTemplate.class, 20, true);
        XSLTElementDef xSLTElementDef17 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_VARIABLE_STRING, (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef32}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemVariable.class, 20, true);
        XSLTElementDef xSLTElementDef18 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_PARAMVARIABLE_STRING, (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef32}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemParam.class, 19, true);
        XSLTElementDef xSLTElementDef19 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "text", (String) null, new XSLTElementDef[]{xSLTElementDef}, new XSLTAttributeDef[]{xSLTAttributeDef43}, (XSLTElementProcessor) new ProcessorText(), ElemText.class, 20, true);
        XSLTElementDef xSLTElementDef20 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_PI_STRING, (String) null, xSLTElementDefArr4, new XSLTAttributeDef[]{xSLTAttributeDef15, xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemPI.class, 20, true);
        XSLTElementDef xSLTElementDef21 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "element", (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef14, xSLTAttributeDef18, xSLTAttributeDef29, xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemElement.class, 20, true);
        XSLTElementDef xSLTElementDef22 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "comment", (String) null, xSLTElementDefArr4, new XSLTAttributeDef[]{xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemComment.class, 20, true);
        XSLTElementDef xSLTElementDef23 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "copy", (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef39, xSLTAttributeDef29}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemCopy.class, 20, true);
        XSLTElementDef xSLTElementDef24 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "message", (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef56}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemMessage.class, 20, true);
        XSLTElementDef xSLTElementDef25 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_FALLBACK_STRING, (String) null, r0, new XSLTAttributeDef[]{xSLTAttributeDef39}, (XSLTElementProcessor) new ProcessorTemplateElem(), ElemFallback.class, 20, true);
        XSLTElementDef xSLTElementDef26 = new XSLTElementDef(this, com.sun.org.apache.xml.internal.utils.Constants.S_EXSLT_FUNCTIONS_URL, Constants.EXSLT_ELEMNAME_FUNCTION_STRING, null, xSLTElementDefArr3, new XSLTAttributeDef[]{xSLTAttributeDef13}, new ProcessorExsltFunction(), ElemExsltFunction.class);
        XSLTElementDef[] xSLTElementDefArr5 = {xSLTElementDef, xSLTElementDef10, xSLTElementDef16, xSLTElementDef11, xSLTElementDef12, xSLTElementDef5, xSLTElementDef6, xSLTElementDef7, xSLTElementDef14, xSLTElementDef13, xSLTElementDef19, xSLTElementDef23, xSLTElementDef17, xSLTElementDef24, xSLTElementDef25, xSLTElementDef20, xSLTElementDef22, xSLTElementDef21, xSLTElementDef15, xSLTElementDef3, xSLTElementDef4, xSLTElementDef26, new XSLTElementDef(this, com.sun.org.apache.xml.internal.utils.Constants.S_EXSLT_FUNCTIONS_URL, Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, null, xSLTElementDefArr5, new XSLTAttributeDef[]{xSLTAttributeDef32}, new ProcessorExsltFuncResult(), ElemExsltFuncResult.class)};
        int i = 0;
        while (i < 23) {
            xSLTElementDefArr[i] = xSLTElementDefArr5[i];
            xSLTElementDefArr2[i] = xSLTElementDefArr5[i];
            xSLTElementDefArr3[i] = xSLTElementDefArr5[i];
            i++;
        }
        xSLTElementDefArr[i] = xSLTElementDef18;
        xSLTElementDefArr2[i] = xSLTElementDef8;
        xSLTElementDefArr3[i] = xSLTElementDef18;
        xSLTElementDefArr4[0] = xSLTElementDef;
        xSLTElementDefArr4[1] = xSLTElementDef10;
        xSLTElementDefArr4[2] = xSLTElementDef16;
        xSLTElementDefArr4[3] = xSLTElementDef11;
        xSLTElementDefArr4[4] = xSLTElementDef12;
        xSLTElementDefArr4[5] = xSLTElementDef5;
        xSLTElementDefArr4[6] = xSLTElementDef6;
        xSLTElementDefArr4[7] = xSLTElementDef7;
        xSLTElementDefArr4[8] = xSLTElementDef14;
        xSLTElementDefArr4[9] = xSLTElementDef13;
        xSLTElementDefArr4[10] = xSLTElementDef19;
        xSLTElementDefArr4[11] = xSLTElementDef23;
        xSLTElementDefArr4[12] = xSLTElementDef17;
        xSLTElementDefArr4[13] = xSLTElementDef24;
        xSLTElementDefArr4[14] = xSLTElementDef25;
        XSLTElementDef xSLTElementDef27 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_IMPORT_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef}, (XSLTElementProcessor) new ProcessorImport(), (Class) null, 1, true);
        XSLTElementDef xSLTElementDef28 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "include", (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef}, (XSLTElementProcessor) new ProcessorInclude(), (Class) null, 20, true);
        XSLTAttributeDef[] xSLTAttributeDefArr = {new XSLTAttributeDef((String) null, "lang", 13, true, false, 2), new XSLTAttributeDef((String) null, Constant.SRC_TAG, 2, false, false, 2)};
        XSLTAttributeDef[] xSLTAttributeDefArr2 = {new XSLTAttributeDef((String) null, RequestParameters.PREFIX, 13, true, false, 2), new XSLTAttributeDef((String) null, Constants.ATTRNAME_ELEMENTS, 14, false, false, 2), new XSLTAttributeDef((String) null, Constants.ELEMNAME_EXTENSION_STRING, 14, false, false, 2)};
        XSLTElementDef xSLTElementDef29 = new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_STYLESHEET_STRING, Constants.ELEMNAME_TRANSFORM_STRING, new XSLTElementDef[]{xSLTElementDef28, xSLTElementDef27, xSLTElementDef2, xSLTElementDef4, new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_STRIPSPACE_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef2}, (XSLTElementProcessor) new ProcessorStripSpace(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_PRESERVESPACE_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef2}, (XSLTElementProcessor) new ProcessorPreserveSpace(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_OUTPUT_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef3, xSLTAttributeDef4, xSLTAttributeDef5, xSLTAttributeDef6, xSLTAttributeDef7, xSLTAttributeDef8, xSLTAttributeDef9, xSLTAttributeDef10, xSLTAttributeDef11, xSLTAttributeDef12, XSLTAttributeDef.m_foreignAttr}, (XSLTElementProcessor) new ProcessorOutputElem(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "key", (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef35, xSLTAttributeDef17}, (XSLTElementProcessor) new ProcessorKey(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_DECIMALFORMAT_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef16, xSLTAttributeDef19, xSLTAttributeDef28, xSLTAttributeDef20, xSLTAttributeDef21, xSLTAttributeDef22, xSLTAttributeDef23, xSLTAttributeDef24, xSLTAttributeDef25, xSLTAttributeDef26, xSLTAttributeDef27}, (XSLTElementProcessor) new ProcessorDecimalFormat(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "attribute-set", (String) null, new XSLTElementDef[]{xSLTElementDef15}, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef29}, (XSLTElementProcessor) new ProcessorAttributeSet(), (Class) null, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_VARIABLE_STRING, (String) null, xSLTElementDefArr5, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef32}, (XSLTElementProcessor) new ProcessorGlobalVariableDecl(), ElemVariable.class, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_PARAMVARIABLE_STRING, (String) null, xSLTElementDefArr5, new XSLTAttributeDef[]{xSLTAttributeDef13, xSLTAttributeDef32}, (XSLTElementProcessor) new ProcessorGlobalParamDecl(), ElemParam.class, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", "template", null, xSLTElementDefArr, new XSLTAttributeDef[]{xSLTAttributeDef36, xSLTAttributeDef16, xSLTAttributeDef37, xSLTAttributeDef38, xSLTAttributeDef39}, new ProcessorTemplate(), ElemTemplate.class, true, 20, true), new XSLTElementDef(this, "http://www.w3.org/1999/XSL/Transform", Constants.ELEMNAME_NSALIAS_STRING, (String) null, (XSLTElementDef[]) null, new XSLTAttributeDef[]{xSLTAttributeDef41, xSLTAttributeDef42}, (XSLTElementProcessor) new ProcessorNamespaceAlias(), (Class) null, 20, true), new XSLTElementDef(this, "http://xml.apache.org/xalan", Constants.ELEMNAME_COMPONENT_STRING, null, new XSLTElementDef[]{new XSLTElementDef(this, "http://xml.apache.org/xalan", Constants.ELEMNAME_SCRIPT_STRING, (String) null, new XSLTElementDef[]{xSLTElementDef}, xSLTAttributeDefArr, (XSLTElementProcessor) new ProcessorLRE(), ElemExtensionScript.class, 20, true)}, xSLTAttributeDefArr2, new ProcessorLRE(), ElemExtensionDecl.class), new XSLTElementDef(this, com.sun.org.apache.xml.internal.utils.Constants.S_BUILTIN_OLD_EXTENSIONS_URL, Constants.ELEMNAME_COMPONENT_STRING, null, new XSLTElementDef[]{new XSLTElementDef(this, com.sun.org.apache.xml.internal.utils.Constants.S_BUILTIN_OLD_EXTENSIONS_URL, Constants.ELEMNAME_SCRIPT_STRING, (String) null, new XSLTElementDef[]{xSLTElementDef}, xSLTAttributeDefArr, (XSLTElementProcessor) new ProcessorLRE(), ElemExtensionScript.class, 20, true)}, xSLTAttributeDefArr2, new ProcessorLRE(), ElemExtensionDecl.class), xSLTElementDef26}, new XSLTAttributeDef[]{new XSLTAttributeDef((String) null, Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES, 15, false, false, 2), new XSLTAttributeDef((String) null, Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES, 20, false, false, 2), new XSLTAttributeDef((String) null, "id", 1, false, false, 2), new XSLTAttributeDef((String) null, "version", 13, true, false, 2), xSLTAttributeDef39}, new ProcessorStylesheetElement(), null, true, -1, false);
        xSLTElementDef27.setElements(new XSLTElementDef[]{xSLTElementDef29, xSLTElementDef3, xSLTElementDef4});
        xSLTElementDef28.setElements(new XSLTElementDef[]{xSLTElementDef29, xSLTElementDef3, xSLTElementDef4});
        build(null, null, null, new XSLTElementDef[]{xSLTElementDef29, xSLTElementDef2, xSLTElementDef3, xSLTElementDef4}, null, new ProcessorStylesheetDoc(), null);
    }

    public boolean elementAvailable(QName qName) {
        return this.m_availElems.containsKey(qName);
    }

    public Hashtable getElemsAvailable() {
        return this.m_availElems;
    }
}
