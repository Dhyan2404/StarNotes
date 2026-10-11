package org.apache.poi.hssf.extractor;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Locale;
import org.apache.commons.collections4.MapUtils;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFDataFormatter;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.HeaderFooter;
import org.apache.poi.ss.usermodel.Row;

/* loaded from: classes12.dex */
public class ExcelExtractor implements POIOLE2TextExtractor, org.apache.poi.ss.extractor.ExcelExtractor {
    private final HSSFDataFormatter _formatter;
    private boolean _includeBlankCells;
    private boolean _includeCellComments;
    private boolean _includeHeadersFooters;
    private boolean _includeSheetNames;
    private boolean _shouldEvaluateFormulas;
    private final HSSFWorkbook _wb;
    private boolean doCloseFilesystem;

    /* renamed from: org.apache.poi.hssf.extractor.ExcelExtractor$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194941 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType;

        static {
            int[] iArr = new int[CellType.values().length];
            $SwitchMap$org$apache$poi$ss$usermodel$CellType = iArr;
            try {
                iArr[CellType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.NUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$ss$usermodel$CellType[CellType.FORMULA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static final class CommandArgs {
        private final boolean _evaluateFormulas;
        private final boolean _headersFooters;
        private final File _inputFile;
        private final boolean _requestHelp;
        private final boolean _showBlankCells;
        private final boolean _showCellComments;
        private final boolean _showSheetNames;

        /* JADX WARN: Code restructure failed: missing block: B:55:0x00ee, code lost:
        
            r13._requestHelp = r2;
            r13._inputFile = r1;
            r13._showSheetNames = r5;
            r13._evaluateFormulas = r6;
            r13._showCellComments = r7;
            r13._showBlankCells = r8;
            r13._headersFooters = r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00fc, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CommandArgs(java.lang.String[] r14) throws org.apache.poi.hssf.extractor.ExcelExtractor.CommandParseException {
            /*
                Method dump skipped, instructions count: 253
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.extractor.ExcelExtractor.CommandArgs.<init>(java.lang.String[]):void");
        }

        private static boolean parseBoolArg(String[] strArr, int i) throws CommandParseException {
            if (i >= strArr.length) {
                throw new CommandParseException("Expected value after '" + strArr[i - 1] + CloudStorageConstants.SINGLE_QUOTES);
            }
            String upperCase = strArr[i].toUpperCase(Locale.ROOT);
            if ("Y".equals(upperCase) || HlsPlaylistParser.f26141M0.equals(upperCase) || "ON".equals(upperCase) || "TRUE".equals(upperCase)) {
                return true;
            }
            if ("N".equals(upperCase) || HlsPlaylistParser.f26143N0.equals(upperCase) || "OFF".equals(upperCase) || "FALSE".equals(upperCase)) {
                return false;
            }
            throw new CommandParseException("Invalid value '" + strArr[i] + "' for '" + strArr[i - 1] + "'. Expected 'Y' or 'N'");
        }

        public File getInputFile() {
            return this._inputFile;
        }

        public boolean isRequestHelp() {
            return this._requestHelp;
        }

        public boolean shouldEvaluateFormulas() {
            return this._evaluateFormulas;
        }

        public boolean shouldIncludeHeadersFooters() {
            return this._headersFooters;
        }

        public boolean shouldShowBlankCells() {
            return this._showBlankCells;
        }

        public boolean shouldShowCellComments() {
            return this._showCellComments;
        }

        public boolean shouldShowSheetNames() {
            return this._showSheetNames;
        }
    }

    /* loaded from: classes12.dex */
    public static final class CommandParseException extends Exception {
        public CommandParseException(String str) {
            super(str);
        }
    }

    public ExcelExtractor(HSSFWorkbook hSSFWorkbook) {
        this.doCloseFilesystem = true;
        this._includeSheetNames = true;
        this._shouldEvaluateFormulas = true;
        this._includeHeadersFooters = true;
        this._wb = hSSFWorkbook;
        this._formatter = new HSSFDataFormatter();
    }

    public static String _extractHeaderFooter(HeaderFooter headerFooter) {
        StringBuilder sb = new StringBuilder();
        if (headerFooter.getLeft() != null) {
            sb.append(headerFooter.getLeft());
        }
        if (headerFooter.getCenter() != null) {
            if (sb.length() > 0) {
                sb.append("\t");
            }
            sb.append(headerFooter.getCenter());
        }
        if (headerFooter.getRight() != null) {
            if (sb.length() > 0) {
                sb.append("\t");
            }
            sb.append(headerFooter.getRight());
        }
        if (sb.length() > 0) {
            sb.append("\n");
        }
        return sb.toString();
    }

    public static void main(String[] strArr) throws IOException {
        boolean z = true;
        try {
            CommandArgs commandArgs = new CommandArgs(strArr);
            if (commandArgs.isRequestHelp()) {
                printUsageMessage(System.out);
                return;
            }
            InputStream fileInputStream = commandArgs.getInputFile() == null ? System.in : new FileInputStream(commandArgs.getInputFile());
            try {
                HSSFWorkbook hSSFWorkbook = new HSSFWorkbook(fileInputStream);
                try {
                    ExcelExtractor excelExtractor = new ExcelExtractor(hSSFWorkbook);
                    try {
                        excelExtractor.setIncludeSheetNames(commandArgs.shouldShowSheetNames());
                        if (commandArgs.shouldEvaluateFormulas()) {
                            z = false;
                        }
                        excelExtractor.setFormulasNotResults(z);
                        excelExtractor.setIncludeCellComments(commandArgs.shouldShowCellComments());
                        excelExtractor.setIncludeBlankCells(commandArgs.shouldShowBlankCells());
                        excelExtractor.setIncludeHeadersFooters(commandArgs.shouldIncludeHeadersFooters());
                        System.out.println(excelExtractor.getText());
                        excelExtractor.close();
                        hSSFWorkbook.close();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (CommandParseException e) {
            System.err.println(e.getMessage());
            printUsageMessage(System.err);
            System.exit(1);
        }
    }

    private static void printUsageMessage(PrintStream printStream) {
        printStream.println("Use:");
        printStream.println(MapUtils.f104930a + ExcelExtractor.class.getName() + " [<flag> <value> [<flag> <value> [...]]] [-i <filename.xls>]");
        printStream.println("       -i <filename.xls> specifies input file (default is to use stdin)");
        printStream.println("       Flags can be set on or off by using the values 'Y' or 'N'.");
        printStream.println("       Following are available flags and their default values:");
        printStream.println("       --show-sheet-names  Y");
        printStream.println("       --evaluate-formulas Y");
        printStream.println("       --show-comments     N");
        printStream.println("       --show-blanks       Y");
        printStream.println("       --headers-footers   Y");
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        boolean z;
        String sheetName;
        StringBuilder sb = new StringBuilder();
        this._wb.setMissingCellPolicy(Row.MissingCellPolicy.RETURN_BLANK_AS_NULL);
        for (int i = 0; i < this._wb.getNumberOfSheets(); i++) {
            HSSFSheet sheetAt = this._wb.getSheetAt(i);
            if (sheetAt != null) {
                if (this._includeSheetNames && (sheetName = this._wb.getSheetName(i)) != null) {
                    sb.append(sheetName);
                    sb.append("\n");
                }
                if (this._includeHeadersFooters) {
                    sb.append(_extractHeaderFooter(sheetAt.getHeader()));
                }
                int lastRowNum = sheetAt.getLastRowNum();
                for (int firstRowNum = sheetAt.getFirstRowNum(); firstRowNum <= lastRowNum; firstRowNum++) {
                    HSSFRow row = sheetAt.getRow(firstRowNum);
                    if (row != null) {
                        int firstCellNum = row.getFirstCellNum();
                        short lastCellNum = row.getLastCellNum();
                        if (this._includeBlankCells) {
                            firstCellNum = 0;
                        }
                        while (firstCellNum < lastCellNum) {
                            HSSFCell cell = row.getCell(firstCellNum);
                            if (cell == null) {
                                z = this._includeBlankCells;
                            } else {
                                int[] iArr = C194941.$SwitchMap$org$apache$poi$ss$usermodel$CellType;
                                int i2 = iArr[cell.getCellType().ordinal()];
                                if (i2 == 1) {
                                    sb.append(cell.getRichStringCellValue().getString());
                                } else if (i2 == 2) {
                                    sb.append(this._formatter.formatCellValue(cell));
                                } else if (i2 == 3) {
                                    sb.append(cell.getBooleanCellValue());
                                } else if (i2 == 4) {
                                    sb.append(ErrorEval.getText(cell.getErrorCellValue()));
                                } else {
                                    if (i2 != 5) {
                                        throw new IllegalStateException("Unexpected cell type (" + cell.getCellType() + MotionUtils.f31762d);
                                    }
                                    if (this._shouldEvaluateFormulas) {
                                        int i3 = iArr[cell.getCachedFormulaResultType().ordinal()];
                                        if (i3 == 1) {
                                            HSSFRichTextString richStringCellValue = cell.getRichStringCellValue();
                                            if (richStringCellValue != null && richStringCellValue.length() > 0) {
                                                sb.append(richStringCellValue);
                                            }
                                        } else if (i3 == 2) {
                                            HSSFCellStyle cellStyle = cell.getCellStyle();
                                            sb.append(this._formatter.formatRawCellContents(cell.getNumericCellValue(), cellStyle.getDataFormat(), cellStyle.getDataFormatString()));
                                        } else if (i3 == 3) {
                                            sb.append(cell.getBooleanCellValue());
                                        } else {
                                            if (i3 != 4) {
                                                throw new IllegalStateException("Unexpected cell cached formula result type: " + cell.getCachedFormulaResultType());
                                            }
                                            sb.append(ErrorEval.getText(cell.getErrorCellValue()));
                                        }
                                    } else {
                                        sb.append(cell.getCellFormula());
                                    }
                                }
                                HSSFComment cellComment = cell.getCellComment();
                                if (this._includeCellComments && cellComment != null) {
                                    String replace = cellComment.getString().getString().replace('\n', ' ');
                                    sb.append(" Comment by ");
                                    sb.append(cellComment.getAuthor());
                                    sb.append(": ");
                                    sb.append(replace);
                                }
                                z = true;
                            }
                            if (z && firstCellNum < lastCellNum - 1) {
                                sb.append("\t");
                            }
                            firstCellNum++;
                        }
                        sb.append("\n");
                    }
                }
                if (this._includeHeadersFooters) {
                    sb.append(_extractHeaderFooter(sheetAt.getFooter()));
                }
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setFormulasNotResults(boolean z) {
        this._shouldEvaluateFormulas = !z;
    }

    public void setIncludeBlankCells(boolean z) {
        this._includeBlankCells = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeCellComments(boolean z) {
        this._includeCellComments = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeHeadersFooters(boolean z) {
        this._includeHeadersFooters = z;
    }

    @Override // org.apache.poi.ss.extractor.ExcelExtractor
    public void setIncludeSheetNames(boolean z) {
        this._includeSheetNames = z;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public HSSFWorkbook getFilesystem() {
        return this._wb;
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public HSSFWorkbook getDocument() {
        return this._wb;
    }

    public ExcelExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public ExcelExtractor(DirectoryNode directoryNode) throws IOException {
        this(new HSSFWorkbook(directoryNode, true));
    }
}
