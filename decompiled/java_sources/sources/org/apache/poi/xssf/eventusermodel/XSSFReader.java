package org.apache.poi.xssf.eventusermodel;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.util.XMLHelper;
import org.apache.poi.xssf.model.Comments;
import org.apache.poi.xssf.model.CommentsTable;
import org.apache.poi.xssf.model.SharedStrings;
import org.apache.poi.xssf.model.SharedStringsTable;
import org.apache.poi.xssf.model.StylesTable;
import org.apache.poi.xssf.model.ThemesTable;
import org.apache.poi.xssf.usermodel.XSSFDrawing;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.poi.xssf.usermodel.XSSFShape;
import org.apache.xmlbeans.XmlException;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public class XSSFReader {
    protected OPCPackage pkg;
    protected boolean useReadOnlySharedStringsTable;
    protected PackagePart workbookPart;
    private static final Set<String> WORKSHEET_RELS = Collections.unmodifiableSet(new HashSet(Arrays.asList(XSSFRelation.WORKSHEET.getRelation(), XSSFRelation.CHARTSHEET.getRelation(), XSSFRelation.MACRO_SHEET_BIN.getRelation())));
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) XSSFReader.class);

    /* loaded from: classes13.dex */
    public static class SheetIterator implements Iterator<InputStream> {
        protected final Iterator<XSSFSheetRef> sheetIterator;
        protected final Map<String, PackagePart> sheetMap;
        protected XSSFSheetRef xssfSheetRef;

        public SheetIterator(PackagePart packagePart) throws IOException, InvalidFormatException {
            if (packagePart == null) {
                throw new InvalidFormatException("Cannot create sheet-iterator with missing package part for workbook");
            }
            this.sheetMap = new HashMap();
            OPCPackage oPCPackage = packagePart.getPackage();
            Set<String> sheetRelationships = getSheetRelationships();
            Iterator<PackageRelationship> it2 = packagePart.getRelationships().iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                if (sheetRelationships.contains(next.getRelationshipType())) {
                    this.sheetMap.put(next.getId(), oPCPackage.getPart(PackagingURIHelper.createPartName(next.getTargetURI())));
                }
            }
            this.sheetIterator = createSheetIteratorFromWB(packagePart);
        }

        public Iterator<XSSFSheetRef> createSheetIteratorFromWB(PackagePart packagePart) throws IOException {
            XMLSheetRefReader xMLSheetRefReader = new XMLSheetRefReader();
            try {
                XMLReader newXMLReader = XMLHelper.newXMLReader();
                newXMLReader.setContentHandler(xMLSheetRefReader);
                try {
                    InputStream inputStream = packagePart.getInputStream();
                    try {
                        newXMLReader.parse(new InputSource(inputStream));
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        ArrayList arrayList = new ArrayList();
                        for (XSSFSheetRef xSSFSheetRef : xMLSheetRefReader.getSheetRefs()) {
                            String id = xSSFSheetRef.getId();
                            if (id != null && id.length() > 0) {
                                arrayList.add(xSSFSheetRef);
                            }
                        }
                        return arrayList.iterator();
                    } finally {
                    }
                } catch (SAXException e) {
                    throw new POIXMLException(e);
                }
            } catch (ParserConfigurationException | SAXException e2) {
                throw new POIXMLException(e2);
            }
        }

        public List<XSSFShape> getShapes() {
            PackagePart sheetPart = getSheetPart();
            LinkedList linkedList = new LinkedList();
            try {
                PackageRelationshipCollection relationshipsByType = sheetPart.getRelationshipsByType(XSSFRelation.DRAWINGS.getRelation());
                int size = relationshipsByType.size();
                for (int i = 0; i < size; i++) {
                    PackagePartName createPartName = PackagingURIHelper.createPartName(relationshipsByType.getRelationship(i).getTargetURI());
                    PackagePart part = sheetPart.getPackage().getPart(createPartName);
                    if (part == null) {
                        XSSFReader.LOGGER.atWarn().log("Missing drawing: {}. Skipping it.", createPartName);
                    } else {
                        linkedList.addAll(new XSSFDrawing(part).getShapes());
                    }
                }
                return linkedList;
            } catch (IOException | InvalidFormatException | XmlException e) {
                XSSFReader.LOGGER.atWarn().withThrowable(e).log("Failed to load shapes");
                return null;
            }
        }

        public Comments getSheetComments() {
            PackagePart sheetPart = getSheetPart();
            try {
                PackageRelationshipCollection relationshipsByType = sheetPart.getRelationshipsByType(XSSFRelation.SHEET_COMMENTS.getRelation());
                if (relationshipsByType.isEmpty()) {
                    return null;
                }
                return parseComments(sheetPart.getPackage().getPart(PackagingURIHelper.createPartName(relationshipsByType.getRelationship(0).getTargetURI())));
            } catch (IOException | InvalidFormatException e) {
                XSSFReader.LOGGER.atWarn().withThrowable(e).log("Failed to load sheet comments");
                return null;
            }
        }

        public String getSheetName() {
            return this.xssfSheetRef.getName();
        }

        public PackagePart getSheetPart() {
            return this.sheetMap.get(this.xssfSheetRef.getId());
        }

        public Set<String> getSheetRelationships() {
            return XSSFReader.WORKSHEET_RELS;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.sheetIterator.hasNext();
        }

        public Comments parseComments(PackagePart packagePart) throws IOException {
            return new CommentsTable(packagePart);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException("Not supported");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public InputStream next() {
            XSSFSheetRef next = this.sheetIterator.next();
            this.xssfSheetRef = next;
            String id = next.getId();
            try {
                PackagePart packagePart = this.sheetMap.get(id);
                if (packagePart != null) {
                    return packagePart.getInputStream();
                }
                throw new POIXMLException("Failed to find sheet package for sheetId=" + id);
            } catch (IOException e) {
                throw new POIXMLException(e);
            }
        }
    }

    /* loaded from: classes13.dex */
    public static class XMLSheetRefReader extends DefaultHandler {

        /* renamed from: ID */
        private static final String f111823ID = "id";
        private static final String NAME = "name";
        private static final String SHEET = "sheet";
        private final List<XSSFSheetRef> sheetRefs = new LinkedList();

        public List<XSSFSheetRef> getSheetRefs() {
            return Collections.unmodifiableList(this.sheetRefs);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            if (str2.equalsIgnoreCase(SHEET)) {
                String str4 = null;
                String str5 = null;
                for (int i = 0; i < attributes.getLength(); i++) {
                    String localName = attributes.getLocalName(i);
                    if (localName.equalsIgnoreCase("name")) {
                        str4 = attributes.getValue(i);
                    } else if (localName.equalsIgnoreCase("id")) {
                        str5 = attributes.getValue(i);
                    }
                    if (str4 != null && str5 != null) {
                        this.sheetRefs.add(new XSSFSheetRef(str5, str4));
                        return;
                    }
                }
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class XSSFSheetRef {

        /* renamed from: id */
        private final String f111824id;
        private final String name;

        public XSSFSheetRef(String str, String str2) {
            this.f111824id = str;
            this.name = str2;
        }

        public String getId() {
            return this.f111824id;
        }

        public String getName() {
            return this.name;
        }
    }

    public XSSFReader(OPCPackage oPCPackage) throws IOException, OpenXML4JException {
        this(oPCPackage, false);
    }

    public InputStream getSharedStringsData() throws IOException, InvalidFormatException {
        return XSSFRelation.SHARED_STRINGS.getContents(this.workbookPart);
    }

    public SharedStrings getSharedStringsTable() throws IOException, InvalidFormatException {
        ArrayList<PackagePart> partsByContentType = this.pkg.getPartsByContentType(XSSFRelation.SHARED_STRINGS.getContentType());
        try {
            if (partsByContentType.isEmpty()) {
                return null;
            }
            return this.useReadOnlySharedStringsTable ? new ReadOnlySharedStringsTable(partsByContentType.get(0)) : new SharedStringsTable(partsByContentType.get(0));
        } catch (SAXException e) {
            throw new InvalidFormatException("Failed to parse SharedStringsTable", e);
        }
    }

    public InputStream getSheet(String str) throws IOException, InvalidFormatException {
        PackageRelationship relationship = this.workbookPart.getRelationship(str);
        if (relationship == null) {
            throw new IllegalArgumentException("No Sheet found with r:id " + str);
        }
        PackagePart part = this.pkg.getPart(PackagingURIHelper.createPartName(relationship.getTargetURI()));
        if (part != null) {
            return part.getInputStream();
        }
        throw new IllegalArgumentException("No data found for Sheet with r:id " + str);
    }

    public Iterator<InputStream> getSheetsData() throws IOException, InvalidFormatException {
        return new SheetIterator(this.workbookPart);
    }

    public InputStream getStylesData() throws IOException, InvalidFormatException {
        return XSSFRelation.STYLES.getContents(this.workbookPart);
    }

    public StylesTable getStylesTable() throws IOException, InvalidFormatException {
        ArrayList<PackagePart> partsByContentType = this.pkg.getPartsByContentType(XSSFRelation.STYLES.getContentType());
        if (partsByContentType.isEmpty()) {
            return null;
        }
        StylesTable stylesTable = new StylesTable(partsByContentType.get(0));
        ArrayList<PackagePart> partsByContentType2 = this.pkg.getPartsByContentType(XSSFRelation.THEME.getContentType());
        if (partsByContentType2.size() != 0) {
            stylesTable.setTheme(new ThemesTable(partsByContentType2.get(0)));
        }
        return stylesTable;
    }

    public InputStream getThemesData() throws IOException, InvalidFormatException {
        return XSSFRelation.THEME.getContents(this.workbookPart);
    }

    public InputStream getWorkbookData() throws IOException, InvalidFormatException {
        return this.workbookPart.getInputStream();
    }

    public void setUseReadOnlySharedStringsTable(boolean z) {
        this.useReadOnlySharedStringsTable = z;
    }

    public boolean useReadOnlySharedStringsTable() {
        return this.useReadOnlySharedStringsTable;
    }

    public XSSFReader(OPCPackage oPCPackage, boolean z) throws IOException, OpenXML4JException {
        this.pkg = oPCPackage;
        PackageRelationship relationship = oPCPackage.getRelationshipsByType(PackageRelationshipTypes.CORE_DOCUMENT).getRelationship(0);
        if (relationship == null) {
            if (z) {
                relationship = this.pkg.getRelationshipsByType(PackageRelationshipTypes.STRICT_CORE_DOCUMENT).getRelationship(0);
            } else if (this.pkg.getRelationshipsByType(PackageRelationshipTypes.STRICT_CORE_DOCUMENT).getRelationship(0) != null) {
                throw new POIXMLException("Strict OOXML isn't currently supported, please see bug #57699");
            }
            if (relationship == null) {
                throw new POIXMLException("OOXML file structure broken/invalid - no core document found!");
            }
        }
        this.workbookPart = this.pkg.getPart(relationship);
    }
}
