package org.apache.poi.hwpf.converter;

import com.google.android.material.motion.MotionUtils;
import com.google.protobuf.TextFormat;
import com.onegravity.rteditor.utils.Constants;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.io.output.StringBuilderWriter;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.hpsf.SummaryInformation;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.HWPFDocumentCore;
import org.apache.poi.hwpf.usermodel.Bookmark;
import org.apache.poi.hwpf.usermodel.CharacterRun;
import org.apache.poi.hwpf.usermodel.OfficeDrawing;
import org.apache.poi.hwpf.usermodel.Paragraph;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.Range;
import org.apache.poi.hwpf.usermodel.Section;
import org.apache.poi.hwpf.usermodel.Table;
import org.apache.poi.hwpf.usermodel.TableCell;
import org.apache.poi.hwpf.usermodel.TableRow;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.util.XMLHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class WordToTextConverter extends AbstractWordConverter {
    private static final Logger LOG = LogManager.getLogger((Class<?>) WordToTextConverter.class);
    private AtomicInteger noteCounters;
    private Element notes;
    private boolean outputSummaryInformation;
    private final TextDocumentFacade textDocumentFacade;

    public WordToTextConverter() throws ParserConfigurationException {
        this.noteCounters = new AtomicInteger(1);
        this.textDocumentFacade = new TextDocumentFacade(XMLHelper.newDocumentBuilder().newDocument());
    }

    public static String getText(DirectoryNode directoryNode) throws Exception {
        return getText(AbstractWordUtils.loadDoc(directoryNode));
    }

    public static void main(String[] strArr) throws Exception {
        if (strArr.length < 2) {
            System.err.println("Usage: WordToTextConverter <inputFile.doc> <saveTo.txt>");
            return;
        }
        System.out.println("Converting " + strArr[0]);
        System.out.println("Saving output to " + strArr[1]);
        DOMSource dOMSource = new DOMSource(process(new File(strArr[0])));
        StreamResult streamResult = new StreamResult(new File(strArr[1]));
        Transformer newTransformer = XMLHelper.newTransformer();
        newTransformer.setOutputProperty("method", "text");
        newTransformer.transform(dOMSource, streamResult);
    }

    private static Document process(File file) throws IOException, ParserConfigurationException {
        HWPFDocumentCore loadDoc = AbstractWordUtils.loadDoc(file);
        try {
            WordToTextConverter wordToTextConverter = new WordToTextConverter(XMLHelper.newDocumentBuilder().newDocument());
            wordToTextConverter.processDocument(loadDoc);
            Document document = wordToTextConverter.getDocument();
            if (loadDoc != null) {
                loadDoc.close();
            }
            return document;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (loadDoc != null) {
                    try {
                        loadDoc.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void processNote(HWPFDocument hWPFDocument, Element element, Range range) {
        int andIncrement = this.noteCounters.getAndIncrement();
        element.appendChild(this.textDocumentFacade.createText("\u200b[" + andIncrement + IteratorUtils.f104924b + Constants.CH_ZWSP));
        if (this.notes == null) {
            this.notes = this.textDocumentFacade.createBlock();
        }
        Element createBlock = this.textDocumentFacade.createBlock();
        this.notes.appendChild(createBlock);
        createBlock.appendChild(this.textDocumentFacade.createText("^" + andIncrement + TextFormat.f37835b));
        processCharacters(hWPFDocument, Integer.MIN_VALUE, range, createBlock);
        createBlock.appendChild(this.textDocumentFacade.createText("\n"));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void afterProcess() {
        if (this.notes != null) {
            this.textDocumentFacade.getBody().appendChild(this.notes);
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public Document getDocument() {
        return this.textDocumentFacade.getDocument();
    }

    public boolean isOutputSummaryInformation() {
        return this.outputSummaryInformation;
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void outputCharacters(Element element, CharacterRun characterRun, String str) {
        element.appendChild(this.textDocumentFacade.createText(str));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processBookmarks(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, List<Bookmark> list) {
        processCharacters(hWPFDocumentCore, i, range, element);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDocumentInformation(SummaryInformation summaryInformation) {
        if (isOutputSummaryInformation()) {
            if (AbstractWordUtils.isNotEmpty(summaryInformation.getTitle())) {
                this.textDocumentFacade.setTitle(summaryInformation.getTitle());
            }
            if (AbstractWordUtils.isNotEmpty(summaryInformation.getAuthor())) {
                this.textDocumentFacade.addAuthor(summaryInformation.getAuthor());
            }
            if (AbstractWordUtils.isNotEmpty(summaryInformation.getComments())) {
                this.textDocumentFacade.addDescription(summaryInformation.getComments());
            }
            if (AbstractWordUtils.isNotEmpty(summaryInformation.getKeywords())) {
                this.textDocumentFacade.addKeywords(summaryInformation.getKeywords());
            }
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDocumentPart(HWPFDocumentCore hWPFDocumentCore, Range range) {
        super.processDocumentPart(hWPFDocumentCore, range);
        afterProcess();
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processDrawnObject(HWPFDocument hWPFDocument, CharacterRun characterRun, OfficeDrawing officeDrawing, String str, Element element) {
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processEndnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNote(hWPFDocument, element, range);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processFootnoteAutonumbered(HWPFDocument hWPFDocument, int i, Element element, Range range) {
        processNote(hWPFDocument, element, range);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processHyperlink(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        processCharacters(hWPFDocumentCore, i, range, element);
        element.appendChild(this.textDocumentFacade.createText(" (\u200b" + str.replace("/", "\u200b\\/\u200b") + Constants.CH_ZWSP + MotionUtils.f31762d));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImage(Element element, boolean z, Picture picture) {
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImageWithoutPicturesManager(Element element, boolean z, Picture picture) {
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processLineBreak(Element element, CharacterRun characterRun) {
        element.appendChild(this.textDocumentFacade.createText("\n"));
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public boolean processOle2(HWPFDocument hWPFDocument, Element element, Entry entry) throws Exception {
        if (!(entry instanceof DirectoryNode)) {
            return false;
        }
        DirectoryNode directoryNode = (DirectoryNode) entry;
        if (directoryNode.hasEntry("WordDocument")) {
            String text = getText(directoryNode);
            element.appendChild(this.textDocumentFacade.createText(Constants.CH_ZWSP + text + Constants.CH_ZWSP));
            return true;
        }
        try {
            Object invoke = Class.forName("org.apache.poi.extractor.ExtractorFactory").getMethod("createExtractor", DirectoryNode.class).invoke(null, directoryNode);
            try {
                String str = (String) invoke.getClass().getMethod("getText", new Class[0]).invoke(invoke, new Object[0]);
                element.appendChild(this.textDocumentFacade.createText(Constants.CH_ZWSP + str + Constants.CH_ZWSP));
                return true;
            } catch (Exception e) {
                LOG.atError().withThrowable(e).log("Unable to extract text from OLE entry '{}'", entry.getName());
                return false;
            }
        } catch (Exception e2) {
            LOG.atWarn().withThrowable(e2).log("There is an OLE object entry '{}', but there is no text extractor for this object type or text extractor factory is not available", entry.getName());
            return false;
        }
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processPageBreak(HWPFDocumentCore hWPFDocumentCore, Element element) {
        Element createBlock = this.textDocumentFacade.createBlock();
        createBlock.appendChild(this.textDocumentFacade.createText("\n"));
        element.appendChild(createBlock);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processPageref(HWPFDocumentCore hWPFDocumentCore, Element element, Range range, int i, String str) {
        processCharacters(hWPFDocumentCore, i, range, element);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processParagraph(HWPFDocumentCore hWPFDocumentCore, Element element, int i, Paragraph paragraph, String str) {
        Element createParagraph = this.textDocumentFacade.createParagraph();
        createParagraph.appendChild(this.textDocumentFacade.createText(str));
        processCharacters(hWPFDocumentCore, i, paragraph, createParagraph);
        createParagraph.appendChild(this.textDocumentFacade.createText("\n"));
        element.appendChild(createParagraph);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processSection(HWPFDocumentCore hWPFDocumentCore, Section section, int i) {
        Element createBlock = this.textDocumentFacade.createBlock();
        processParagraphes(hWPFDocumentCore, createBlock, section, Integer.MIN_VALUE);
        createBlock.appendChild(this.textDocumentFacade.createText("\n"));
        this.textDocumentFacade.body.appendChild(createBlock);
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processTable(HWPFDocumentCore hWPFDocumentCore, Element element, Table table) {
        int numRows = table.numRows();
        for (int i = 0; i < numRows; i++) {
            TableRow row = table.getRow(i);
            Element createTableRow = this.textDocumentFacade.createTableRow();
            int numCells = row.numCells();
            for (int i2 = 0; i2 < numCells; i2++) {
                TableCell cell = row.getCell(i2);
                Element createTableCell = this.textDocumentFacade.createTableCell();
                if (i2 != 0) {
                    createTableCell.appendChild(this.textDocumentFacade.createText("\t"));
                }
                processCharacters(hWPFDocumentCore, table.getTableLevel(), cell, createTableCell);
                createTableRow.appendChild(createTableCell);
            }
            createTableRow.appendChild(this.textDocumentFacade.createText("\n"));
            element.appendChild(createTableRow);
        }
    }

    public void setOutputSummaryInformation(boolean z) {
        this.outputSummaryInformation = z;
    }

    @Override // org.apache.poi.hwpf.converter.AbstractWordConverter
    public void processImage(Element element, boolean z, Picture picture, String str) {
    }

    public static String getText(File file) throws Exception {
        return getText(AbstractWordUtils.loadDoc(file));
    }

    public WordToTextConverter(Document document) {
        this.noteCounters = new AtomicInteger(1);
        this.textDocumentFacade = new TextDocumentFacade(document);
    }

    public static String getText(HWPFDocumentCore hWPFDocumentCore) throws Exception {
        WordToTextConverter wordToTextConverter = new WordToTextConverter(XMLHelper.newDocumentBuilder().newDocument());
        wordToTextConverter.processDocument(hWPFDocumentCore);
        return wordToTextConverter.getText();
    }

    public WordToTextConverter(TextDocumentFacade textDocumentFacade) {
        this.noteCounters = new AtomicInteger(1);
        this.textDocumentFacade = textDocumentFacade;
    }

    public String getText() throws Exception {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter(1024);
        DOMSource dOMSource = new DOMSource(getDocument());
        StreamResult streamResult = new StreamResult(stringBuilderWriter);
        Transformer newTransformer = XMLHelper.newTransformer();
        newTransformer.setOutputProperty("method", "text");
        newTransformer.transform(dOMSource, streamResult);
        return stringBuilderWriter.toString();
    }
}
