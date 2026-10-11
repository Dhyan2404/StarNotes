package com.sun.org.apache.xalan.internal.templates;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import com.sun.org.apache.xpath.internal.patterns.NodeTest;
import com.sun.org.apache.xpath.internal.patterns.StepPattern;
import com.sun.org.apache.xpath.internal.patterns.UnionPattern;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class TemplateList implements Serializable {
    static final boolean DEBUG = false;
    static final long serialVersionUID = 5803675288911728791L;
    private Hashtable m_namedTemplates = new Hashtable(89);
    private Hashtable m_patternTable = new Hashtable(89);
    private TemplateSubPatternAssociation m_wildCardPatterns = null;
    private TemplateSubPatternAssociation m_textPatterns = null;
    private TemplateSubPatternAssociation m_docPatterns = null;
    private TemplateSubPatternAssociation m_commentPatterns = null;

    /* loaded from: classes10.dex */
    public class TemplateWalker {
        private TemplateSubPatternAssociation curPattern;
        private Enumeration hashIterator;
        private boolean inPatterns;
        private Hashtable m_compilerCache;

        public ElemTemplate next() {
            ElemTemplate elemTemplate = null;
            do {
                if (this.inPatterns) {
                    TemplateSubPatternAssociation templateSubPatternAssociation = this.curPattern;
                    if (templateSubPatternAssociation != null) {
                        this.curPattern = templateSubPatternAssociation.getNext();
                    }
                    TemplateSubPatternAssociation templateSubPatternAssociation2 = this.curPattern;
                    if (templateSubPatternAssociation2 != null) {
                        elemTemplate = templateSubPatternAssociation2.getTemplate();
                    } else if (this.hashIterator.hasMoreElements()) {
                        TemplateSubPatternAssociation templateSubPatternAssociation3 = (TemplateSubPatternAssociation) this.hashIterator.nextElement();
                        this.curPattern = templateSubPatternAssociation3;
                        elemTemplate = templateSubPatternAssociation3.getTemplate();
                    } else {
                        this.inPatterns = false;
                        this.hashIterator = TemplateList.this.m_namedTemplates.elements();
                    }
                }
                if (!this.inPatterns) {
                    if (!this.hashIterator.hasMoreElements()) {
                        return null;
                    }
                    elemTemplate = (ElemTemplate) this.hashIterator.nextElement();
                }
            } while (((ElemTemplate) this.m_compilerCache.get(new Integer(elemTemplate.getUid()))) != null);
            this.m_compilerCache.put(new Integer(elemTemplate.getUid()), elemTemplate);
            return elemTemplate;
        }

        private TemplateWalker() {
            this.m_compilerCache = new Hashtable();
            this.hashIterator = TemplateList.this.m_patternTable.elements();
            this.inPatterns = true;
            this.curPattern = null;
        }
    }

    private void addObjectIfNotFound(Object obj, Vector vector) {
        int size = vector.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            } else if (vector.elementAt(i) == obj) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            vector.addElement(obj);
        }
    }

    private void checkConflicts(TemplateSubPatternAssociation templateSubPatternAssociation, XPathContext xPathContext, int i, QName qName) {
    }

    private Hashtable getNamedTemplates() {
        return this.m_namedTemplates;
    }

    private double getPriorityOrScore(TemplateSubPatternAssociation templateSubPatternAssociation) {
        double priority = templateSubPatternAssociation.getTemplate().getPriority();
        if (priority == Double.NEGATIVE_INFINITY) {
            StepPattern stepPattern = templateSubPatternAssociation.getStepPattern();
            if (stepPattern instanceof NodeTest) {
                return stepPattern.getDefaultScore();
            }
        }
        return priority;
    }

    private TemplateSubPatternAssociation insertAssociationIntoList(TemplateSubPatternAssociation templateSubPatternAssociation, TemplateSubPatternAssociation templateSubPatternAssociation2, boolean z) {
        TemplateSubPatternAssociation next;
        double priorityOrScore = getPriorityOrScore(templateSubPatternAssociation2);
        int importLevel = templateSubPatternAssociation2.getImportLevel();
        int docOrderPos = templateSubPatternAssociation2.getDocOrderPos();
        TemplateSubPatternAssociation templateSubPatternAssociation3 = templateSubPatternAssociation;
        while (true) {
            next = templateSubPatternAssociation3.getNext();
            if (next != null) {
                double priorityOrScore2 = getPriorityOrScore(next);
                if (importLevel > next.getImportLevel() || (importLevel >= next.getImportLevel() && (priorityOrScore > priorityOrScore2 || (priorityOrScore >= priorityOrScore2 && docOrderPos >= next.getDocOrderPos())))) {
                    break;
                }
                templateSubPatternAssociation3 = next;
            } else {
                break;
            }
        }
        boolean z2 = false;
        if (next == null || templateSubPatternAssociation3 == templateSubPatternAssociation) {
            double priorityOrScore3 = getPriorityOrScore(templateSubPatternAssociation3);
            if (importLevel > templateSubPatternAssociation3.getImportLevel() || (importLevel >= templateSubPatternAssociation3.getImportLevel() && (priorityOrScore > priorityOrScore3 || (priorityOrScore >= priorityOrScore3 && docOrderPos >= templateSubPatternAssociation3.getDocOrderPos())))) {
                z2 = true;
            }
        }
        if (z) {
            if (!z2) {
                templateSubPatternAssociation2.setNext(next);
                templateSubPatternAssociation3.setNext(templateSubPatternAssociation2);
                return templateSubPatternAssociation;
            }
            templateSubPatternAssociation2.setNext(templateSubPatternAssociation3);
            String targetString = templateSubPatternAssociation3.getTargetString();
            templateSubPatternAssociation2.setTargetString(targetString);
            putHead(targetString, templateSubPatternAssociation2);
            return templateSubPatternAssociation2;
        }
        if (!z2) {
            templateSubPatternAssociation2.setNext(next);
            templateSubPatternAssociation3.setNext(templateSubPatternAssociation2);
            return templateSubPatternAssociation;
        }
        templateSubPatternAssociation2.setNext(templateSubPatternAssociation3);
        if (templateSubPatternAssociation3.isWild() || templateSubPatternAssociation2.isWild()) {
            this.m_wildCardPatterns = templateSubPatternAssociation2;
        } else {
            putHead(templateSubPatternAssociation2.getTargetString(), templateSubPatternAssociation2);
        }
        return templateSubPatternAssociation2;
    }

    private void insertPatternInTable(StepPattern stepPattern, ElemTemplate elemTemplate) {
        String targetString = stepPattern.getTargetString();
        if (targetString != null) {
            TemplateSubPatternAssociation templateSubPatternAssociation = new TemplateSubPatternAssociation(elemTemplate, stepPattern, elemTemplate.getMatch().getPatternString());
            boolean isWild = templateSubPatternAssociation.isWild();
            TemplateSubPatternAssociation head = isWild ? this.m_wildCardPatterns : getHead(targetString);
            if (head != null) {
                insertAssociationIntoList(head, templateSubPatternAssociation, false);
            } else if (isWild) {
                this.m_wildCardPatterns = templateSubPatternAssociation;
            } else {
                putHead(targetString, templateSubPatternAssociation);
            }
        }
    }

    private void putHead(String str, TemplateSubPatternAssociation templateSubPatternAssociation) {
        if (str.equals(PsuedoNames.PSEUDONAME_TEXT)) {
            this.m_textPatterns = templateSubPatternAssociation;
        } else if (str.equals("/")) {
            this.m_docPatterns = templateSubPatternAssociation;
        } else if (str.equals(PsuedoNames.PSEUDONAME_COMMENT)) {
            this.m_commentPatterns = templateSubPatternAssociation;
        }
        this.m_patternTable.put(str, templateSubPatternAssociation);
    }

    private void setNamedTemplates(Hashtable hashtable) {
        this.m_namedTemplates = hashtable;
    }

    public void compose(StylesheetRoot stylesheetRoot) {
        if (this.m_wildCardPatterns != null) {
            Enumeration elements = this.m_patternTable.elements();
            while (elements.hasMoreElements()) {
                TemplateSubPatternAssociation templateSubPatternAssociation = (TemplateSubPatternAssociation) elements.nextElement();
                for (TemplateSubPatternAssociation templateSubPatternAssociation2 = this.m_wildCardPatterns; templateSubPatternAssociation2 != null; templateSubPatternAssociation2 = templateSubPatternAssociation2.getNext()) {
                    try {
                        templateSubPatternAssociation = insertAssociationIntoList(templateSubPatternAssociation, (TemplateSubPatternAssociation) templateSubPatternAssociation2.clone(), true);
                    } catch (CloneNotSupportedException unused) {
                    }
                }
            }
        }
    }

    public void dumpAssociationTables() {
        Enumeration elements = this.m_patternTable.elements();
        while (elements.hasMoreElements()) {
            for (TemplateSubPatternAssociation templateSubPatternAssociation = (TemplateSubPatternAssociation) elements.nextElement(); templateSubPatternAssociation != null; templateSubPatternAssociation = templateSubPatternAssociation.getNext()) {
                System.out.print(MotionUtils.f31761c + templateSubPatternAssociation.getTargetString() + ", " + templateSubPatternAssociation.getPattern() + MotionUtils.f31762d);
            }
            System.out.println("\n.....");
        }
        System.out.print("wild card list: ");
        for (TemplateSubPatternAssociation templateSubPatternAssociation2 = this.m_wildCardPatterns; templateSubPatternAssociation2 != null; templateSubPatternAssociation2 = templateSubPatternAssociation2.getNext()) {
            System.out.print(MotionUtils.f31761c + templateSubPatternAssociation2.getTargetString() + ", " + templateSubPatternAssociation2.getPattern() + MotionUtils.f31762d);
        }
        System.out.println("\n.....");
    }

    public TemplateSubPatternAssociation getHead(XPathContext xPathContext, int i, DTM dtm) {
        TemplateSubPatternAssociation templateSubPatternAssociation;
        switch (dtm.getNodeType(i)) {
            case 1:
            case 2:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getLocalName(i));
                break;
            case 3:
            case 4:
                templateSubPatternAssociation = this.m_textPatterns;
                break;
            case 5:
            case 6:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getNodeName(i));
                break;
            case 7:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getLocalName(i));
                break;
            case 8:
                templateSubPatternAssociation = this.m_commentPatterns;
                break;
            case 9:
            case 11:
                templateSubPatternAssociation = this.m_docPatterns;
                break;
            case 10:
            default:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getNodeName(i));
                break;
        }
        return templateSubPatternAssociation == null ? this.m_wildCardPatterns : templateSubPatternAssociation;
    }

    public ElemTemplate getTemplate(QName qName) {
        return (ElemTemplate) this.m_namedTemplates.get(qName);
    }

    public ElemTemplate getTemplateFast(XPathContext xPathContext, int i, int i2, QName qName, int i3, boolean z, DTM dtm) throws TransformerException {
        TemplateSubPatternAssociation templateSubPatternAssociation;
        switch (dtm.getNodeType(i)) {
            case 1:
            case 2:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getLocalNameFromExpandedNameID(i2));
                break;
            case 3:
            case 4:
                templateSubPatternAssociation = this.m_textPatterns;
                break;
            case 5:
            case 6:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getNodeName(i));
                break;
            case 7:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getLocalName(i));
                break;
            case 8:
                templateSubPatternAssociation = this.m_commentPatterns;
                break;
            case 9:
            case 11:
                templateSubPatternAssociation = this.m_docPatterns;
                break;
            case 10:
            default:
                templateSubPatternAssociation = (TemplateSubPatternAssociation) this.m_patternTable.get(dtm.getNodeName(i));
                break;
        }
        if (templateSubPatternAssociation == null && (templateSubPatternAssociation = this.m_wildCardPatterns) == null) {
            return null;
        }
        xPathContext.pushNamespaceContextNull();
        do {
            if (i3 > -1) {
                try {
                    if (templateSubPatternAssociation.getImportLevel() > i3) {
                        templateSubPatternAssociation = templateSubPatternAssociation.getNext();
                    }
                } finally {
                    xPathContext.popNamespaceContext();
                }
            }
            ElemTemplate template = templateSubPatternAssociation.getTemplate();
            xPathContext.setNamespaceContext(template);
            if (templateSubPatternAssociation.m_stepPattern.execute(xPathContext, i, dtm, i2) != NodeTest.SCORE_NONE && templateSubPatternAssociation.matchMode(qName)) {
                if (z) {
                    checkConflicts(templateSubPatternAssociation, xPathContext, i, qName);
                }
                return template;
            }
            templateSubPatternAssociation = templateSubPatternAssociation.getNext();
        } while (templateSubPatternAssociation != null);
        return null;
    }

    public TemplateWalker getWalker() {
        return new TemplateWalker();
    }

    public void setTemplate(ElemTemplate elemTemplate) {
        XPath match = elemTemplate.getMatch();
        if (elemTemplate.getName() == null && match == null) {
            elemTemplate.error("ER_NEED_NAME_OR_MATCH_ATTRIB", new Object[]{"xsl:template"});
        }
        if (elemTemplate.getName() != null) {
            ElemTemplate elemTemplate2 = (ElemTemplate) this.m_namedTemplates.get(elemTemplate.getName());
            if (elemTemplate2 == null) {
                this.m_namedTemplates.put(elemTemplate.getName(), elemTemplate);
            } else {
                int importCountComposed = elemTemplate2.getStylesheetComposed().getImportCountComposed();
                int importCountComposed2 = elemTemplate.getStylesheetComposed().getImportCountComposed();
                if (importCountComposed2 > importCountComposed) {
                    this.m_namedTemplates.put(elemTemplate.getName(), elemTemplate);
                } else if (importCountComposed2 == importCountComposed) {
                    elemTemplate.error("ER_DUPLICATE_NAMED_TEMPLATE", new Object[]{elemTemplate.getName()});
                }
            }
        }
        if (match != null) {
            Expression expression = match.getExpression();
            if (expression instanceof StepPattern) {
                insertPatternInTable((StepPattern) expression, elemTemplate);
                return;
            }
            if (expression instanceof UnionPattern) {
                for (StepPattern stepPattern : ((UnionPattern) expression).getPatterns()) {
                    insertPatternInTable(stepPattern, elemTemplate);
                }
            }
        }
    }

    public ElemTemplate getTemplate(XPathContext xPathContext, int i, QName qName, boolean z, DTM dtm) throws TransformerException {
        TemplateSubPatternAssociation head = getHead(xPathContext, i, dtm);
        if (head == null) {
            return null;
        }
        xPathContext.pushNamespaceContextNull();
        xPathContext.pushCurrentNodeAndExpression(i, i);
        do {
            try {
                ElemTemplate template = head.getTemplate();
                xPathContext.setNamespaceContext(template);
                if (head.m_stepPattern.execute(xPathContext, i) != NodeTest.SCORE_NONE && head.matchMode(qName)) {
                    if (z) {
                        checkConflicts(head, xPathContext, i, qName);
                    }
                    return template;
                }
                head = head.getNext();
            } finally {
                xPathContext.popCurrentNodeAndExpression();
                xPathContext.popNamespaceContext();
            }
        } while (head != null);
        return null;
    }

    private TemplateSubPatternAssociation getHead(String str) {
        return (TemplateSubPatternAssociation) this.m_patternTable.get(str);
    }

    public ElemTemplate getTemplate(XPathContext xPathContext, int i, QName qName, int i2, int i3, boolean z, DTM dtm) throws TransformerException {
        TemplateSubPatternAssociation head = getHead(xPathContext, i, dtm);
        if (head != null) {
            xPathContext.pushNamespaceContextNull();
            xPathContext.pushCurrentNodeAndExpression(i, i);
            do {
                if (i2 > -1) {
                    try {
                        if (head.getImportLevel() > i2) {
                            head = head.getNext();
                        }
                    } finally {
                        xPathContext.popCurrentNodeAndExpression();
                        xPathContext.popNamespaceContext();
                    }
                }
                if (head.getImportLevel() <= i2 - i3) {
                    return null;
                }
                ElemTemplate template = head.getTemplate();
                xPathContext.setNamespaceContext(template);
                if (head.m_stepPattern.execute(xPathContext, i) != NodeTest.SCORE_NONE && head.matchMode(qName)) {
                    if (z) {
                        checkConflicts(head, xPathContext, i, qName);
                    }
                    return template;
                }
                head = head.getNext();
            } while (head != null);
        }
        return null;
    }
}
