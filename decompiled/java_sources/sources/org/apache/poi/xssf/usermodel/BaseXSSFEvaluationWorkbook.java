package org.apache.poi.xssf.usermodel;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentSkipListMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.formula.EvaluationName;
import org.apache.poi.ss.formula.EvaluationWorkbook;
import org.apache.poi.ss.formula.FormulaParser;
import org.apache.poi.ss.formula.FormulaParsingWorkbook;
import org.apache.poi.ss.formula.FormulaRenderingWorkbook;
import org.apache.poi.ss.formula.FormulaType;
import org.apache.poi.ss.formula.SheetIdentifier;
import org.apache.poi.ss.formula.ptg.Area3DPxg;
import org.apache.poi.ss.formula.ptg.NamePtg;
import org.apache.poi.ss.formula.ptg.NameXPtg;
import org.apache.poi.ss.formula.ptg.NameXPxg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.ss.formula.ptg.Ref3DPxg;
import org.apache.poi.ss.formula.udf.IndexedUDFFinder;
import org.apache.poi.ss.formula.udf.UDFFinder;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.AreaReference;
import org.apache.poi.ss.util.CellReference;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.xssf.model.ExternalLinksTable;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName;

@Internal
/* loaded from: classes13.dex */
public abstract class BaseXSSFEvaluationWorkbook implements FormulaRenderingWorkbook, EvaluationWorkbook, FormulaParsingWorkbook {
    private Map<String, XSSFTable> _tableCache;
    protected final XSSFWorkbook _uBook;

    /* loaded from: classes13.dex */
    public static class FakeExternalLinksTable extends ExternalLinksTable {
        private final String fileName;

        @Override // org.apache.poi.xssf.model.ExternalLinksTable
        public String getLinkedFileName() {
            return this.fileName;
        }

        private FakeExternalLinksTable(String str) {
            this.fileName = str;
        }
    }

    /* loaded from: classes13.dex */
    public static final class Name implements EvaluationName {
        private final FormulaParsingWorkbook _fpBook;
        private final int _index;
        private final XSSFName _nameRecord;

        public Name(XSSFName xSSFName, int i, FormulaParsingWorkbook formulaParsingWorkbook) {
            this._nameRecord = xSSFName;
            this._index = i;
            this._fpBook = formulaParsingWorkbook;
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public NamePtg createPtg() {
            return new NamePtg(this._index);
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public Ptg[] getNameDefinition() {
            return FormulaParser.parse(this._nameRecord.getRefersToFormula(), this._fpBook, FormulaType.NAMEDRANGE, this._nameRecord.getSheetIndex());
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public String getNameText() {
            return this._nameRecord.getNameName();
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public boolean hasFormula() {
            CTDefinedName cTName = this._nameRecord.getCTName();
            String stringValue = cTName.getStringValue();
            return (cTName.getFunction() || stringValue == null || stringValue.length() <= 0) ? false : true;
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public boolean isFunctionName() {
            return this._nameRecord.isFunctionName();
        }

        @Override // org.apache.poi.ss.formula.EvaluationName
        public boolean isRange() {
            return hasFormula();
        }
    }

    public BaseXSSFEvaluationWorkbook(XSSFWorkbook xSSFWorkbook) {
        this._uBook = xSSFWorkbook;
    }

    private int convertFromExternalSheetIndex(int i) {
        return i;
    }

    private int convertToExternalSheetIndex(int i) {
        return i;
    }

    private int findExternalLinkIndex(String str, List<ExternalLinksTable> list) {
        Iterator<ExternalLinksTable> it2 = list.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().getLinkedFileName().equals(str)) {
                return i + 1;
            }
            i++;
        }
        return -1;
    }

    private Map<String, XSSFTable> getTableCache() {
        Map<String, XSSFTable> map = this._tableCache;
        if (map != null) {
            return map;
        }
        this._tableCache = new ConcurrentSkipListMap(String.CASE_INSENSITIVE_ORDER);
        Iterator<Sheet> it2 = this._uBook.iterator();
        while (it2.hasNext()) {
            for (XSSFTable xSSFTable : ((XSSFSheet) it2.next()).getTables()) {
                this._tableCache.put(xSSFTable.getName(), xSSFTable);
            }
        }
        return this._tableCache;
    }

    private int resolveBookIndex(String str) {
        if (str.startsWith(IteratorUtils.f104923a) && str.endsWith(IteratorUtils.f104924b)) {
            str = str.substring(1, str.length() - 2);
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            List<ExternalLinksTable> externalLinksTable = this._uBook.getExternalLinksTable();
            int findExternalLinkIndex = this.findExternalLinkIndex(str, externalLinksTable);
            if (findExternalLinkIndex != -1) {
                return findExternalLinkIndex;
            }
            if (!str.startsWith("'file:///") || !str.endsWith(CloudStorageConstants.SINGLE_QUOTES)) {
                throw new IllegalStateException("Book not linked for filename " + str);
            }
            String substring = str.substring(str.lastIndexOf(47) + 1);
            String substring2 = substring.substring(0, substring.length() - 1);
            int findExternalLinkIndex2 = this.findExternalLinkIndex(substring2, externalLinksTable);
            if (findExternalLinkIndex2 != -1) {
                return findExternalLinkIndex2;
            }
            externalLinksTable.add(new FakeExternalLinksTable(substring2));
            return externalLinksTable.size();
        }
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public void clearAllCachedResultValues() {
        this._tableCache = null;
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public int convertFromExternSheetIndex(int i) {
        return i;
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public Ptg get3DReferencePtg(CellReference cellReference, SheetIdentifier sheetIdentifier) {
        if (sheetIdentifier.getBookName() != null) {
            return new Ref3DPxg(resolveBookIndex(sheetIdentifier.getBookName()), sheetIdentifier, cellReference);
        }
        return new Ref3DPxg(sheetIdentifier, cellReference);
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationWorkbook.ExternalName getExternalName(int i, int i2) {
        throw new IllegalStateException("HSSF-style external references are not supported for XSSF");
    }

    @Override // org.apache.poi.ss.formula.FormulaRenderingWorkbook, org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationWorkbook.ExternalSheet getExternalSheet(int i) {
        throw new IllegalStateException("HSSF-style external references are not supported for XSSF");
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public int getExternalSheetIndex(String str) {
        return convertToExternalSheetIndex(this._uBook.getSheetIndex(str));
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook, org.apache.poi.ss.formula.FormulaParsingWorkbook
    public EvaluationName getName(String str, int i) {
        for (int i2 = 0; i2 < this._uBook.getNumberOfNames(); i2++) {
            XSSFName nameAt = this._uBook.getNameAt(i2);
            String nameName = nameAt.getNameName();
            int sheetIndex = nameAt.getSheetIndex();
            if (str.equalsIgnoreCase(nameName) && (sheetIndex == -1 || sheetIndex == i)) {
                return new Name(nameAt, i2, this);
            }
        }
        if (i == -1) {
            return null;
        }
        return getName(str, -1);
    }

    @Override // org.apache.poi.ss.formula.FormulaRenderingWorkbook
    public String getNameText(NamePtg namePtg) {
        return this._uBook.getNameAt(namePtg.getIndex()).getNameName();
    }

    @Override // org.apache.poi.ss.formula.FormulaRenderingWorkbook
    public String getSheetFirstNameByExternSheet(int i) {
        return this._uBook.getSheetName(convertFromExternalSheetIndex(i));
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public int getSheetIndex(String str) {
        return this._uBook.getSheetIndex(str);
    }

    @Override // org.apache.poi.ss.formula.FormulaRenderingWorkbook
    public String getSheetLastNameByExternSheet(int i) {
        return getSheetFirstNameByExternSheet(i);
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public String getSheetName(int i) {
        return this._uBook.getSheetName(i);
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook, org.apache.poi.ss.formula.FormulaParsingWorkbook
    public SpreadsheetVersion getSpreadsheetVersion() {
        return SpreadsheetVersion.EXCEL2007;
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public UDFFinder getUDFFinder() {
        return this._uBook.getUDFFinder();
    }

    @Override // org.apache.poi.ss.formula.FormulaRenderingWorkbook, org.apache.poi.ss.formula.EvaluationWorkbook
    public String resolveNameXText(NameXPtg nameXPtg) {
        XSSFName nameAt;
        int nameIndex = nameXPtg.getNameIndex();
        String functionName = ((IndexedUDFFinder) getUDFFinder()).getFunctionName(nameIndex);
        return (functionName == null && (nameAt = this._uBook.getNameAt(nameIndex)) != null) ? nameAt.getNameName() : functionName;
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public XSSFName createName() {
        return this._uBook.createName();
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationWorkbook.ExternalName getExternalName(String str, String str2, int i) {
        if (i > 0) {
            ExternalLinksTable externalLinksTable = this._uBook.getExternalLinksTable().get(i - 1);
            for (org.apache.poi.ss.usermodel.Name name : externalLinksTable.getDefinedNames()) {
                if (name.getNameName().equals(str)) {
                    return new EvaluationWorkbook.ExternalName(str, -1, name.getSheetIndex() + 1);
                }
            }
            throw new IllegalArgumentException("Name '" + str + "' not found in reference to " + externalLinksTable.getLinkedFileName());
        }
        return new EvaluationWorkbook.ExternalName(str, this._uBook.getNameIndex(str), 0);
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationWorkbook.ExternalSheet getExternalSheet(String str, String str2, int i) {
        String str3;
        if (i > 0) {
            str3 = this._uBook.getExternalLinksTable().get(i - 1).getLinkedFileName();
        } else {
            str3 = null;
        }
        if (str2 != null && !str.equals(str2)) {
            return new EvaluationWorkbook.ExternalSheetRange(str3, str, str2);
        }
        return new EvaluationWorkbook.ExternalSheet(str3, str);
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public NameXPxg getNameXPtg(String str, SheetIdentifier sheetIdentifier) {
        if (((IndexedUDFFinder) getUDFFinder()).findFunction(str) != null) {
            return new NameXPxg(null, str);
        }
        if (sheetIdentifier == null) {
            if (this._uBook.getNames(str).isEmpty()) {
                return null;
            }
            return new NameXPxg(null, str);
        }
        if (sheetIdentifier.getSheetIdentifier() == null) {
            return new NameXPxg(resolveBookIndex(sheetIdentifier.getBookName()), null, str);
        }
        String name = sheetIdentifier.getSheetIdentifier().getName();
        if (sheetIdentifier.getBookName() != null) {
            return new NameXPxg(resolveBookIndex(sheetIdentifier.getBookName()), name, str);
        }
        return new NameXPxg(name, str);
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public XSSFTable getTable(String str) {
        if (str == null) {
            return null;
        }
        return getTableCache().get(str);
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    @NotImplemented
    public int getExternalSheetIndex(String str, String str2) {
        throw new IllegalStateException("not implemented yet");
    }

    @Override // org.apache.poi.ss.formula.FormulaParsingWorkbook
    public Ptg get3DReferencePtg(AreaReference areaReference, SheetIdentifier sheetIdentifier) {
        if (sheetIdentifier.getBookName() != null) {
            return new Area3DPxg(resolveBookIndex(sheetIdentifier.getBookName()), sheetIdentifier, areaReference);
        }
        return new Area3DPxg(sheetIdentifier, areaReference);
    }

    @Override // org.apache.poi.ss.formula.EvaluationWorkbook
    public EvaluationName getName(NamePtg namePtg) {
        int index = namePtg.getIndex();
        return new Name(this._uBook.getNameAt(index), index, this);
    }
}
