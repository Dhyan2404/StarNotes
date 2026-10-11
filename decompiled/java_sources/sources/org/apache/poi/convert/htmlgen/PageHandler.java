package org.apache.poi.convert.htmlgen;

import com.miui.penengine.p015e.C6999h;
import java.util.Objects;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.style.page.PageMargin;
import org.apache.poi.style.page.PageStyles;
import org.apache.poi.util.ExtUnits;
import org.jsoup.nodes.Element;

/* loaded from: classes12.dex */
public abstract class PageHandler implements ConverterHandler {
    private boolean addDividerShowHideScript;
    private boolean addMathJarScript;
    private Element contentContainer;
    private ConverterContext context;
    private HtmlDocumentFacade documentFacade;
    private int documentParaSize;
    private Element footerContainer;
    private Element headerContainer;
    private boolean newDocument;
    private boolean newPage;
    private int paraSize;

    public PageHandler(ConverterContext converterContext) {
        this.context = converterContext;
        this.documentFacade = converterContext.getDocumentFacade();
    }

    private void addDivider(Element element) {
        Element createBlock = this.documentFacade.createBlock();
        createBlock.attr("name", "divider");
        createBlock.attr("onclick", "showOrHideHeaderFooter()");
        addStyleClass(createBlock, "divider", "height:16px;background:lightgray;");
        element.appendChild(createBlock);
    }

    private void addStyleClass(Element element, String str, String str2) {
        this.documentFacade.addStyleClass(element, str, str2);
    }

    private Element createContentBlock(PageStyles pageStyles, Element element) {
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        createBlock.attr("name", Constants.NAME_CONTENT_CONTAINER);
        setPageNumberAttribute(pageStyles, createBlock);
        addStyleClass(createBlock, "d", pageStyles.getPageMargin().getPageContentStyle());
        return createBlock;
    }

    private Element createFooterBlock(PageStyles pageStyles, Element element) {
        PageMargin pageMargin = pageStyles.getPageMargin();
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        createBlock.attr("name", Constants.NAME_FOOTER);
        setHeaderFooterBlockStyle(createBlock, pageStyles, false);
        createFooterLeftAngle(pageMargin, createBlock);
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        createBlock.attr("name", Constants.NAME_FOOTER_CONTAINER);
        addStyleClass(createBlock, C6999h.f39688c, "grid-area:1/2;");
        if (pageMargin.getFooter() != 0.0f) {
            addStyleClass(createBlock2, C6999h.f39688c, "margin-bottom:" + pageMargin.getFooter() + "px;");
        }
        createFooterRightAngle(pageMargin, createBlock);
        return createBlock2;
    }

    private void createFooterLeftAngle(PageMargin pageMargin, Element element) {
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        addStyleClass(createBlock, C6999h.f39688c, "grid-area:1/1;margin-top:auto;height:" + pageMargin.getBottom() + "px;");
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        float min = Math.min(22.0f, pageMargin.getBottom());
        float min2 = Math.min(22.0f, pageMargin.getLeft());
        addStyleClass(createBlock2, C6999h.f39688c, "border-color:gray;border-width:0.5px;border-style:solid solid none none;");
        StringBuilder sb = new StringBuilder();
        sb.append("width:");
        sb.append(min2);
        sb.append("px;height:");
        sb.append(min);
        sb.append("px;margin-left:");
        sb.append(ExtUnits.getFormatValue(pageMargin.getLeft() - min2));
        sb.append("px;margin-top:auto;");
        if (pageMargin.getBottom() > min) {
            sb.append("margin-bottom:");
            sb.append(ExtUnits.getFormatValue(pageMargin.getBottom() - min));
            sb.append("px;");
        }
        addStyleClass(createBlock2, C6999h.f39688c, sb.toString());
    }

    private void createFooterRightAngle(PageMargin pageMargin, Element element) {
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        addStyleClass(createBlock, C6999h.f39688c, "grid-area:1/3;margin-top:auto;height:" + pageMargin.getBottom() + "px;");
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        float min = Math.min(22.0f, pageMargin.getBottom());
        float min2 = Math.min(22.0f, pageMargin.getRight());
        addStyleClass(createBlock2, C6999h.f39688c, "border-color:gray;border-width:0.5px;border-style:solid none none solid;");
        StringBuilder sb = new StringBuilder();
        sb.append("width:");
        sb.append(min2);
        sb.append("px;height:");
        sb.append(min);
        sb.append("px;margin-top:auto;");
        if (pageMargin.getBottom() > min) {
            sb.append("margin-bottom:");
            sb.append(ExtUnits.getFormatValue(pageMargin.getBottom() - min));
            sb.append("px;");
        }
        addStyleClass(createBlock2, C6999h.f39688c, sb.toString());
    }

    private Element createHeaderBlock(PageStyles pageStyles, Element element) {
        PageMargin pageMargin = pageStyles.getPageMargin();
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        createBlock.attr("name", Constants.NAME_HEADER);
        setHeaderFooterBlockStyle(createBlock, pageStyles, true);
        createHeaderLeftAngle(pageMargin, createBlock);
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        createBlock.attr("name", Constants.NAME_HEADER_CONTAINER);
        addStyleClass(createBlock2, C6999h.f39688c, "grid-area:1/2;");
        if (pageMargin.getHeader() != 0.0f) {
            addStyleClass(createBlock2, C6999h.f39688c, "margin-top:" + pageMargin.getHeader() + "px;");
        }
        createHeaderRightAngle(pageMargin, createBlock);
        return createBlock2;
    }

    private void createHeaderLeftAngle(PageMargin pageMargin, Element element) {
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        addStyleClass(createBlock, C6999h.f39688c, "grid-area:1/1;height:" + pageMargin.getTop() + "px;");
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        float min = Math.min(22.0f, pageMargin.getTop());
        float min2 = Math.min(22.0f, pageMargin.getLeft());
        addStyleClass(createBlock2, C6999h.f39688c, "border-color:gray;border-width:0.5px;border-style:none solid solid none;");
        StringBuilder sb = new StringBuilder();
        sb.append("width:");
        sb.append(min2);
        sb.append("px;height:");
        sb.append(min);
        sb.append("px;margin-left:");
        sb.append(ExtUnits.getFormatValue(pageMargin.getLeft() - min2));
        if (pageMargin.getTop() > min) {
            sb.append("px;margin-top:");
            sb.append(ExtUnits.getFormatValue(pageMargin.getTop() - min));
        }
        sb.append("px;");
        addStyleClass(createBlock2, C6999h.f39688c, sb.toString());
    }

    private void createHeaderRightAngle(PageMargin pageMargin, Element element) {
        Element createBlock = this.documentFacade.createBlock();
        element.appendChild(createBlock);
        addStyleClass(createBlock, C6999h.f39688c, "grid-area:1/3;height:" + pageMargin.getTop() + "px;");
        Element createBlock2 = this.documentFacade.createBlock();
        createBlock.appendChild(createBlock2);
        float min = Math.min(22.0f, pageMargin.getTop());
        float min2 = Math.min(22.0f, pageMargin.getRight());
        addStyleClass(createBlock2, C6999h.f39688c, "border-color:gray;border-width:0.5px;border-style:none none solid solid;");
        StringBuilder sb = new StringBuilder();
        sb.append("width:");
        sb.append(min2);
        sb.append("px;height:");
        sb.append(min);
        if (pageMargin.getTop() > min) {
            sb.append("px;margin-top:");
            sb.append(ExtUnits.getFormatValue(pageMargin.getTop() - min));
        }
        sb.append("px;");
        addStyleClass(createBlock2, C6999h.f39688c, sb.toString());
    }

    private boolean pageBodyElementExceedLimit(PageStyles pageStyles) {
        return pageStyles.getBodyElementSize() >= 4;
    }

    private void setDocumentBodyStyle(PageStyles pageStyles) {
        HtmlDocumentFacade htmlDocumentFacade = this.documentFacade;
        htmlDocumentFacade.addStyleClass(htmlDocumentFacade.getBody(), "b", pageStyles.getPageSize().toStyle());
    }

    private void setHeaderFooterBlockStyle(Element element, PageStyles pageStyles, boolean z) {
        PageMargin pageMargin = pageStyles.getPageMargin();
        float width = (pageStyles.getPageSize().getWidth() - pageMargin.getLeft()) - pageMargin.getRight();
        StringBuilder sb = new StringBuilder();
        sb.append("display:grid;grid-template-columns:");
        sb.append(pageMargin.getLeft());
        sb.append("px ");
        sb.append(ExtUnits.getFormatValue(width));
        sb.append("px ");
        sb.append(pageMargin.getRight());
        sb.append("px;");
        if (z) {
            sb.append("min-height:");
            sb.append(pageMargin.getTop());
            sb.append("px;");
        } else {
            sb.append("min-height:");
            sb.append(pageMargin.getBottom());
            sb.append("px;");
        }
        addStyleClass(element, C6999h.f39688c, sb.toString());
    }

    private void setPageNumberAttribute(PageStyles pageStyles, Element element) {
        if (pageStyles.getPageNumType().isValid()) {
            element.attr(Constants.ATTR_KEY_PAGE_START, String.valueOf(pageStyles.getPageNumType().getStart()));
        }
    }

    public void createNewDocument(PageStyles pageStyles) {
        this.newDocument = true;
        this.documentFacade.createDocument();
        setUpNewDocument();
        setDocumentBodyStyle(pageStyles);
    }

    public void createPageBlocks(PageStyles pageStyles) {
        this.newPage = true;
        if (!this.newDocument) {
            addDivider(this.documentFacade.getBody());
        }
        Element createBlock = this.documentFacade.createBlock();
        this.documentFacade.getBody().appendChild(createBlock);
        createBlock.attr(Constants.ATTR_KEY_PAGE_INDEX, String.valueOf(pageStyles.getPageIndex()));
        this.headerContainer = createHeaderBlock(pageStyles, createBlock);
        this.contentContainer = createContentBlock(pageStyles, createBlock);
        this.footerContainer = createFooterBlock(pageStyles, createBlock);
    }

    public Element getContentContainer() {
        return this.contentContainer;
    }

    public Element getFooterContainer() {
        return this.footerContainer;
    }

    public Element getHeaderContainer() {
        return this.headerContainer;
    }

    public void handlePage(PageStyles pageStyles) {
        PageStyles currentPage = this.context.getCurrentPage();
        if (WordToHtmlUtils.isNull(currentPage)) {
            this.newDocument = true;
            setUpNewDocument();
            setDocumentBodyStyle(pageStyles);
            createPageBlocks(pageStyles);
            return;
        }
        if (!Objects.equals(currentPage.getPageSize(), pageStyles.getPageSize())) {
            createNewDocument(pageStyles);
            createPageBlocks(pageStyles);
            return;
        }
        if (paragraphSizeExceedLimit()) {
            createNewDocument();
            createPageBlocks(pageStyles);
        } else if (pageStyles.getPageColumns().hasColumn() || pageBodyElementExceedLimit(pageStyles)) {
            this.newDocument = false;
            createPageBlocks(pageStyles);
        } else {
            this.newDocument = false;
            this.newPage = false;
        }
    }

    public boolean isNewDocument() {
        return this.newDocument;
    }

    public boolean isNewPage() {
        return this.newPage;
    }

    public boolean paragraphSizeExceedLimit() {
        int i = this.documentParaSize;
        return i > 0 && this.paraSize >= i;
    }

    public void resetNewDocument() {
        this.newDocument = false;
    }

    public void setAddDividerShowHideScript(boolean z) {
        this.addDividerShowHideScript = z;
    }

    public void setAddMathJarScript(boolean z) {
        this.addMathJarScript = z;
    }

    public void setDocumentParaSize(int i) {
        this.documentParaSize = i;
    }

    public void setParaSize(int i) {
        this.paraSize = i;
    }

    public void setUpNewDocument() {
        if (this.addMathJarScript) {
            this.documentFacade.addMathJaxScript();
        }
        if (this.addDividerShowHideScript) {
            this.documentFacade.addStyle(".divider1:hover{cursor:pointer;background-color:red;}");
            this.documentFacade.addShowOrHideHeaderFooterFunction();
        }
    }

    public void createNewDocument() {
        this.newDocument = true;
        String attr = this.documentFacade.getBody().attr("class");
        this.documentFacade.createDocument();
        this.documentFacade.getBody().attr("class", attr);
        setUpNewDocument();
    }
}
