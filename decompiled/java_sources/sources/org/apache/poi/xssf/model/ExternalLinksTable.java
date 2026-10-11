package org.apache.poi.xssf.model;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.ss.usermodel.Name;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Removal;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalBook;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalCell;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalDefinedName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalLink;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalRow;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetData;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetDataSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetName;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExternalSheetNames;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.ExternalLinkDocument;

/* loaded from: classes13.dex */
public class ExternalLinksTable extends POIXMLDocumentPart {
    private CTExternalLink link;

    /* loaded from: classes13.dex */
    public class ExternalName implements Name {
        private final CTExternalDefinedName name;

        public ExternalName(CTExternalDefinedName cTExternalDefinedName) {
            this.name = cTExternalDefinedName;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public String getComment() {
            return null;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public String getNameName() {
            return this.name.getName();
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public String getRefersToFormula() {
            return this.name.getRefersTo().substring(1);
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public int getSheetIndex() {
            if (this.name.isSetSheetId()) {
                return (int) this.name.getSheetId();
            }
            return -1;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public String getSheetName() {
            int sheetIndex = getSheetIndex();
            if (sheetIndex >= 0) {
                return ExternalLinksTable.this.getSheetNames().get(sheetIndex);
            }
            return null;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public boolean isDeleted() {
            return false;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public boolean isFunctionName() {
            return false;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public boolean isHidden() {
            return false;
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public void setComment(String str) {
            throw new IllegalStateException("Not Supported");
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public void setFunction(boolean z) {
            throw new IllegalStateException("Not Supported");
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public void setNameName(String str) {
            this.name.setName(str);
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public void setRefersToFormula(String str) {
            this.name.setRefersTo('=' + str);
        }

        @Override // org.apache.poi.ss.usermodel.Name
        public void setSheetIndex(int i) {
            this.name.setSheetId(i);
        }
    }

    public ExternalLinksTable() {
        CTExternalLink newInstance = CTExternalLink.Factory.newInstance();
        this.link = newInstance;
        newInstance.addNewExternalBook();
    }

    private CTExternalCell getCell(CTExternalRow cTExternalRow, String str) {
        for (CTExternalCell cTExternalCell : cTExternalRow.getCellArray()) {
            if (cTExternalCell.getR().equals(str)) {
                return cTExternalCell;
            }
        }
        CTExternalCell addNewCell = cTExternalRow.addNewCell();
        addNewCell.setR(str);
        return addNewCell;
    }

    private CTExternalRow getRow(CTExternalSheetData cTExternalSheetData, long j) {
        for (CTExternalRow cTExternalRow : cTExternalSheetData.getRowArray()) {
            if (cTExternalRow.getR() == j) {
                return cTExternalRow;
            }
        }
        CTExternalRow addNewRow = cTExternalSheetData.addNewRow();
        addNewRow.setR(j);
        return addNewRow;
    }

    private CTExternalSheetData getSheetData(int i) {
        CTExternalSheetData cTExternalSheetData;
        CTExternalSheetDataSet sheetDataSet = this.link.getExternalBook().getSheetDataSet();
        if (sheetDataSet == null) {
            sheetDataSet = this.link.getExternalBook().addNewSheetDataSet();
        }
        CTExternalSheetData[] sheetDataArray = sheetDataSet.getSheetDataArray();
        int length = sheetDataArray.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                cTExternalSheetData = null;
                break;
            }
            cTExternalSheetData = sheetDataArray[i2];
            if (cTExternalSheetData.getSheetId() == i) {
                break;
            }
            i2++;
        }
        if (cTExternalSheetData != null) {
            return cTExternalSheetData;
        }
        CTExternalSheetData addNewSheetData = sheetDataSet.addNewSheetData();
        addNewSheetData.setSheetId(i);
        return addNewSheetData;
    }

    private int getSheetNameIndex(String str) {
        CTExternalBook externalBook = this.link.getExternalBook();
        CTExternalSheetNames sheetNames = externalBook.getSheetNames();
        if (sheetNames == null) {
            sheetNames = externalBook.addNewSheetNames();
        }
        int i = 0;
        while (true) {
            if (i >= sheetNames.sizeOfSheetNameArray()) {
                i = -1;
                break;
            }
            if (sheetNames.getSheetNameArray(i).getVal().equals(str)) {
                break;
            }
            i++;
        }
        if (i != -1) {
            return i;
        }
        sheetNames.addNewSheetName().setVal(str);
        return sheetNames.sizeOfSheetNameArray() - 1;
    }

    public void cacheData(String str, long j, String str2, String str3) {
        synchronized (this.link.getExternalBook().monitor()) {
            getCell(getRow(getSheetData(getSheetNameIndex(str)), j), str2).setV(str3);
        }
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            writeTo(outputStream);
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

    @Removal(version = "6.0.0")
    @Internal
    public CTExternalLink getCTExternalLink() {
        return this.link;
    }

    public List<Name> getDefinedNames() {
        CTExternalDefinedName[] definedNameArray = this.link.getExternalBook().getDefinedNames().getDefinedNameArray();
        ArrayList arrayList = new ArrayList(definedNameArray.length);
        for (CTExternalDefinedName cTExternalDefinedName : definedNameArray) {
            arrayList.add(new ExternalName(cTExternalDefinedName));
        }
        return arrayList;
    }

    public String getLinkedFileName() {
        PackageRelationship relationship = getPackagePart().getRelationship(this.link.getExternalBook().getId());
        if (relationship == null || relationship.getTargetMode() != TargetMode.EXTERNAL) {
            return null;
        }
        return relationship.getTargetURI().toString();
    }

    public List<String> getSheetNames() {
        CTExternalSheetName[] sheetNameArray = this.link.getExternalBook().getSheetNames().getSheetNameArray();
        ArrayList arrayList = new ArrayList(sheetNameArray.length);
        for (CTExternalSheetName cTExternalSheetName : sheetNameArray) {
            arrayList.add(cTExternalSheetName.getVal());
        }
        return arrayList;
    }

    public void readFrom(InputStream inputStream) throws IOException {
        try {
            this.link = ExternalLinkDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getExternalLink();
        } catch (XmlException e) {
            throw new IOException(e.getLocalizedMessage());
        }
    }

    public void setLinkedFileName(String str) {
        String id = this.link.getExternalBook().getId();
        if (id != null && !id.isEmpty()) {
            getPackagePart().removeRelationship(id);
        }
        this.link.getExternalBook().setId(getPackagePart().addExternalRelationship(str, PackageRelationshipTypes.EXTERNAL_LINK_PATH).getId());
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        ExternalLinkDocument newInstance = ExternalLinkDocument.Factory.newInstance();
        newInstance.setExternalLink(this.link);
        newInstance.save(outputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
    }

    public ExternalLinksTable(PackagePart packagePart) throws IOException {
        super(packagePart);
        InputStream inputStream = packagePart.getInputStream();
        try {
            readFrom(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
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
    }
}
