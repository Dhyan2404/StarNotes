package org.apache.poi.xslf.usermodel.chart;

import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrData;

/* loaded from: classes13.dex */
public class XSLFDataSourcesFactory {

    /* loaded from: classes13.dex */
    public static abstract class AbstractCellRangeDataSource<T> implements XDDFDataSource<T> {
        private final CellRangeAddress cellRangeAddress;
        private final XSSFFormulaEvaluator evaluator;
        private final int numOfCells;
        private final XSSFSheet sheet;

        public AbstractCellRangeDataSource(XSSFSheet xSSFSheet, CellRangeAddress cellRangeAddress) {
            this.sheet = xSSFSheet;
            CellRangeAddress copy = cellRangeAddress.copy();
            this.cellRangeAddress = copy;
            this.numOfCells = copy.getNumberOfCells();
            this.evaluator = xSSFSheet.getWorkbook().getCreationHelper().createFormulaEvaluator();
        }

        public CellValue getCellValueAt(int i) {
            if (i < 0 || i >= this.numOfCells) {
                StringBuilder sb = new StringBuilder();
                sb.append("Index must be between 0 and ");
                sb.append(this.numOfCells - 1);
                sb.append(" (inclusive), given: ");
                sb.append(i);
                throw new IndexOutOfBoundsException(sb.toString());
            }
            int firstRow = this.cellRangeAddress.getFirstRow();
            int firstColumn = this.cellRangeAddress.getFirstColumn();
            int lastColumn = (this.cellRangeAddress.getLastColumn() - firstColumn) + 1;
            int i2 = firstColumn + (i % lastColumn);
            XSSFRow row = this.sheet.getRow(firstRow + (i / lastColumn));
            if (row == null) {
                return null;
            }
            return this.evaluator.evaluate(row.getCell(i2));
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public int getColIndex() {
            return this.cellRangeAddress.getFirstColumn();
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getDataRangeReference() {
            return this.cellRangeAddress.formatAsString(this.sheet.getSheetName(), true);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public int getPointCount() {
            return this.numOfCells;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isCellRange() {
            return true;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isReference() {
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public static class LiteralNumericalArrayDataSource<T extends Number> extends NumericalArrayDataSource<T> {
        public LiteralNumericalArrayDataSource(T[] tArr) {
            super(tArr, null, 0);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isLiteral() {
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public static class LiteralStringArrayDataSource extends StringArrayDataSource {
        public LiteralStringArrayDataSource(String[] strArr) {
            super(strArr, null, 0);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isLiteral() {
            return true;
        }
    }

    /* loaded from: classes13.dex */
    public static class NumericalArrayDataSource<T extends Number> extends AbstractArrayDataSource<T> implements XDDFNumericalDataSource<T> {
        private String formatCode;

        public NumericalArrayDataSource(T[] tArr, String str) {
            super(tArr, str);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getFormatCode() {
            return this.formatCode;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource
        public void setFormatCode(String str) {
            this.formatCode = str;
        }

        public NumericalArrayDataSource(T[] tArr, String str, int i) {
            super(tArr, str, i);
        }
    }

    /* loaded from: classes13.dex */
    public static class NumericalCellRangeDataSource extends AbstractCellRangeDataSource<Double> implements XDDFNumericalDataSource<Double> {
        private String formatCode;

        public NumericalCellRangeDataSource(XSSFSheet xSSFSheet, CellRangeAddress cellRangeAddress) {
            super(xSSFSheet, cellRangeAddress);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getFormatCode() {
            return this.formatCode;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isNumeric() {
            return true;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource
        public void setFormatCode(String str) {
            this.formatCode = str;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public Double getPointAt(int i) {
            CellValue cellValueAt = getCellValueAt(i);
            if (cellValueAt == null || cellValueAt.getCellType() != CellType.NUMERIC) {
                return null;
            }
            return Double.valueOf(cellValueAt.getNumberValue());
        }
    }

    /* loaded from: classes13.dex */
    public static class StringArrayDataSource extends AbstractArrayDataSource<String> implements XDDFCategoryDataSource {
        public StringArrayDataSource(String[] strArr, String str) {
            super(strArr, str);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getFormatCode() {
            return null;
        }

        public StringArrayDataSource(String[] strArr, String str, int i) {
            super(strArr, str, i);
        }
    }

    /* loaded from: classes13.dex */
    public static class StringCellRangeDataSource extends AbstractCellRangeDataSource<String> implements XDDFCategoryDataSource {
        public StringCellRangeDataSource(XSSFSheet xSSFSheet, CellRangeAddress cellRangeAddress) {
            super(xSSFSheet, cellRangeAddress);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getFormatCode() {
            return null;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isNumeric() {
            return false;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getPointAt(int i) {
            CellValue cellValueAt = getCellValueAt(i);
            if (cellValueAt == null || cellValueAt.getCellType() != CellType.STRING) {
                return null;
            }
            return cellValueAt.getStringValue();
        }
    }

    private XSLFDataSourcesFactory() {
    }

    public static <T extends Number> XDDFNumericalDataSource<T> fromArray(T[] tArr) {
        return new LiteralNumericalArrayDataSource(tArr);
    }

    public static XDDFCategoryDataSource fromDataSource(CTAxDataSource cTAxDataSource) {
        if (cTAxDataSource == null) {
            return null;
        }
        if (cTAxDataSource.getNumRef() != null && cTAxDataSource.getNumRef().getNumCache() != null) {
            return new XDDFCategoryDataSource() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.1
                private final CTNumData category;
                private final String formatCode;

                {
                    CTNumData cTNumData = (CTNumData) CTAxDataSource.this.getNumRef().getNumCache().copy();
                    this.category = cTNumData;
                    this.formatCode = cTNumData.isSetFormatCode() ? cTNumData.getFormatCode() : null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return CTAxDataSource.this.getNumRef().getF();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return this.formatCode;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.category.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isNumeric() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getPointAt(int i) {
                    if (this.category.sizeOfPtArray() > i) {
                        return this.category.getPtArray(i).getV();
                    }
                    throw new IllegalArgumentException("Cannot access 0-based index " + i + " in point-array with " + this.category.sizeOfPtArray() + " items");
                }
            };
        }
        if (cTAxDataSource.getStrRef() != null && cTAxDataSource.getStrRef().getStrCache() != null) {
            return new XDDFCategoryDataSource() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.2
                private final CTStrData category;

                {
                    this.category = (CTStrData) CTAxDataSource.this.getStrRef().getStrCache().copy();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return CTAxDataSource.this.getStrRef().getF();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.category.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getPointAt(int i) {
                    return this.category.getPtArray(i).getV();
                }
            };
        }
        if (cTAxDataSource.getNumLit() != null) {
            return new XDDFCategoryDataSource() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.3
                private final CTNumData category;
                private final String formatCode;

                {
                    CTNumData cTNumData = (CTNumData) CTAxDataSource.this.getNumLit().copy();
                    this.category = cTNumData;
                    this.formatCode = cTNumData.isSetFormatCode() ? cTNumData.getFormatCode() : null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return this.formatCode;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.category.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isLiteral() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isNumeric() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isReference() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getPointAt(int i) {
                    return this.category.getPtArray(i).getV();
                }
            };
        }
        if (cTAxDataSource.getStrLit() != null) {
            return new XDDFCategoryDataSource() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.4
                private final CTStrData category;

                {
                    this.category = (CTStrData) CTAxDataSource.this.getStrLit().copy();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.category.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isLiteral() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFCategoryDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isReference() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getPointAt(int i) {
                    return this.category.getPtArray(i).getV();
                }
            };
        }
        return null;
    }

    public static XDDFNumericalDataSource<Double> fromNumericCellRange(XSSFSheet xSSFSheet, CellRangeAddress cellRangeAddress) {
        return new NumericalCellRangeDataSource(xSSFSheet, cellRangeAddress);
    }

    public static XDDFCategoryDataSource fromStringCellRange(XSSFSheet xSSFSheet, CellRangeAddress cellRangeAddress) {
        return new StringCellRangeDataSource(xSSFSheet, cellRangeAddress);
    }

    public static XDDFCategoryDataSource fromArray(String[] strArr) {
        return new LiteralStringArrayDataSource(strArr);
    }

    public static <T extends Number> XDDFNumericalDataSource<T> fromArray(T[] tArr, String str) {
        return new NumericalArrayDataSource(tArr, str);
    }

    /* loaded from: classes13.dex */
    public static abstract class AbstractArrayDataSource<T> implements XDDFDataSource<T> {
        private int col;
        private final String dataRange;
        private final T[] elements;

        public AbstractArrayDataSource(T[] tArr, String str) {
            this.col = 0;
            this.elements = (T[]) ((Object[]) tArr.clone());
            this.dataRange = str;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public int getColIndex() {
            return this.col;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public String getDataRangeReference() {
            String str = this.dataRange;
            if (str != null) {
                return str;
            }
            throw new UnsupportedOperationException("Literal data source can not be expressed by reference.");
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public T getPointAt(int i) {
            return this.elements[i];
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public int getPointCount() {
            return this.elements.length;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isCellRange() {
            return false;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isNumeric() {
            return Number.class.isAssignableFrom(this.elements.getClass().getComponentType());
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
        public boolean isReference() {
            return this.dataRange != null;
        }

        public AbstractArrayDataSource(T[] tArr, String str, int i) {
            this.col = 0;
            this.elements = (T[]) ((Object[]) tArr.clone());
            this.dataRange = str;
            this.col = i;
        }
    }

    public static XDDFCategoryDataSource fromArray(String[] strArr, String str) {
        return new StringArrayDataSource(strArr, str);
    }

    public static <T extends Number> XDDFNumericalDataSource<T> fromArray(T[] tArr, String str, int i) {
        return new NumericalArrayDataSource(tArr, str, i);
    }

    public static XDDFCategoryDataSource fromArray(String[] strArr, String str, int i) {
        return new StringArrayDataSource(strArr, str, i);
    }

    public static XDDFNumericalDataSource<Double> fromDataSource(CTNumDataSource cTNumDataSource) {
        if (cTNumDataSource == null) {
            return null;
        }
        if (cTNumDataSource.getNumRef() != null && cTNumDataSource.getNumRef().getNumCache() != null) {
            return new XDDFNumericalDataSource<Double>() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.5
                private String formatCode;
                private int sizeOfPtArray;
                private final CTNumData values;

                {
                    CTNumData cTNumData = (CTNumData) CTNumDataSource.this.getNumRef().getNumCache().copy();
                    this.values = cTNumData;
                    this.formatCode = cTNumData.isSetFormatCode() ? cTNumData.getFormatCode() : null;
                    this.sizeOfPtArray = cTNumData.sizeOfPtArray();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getColIndex() {
                    return 0;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return CTNumDataSource.this.getNumRef().getF();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return this.formatCode;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.values.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isNumeric() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isReference() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource
                public void setFormatCode(String str) {
                    this.formatCode = str;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public Double getPointAt(int i) {
                    return Double.valueOf(i >= this.sizeOfPtArray ? 0.0d : Double.valueOf(this.values.getPtArray(i).getV()).doubleValue());
                }
            };
        }
        if (cTNumDataSource.getNumLit() != null) {
            return new XDDFNumericalDataSource<Double>() { // from class: org.apache.poi.xslf.usermodel.chart.XSLFDataSourcesFactory.6
                private String formatCode;
                private int sizeOfPtArray;
                private final CTNumData values;

                {
                    CTNumData cTNumData = (CTNumData) CTNumDataSource.this.getNumLit().copy();
                    this.values = cTNumData;
                    this.formatCode = cTNumData.isSetFormatCode() ? cTNumData.getFormatCode() : null;
                    this.sizeOfPtArray = cTNumData.sizeOfPtArray();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getColIndex() {
                    return 0;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getDataRangeReference() {
                    return null;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public String getFormatCode() {
                    return this.formatCode;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public int getPointCount() {
                    return (int) this.values.getPtCount().getVal();
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isCellRange() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource, org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isLiteral() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isNumeric() {
                    return true;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public boolean isReference() {
                    return false;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource
                public void setFormatCode(String str) {
                    this.formatCode = str;
                }

                @Override // org.apache.poi.xddf.usermodel.chart.XDDFDataSource
                public Double getPointAt(int i) {
                    return Double.valueOf(i >= this.sizeOfPtArray ? 0.0d : Double.valueOf(this.values.getPtArray(i).getV()).doubleValue());
                }
            };
        }
        return null;
    }
}
