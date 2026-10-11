package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.ooxml.POIXMLDocument;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLRelation;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.IdentifierManager;
import org.apache.poi.ooxml.util.PackageHelper;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.p114wp.usermodel.HeaderFooterType;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.drawingml.x2006.main.ThemeDocument;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRow;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CommentsDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.DocumentDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.EndnotesDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.FootnotesDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.NumberingDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocProtect;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHdrFtr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.StylesDocument;

/* loaded from: classes13.dex */
public class XWPFDocument extends POIXMLDocument implements Document, IBody {
    protected List<IBodyElement> bodyElements;
    protected final List<XWPFChart> charts;
    private XWPFComments comments;
    protected List<XWPFSDT> contentControls;
    private CTDocument1 ctDocument;
    private final IdentifierManager drawingIdManager;
    protected XWPFEndnotes endnotes;
    protected List<XWPFFooter> footers;
    private final FootnoteEndnoteIdManager footnoteIdManager;
    protected XWPFFootnotes footnotes;
    private XWPFHeaderFooterPolicy headerFooterPolicy;
    protected List<XWPFHeader> headers;
    protected List<XWPFHyperlink> hyperlinks;
    protected XWPFNumbering numbering;
    protected Map<Long, List<XWPFPictureData>> packagePictures;
    protected List<XWPFParagraph> paragraphs;
    protected List<XWPFPictureData> pictures;
    private XWPFSettings settings;
    protected XWPFStyles styles;
    protected List<XWPFTable> tables;
    protected XWPFTheme theme;
    private static final Logger LOG = LogManager.getLogger((Class<?>) XWPFDocument.class);
    public static int DOCUMENT_MAX_SIZE = -1;

    public XWPFDocument(OPCPackage oPCPackage) throws IOException {
        super(oPCPackage);
        this.footers = new ArrayList();
        this.headers = new ArrayList();
        this.hyperlinks = new ArrayList();
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.contentControls = new ArrayList();
        this.bodyElements = new ArrayList();
        this.pictures = new ArrayList();
        this.packagePictures = new HashMap();
        this.charts = new ArrayList();
        this.drawingIdManager = new IdentifierManager(0L, 4294967295L);
        this.footnoteIdManager = new FootnoteEndnoteIdManager(this);
        load(XWPFFactory.getInstance());
    }

    private int getBodyElementSpecificPos(int i, List<? extends IBodyElement> list) {
        if (!list.isEmpty() && i >= 0 && i < this.bodyElements.size()) {
            IBodyElement iBodyElement = this.bodyElements.get(i);
            if (iBodyElement.getElementType() != list.get(0).getElementType()) {
                return -1;
            }
            for (int min = Math.min(i, list.size() - 1); min >= 0; min--) {
                if (list.get(min) == iBodyElement) {
                    return min;
                }
            }
        }
        return -1;
    }

    private Optional<XmlCursor> getNewCursor(IBodyElement iBodyElement) {
        return iBodyElement instanceof XWPFParagraph ? Optional.ofNullable(((XWPFParagraph) iBodyElement).getCTP().newCursor()) : iBodyElement instanceof XWPFTable ? Optional.ofNullable(((XWPFTable) iBodyElement).getCTTbl().newCursor()) : Optional.empty();
    }

    private Deque<XmlObject> getPathToObject(XmlCursor xmlCursor) {
        LinkedList linkedList = new LinkedList();
        XmlCursor newCursor = xmlCursor.newCursor();
        while (newCursor.toParent() && linkedList.peekFirst() != this.ctDocument.getBody()) {
            try {
                linkedList.addFirst(newCursor.getObject());
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        newCursor.close();
        return linkedList;
    }

    private int getPosOfBodyElement(IBodyElement iBodyElement) {
        BodyElementType elementType = iBodyElement.getElementType();
        for (int i = 0; i < this.bodyElements.size(); i++) {
            IBodyElement iBodyElement2 = this.bodyElements.get(i);
            if (iBodyElement2.getElementType() == elementType && iBodyElement2.equals(iBodyElement)) {
                return i;
            }
        }
        return -1;
    }

    private int getRelationIndex(XWPFRelation xWPFRelation) {
        Iterator<POIXMLDocumentPart.RelationPart> it2 = getRelationParts().iterator();
        int i = 1;
        while (it2.hasNext()) {
            if (it2.next().getRelationship().getRelationshipType().equals(xWPFRelation.getRelation())) {
                i++;
            }
        }
        return i;
    }

    private CTSectPr getSection() {
        CTBody body = getDocument().getBody();
        return body.isSetSectPr() ? body.getSectPr() : body.addNewSectPr();
    }

    private void initFootnotes() throws XmlException, IOException {
        for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
            POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
            String relationshipType = relationPart.getRelationship().getRelationshipType();
            if (relationshipType.equals(XWPFRelation.FOOTNOTE.getRelation())) {
                XWPFFootnotes xWPFFootnotes = (XWPFFootnotes) documentPart;
                this.footnotes = xWPFFootnotes;
                xWPFFootnotes.onDocumentRead();
                this.footnotes.setIdManager(this.footnoteIdManager);
            } else if (relationshipType.equals(XWPFRelation.ENDNOTE.getRelation())) {
                XWPFEndnotes xWPFEndnotes = (XWPFEndnotes) documentPart;
                this.endnotes = xWPFEndnotes;
                xWPFEndnotes.onDocumentRead();
                this.endnotes.setIdManager(this.footnoteIdManager);
            }
        }
    }

    private void initHyperlinks() {
        try {
            this.hyperlinks = new ArrayList();
            Iterator<PackageRelationship> it2 = getPackagePart().getRelationshipsByType(XWPFRelation.HYPERLINK.getRelation()).iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                this.hyperlinks.add(new XWPFHyperlink(next.getId(), next.getTargetURI().toString()));
            }
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    private void insertElementIntoCell(XWPFTableCell xWPFTableCell, IBodyElement iBodyElement, Deque<XmlObject> deque) {
        if (!deque.isEmpty()) {
            insertElementIntoTable((XWPFTable) deque.pop(), iBodyElement, deque);
        } else if (iBodyElement instanceof XWPFParagraph) {
            insertIntoParagraphsAndElements((XWPFParagraph) iBodyElement, xWPFTableCell.paragraphs, xWPFTableCell.bodyElements);
        } else if (iBodyElement instanceof XWPFTable) {
            insertIntoTablesAndElements((XWPFTable) iBodyElement, xWPFTableCell.tables, xWPFTableCell.bodyElements);
        }
    }

    private void insertElementIntoRow(XWPFTableRow xWPFTableRow, IBodyElement iBodyElement, Deque<XmlObject> deque) {
        CTTc cTTc = (CTTc) deque.pop();
        for (XWPFTableCell xWPFTableCell : xWPFTableRow.getTableCells()) {
            if (xWPFTableCell.getCTTc() == cTTc) {
                insertElementIntoCell(xWPFTableCell, iBodyElement, deque);
            }
        }
    }

    private void insertElementIntoTable(XWPFTable xWPFTable, IBodyElement iBodyElement, Deque<XmlObject> deque) {
        CTRow cTRow = (CTRow) deque.pop();
        for (XWPFTableRow xWPFTableRow : xWPFTable.getRows()) {
            if (xWPFTableRow.getCtRow() == cTRow) {
                insertElementIntoRow(xWPFTableRow, iBodyElement, deque);
            }
        }
    }

    private void insertIntoBodyElements(IBodyElement iBodyElement, List<IBodyElement> list) {
        try {
            XmlCursor orElseThrow = getNewCursor(iBodyElement).orElseThrow(new Supplier() { // from class: com.sunia.HTREnginev2.oso
                @Override // java.util.function.Supplier
                public final Object get() {
                    return new NoSuchElementException();
                }
            });
            try {
                XmlCursor orElseThrow2 = getNewCursor(iBodyElement).orElseThrow(new Supplier() { // from class: com.sunia.HTREnginev2.oso
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return new NoSuchElementException();
                    }
                });
                try {
                    orElseThrow.toCursor(orElseThrow2);
                    int i = 0;
                    while (orElseThrow.toPrevSibling()) {
                        XmlObject object = orElseThrow.getObject();
                        if ((object instanceof CTP) || (object instanceof CTTbl) || (object instanceof CTSdtBlock)) {
                            i++;
                        }
                    }
                    list.add(i, iBodyElement);
                    orElseThrow.toCursor(orElseThrow2);
                    orElseThrow.toEndToken();
                    if (orElseThrow2 != null) {
                        orElseThrow2.close();
                    }
                    orElseThrow.close();
                } finally {
                }
            } finally {
            }
        } catch (NoSuchElementException unused) {
        }
    }

    private void insertIntoParagraphs(XWPFParagraph xWPFParagraph, List<XWPFParagraph> list) {
        XmlCursor newCursor = xWPFParagraph.getCTP().newCursor();
        try {
            XmlObject object = newCursor.getObject();
            XmlObject xmlObject = null;
            while (!(xmlObject instanceof CTP) && newCursor.toPrevSibling()) {
                xmlObject = newCursor.getObject();
            }
            if ((xmlObject instanceof CTP) && xmlObject != object) {
                list.add(list.indexOf(getParagraph((CTP) xmlObject)) + 1, xWPFParagraph);
                newCursor.close();
            }
            list.add(0, xWPFParagraph);
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void insertIntoParagraphsAndElements(XWPFParagraph xWPFParagraph, List<XWPFParagraph> list, List<IBodyElement> list2) {
        insertIntoParagraphs(xWPFParagraph, list);
        insertIntoBodyElements(xWPFParagraph, list2);
    }

    private void insertIntoParentElement(IBodyElement iBodyElement, Deque<XmlObject> deque) {
        deque.pop();
        if (deque.isEmpty()) {
            if (iBodyElement instanceof XWPFParagraph) {
                insertIntoParagraphsAndElements((XWPFParagraph) iBodyElement, this.paragraphs, this.bodyElements);
                return;
            } else {
                if (iBodyElement instanceof XWPFTable) {
                    insertIntoTablesAndElements((XWPFTable) iBodyElement, this.tables, this.bodyElements);
                    return;
                }
                return;
            }
        }
        CTTbl cTTbl = (CTTbl) deque.pop();
        for (XWPFTable xWPFTable : this.tables) {
            if (cTTbl == xWPFTable.getCTTbl()) {
                insertElementIntoTable(xWPFTable, iBodyElement, deque);
            }
        }
    }

    private void insertIntoTables(XWPFTable xWPFTable, List<XWPFTable> list) {
        XmlCursor newCursor = xWPFTable.getCTTbl().newCursor();
        try {
            newCursor.getObject();
            XmlObject xmlObject = null;
            while (!(xmlObject instanceof CTTbl) && newCursor.toPrevSibling()) {
                xmlObject = newCursor.getObject();
            }
            if (xmlObject instanceof CTTbl) {
                list.add(list.indexOf(getTable((CTTbl) xmlObject)) + 1, xWPFTable);
            } else {
                list.add(0, xWPFTable);
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void insertIntoTablesAndElements(XWPFTable xWPFTable, List<XWPFTable> list, List<IBodyElement> list2) {
        insertIntoTables(xWPFTable, list);
        insertIntoBodyElements(xWPFTable, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$registerPackagePictureData$0(Long l) {
        return new ArrayList(1);
    }

    public static OPCPackage newPackage() {
        OPCPackage oPCPackage = null;
        try {
            oPCPackage = OPCPackage.create(new UnsynchronizedByteArrayOutputStream());
            XWPFRelation xWPFRelation = XWPFRelation.DOCUMENT;
            PackagePartName createPartName = PackagingURIHelper.createPartName(xWPFRelation.getDefaultFileName());
            oPCPackage.addRelationship(createPartName, TargetMode.INTERNAL, PackageRelationshipTypes.CORE_DOCUMENT);
            oPCPackage.createPart(createPartName, xWPFRelation.getContentType());
            oPCPackage.getPackageProperties().setCreatorProperty(POIXMLDocument.DOCUMENT_CREATOR);
            return oPCPackage;
        } catch (Exception e) {
            IOUtils.closeQuietly(oPCPackage);
            throw new POIXMLException(e);
        }
    }

    @Internal
    public XWPFEndnote addEndnote(CTFtnEdn cTFtnEdn) {
        XWPFEndnote xWPFEndnote = new XWPFEndnote(this, cTFtnEdn);
        this.endnotes.addEndnote(cTFtnEdn);
        return xWPFEndnote;
    }

    @Internal
    public XWPFFootnote addFootnote(CTFtnEdn cTFtnEdn) {
        return this.footnotes.addFootnote(cTFtnEdn);
    }

    public String addPictureData(byte[] bArr, int i) throws InvalidFormatException {
        return addPictureData(bArr, PictureType.findByOoxmlId(i));
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTDocument1.type.getName().getNamespaceURI(), "document"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.ctDocument.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XWPFChart createChart() throws InvalidFormatException, IOException {
        return createChart(500000, 500000);
    }

    public XWPFComments createComments() {
        if (this.comments == null) {
            CommentsDocument newInstance = CommentsDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.COMMENT;
            XWPFComments xWPFComments = (XWPFComments) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFComments.setCtComments(newInstance.addNewComments());
            xWPFComments.setXWPFDocument(getXWPFDocument());
            this.comments = xWPFComments;
        }
        return this.comments;
    }

    public XWPFEndnote createEndnote() {
        return createEndnotes().createEndnote();
    }

    public XWPFEndnotes createEndnotes() {
        if (this.endnotes == null) {
            EndnotesDocument newInstance = EndnotesDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.ENDNOTE;
            XWPFEndnotes xWPFEndnotes = (XWPFEndnotes) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFEndnotes.setEndnotes(newInstance.addNewEndnotes());
            xWPFEndnotes.setIdManager(this.footnoteIdManager);
            this.endnotes = xWPFEndnotes;
        }
        return this.endnotes;
    }

    public XWPFFooter createFooter(HeaderFooterType headerFooterType) {
        XWPFHeaderFooterPolicy createHeaderFooterPolicy = createHeaderFooterPolicy();
        if (headerFooterType == HeaderFooterType.FIRST) {
            CTSectPr section = getSection();
            if (!section.isSetTitlePg()) {
                section.addNewTitlePg().setVal(STOnOff1.f115762ON);
            }
        }
        return createHeaderFooterPolicy.createFooter(STHdrFtr.Enum.forInt(headerFooterType.toInt()));
    }

    public XWPFFootnote createFootnote() {
        return createFootnotes().createFootnote();
    }

    public XWPFFootnotes createFootnotes() {
        if (this.footnotes == null) {
            FootnotesDocument newInstance = FootnotesDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.FOOTNOTE;
            XWPFFootnotes xWPFFootnotes = (XWPFFootnotes) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFFootnotes.setFootnotes(newInstance.addNewFootnotes());
            xWPFFootnotes.setIdManager(this.footnoteIdManager);
            this.footnotes = xWPFFootnotes;
        }
        return this.footnotes;
    }

    public XWPFHeader createHeader(HeaderFooterType headerFooterType) {
        XWPFHeaderFooterPolicy createHeaderFooterPolicy = createHeaderFooterPolicy();
        if (headerFooterType == HeaderFooterType.FIRST) {
            CTSectPr section = getSection();
            if (!section.isSetTitlePg()) {
                section.addNewTitlePg().setVal(STOnOff1.f115762ON);
            }
        }
        return createHeaderFooterPolicy.createHeader(STHdrFtr.Enum.forInt(headerFooterType.toInt()));
    }

    public XWPFHeaderFooterPolicy createHeaderFooterPolicy() {
        if (this.headerFooterPolicy == null) {
            this.headerFooterPolicy = new XWPFHeaderFooterPolicy(this);
        }
        return this.headerFooterPolicy;
    }

    public XWPFNumbering createNumbering() {
        if (this.numbering == null) {
            NumberingDocument newInstance = NumberingDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.NUMBERING;
            XWPFNumbering xWPFNumbering = (XWPFNumbering) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFNumbering.setNumbering(newInstance.addNewNumbering());
            this.numbering = xWPFNumbering;
        }
        return this.numbering;
    }

    public XWPFParagraph createParagraph() {
        XWPFParagraph xWPFParagraph = new XWPFParagraph(this.ctDocument.getBody().addNewP(), this);
        this.bodyElements.add(xWPFParagraph);
        this.paragraphs.add(xWPFParagraph);
        return xWPFParagraph;
    }

    public XWPFStyles createStyles() {
        if (this.styles == null) {
            StylesDocument newInstance = StylesDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.STYLES;
            XWPFStyles xWPFStyles = (XWPFStyles) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFStyles.setStyles(newInstance.addNewStyles());
            this.styles = xWPFStyles;
        }
        return this.styles;
    }

    public void createTOC() {
        TOC toc = new TOC(getDocument().getBody().addNewSdt());
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            String style = xWPFParagraph.getStyle();
            if (style != null && style.startsWith("Heading")) {
                try {
                    toc.addRow(Integer.parseInt(style.substring(7)), xWPFParagraph.getText(), 1, "112723803");
                } catch (NumberFormatException e) {
                    LOG.atError().withThrowable(e).log("can't format number in TOC heading");
                }
            }
        }
    }

    public XWPFTable createTable() {
        XWPFTable xWPFTable = new XWPFTable(this.ctDocument.getBody().addNewTbl(), this);
        this.bodyElements.add(xWPFTable);
        this.tables.add(xWPFTable);
        return xWPFTable;
    }

    public XWPFTheme createTheme() {
        if (this.theme == null) {
            ThemeDocument newInstance = ThemeDocument.Factory.newInstance();
            XWPFRelation xWPFRelation = XWPFRelation.THEME;
            XWPFTheme xWPFTheme = (XWPFTheme) createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
            xWPFTheme.setTheme(newInstance.addNewTheme());
            this.theme = xWPFTheme;
        }
        return this.theme;
    }

    public void enforceCommentsProtection() {
        this.settings.setEnforcementEditValue(STDocProtect.COMMENTS);
    }

    public void enforceFillingFormsProtection() {
        this.settings.setEnforcementEditValue(STDocProtect.FORMS);
    }

    public void enforceReadonlyProtection() {
        this.settings.setEnforcementEditValue(STDocProtect.READ_ONLY);
    }

    public void enforceTrackedChangesProtection() {
        this.settings.setEnforcementEditValue(STDocProtect.TRACKED_CHANGES);
    }

    public void enforceUpdateFields() {
        this.settings.setUpdateFields();
    }

    public XWPFPictureData findPackagePictureData(byte[] bArr) {
        List<XWPFPictureData> list = this.packagePictures.get(Long.valueOf(IOUtils.calculateChecksum(bArr)));
        XWPFPictureData xWPFPictureData = null;
        if (list != null) {
            Iterator<XWPFPictureData> it2 = list.iterator();
            while (it2.hasNext() && xWPFPictureData == null) {
                XWPFPictureData next = it2.next();
                if (Arrays.equals(bArr, next.getData())) {
                    xWPFPictureData = next;
                }
            }
        }
        return xWPFPictureData;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocument
    public List<PackagePart> getAllEmbeddedParts() throws OpenXML4JException {
        LinkedList linkedList = new LinkedList();
        PackagePart packagePart = getPackagePart();
        Iterator<PackageRelationship> it2 = getPackagePart().getRelationshipsByType(POIXMLDocument.OLE_OBJECT_REL_TYPE).iterator();
        while (it2.hasNext()) {
            linkedList.add(packagePart.getRelatedPart(it2.next()));
        }
        Iterator<PackageRelationship> it3 = getPackagePart().getRelationshipsByType(POIXMLDocument.PACK_OBJECT_REL_TYPE).iterator();
        while (it3.hasNext()) {
            linkedList.add(packagePart.getRelatedPart(it3.next()));
        }
        return linkedList;
    }

    public List<XWPFPictureData> getAllPackagePictures() {
        ArrayList arrayList = new ArrayList();
        Iterator<List<XWPFPictureData>> it2 = this.packagePictures.values().iterator();
        while (it2.hasNext()) {
            arrayList.addAll(it2.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<XWPFPictureData> getAllPictures() {
        return Collections.unmodifiableList(this.pictures);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<IBodyElement> getBodyElements() {
        return Collections.unmodifiableList(this.bodyElements);
    }

    public Iterator<IBodyElement> getBodyElementsIterator() {
        return this.bodyElements.iterator();
    }

    public Spliterator<IBodyElement> getBodyElementsSpliterator() {
        return this.bodyElements.spliterator();
    }

    public List<XWPFChart> getCharts() {
        return Collections.unmodifiableList(this.charts);
    }

    public XWPFComment getCommentByID(String str) {
        XWPFComments xWPFComments = this.comments;
        if (xWPFComments == null) {
            return null;
        }
        return xWPFComments.getCommentByID(str);
    }

    public XWPFComment[] getComments() {
        XWPFComments xWPFComments = this.comments;
        if (xWPFComments == null) {
            return null;
        }
        return (XWPFComment[]) xWPFComments.getComments().toArray(new XWPFComment[0]);
    }

    public XWPFComments getDocComments() {
        return this.comments;
    }

    @Internal
    public CTDocument1 getDocument() {
        return this.ctDocument;
    }

    public IdentifierManager getDrawingIdManager() {
        return this.drawingIdManager;
    }

    public XWPFEndnote getEndnoteByID(int i) {
        XWPFEndnotes xWPFEndnotes = this.endnotes;
        if (xWPFEndnotes == null) {
            return null;
        }
        return xWPFEndnotes.getFootnoteById(i);
    }

    public List<XWPFEndnote> getEndnotes() {
        XWPFEndnotes xWPFEndnotes = this.endnotes;
        return xWPFEndnotes == null ? Collections.emptyList() : xWPFEndnotes.getEndnotesList();
    }

    public boolean getEvenAndOddHeadings() {
        return this.settings.getEvenAndOddHeadings();
    }

    public XWPFFooter getFooterArray(int i) {
        if (i < 0 || i >= this.footers.size()) {
            return null;
        }
        return this.footers.get(i);
    }

    public List<XWPFFooter> getFooterList() {
        return Collections.unmodifiableList(this.footers);
    }

    public XWPFFootnote getFootnoteByID(int i) {
        XWPFFootnotes xWPFFootnotes = this.footnotes;
        if (xWPFFootnotes == null) {
            return null;
        }
        return (XWPFFootnote) xWPFFootnotes.getFootnoteById(i);
    }

    public List<XWPFFootnote> getFootnotes() {
        XWPFFootnotes xWPFFootnotes = this.footnotes;
        return xWPFFootnotes == null ? Collections.emptyList() : xWPFFootnotes.getFootnotesList();
    }

    public XWPFHeader getHeaderArray(int i) {
        if (i < 0 || i >= this.headers.size()) {
            return null;
        }
        return this.headers.get(i);
    }

    public XWPFHeaderFooterPolicy getHeaderFooterPolicy() {
        return this.headerFooterPolicy;
    }

    public List<XWPFHeader> getHeaderList() {
        return Collections.unmodifiableList(this.headers);
    }

    public XWPFHyperlink getHyperlinkByID(String str) {
        for (XWPFHyperlink xWPFHyperlink : this.hyperlinks) {
            if (xWPFHyperlink.getId().equals(str)) {
                return xWPFHyperlink;
            }
        }
        initHyperlinks();
        for (XWPFHyperlink xWPFHyperlink2 : this.hyperlinks) {
            if (xWPFHyperlink2.getId().equals(str)) {
                return xWPFHyperlink2;
            }
        }
        return null;
    }

    public XWPFHyperlink[] getHyperlinks() {
        return (XWPFHyperlink[]) this.hyperlinks.toArray(new XWPFHyperlink[0]);
    }

    public XWPFParagraph getLastParagraph() {
        return this.paragraphs.get(this.paragraphs.toArray().length - 1);
    }

    public boolean getMirrorMargins() {
        return this.settings.getMirrorMargins();
    }

    public int getNextPicNameNumber(int i) throws InvalidFormatException {
        return getNextPicNameNumber(PictureType.findByOoxmlId(i));
    }

    public XWPFNumbering getNumbering() {
        return this.numbering;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph getParagraph(CTP ctp) {
        for (XWPFParagraph xWPFParagraph : this.paragraphs) {
            if (xWPFParagraph.getCTP() == ctp) {
                return xWPFParagraph;
            }
        }
        return null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph getParagraphArray(int i) {
        if (i < 0 || i >= this.paragraphs.size()) {
            return null;
        }
        return this.paragraphs.get(i);
    }

    public int getParagraphPos(int i) {
        return getBodyElementSpecificPos(i, this.paragraphs);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<XWPFParagraph> getParagraphs() {
        return Collections.unmodifiableList(this.paragraphs);
    }

    public Iterator<XWPFParagraph> getParagraphsIterator() {
        return this.paragraphs.iterator();
    }

    public Spliterator<XWPFParagraph> getParagraphsSpliterator() {
        return this.paragraphs.spliterator();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public POIXMLDocumentPart getPart() {
        return this;
    }

    public PackagePart getPartById(String str) {
        try {
            PackagePart corePart = getCorePart();
            return corePart.getRelatedPart(corePart.getRelationship(str));
        } catch (InvalidFormatException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public BodyType getPartType() {
        return BodyType.DOCUMENT;
    }

    public XWPFPictureData getPictureDataByID(String str) {
        POIXMLDocumentPart relationById = getRelationById(str);
        if (relationById instanceof XWPFPictureData) {
            return (XWPFPictureData) relationById;
        }
        return null;
    }

    public int getPosOfParagraph(XWPFParagraph xWPFParagraph) {
        return getPosOfBodyElement(xWPFParagraph);
    }

    public int getPosOfTable(XWPFTable xWPFTable) {
        return getPosOfBodyElement(xWPFTable);
    }

    public XWPFSettings getSettings() {
        return this.settings;
    }

    @Internal
    public CTStyles getStyle() throws XmlException, IOException {
        try {
            PackagePart[] relatedByType = getRelatedByType(XWPFRelation.STYLES.getRelation());
            if (relatedByType.length != 1) {
                throw new IOException("Expecting one Styles document part, but found " + relatedByType.length);
            }
            InputStream inputStream = relatedByType[0].getInputStream();
            try {
                CTStyles styles = StylesDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getStyles();
                if (inputStream != null) {
                    inputStream.close();
                }
                return styles;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (InvalidFormatException e) {
            throw new IOException(e);
        }
    }

    public XWPFStyles getStyles() {
        return this.styles;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable getTable(CTTbl cTTbl) {
        for (int i = 0; i < this.tables.size(); i++) {
            if (getTables().get(i).getCTTbl() == cTTbl) {
                return getTables().get(i);
            }
        }
        return null;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable getTableArray(int i) {
        if (i < 0 || i >= this.tables.size()) {
            return null;
        }
        return this.tables.get(i);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTableCell getTableCell(CTTc cTTc) {
        XWPFTable table;
        XWPFTableRow row;
        XmlCursor newCursor = cTTc.newCursor();
        try {
            newCursor.toParent();
            XmlObject object = newCursor.getObject();
            if (!(object instanceof CTRow)) {
                newCursor.close();
                return null;
            }
            CTRow cTRow = (CTRow) object;
            newCursor.toParent();
            XmlObject object2 = newCursor.getObject();
            newCursor.close();
            if (!(object2 instanceof CTTbl) || (table = getTable((CTTbl) object2)) == null || (row = table.getRow(cTRow)) == null) {
                return null;
            }
            return row.getTableCell(cTTc);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public int getTablePos(int i) {
        return getBodyElementSpecificPos(i, this.tables);
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public List<XWPFTable> getTables() {
        return Collections.unmodifiableList(this.tables);
    }

    public Iterator<XWPFTable> getTablesIterator() {
        return this.tables.iterator();
    }

    public Spliterator<XWPFTable> getTablesSpliterator() {
        return this.tables.spliterator();
    }

    public String getTblStyle(XWPFTable xWPFTable) {
        return xWPFTable.getStyleID();
    }

    public XWPFTheme getTheme() {
        return this.theme;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFDocument getXWPFDocument() {
        return this;
    }

    public long getZoomPercent() {
        return this.settings.getZoomPercent();
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFParagraph insertNewParagraph(XmlCursor xmlCursor) {
        Deque<XmlObject> pathToObject = getPathToObject(xmlCursor);
        xmlCursor.beginElement("p", CTP.type.getName().getNamespaceURI());
        xmlCursor.toParent();
        XWPFParagraph xWPFParagraph = new XWPFParagraph((CTP) xmlCursor.getObject(), this);
        insertIntoParentElement(xWPFParagraph, pathToObject);
        xmlCursor.toCursor(xWPFParagraph.getCTP().newCursor());
        xmlCursor.toEndToken();
        return xWPFParagraph;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public XWPFTable insertNewTbl(XmlCursor xmlCursor) {
        Deque<XmlObject> pathToObject = getPathToObject(xmlCursor);
        xmlCursor.beginElement("tbl", CTTbl.type.getName().getNamespaceURI());
        xmlCursor.toParent();
        XWPFTable xWPFTable = new XWPFTable((CTTbl) xmlCursor.getObject(), this);
        insertIntoParentElement(xWPFTable, pathToObject);
        xmlCursor.toCursor(xWPFTable.getCTTbl().newCursor());
        xmlCursor.toEndToken();
        return xWPFTable;
    }

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public void insertTable(int i, XWPFTable xWPFTable) {
        this.bodyElements.add(i, xWPFTable);
        CTTbl[] tblArray = this.ctDocument.getBody().getTblArray();
        int length = tblArray.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length && tblArray[i3] != xWPFTable.getCTTbl(); i3++) {
            i2++;
        }
        this.tables.add(i2, xWPFTable);
    }

    public boolean isEnforcedCommentsProtection() {
        return this.settings.isEnforcedWith(STDocProtect.COMMENTS);
    }

    public boolean isEnforcedFillingFormsProtection() {
        return this.settings.isEnforcedWith(STDocProtect.FORMS);
    }

    public boolean isEnforcedProtection() {
        return this.settings.isEnforcedWith();
    }

    public boolean isEnforcedReadonlyProtection() {
        return this.settings.isEnforcedWith(STDocProtect.READ_ONLY);
    }

    public boolean isEnforcedTrackedChangesProtection() {
        return this.settings.isEnforcedWith(STDocProtect.TRACKED_CHANGES);
    }

    public boolean isEnforcedUpdateFields() {
        return this.settings.isUpdateFields();
    }

    public boolean isTrackRevisions() {
        return this.settings.isTrackRevisions();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentCreate() {
        CTDocument1 newInstance = CTDocument1.Factory.newInstance();
        this.ctDocument = newInstance;
        newInstance.addNewBody();
        this.settings = (XWPFSettings) createRelationship(XWPFRelation.SETTINGS, XWPFFactory.getInstance());
        getProperties().getExtendedProperties().getUnderlyingProperties().setApplication(POIXMLDocument.DOCUMENT_CREATOR);
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            if (DOCUMENT_MAX_SIZE > 0 && getPackagePart().getSize() > DOCUMENT_MAX_SIZE) {
                throw new POIXMLException(String.format("document.xml is too large, %d > %d", Long.valueOf(getPackagePart().getSize()), Integer.valueOf(DOCUMENT_MAX_SIZE)));
            }
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                DocumentDocument parse = DocumentDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
                this.ctDocument = parse.getDocument();
                if (inputStream != null) {
                    inputStream.close();
                }
                initFootnotes();
                XmlCursor newCursor = this.ctDocument.newCursor();
                try {
                    newCursor.selectPath("./*");
                    while (newCursor.toNextSelection()) {
                        XmlObject object = newCursor.getObject();
                        if (object instanceof CTBody) {
                            XmlCursor newCursor2 = object.newCursor();
                            try {
                                newCursor2.selectPath("./*");
                                while (newCursor2.toNextSelection()) {
                                    XmlObject object2 = newCursor2.getObject();
                                    if (object2 instanceof CTP) {
                                        XWPFParagraph xWPFParagraph = new XWPFParagraph((CTP) object2, this);
                                        this.bodyElements.add(xWPFParagraph);
                                        this.paragraphs.add(xWPFParagraph);
                                    } else if (object2 instanceof CTTbl) {
                                        XWPFTable xWPFTable = new XWPFTable((CTTbl) object2, this);
                                        this.bodyElements.add(xWPFTable);
                                        this.tables.add(xWPFTable);
                                    } else if (object2 instanceof CTSdtBlock) {
                                        XWPFSDT xwpfsdt = new XWPFSDT((CTSdtBlock) object2, this);
                                        this.bodyElements.add(xwpfsdt);
                                        this.contentControls.add(xwpfsdt);
                                    }
                                }
                                newCursor2.close();
                            } finally {
                            }
                        }
                    }
                    newCursor.close();
                    if (parse.getDocument().getBody().getSectPr() != null) {
                        this.headerFooterPolicy = new XWPFHeaderFooterPolicy(this);
                    }
                    for (POIXMLDocumentPart.RelationPart relationPart : getRelationParts()) {
                        POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
                        String relationshipType = relationPart.getRelationship().getRelationshipType();
                        if (relationshipType.equals(XWPFRelation.STYLES.getRelation())) {
                            XWPFStyles xWPFStyles = (XWPFStyles) documentPart;
                            this.styles = xWPFStyles;
                            xWPFStyles.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.THEME.getRelation())) {
                            XWPFTheme xWPFTheme = (XWPFTheme) documentPart;
                            this.theme = xWPFTheme;
                            xWPFTheme.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.NUMBERING.getRelation())) {
                            XWPFNumbering xWPFNumbering = (XWPFNumbering) documentPart;
                            this.numbering = xWPFNumbering;
                            xWPFNumbering.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.FOOTER.getRelation())) {
                            XWPFFooter xWPFFooter = (XWPFFooter) documentPart;
                            this.footers.add(xWPFFooter);
                            xWPFFooter.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.HEADER.getRelation())) {
                            XWPFHeader xWPFHeader = (XWPFHeader) documentPart;
                            this.headers.add(xWPFHeader);
                            xWPFHeader.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.COMMENT.getRelation())) {
                            XWPFComments xWPFComments = (XWPFComments) documentPart;
                            this.comments = xWPFComments;
                            xWPFComments.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.SETTINGS.getRelation())) {
                            XWPFSettings xWPFSettings = (XWPFSettings) documentPart;
                            this.settings = xWPFSettings;
                            xWPFSettings.onDocumentRead();
                        } else if (relationshipType.equals(XWPFRelation.IMAGES.getRelation())) {
                            XWPFPictureData xWPFPictureData = (XWPFPictureData) documentPart;
                            xWPFPictureData.onDocumentRead();
                            registerPackagePictureData(xWPFPictureData);
                            this.pictures.add(xWPFPictureData);
                        } else if (relationshipType.equals(XWPFRelation.CHART.getRelation())) {
                            this.charts.add((XWPFChart) documentPart);
                        } else if (relationshipType.equals(XWPFRelation.GLOSSARY_DOCUMENT.getRelation())) {
                            Iterator<POIXMLDocumentPart> it2 = documentPart.getRelations().iterator();
                            while (it2.hasNext()) {
                                POIXMLDocumentPart._invokeOnDocumentRead(it2.next());
                            }
                        }
                    }
                    initHyperlinks();
                } finally {
                }
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException(e);
        }
    }

    public void registerPackagePictureData(XWPFPictureData xWPFPictureData) {
        List<XWPFPictureData> computeIfAbsent = this.packagePictures.computeIfAbsent(xWPFPictureData.getChecksum(), new Function() { // from class: com.sunia.HTREnginev2.pso
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                List lambda$registerPackagePictureData$0;
                lambda$registerPackagePictureData$0 = XWPFDocument.lambda$registerPackagePictureData$0((Long) obj);
                return lambda$registerPackagePictureData$0;
            }
        });
        if (computeIfAbsent.contains(xWPFPictureData)) {
            return;
        }
        computeIfAbsent.add(xWPFPictureData);
    }

    public boolean removeBodyElement(int i) {
        if (i < 0 || i >= this.bodyElements.size()) {
            return false;
        }
        BodyElementType elementType = this.bodyElements.get(i).getElementType();
        if (elementType == BodyElementType.TABLE) {
            int tablePos = getTablePos(i);
            this.tables.remove(tablePos);
            this.ctDocument.getBody().removeTbl(tablePos);
        }
        if (elementType == BodyElementType.PARAGRAPH) {
            int paragraphPos = getParagraphPos(i);
            this.paragraphs.remove(paragraphPos);
            this.ctDocument.getBody().removeP(paragraphPos);
        }
        this.bodyElements.remove(i);
        return true;
    }

    public boolean removeEndnote(int i) {
        XWPFEndnotes xWPFEndnotes = this.endnotes;
        if (xWPFEndnotes != null) {
            return xWPFEndnotes.removeEndnote(i);
        }
        return false;
    }

    public boolean removeFootnote(int i) {
        XWPFFootnotes xWPFFootnotes = this.footnotes;
        if (xWPFFootnotes != null) {
            return xWPFFootnotes.removeFootnote(i);
        }
        return false;
    }

    public void removeProtectionEnforcement() {
        this.settings.removeEnforcement();
    }

    public void setEvenAndOddHeadings(boolean z) {
        this.settings.setEvenAndOddHeadings(z);
    }

    public void setMirrorMargins(boolean z) {
        this.settings.setMirrorMargins(z);
    }

    public void setParagraph(XWPFParagraph xWPFParagraph, int i) {
        this.paragraphs.set(i, xWPFParagraph);
        this.ctDocument.getBody().setPArray(i, xWPFParagraph.getCTP());
    }

    public void setTable(int i, XWPFTable xWPFTable) {
        this.tables.set(i, xWPFTable);
        this.ctDocument.getBody().setTblArray(i, xWPFTable.getCTTbl());
    }

    public void setTrackRevisions(boolean z) {
        this.settings.setTrackRevisions(z);
    }

    public void setZoomPercent(long j) {
        this.settings.setZoomPercent(j);
    }

    public boolean validateProtectionPassword(String str) {
        return this.settings.validateProtectionPassword(str);
    }

    public String addPictureData(byte[] bArr, PictureType pictureType) throws InvalidFormatException {
        if (pictureType != null) {
            XWPFPictureData findPackagePictureData = findPackagePictureData(bArr);
            POIXMLRelation pOIXMLRelation = XWPFPictureData.RELATIONS[pictureType.ooxmlId];
            if (findPackagePictureData == null) {
                XWPFPictureData xWPFPictureData = (XWPFPictureData) createRelationship(pOIXMLRelation, XWPFFactory.getInstance(), getNextPicNameNumber(pictureType));
                try {
                    OutputStream outputStream = xWPFPictureData.getPackagePart().getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.close();
                        registerPackagePictureData(xWPFPictureData);
                        this.pictures.add(xWPFPictureData);
                        return getRelationId(xWPFPictureData);
                    } finally {
                    }
                } catch (IOException e) {
                    throw new POIXMLException(e);
                }
            } else {
                if (!getRelations().contains(findPackagePictureData)) {
                    return addRelation(null, XWPFRelation.IMAGES, findPackagePictureData).getRelationship().getId();
                }
                return getRelationId(findPackagePictureData);
            }
        } else {
            throw new InvalidFormatException("pictureType is not supported");
        }
    }

    public XWPFChart createChart(int i, int i2) throws InvalidFormatException, IOException {
        return createChart(createParagraph().createRun(), i, i2);
    }

    public void enforceCommentsProtection(String str, HashAlgorithm hashAlgorithm) {
        this.settings.setEnforcementEditValue(STDocProtect.COMMENTS, str, hashAlgorithm);
    }

    public void enforceFillingFormsProtection(String str, HashAlgorithm hashAlgorithm) {
        this.settings.setEnforcementEditValue(STDocProtect.FORMS, str, hashAlgorithm);
    }

    public void enforceReadonlyProtection(String str, HashAlgorithm hashAlgorithm) {
        this.settings.setEnforcementEditValue(STDocProtect.READ_ONLY, str, hashAlgorithm);
    }

    public void enforceTrackedChangesProtection(String str, HashAlgorithm hashAlgorithm) {
        this.settings.setEnforcementEditValue(STDocProtect.TRACKED_CHANGES, str, hashAlgorithm);
    }

    public int getNextPicNameNumber(PictureType pictureType) throws InvalidFormatException {
        if (pictureType != null) {
            int size = getAllPackagePictures().size() + 1;
            PackagePartName createPartName = PackagingURIHelper.createPartName(XWPFPictureData.RELATIONS[pictureType.ooxmlId].getFileName(size));
            while (getPackage().getPart(createPartName) != null) {
                size++;
                createPartName = PackagingURIHelper.createPartName(XWPFPictureData.RELATIONS[pictureType.ooxmlId].getFileName(size));
            }
            return size;
        }
        throw new InvalidFormatException("pictureType is not supported");
    }

    public XWPFChart createChart(XWPFRun xWPFRun, int i, int i2) throws InvalidFormatException, IOException {
        XWPFRelation xWPFRelation = XWPFRelation.CHART;
        int nextPartNumber = getNextPartNumber(xWPFRelation, this.charts.size() + 1);
        POIXMLDocumentPart.RelationPart createRelationship = createRelationship(xWPFRelation, XWPFFactory.getInstance(), nextPartNumber, false);
        XWPFChart xWPFChart = (XWPFChart) createRelationship.getDocumentPart();
        xWPFChart.setChartIndex(nextPartNumber);
        xWPFChart.attach(createRelationship.getRelationship().getId(), xWPFRun);
        xWPFChart.setChartBoundingBox(i, i2);
        this.charts.add(xWPFChart);
        return xWPFChart;
    }

    public XWPFTable createTable(int i, int i2) {
        XWPFTable xWPFTable = new XWPFTable(this.ctDocument.getBody().addNewTbl(), this, i, i2);
        this.bodyElements.add(xWPFTable);
        this.tables.add(xWPFTable);
        return xWPFTable;
    }

    public XWPFDocument(InputStream inputStream) throws IOException {
        super(PackageHelper.open(inputStream));
        this.footers = new ArrayList();
        this.headers = new ArrayList();
        this.hyperlinks = new ArrayList();
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.contentControls = new ArrayList();
        this.bodyElements = new ArrayList();
        this.pictures = new ArrayList();
        this.packagePictures = new HashMap();
        this.charts = new ArrayList();
        this.drawingIdManager = new IdentifierManager(0L, 4294967295L);
        this.footnoteIdManager = new FootnoteEndnoteIdManager(this);
        load(XWPFFactory.getInstance());
    }

    public String addPictureData(InputStream inputStream, int i) throws InvalidFormatException {
        try {
            return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), i);
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public String addPictureData(InputStream inputStream, PictureType pictureType) throws InvalidFormatException {
        try {
            return addPictureData(IOUtils.toByteArrayWithMaxLength(inputStream, XWPFPictureData.getMaxImageSize()), pictureType);
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    public XWPFDocument() {
        super(newPackage());
        this.footers = new ArrayList();
        this.headers = new ArrayList();
        this.hyperlinks = new ArrayList();
        this.paragraphs = new ArrayList();
        this.tables = new ArrayList();
        this.contentControls = new ArrayList();
        this.bodyElements = new ArrayList();
        this.pictures = new ArrayList();
        this.packagePictures = new HashMap();
        this.charts = new ArrayList();
        this.drawingIdManager = new IdentifierManager(0L, 4294967295L);
        this.footnoteIdManager = new FootnoteEndnoteIdManager(this);
        onDocumentCreate();
    }
}
