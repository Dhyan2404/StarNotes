package org.apache.poi.convert.xwpf.handler;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.convert.htmlgen.DocumentHandler;
import org.apache.poi.convert.htmlgen.PageHandler;
import org.apache.poi.style.page.PageColumns;
import org.apache.poi.style.page.PageStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;
import org.apache.poi.xwpf.usermodel.BodyElementType;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;

/* loaded from: classes12.dex */
public class XWPFDocumentHandler implements DocumentHandler {
    private XWPFContext context;
    private XWPFDocument document;
    private HtmlDocumentFacade documentFacade;
    private int documentParaSize;
    private XWPFFooterHandler footerHandler;
    private XWPFHeaderHandler headerHandler;
    private PageHandler pageHandler;
    private int paraSize;
    private final Map<PageStyles, List<IBodyElement>> bodyElementsMap = new LinkedHashMap();
    private final Map<PageStyles, XWPFHeaderFooterPolicy> headerFooterMap = new LinkedHashMap();
    private final Map<PageStyles, CTSectPr> pageSectMap = new LinkedHashMap();
    private final ArrayList<Document> documentList = new ArrayList<>();

    public XWPFDocumentHandler(XWPFContext xWPFContext) {
        this.context = xWPFContext;
        this.document = xWPFContext.document;
        this.documentFacade = xWPFContext.getDocumentFacade();
        XWPFPageHandler xWPFPageHandler = new XWPFPageHandler(xWPFContext);
        this.pageHandler = xWPFPageHandler;
        xWPFPageHandler.setAddMathJarScript(true);
        this.pageHandler.setAddDividerShowHideScript(true);
        this.headerHandler = new XWPFHeaderHandler(xWPFContext);
        this.footerHandler = new XWPFFooterHandler(xWPFContext);
        rebuildBodyElements();
    }

    private void addNoteAndCommentToDocument() {
        if (!WordToHtmlUtils.isNull(this.context.commentContainer)) {
            this.pageHandler.getContentContainer().appendChild(this.context.commentContainer);
        }
        if (WordToHtmlUtils.isNull(this.context.noteContainer)) {
            return;
        }
        this.pageHandler.getContentContainer().appendChild(this.context.noteContainer);
    }

    private void addStyleClass(Element element, String str, String str2) {
        this.documentFacade.addStyleClass(element, str, str2);
    }

    private Element createColumnBlock(Element element, PageStyles pageStyles) {
        PageColumns pageColumns = pageStyles.getPageColumns();
        if (pageColumns.getIndex() == 0) {
            addStyleClass(element, "d", pageColumns.toStyle());
            Element createBlock = this.documentFacade.createBlock();
            createBlock.attr(Constants.ATTR_KEY_GRID_INDEX, String.valueOf(pageColumns.getIndex()));
            addStyleClass(createBlock, "d", pageColumns.getGridItemStyle());
            createBlock.insertChildren(0, element.childNodes());
            element.appendChild(createBlock);
        }
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock2.attr(Constants.ATTR_KEY_GRID_INDEX, String.valueOf(pageColumns.getIndex()));
        addStyleClass(createBlock2, "d", pageColumns.getGridItemStyle());
        element.appendChild(createBlock2);
        return createBlock2;
    }

    private void createNewDocument(PageStyles pageStyles) {
        this.pageHandler.createNewDocument();
        this.pageHandler.createPageBlocks(pageStyles);
        handleHeaderFooter(pageStyles);
        this.documentList.add(this.documentFacade.getDocument());
        this.pageHandler.resetNewDocument();
        this.paraSize = 0;
    }

    private void handleBodyElements() {
        Iterator<Map.Entry<PageStyles, List<IBodyElement>>> it2 = this.bodyElementsMap.entrySet().iterator();
        while (it2.hasNext()) {
            handlePageBodyElements(it2.next());
        }
    }

    private void handleHeaderFooter(PageStyles pageStyles) {
        if (this.pageHandler.isNewPage()) {
            XWPFHeaderFooterPolicy xWPFHeaderFooterPolicy = this.headerFooterMap.get(pageStyles);
            if (WordToHtmlUtils.isNull(xWPFHeaderFooterPolicy)) {
                return;
            }
            this.headerHandler.handleHeader(xWPFHeaderFooterPolicy, this.pageHandler.getHeaderContainer());
            this.footerHandler.handleFooter(xWPFHeaderFooterPolicy, this.pageHandler.getFooterContainer());
        }
    }

    private void handlePage(PageStyles pageStyles) {
        this.pageHandler.setParaSize(this.paraSize);
        this.pageHandler.handlePage(pageStyles);
        if (this.pageHandler.isNewDocument()) {
            this.pageHandler.resetNewDocument();
            this.documentList.add(this.documentFacade.getDocument());
            this.paraSize = 0;
        }
        this.context.setCurrentPage(pageStyles);
        this.context.setCurrentSectPr(this.pageSectMap.get(pageStyles));
        handleHeaderFooter(pageStyles);
    }

    private void handlePageBodyElements(Map.Entry<PageStyles, List<IBodyElement>> entry) {
        PageStyles key = entry.getKey();
        handlePage(key);
        Element contentContainer = this.pageHandler.getContentContainer();
        boolean hasColumn = hasColumn(key);
        List<IBodyElement> value = entry.getValue();
        int size = value.size();
        Iterator<IBodyElement> it2 = value.iterator();
        Element element = contentContainer;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (it2.hasNext()) {
            int i2 = i + 1;
            int handleBodyElement = this.paraSize + XWPFBodyElementHandler.handleBodyElement(this.context, it2.next(), contentContainer, i, size, 0);
            this.paraSize = handleBodyElement;
            if (!hasColumn) {
                this.pageHandler.setParaSize(handleBodyElement);
                if (this.pageHandler.paragraphSizeExceedLimit()) {
                    createNewDocument(key);
                    contentContainer = this.pageHandler.getContentContainer();
                    if (this.context.isPageBreak()) {
                        contentContainer.appendChild(this.context.getBreakElement());
                    }
                    element = contentContainer;
                    z2 = true;
                } else if (this.context.isPageBreak()) {
                    this.pageHandler.createPageBlocks(key);
                    handleHeaderFooter(key);
                    contentContainer = this.pageHandler.getContentContainer();
                    contentContainer.appendChild(this.context.getBreakElement());
                    element = contentContainer;
                }
            } else if (this.context.isColumnBreak()) {
                contentContainer = createColumnBlock(element, key);
                contentContainer.appendChild(this.context.getBreakElement());
                z = true;
            }
            this.context.resetBreakType();
            i = i2;
        }
        if (hasColumn && !z) {
            WordToHtmlUtils.setStyle(element, key.getPageColumns().getColumnWidth()[0] + "px;");
        }
        if (z2 && WordToHtmlUtils.compactDocument(this.documentList, this.documentParaSize, this.paraSize)) {
            this.paraSize += this.documentParaSize;
        }
    }

    private boolean hasColumn(PageStyles pageStyles) {
        return pageStyles.getPageColumns().hasColumn();
    }

    private void rebuildBodyElements() {
        ArrayList arrayList = new ArrayList();
        for (IBodyElement iBodyElement : this.document.getBodyElements()) {
            arrayList.add(iBodyElement);
            if (iBodyElement.getElementType() == BodyElementType.PARAGRAPH) {
                CTPPr pPr = ((XWPFParagraph) iBodyElement).getCTP().getPPr();
                if (!WordToHtmlUtils.isNull(pPr) && pPr.isSetSectPr()) {
                    CTSectPr sectPr = pPr.getSectPr();
                    PageStyles parse = PageStyles.parse(sectPr);
                    parse.setPageIndex(this.bodyElementsMap.size());
                    parse.setBodyElementSize(arrayList.size());
                    this.pageSectMap.put(parse, sectPr);
                    this.bodyElementsMap.put(parse, new ArrayList(arrayList));
                    this.headerFooterMap.put(parse, new XWPFHeaderFooterPolicy(this.document, sectPr));
                    arrayList.clear();
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        CTSectPr sectPr2 = this.context.document.getDocument().getBody().getSectPr();
        PageStyles parse2 = PageStyles.parse(sectPr2);
        this.pageSectMap.put(parse2, sectPr2);
        this.bodyElementsMap.put(parse2, arrayList);
        this.headerFooterMap.put(parse2, this.document.getHeaderFooterPolicy());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.document);
    }

    public ArrayList<Document> getDocumentList() {
        return this.documentList;
    }

    @Override // org.apache.poi.convert.htmlgen.DocumentHandler
    public void handleDocument() {
        new XWPFPropertyHandler(this.context).handleProperties();
        new XWPFCommentsHandler(this.context).handComments();
        handleBodyElements();
        WordToHtmlUtils.compactDocument(this.documentList, this.documentParaSize, this.paraSize);
        addNoteAndCommentToDocument();
    }

    @Override // org.apache.poi.convert.htmlgen.DocumentHandler
    public void setAbort(boolean z) {
        this.context.setAbort(z);
    }

    public void setDocumentParaSize(int i) {
        this.documentParaSize = i;
        this.pageHandler.setDocumentParaSize(i);
    }
}
