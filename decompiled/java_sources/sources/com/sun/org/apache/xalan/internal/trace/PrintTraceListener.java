package com.sun.org.apache.xalan.internal.trace;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.ElemTextLiteral;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeProxy;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import org.apache.commons.collections4.MapUtils;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class PrintTraceListener implements TraceListenerEx3 {
    PrintWriter m_pw;
    public boolean m_traceTemplates = false;
    public boolean m_traceElements = false;
    public boolean m_traceGeneration = false;
    public boolean m_traceSelection = false;
    public boolean m_traceExtension = false;
    int m_indent = 0;

    public PrintTraceListener(PrintWriter printWriter) {
        this.m_pw = printWriter;
    }

    public void _trace(TracerEvent tracerEvent) {
        int xSLToken = tracerEvent.m_styleNode.getXSLToken();
        if (xSLToken == 19) {
            if (this.m_traceTemplates || this.m_traceElements) {
                ElemTemplate elemTemplate = (ElemTemplate) tracerEvent.m_styleNode;
                this.m_pw.print(elemTemplate.getSystemId() + " Line #" + elemTemplate.getLineNumber() + ", Column #" + elemTemplate.getColumnNumber() + ": " + elemTemplate.getNodeName() + " ");
                if (elemTemplate.getMatch() != null) {
                    this.m_pw.print("match='" + elemTemplate.getMatch().getPatternString() + "' ");
                }
                if (elemTemplate.getName() != null) {
                    this.m_pw.print("name='" + elemTemplate.getName() + "' ");
                }
                this.m_pw.println();
                return;
            }
            return;
        }
        if (xSLToken != 78) {
            if (this.m_traceElements) {
                this.m_pw.println(tracerEvent.m_styleNode.getSystemId() + " Line #" + tracerEvent.m_styleNode.getLineNumber() + ", Column #" + tracerEvent.m_styleNode.getColumnNumber() + ": " + tracerEvent.m_styleNode.getNodeName());
                return;
            }
            return;
        }
        if (this.m_traceElements) {
            this.m_pw.print(tracerEvent.m_styleNode.getSystemId() + " Line #" + tracerEvent.m_styleNode.getLineNumber() + ", Column #" + tracerEvent.m_styleNode.getColumnNumber() + " -- " + tracerEvent.m_styleNode.getNodeName() + ": ");
            ElemTextLiteral elemTextLiteral = (ElemTextLiteral) tracerEvent.m_styleNode;
            String str = new String(elemTextLiteral.getChars(), 0, elemTextLiteral.getChars().length);
            PrintWriter printWriter = this.m_pw;
            StringBuilder sb = new StringBuilder();
            sb.append(MapUtils.f104930a);
            sb.append(str.trim());
            printWriter.println(sb.toString());
        }
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListenerEx3
    public void extension(ExtensionEvent extensionEvent) {
        if (this.m_traceExtension) {
            int i = extensionEvent.m_callType;
            if (i == 0) {
                this.m_pw.println("EXTENSION: " + ((Class) extensionEvent.m_method).getName() + "#<init>");
                return;
            }
            if (i == 1) {
                this.m_pw.println("EXTENSION: " + ((Method) extensionEvent.m_method).getDeclaringClass().getName() + "#" + ((Method) extensionEvent.m_method).getName());
                return;
            }
            if (i != 2) {
                return;
            }
            this.m_pw.println("EXTENSION: " + ((Constructor) extensionEvent.m_method).getDeclaringClass().getName() + "#<init>");
        }
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListenerEx3
    public void extensionEnd(ExtensionEvent extensionEvent) {
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListener
    public void generated(GenerateEvent generateEvent) {
        if (this.m_traceGeneration) {
            switch (generateEvent.m_eventtype) {
                case 1:
                    this.m_pw.println("STARTDOCUMENT");
                    return;
                case 2:
                    this.m_pw.println("ENDDOCUMENT");
                    return;
                case 3:
                    this.m_pw.println("STARTELEMENT: " + generateEvent.m_name);
                    return;
                case 4:
                    this.m_pw.println("ENDELEMENT: " + generateEvent.m_name);
                    return;
                case 5:
                    String str = new String(generateEvent.m_characters, generateEvent.m_start, generateEvent.m_length);
                    this.m_pw.println("CHARACTERS: " + str);
                    return;
                case 6:
                    this.m_pw.println("IGNORABLEWHITESPACE");
                    return;
                case 7:
                    this.m_pw.println("PI: " + generateEvent.m_name + ", " + generateEvent.m_data);
                    return;
                case 8:
                    this.m_pw.println("COMMENT: " + generateEvent.m_data);
                    return;
                case 9:
                    this.m_pw.println("ENTITYREF: " + generateEvent.m_name);
                    return;
                case 10:
                    String str2 = new String(generateEvent.m_characters, generateEvent.m_start, generateEvent.m_length);
                    this.m_pw.println("CDATA: " + str2);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListenerEx
    public void selectEnd(EndSelectionEvent endSelectionEvent) throws TransformerException {
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListener
    public void selected(SelectionEvent selectionEvent) throws TransformerException {
        SourceLocator sourceLocator;
        if (this.m_traceSelection) {
            ElemTemplateElement elemTemplateElement = selectionEvent.m_styleNode;
            Node node = selectionEvent.m_sourceNode;
            if (node instanceof DTMNodeProxy) {
                DTMNodeProxy dTMNodeProxy = (DTMNodeProxy) node;
                sourceLocator = dTMNodeProxy.getDTM().getSourceLocatorFor(dTMNodeProxy.getDTMNodeNumber());
            } else {
                sourceLocator = null;
            }
            if (sourceLocator != null) {
                this.m_pw.println("Selected source node '" + node.getNodeName() + "', at " + sourceLocator);
            } else {
                this.m_pw.println("Selected source node '" + node.getNodeName() + CloudStorageConstants.SINGLE_QUOTES);
            }
            if (selectionEvent.m_styleNode.getLineNumber() == 0) {
                ElemTemplateElement parentElem = elemTemplateElement.getParentElem();
                if (parentElem == elemTemplateElement.getStylesheetRoot().getDefaultRootRule()) {
                    this.m_pw.print("(default root rule) ");
                } else if (parentElem == elemTemplateElement.getStylesheetRoot().getDefaultTextRule()) {
                    this.m_pw.print("(default text rule) ");
                } else if (parentElem == elemTemplateElement.getStylesheetRoot().getDefaultRule()) {
                    this.m_pw.print("(default rule) ");
                }
                this.m_pw.print(elemTemplateElement.getNodeName() + ", " + selectionEvent.m_attributeName + "='" + selectionEvent.m_xpath.getPatternString() + "': ");
            } else {
                this.m_pw.print(selectionEvent.m_styleNode.getSystemId() + " Line #" + selectionEvent.m_styleNode.getLineNumber() + ", Column #" + selectionEvent.m_styleNode.getColumnNumber() + ": " + elemTemplateElement.getNodeName() + ", " + selectionEvent.m_attributeName + "='" + selectionEvent.m_xpath.getPatternString() + "': ");
            }
            int type = selectionEvent.m_selection.getType();
            XObject xObject = selectionEvent.m_selection;
            if (type != 4) {
                this.m_pw.println(xObject.str());
                return;
            }
            this.m_pw.println();
            DTMIterator iter = selectionEvent.m_selection.iter();
            int currentPos = iter.getCurrentPos();
            iter.setShouldCacheNodes(true);
            try {
                DTMIterator cloneWithReset = iter.cloneWithReset();
                int nextNode = cloneWithReset.nextNode();
                if (-1 == nextNode) {
                    this.m_pw.println("     [empty node list]");
                } else {
                    while (-1 != nextNode) {
                        DTM dtm = selectionEvent.m_processor.getXPathContext().getDTM(nextNode);
                        this.m_pw.print("     ");
                        this.m_pw.print(Integer.toHexString(nextNode));
                        this.m_pw.print(": ");
                        this.m_pw.println(dtm.getNodeName(nextNode));
                        nextNode = cloneWithReset.nextNode();
                    }
                }
                iter.runTo(-1);
                iter.setCurrentPos(currentPos);
            } catch (CloneNotSupportedException unused) {
                this.m_pw.println("     [Can't trace nodelist because it it threw a CloneNotSupportedException]");
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListener
    public void trace(TracerEvent tracerEvent) {
        _trace(tracerEvent);
    }

    @Override // com.sun.org.apache.xalan.internal.trace.TraceListenerEx2
    public void traceEnd(TracerEvent tracerEvent) {
    }
}
