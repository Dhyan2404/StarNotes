package org.apache.poi.hssf.record;

import androidx.fragment.app.FragmentTransaction;
import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.hssf.record.ArrayRecord;
import org.apache.poi.hssf.record.AutoFilterInfoRecord;
import org.apache.poi.hssf.record.BOFRecord;
import org.apache.poi.hssf.record.BackupRecord;
import org.apache.poi.hssf.record.BlankRecord;
import org.apache.poi.hssf.record.BookBoolRecord;
import org.apache.poi.hssf.record.BoolErrRecord;
import org.apache.poi.hssf.record.BottomMarginRecord;
import org.apache.poi.hssf.record.BoundSheetRecord;
import org.apache.poi.hssf.record.CFHeader12Record;
import org.apache.poi.hssf.record.CFHeaderRecord;
import org.apache.poi.hssf.record.CFRule12Record;
import org.apache.poi.hssf.record.CFRuleRecord;
import org.apache.poi.hssf.record.CRNCountRecord;
import org.apache.poi.hssf.record.CRNRecord;
import org.apache.poi.hssf.record.CalcCountRecord;
import org.apache.poi.hssf.record.CalcModeRecord;
import org.apache.poi.hssf.record.CodepageRecord;
import org.apache.poi.hssf.record.ColumnInfoRecord;
import org.apache.poi.hssf.record.ContinueRecord;
import org.apache.poi.hssf.record.CountryRecord;
import org.apache.poi.hssf.record.DBCellRecord;
import org.apache.poi.hssf.record.DConRefRecord;
import org.apache.poi.hssf.record.DSFRecord;
import org.apache.poi.hssf.record.DVALRecord;
import org.apache.poi.hssf.record.DVRecord;
import org.apache.poi.hssf.record.DateWindow1904Record;
import org.apache.poi.hssf.record.DefaultColWidthRecord;
import org.apache.poi.hssf.record.DefaultRowHeightRecord;
import org.apache.poi.hssf.record.DeltaRecord;
import org.apache.poi.hssf.record.DimensionsRecord;
import org.apache.poi.hssf.record.DrawingGroupRecord;
import org.apache.poi.hssf.record.DrawingRecord;
import org.apache.poi.hssf.record.DrawingSelectionRecord;
import org.apache.poi.hssf.record.EOFRecord;
import org.apache.poi.hssf.record.ExtSSTRecord;
import org.apache.poi.hssf.record.ExtendedFormatRecord;
import org.apache.poi.hssf.record.ExternSheetRecord;
import org.apache.poi.hssf.record.ExternalNameRecord;
import org.apache.poi.hssf.record.FeatHdrRecord;
import org.apache.poi.hssf.record.FeatRecord;
import org.apache.poi.hssf.record.FilePassRecord;
import org.apache.poi.hssf.record.FileSharingRecord;
import org.apache.poi.hssf.record.FnGroupCountRecord;
import org.apache.poi.hssf.record.FontRecord;
import org.apache.poi.hssf.record.FooterRecord;
import org.apache.poi.hssf.record.FormatRecord;
import org.apache.poi.hssf.record.FormulaRecord;
import org.apache.poi.hssf.record.GridsetRecord;
import org.apache.poi.hssf.record.GutsRecord;
import org.apache.poi.hssf.record.HCenterRecord;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.HeaderFooterRecord;
import org.apache.poi.hssf.record.HeaderRecord;
import org.apache.poi.hssf.record.HideObjRecord;
import org.apache.poi.hssf.record.HorizontalPageBreakRecord;
import org.apache.poi.hssf.record.HyperlinkRecord;
import org.apache.poi.hssf.record.IndexRecord;
import org.apache.poi.hssf.record.InterfaceEndRecord;
import org.apache.poi.hssf.record.InterfaceHdrRecord;
import org.apache.poi.hssf.record.IterationRecord;
import org.apache.poi.hssf.record.LabelRecord;
import org.apache.poi.hssf.record.LabelSSTRecord;
import org.apache.poi.hssf.record.LeftMarginRecord;
import org.apache.poi.hssf.record.MMSRecord;
import org.apache.poi.hssf.record.MergeCellsRecord;
import org.apache.poi.hssf.record.MulBlankRecord;
import org.apache.poi.hssf.record.MulRKRecord;
import org.apache.poi.hssf.record.NameCommentRecord;
import org.apache.poi.hssf.record.NameRecord;
import org.apache.poi.hssf.record.NoteRecord;
import org.apache.poi.hssf.record.NumberRecord;
import org.apache.poi.hssf.record.ObjRecord;
import org.apache.poi.hssf.record.ObjectProtectRecord;
import org.apache.poi.hssf.record.PaletteRecord;
import org.apache.poi.hssf.record.PaneRecord;
import org.apache.poi.hssf.record.PasswordRecord;
import org.apache.poi.hssf.record.PasswordRev4Record;
import org.apache.poi.hssf.record.PrecisionRecord;
import org.apache.poi.hssf.record.PrintGridlinesRecord;
import org.apache.poi.hssf.record.PrintHeadersRecord;
import org.apache.poi.hssf.record.PrintSetupRecord;
import org.apache.poi.hssf.record.ProtectRecord;
import org.apache.poi.hssf.record.ProtectionRev4Record;
import org.apache.poi.hssf.record.RKRecord;
import org.apache.poi.hssf.record.RecalcIdRecord;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.RefModeRecord;
import org.apache.poi.hssf.record.RefreshAllRecord;
import org.apache.poi.hssf.record.RightMarginRecord;
import org.apache.poi.hssf.record.RowRecord;
import org.apache.poi.hssf.record.SCLRecord;
import org.apache.poi.hssf.record.SSTRecord;
import org.apache.poi.hssf.record.SaveRecalcRecord;
import org.apache.poi.hssf.record.ScenarioProtectRecord;
import org.apache.poi.hssf.record.SelectionRecord;
import org.apache.poi.hssf.record.SharedFormulaRecord;
import org.apache.poi.hssf.record.StringRecord;
import org.apache.poi.hssf.record.StyleRecord;
import org.apache.poi.hssf.record.SupBookRecord;
import org.apache.poi.hssf.record.TabIdRecord;
import org.apache.poi.hssf.record.TableRecord;
import org.apache.poi.hssf.record.TableStylesRecord;
import org.apache.poi.hssf.record.TextObjectRecord;
import org.apache.poi.hssf.record.TopMarginRecord;
import org.apache.poi.hssf.record.UncalcedRecord;
import org.apache.poi.hssf.record.UnknownRecord;
import org.apache.poi.hssf.record.UseSelFSRecord;
import org.apache.poi.hssf.record.UserSViewBegin;
import org.apache.poi.hssf.record.UserSViewEnd;
import org.apache.poi.hssf.record.VCenterRecord;
import org.apache.poi.hssf.record.VerticalPageBreakRecord;
import org.apache.poi.hssf.record.WSBoolRecord;
import org.apache.poi.hssf.record.WindowOneRecord;
import org.apache.poi.hssf.record.WindowProtectRecord;
import org.apache.poi.hssf.record.WindowTwoRecord;
import org.apache.poi.hssf.record.WriteAccessRecord;
import org.apache.poi.hssf.record.WriteProtectRecord;
import org.apache.poi.hssf.record.chart.AreaFormatRecord;
import org.apache.poi.hssf.record.chart.AreaRecord;
import org.apache.poi.hssf.record.chart.AxisLineFormatRecord;
import org.apache.poi.hssf.record.chart.AxisOptionsRecord;
import org.apache.poi.hssf.record.chart.AxisParentRecord;
import org.apache.poi.hssf.record.chart.AxisRecord;
import org.apache.poi.hssf.record.chart.AxisUsedRecord;
import org.apache.poi.hssf.record.chart.BarRecord;
import org.apache.poi.hssf.record.chart.BeginRecord;
import org.apache.poi.hssf.record.chart.CatLabRecord;
import org.apache.poi.hssf.record.chart.CategorySeriesAxisRecord;
import org.apache.poi.hssf.record.chart.ChartEndBlockRecord;
import org.apache.poi.hssf.record.chart.ChartEndObjectRecord;
import org.apache.poi.hssf.record.chart.ChartFRTInfoRecord;
import org.apache.poi.hssf.record.chart.ChartFormatRecord;
import org.apache.poi.hssf.record.chart.ChartRecord;
import org.apache.poi.hssf.record.chart.ChartStartBlockRecord;
import org.apache.poi.hssf.record.chart.ChartStartObjectRecord;
import org.apache.poi.hssf.record.chart.ChartTitleFormatRecord;
import org.apache.poi.hssf.record.chart.DatRecord;
import org.apache.poi.hssf.record.chart.DataFormatRecord;
import org.apache.poi.hssf.record.chart.DataLabelExtensionRecord;
import org.apache.poi.hssf.record.chart.DefaultDataLabelTextPropertiesRecord;
import org.apache.poi.hssf.record.chart.EndRecord;
import org.apache.poi.hssf.record.chart.FontBasisRecord;
import org.apache.poi.hssf.record.chart.FontIndexRecord;
import org.apache.poi.hssf.record.chart.FrameRecord;
import org.apache.poi.hssf.record.chart.LegendRecord;
import org.apache.poi.hssf.record.chart.LineFormatRecord;
import org.apache.poi.hssf.record.chart.LinkedDataRecord;
import org.apache.poi.hssf.record.chart.NumberFormatIndexRecord;
import org.apache.poi.hssf.record.chart.ObjectLinkRecord;
import org.apache.poi.hssf.record.chart.PlotAreaRecord;
import org.apache.poi.hssf.record.chart.PlotGrowthRecord;
import org.apache.poi.hssf.record.chart.SeriesChartGroupIndexRecord;
import org.apache.poi.hssf.record.chart.SeriesIndexRecord;
import org.apache.poi.hssf.record.chart.SeriesLabelsRecord;
import org.apache.poi.hssf.record.chart.SeriesListRecord;
import org.apache.poi.hssf.record.chart.SeriesRecord;
import org.apache.poi.hssf.record.chart.SeriesTextRecord;
import org.apache.poi.hssf.record.chart.SheetPropertiesRecord;
import org.apache.poi.hssf.record.chart.TextRecord;
import org.apache.poi.hssf.record.chart.TickRecord;
import org.apache.poi.hssf.record.chart.UnitsRecord;
import org.apache.poi.hssf.record.chart.ValueRangeRecord;
import org.apache.poi.hssf.record.pivottable.DataItemRecord;
import org.apache.poi.hssf.record.pivottable.ExtendedPivotTableViewFieldsRecord;
import org.apache.poi.hssf.record.pivottable.PageItemRecord;
import org.apache.poi.hssf.record.pivottable.StreamIDRecord;
import org.apache.poi.hssf.record.pivottable.ViewDefinitionRecord;
import org.apache.poi.hssf.record.pivottable.ViewFieldsRecord;
import org.apache.poi.hssf.record.pivottable.ViewSourceRecord;

/* loaded from: classes12.dex */
public enum HSSFRecordTypes {
    UNKNOWN(-1, UnknownRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.h8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UnknownRecord(recordInputStream);
        }
    }, false),
    FORMULA(6, FormulaRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.aeh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FormulaRecord(recordInputStream);
        }
    }),
    EOF(10, EOFRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.meh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new EOFRecord(recordInputStream);
        }
    }),
    CALC_COUNT(12, CalcCountRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.l8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CalcCountRecord(recordInputStream);
        }
    }),
    CALC_MODE(13, CalcModeRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.x8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CalcModeRecord(recordInputStream);
        }
    }),
    PRECISION(14, PrecisionRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.j9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PrecisionRecord(recordInputStream);
        }
    }),
    REF_MODE(15, RefModeRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.v9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RefModeRecord(recordInputStream);
        }
    }),
    DELTA(16, DeltaRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DeltaRecord(recordInputStream);
        }
    }),
    ITERATION(17, IterationRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new IterationRecord(recordInputStream);
        }
    }),
    PROTECT(18, ProtectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ProtectRecord(recordInputStream);
        }
    }),
    PASSWORD(19, PasswordRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.d9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PasswordRecord(recordInputStream);
        }
    }),
    HEADER(20, HeaderRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.nbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HeaderRecord(recordInputStream);
        }
    }),
    FOOTER(21, FooterRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FooterRecord(recordInputStream);
        }
    }),
    EXTERN_SHEET(23, ExternSheetRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.lch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ExternSheetRecord(recordInputStream);
        }
    }),
    NAME(24, NameRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new NameRecord(recordInputStream);
        }
    }),
    WINDOW_PROTECT(25, WindowProtectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WindowProtectRecord(recordInputStream);
        }
    }),
    VERTICAL_PAGE_BREAK(26, VerticalPageBreakRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new VerticalPageBreakRecord(recordInputStream);
        }
    }),
    HORIZONTAL_PAGE_BREAK(27, HorizontalPageBreakRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HorizontalPageBreakRecord(recordInputStream);
        }
    }),
    NOTE(28, NoteRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new NoteRecord(recordInputStream);
        }
    }),
    SELECTION(29, SelectionRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SelectionRecord(recordInputStream);
        }
    }),
    DATE_WINDOW_1904(34, DateWindow1904Record.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.beh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DateWindow1904Record(recordInputStream);
        }
    }),
    EXTERNAL_NAME(35, ExternalNameRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ceh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ExternalNameRecord(recordInputStream);
        }
    }),
    LEFT_MARGIN(38, LeftMarginRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.deh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LeftMarginRecord(recordInputStream);
        }
    }),
    RIGHT_MARGIN(39, RightMarginRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.eeh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RightMarginRecord(recordInputStream);
        }
    }),
    TOP_MARGIN(40, TopMarginRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.feh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TopMarginRecord(recordInputStream);
        }
    }),
    BOTTOM_MARGIN(41, BottomMarginRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.geh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BottomMarginRecord(recordInputStream);
        }
    }),
    PRINT_HEADERS(42, PrintHeadersRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.heh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PrintHeadersRecord(recordInputStream);
        }
    }),
    PRINT_GRIDLINES(43, PrintGridlinesRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ieh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PrintGridlinesRecord(recordInputStream);
        }
    }),
    FILE_PASS(47, FilePassRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.keh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FilePassRecord(recordInputStream);
        }
    }),
    FONT(49, FontRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.leh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FontRecord(recordInputStream);
        }
    }),
    CONTINUE(60, ContinueRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.neh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ContinueRecord(recordInputStream);
        }
    }),
    WINDOW_ONE(61, WindowOneRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.oeh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WindowOneRecord(recordInputStream);
        }
    }),
    BACKUP(64, BackupRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.peh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BackupRecord(recordInputStream);
        }
    }),
    PANE(65, PaneRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qeh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PaneRecord(recordInputStream);
        }
    }),
    CODEPAGE(66, CodepageRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.reh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CodepageRecord(recordInputStream);
        }
    }),
    DCON_REF(81, DConRefRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.seh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DConRefRecord(recordInputStream);
        }
    }),
    DEFAULT_COL_WIDTH(85, DefaultColWidthRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.teh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DefaultColWidthRecord(recordInputStream);
        }
    }),
    CRN_COUNT(89, CRNCountRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.i8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CRNCountRecord(recordInputStream);
        }
    }),
    CRN(90, CRNRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.j8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CRNRecord(recordInputStream);
        }
    }),
    WRITE_ACCESS(92, WriteAccessRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.k8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WriteAccessRecord(recordInputStream);
        }
    }),
    FILE_SHARING(91, FileSharingRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.m8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FileSharingRecord(recordInputStream);
        }
    }),
    OBJ(93, ObjRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.n8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ObjRecord(recordInputStream);
        }
    }),
    UNCALCED(94, UncalcedRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.o8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UncalcedRecord(recordInputStream);
        }
    }),
    SAVE_RECALC(95, SaveRecalcRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.p8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SaveRecalcRecord(recordInputStream);
        }
    }),
    OBJECT_PROTECT(99, ObjectProtectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.q8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ObjectProtectRecord(recordInputStream);
        }
    }),
    COLUMN_INFO(125, ColumnInfoRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.r8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ColumnInfoRecord(recordInputStream);
        }
    }),
    GUTS(128, GutsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.t8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new GutsRecord(recordInputStream);
        }
    }),
    WS_BOOL(129, WSBoolRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.u8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WSBoolRecord(recordInputStream);
        }
    }),
    GRIDSET(130, GridsetRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.v8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new GridsetRecord(recordInputStream);
        }
    }),
    H_CENTER(131, HCenterRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.w8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HCenterRecord(recordInputStream);
        }
    }),
    V_CENTER(132, VCenterRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.y8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new VCenterRecord(recordInputStream);
        }
    }),
    BOUND_SHEET(133, BoundSheetRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.z8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BoundSheetRecord(recordInputStream);
        }
    }),
    WRITE_PROTECT(134, WriteProtectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.a9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WriteProtectRecord(recordInputStream);
        }
    }),
    COUNTRY(140, CountryRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.b9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CountryRecord(recordInputStream);
        }
    }),
    HIDE_OBJ(141, HideObjRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.c9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HideObjRecord(recordInputStream);
        }
    }),
    PALETTE(146, PaletteRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.e9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PaletteRecord(recordInputStream);
        }
    }),
    FN_GROUP_COUNT(156, FnGroupCountRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.f9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FnGroupCountRecord(recordInputStream);
        }
    }),
    AUTO_FILTER_INFO(157, AutoFilterInfoRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.g9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AutoFilterInfoRecord(recordInputStream);
        }
    }),
    SCL(160, SCLRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.h9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SCLRecord(recordInputStream);
        }
    }, false),
    PRINT_SETUP(161, PrintSetupRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.i9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PrintSetupRecord(recordInputStream);
        }
    }),
    VIEW_DEFINITION(176, ViewDefinitionRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.k9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ViewDefinitionRecord(recordInputStream);
        }
    }),
    VIEW_FIELDS(177, ViewFieldsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.l9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ViewFieldsRecord(recordInputStream);
        }
    }),
    PAGE_ITEM(182, PageItemRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.m9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PageItemRecord(recordInputStream);
        }
    }),
    MUL_BLANK(190, MulBlankRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.n9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new MulBlankRecord(recordInputStream);
        }
    }),
    MUL_RK(189, MulRKRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.p9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new MulRKRecord(recordInputStream);
        }
    }),
    MMS(193, MMSRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.q9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new MMSRecord(recordInputStream);
        }
    }),
    DATA_ITEM(197, DataItemRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.r9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DataItemRecord(recordInputStream);
        }
    }),
    STREAM_ID(213, StreamIDRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.s9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new StreamIDRecord(recordInputStream);
        }
    }),
    DB_CELL(215, DBCellRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.t9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DBCellRecord(recordInputStream);
        }
    }),
    BOOK_BOOL(218, BookBoolRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.u9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BookBoolRecord(recordInputStream);
        }
    }),
    SCENARIO_PROTECT(221, ScenarioProtectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.w9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ScenarioProtectRecord(recordInputStream);
        }
    }),
    EXTENDED_FORMAT(224, ExtendedFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.x9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ExtendedFormatRecord(recordInputStream);
        }
    }),
    INTERFACE_HDR(225, InterfaceHdrRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.y9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new InterfaceHdrRecord(recordInputStream);
        }
    }),
    INTERFACE_END(226, InterfaceEndRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.aah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return InterfaceEndRecord.create(recordInputStream);
        }
    }),
    VIEW_SOURCE(227, ViewSourceRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ViewSourceRecord(recordInputStream);
        }
    }),
    MERGE_CELLS(229, MergeCellsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new MergeCellsRecord(recordInputStream);
        }
    }),
    DRAWING_GROUP(235, DrawingGroupRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DrawingGroupRecord(recordInputStream);
        }
    }),
    DRAWING(236, DrawingRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.eah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DrawingRecord(recordInputStream);
        }
    }),
    DRAWING_SELECTION(237, DrawingSelectionRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DrawingSelectionRecord(recordInputStream);
        }
    }),
    SST(252, SSTRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.gah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SSTRecord(recordInputStream);
        }
    }),
    LABEL_SST(253, LabelSSTRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.iah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LabelSSTRecord(recordInputStream);
        }
    }),
    EXT_SST(255, ExtSSTRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ExtSSTRecord(recordInputStream);
        }
    }),
    EXTENDED_PIVOT_TABLE_VIEW_FIELDS(256, ExtendedPivotTableViewFieldsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.lah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ExtendedPivotTableViewFieldsRecord(recordInputStream);
        }
    }),
    TAB_ID(317, TabIdRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TabIdRecord(recordInputStream);
        }
    }),
    USE_SEL_FS(DataBinderMapperImpl.f53082N5, UseSelFSRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.nah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UseSelFSRecord(recordInputStream);
        }
    }),
    DSF(DataBinderMapperImpl.f53089O5, DSFRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.oah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DSFRecord(recordInputStream);
        }
    }),
    USER_SVIEW_BEGIN(426, UserSViewBegin.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UserSViewBegin(recordInputStream);
        }
    }),
    USER_SVIEW_END(427, UserSViewEnd.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UserSViewEnd(recordInputStream);
        }
    }),
    SUP_BOOK(430, SupBookRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SupBookRecord(recordInputStream);
        }
    }),
    PROTECTION_REV_4(431, ProtectionRev4Record.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ProtectionRev4Record(recordInputStream);
        }
    }),
    CF_HEADER(432, CFHeaderRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.uah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CFHeaderRecord(recordInputStream);
        }
    }),
    CF_RULE(433, CFRuleRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CFRuleRecord(recordInputStream);
        }
    }),
    DVAL(C4756a.f24690c, DVALRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DVALRecord(recordInputStream);
        }
    }),
    TEXT_OBJECT(438, TextObjectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.yah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TextObjectRecord(recordInputStream);
        }
    }),
    REFRESH_ALL(439, RefreshAllRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RefreshAllRecord(recordInputStream);
        }
    }),
    HYPERLINK(440, HyperlinkRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.abh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HyperlinkRecord(recordInputStream);
        }
    }),
    PASSWORD_REV_4(444, PasswordRev4Record.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PasswordRev4Record(recordInputStream);
        }
    }),
    DV(446, DVRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DVRecord(recordInputStream);
        }
    }),
    RECALC_ID(449, RecalcIdRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RecalcIdRecord(recordInputStream);
        }
    }),
    DIMENSIONS(512, DimensionsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ebh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DimensionsRecord(recordInputStream);
        }
    }),
    BLANK(513, BlankRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BlankRecord(recordInputStream);
        }
    }),
    NUMBER(515, NumberRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new NumberRecord(recordInputStream);
        }
    }),
    LABEL(516, LabelRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.gch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LabelRecord(recordInputStream);
        }
    }),
    BOOL_ERR(517, BoolErrRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BoolErrRecord(recordInputStream);
        }
    }),
    STRING(519, StringRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new StringRecord(recordInputStream);
        }
    }),
    ROW(520, RowRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ndh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RowRecord(recordInputStream);
        }
    }),
    INDEX(StandardNames.XS_G_YEAR, IndexRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ydh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new IndexRecord(recordInputStream);
        }
    }),
    ARRAY(StandardNames.XS_UNSIGNED_BYTE, ArrayRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jeh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ArrayRecord(recordInputStream);
        }
    }),
    DEFAULT_ROW_HEIGHT(IPTC.TAG_EXPIRATION_DATE, DefaultRowHeightRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ueh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DefaultRowHeightRecord(recordInputStream);
        }
    }),
    TABLE(566, TableRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.s8h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TableRecord(recordInputStream);
        }
    }),
    WINDOW_TWO(IPTC.TAG_DIGITAL_CREATION_DATE, WindowTwoRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.o9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new WindowTwoRecord(recordInputStream);
        }
    }),
    RK(638, RKRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.z9h
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new RKRecord(recordInputStream);
        }
    }),
    STYLE(659, StyleRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new StyleRecord(recordInputStream);
        }
    }),
    FORMAT(OnyxStatisticConstant.TRIGGER_FROM_HOME_FUNC_SUB_FOLDER_CREATE, FormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vah
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FormatRecord(recordInputStream);
        }
    }),
    SHARED_FORMULA(1212, SharedFormulaRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.gbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SharedFormulaRecord(recordInputStream);
        }
    }),
    BOF(TTFFont.Platform.Windows.Language.ENGLISH_UNITED_KINGDOM, BOFRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BOFRecord(recordInputStream);
        }
    }),
    CHART_FRT_INFO(2128, ChartFRTInfoRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ibh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartFRTInfoRecord(recordInputStream);
        }
    }),
    CHART_START_BLOCK(2130, ChartStartBlockRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartStartBlockRecord(recordInputStream);
        }
    }),
    CHART_END_BLOCK(2131, ChartEndBlockRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.lbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartEndBlockRecord(recordInputStream);
        }
    }),
    CHART_START_OBJECT(2132, ChartStartObjectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartStartObjectRecord(recordInputStream);
        }
    }),
    CHART_END_OBJECT(2133, ChartEndObjectRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.obh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartEndObjectRecord(recordInputStream);
        }
    }),
    CAT_LAB(2134, CatLabRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CatLabRecord(recordInputStream);
        }
    }),
    FEAT_HDR(UnknownRecord.SHEETPROTECTION_0867, FeatHdrRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FeatHdrRecord(recordInputStream);
        }
    }),
    FEAT(2152, FeatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FeatRecord(recordInputStream);
        }
    }),
    DATA_LABEL_EXTENSION(2154, DataLabelExtensionRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DataLabelExtensionRecord(recordInputStream);
        }
    }, false),
    CF_HEADER_12(2169, CFHeader12Record.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CFHeader12Record(recordInputStream);
        }
    }),
    CF_RULE_12(2170, CFRule12Record.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ubh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CFRule12Record(recordInputStream);
        }
    }),
    TABLE_STYLES(2190, TableStylesRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TableStylesRecord(recordInputStream);
        }
    }),
    NAME_COMMENT(2196, NameCommentRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xbh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new NameCommentRecord(recordInputStream);
        }
    }),
    HEADER_FOOTER(UnknownRecord.HEADER_FOOTER_089C, HeaderFooterRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ybh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new HeaderFooterRecord(recordInputStream);
        }
    }),
    UNITS(4097, UnitsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ach
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new UnitsRecord(recordInputStream);
        }
    }, false),
    CHART(4098, ChartRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartRecord(recordInputStream);
        }
    }),
    SERIES(FragmentTransaction.TRANSIT_FRAGMENT_FADE, SeriesRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesRecord(recordInputStream);
        }
    }),
    DATA_FORMAT(4102, DataFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DataFormatRecord(recordInputStream);
        }
    }),
    LINE_FORMAT(4103, LineFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ech
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LineFormatRecord(recordInputStream);
        }
    }, false),
    AREA_FORMAT(4106, AreaFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AreaFormatRecord(recordInputStream);
        }
    }, false),
    SERIES_LABELS(4108, SeriesLabelsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesLabelsRecord(recordInputStream);
        }
    }, false),
    SERIES_TEXT(4109, SeriesTextRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ich
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesTextRecord(recordInputStream);
        }
    }),
    CHART_FORMAT(4116, ChartFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartFormatRecord(recordInputStream);
        }
    }, false),
    LEGEND(4117, LegendRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LegendRecord(recordInputStream);
        }
    }),
    SERIES_LIST(4118, SeriesListRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesListRecord(recordInputStream);
        }
    }, false),
    BAR(4119, BarRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.nch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BarRecord(recordInputStream);
        }
    }, false),
    AREA(4122, AreaRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.och
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AreaRecord(recordInputStream);
        }
    }),
    AXIS(4125, AxisRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AxisRecord(recordInputStream);
        }
    }, false),
    TICK(4126, TickRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TickRecord(recordInputStream);
        }
    }, false),
    VALUE_RANGE(4127, ValueRangeRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ValueRangeRecord(recordInputStream);
        }
    }),
    CATEGORY_SERIES_AXIS(4128, CategorySeriesAxisRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new CategorySeriesAxisRecord(recordInputStream);
        }
    }, false),
    AXIS_LINE_FORMAT(4129, AxisLineFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.uch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AxisLineFormatRecord(recordInputStream);
        }
    }, false),
    DEFAULT_DATA_LABEL_TEXT_PROPERTIES(4132, DefaultDataLabelTextPropertiesRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DefaultDataLabelTextPropertiesRecord(recordInputStream);
        }
    }, false),
    TEXT(4133, TextRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new TextRecord(recordInputStream);
        }
    }, false),
    FONT_INDEX(4134, FontIndexRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ych
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FontIndexRecord(recordInputStream);
        }
    }, false),
    OBJECT_LINK(4135, ObjectLinkRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zch
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ObjectLinkRecord(recordInputStream);
        }
    }, false),
    FRAME(4146, FrameRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.adh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FrameRecord(recordInputStream);
        }
    }, false),
    BEGIN(4147, BeginRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new BeginRecord(recordInputStream);
        }
    }),
    END(4148, EndRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ddh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new EndRecord(recordInputStream);
        }
    }),
    PLOT_AREA(4149, PlotAreaRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.edh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PlotAreaRecord(recordInputStream);
        }
    }, false),
    AXIS_PARENT(4161, AxisParentRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AxisParentRecord(recordInputStream);
        }
    }, false),
    SHEET_PROPERTIES(4164, SheetPropertiesRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.gdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SheetPropertiesRecord(recordInputStream);
        }
    }, false),
    SERIES_CHART_GROUP_INDEX(4165, SeriesChartGroupIndexRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesChartGroupIndexRecord(recordInputStream);
        }
    }),
    AXIS_USED(4166, AxisUsedRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.idh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AxisUsedRecord(recordInputStream);
        }
    }, false),
    NUMBER_FORMAT_INDEX(4174, NumberFormatIndexRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new NumberFormatIndexRecord(recordInputStream);
        }
    }, false),
    CHART_TITLE_FORMAT(4176, ChartTitleFormatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ldh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new ChartTitleFormatRecord(recordInputStream);
        }
    }),
    LINKED_DATA(4177, LinkedDataRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new LinkedDataRecord(recordInputStream);
        }
    }),
    FONT_BASIS(4192, FontBasisRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.odh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new FontBasisRecord(recordInputStream);
        }
    }, false),
    AXIS_OPTIONS(4194, AxisOptionsRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new AxisOptionsRecord(recordInputStream);
        }
    }, false),
    DAT(4195, DatRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new DatRecord(recordInputStream);
        }
    }, false),
    PLOT_GROWTH(4196, PlotGrowthRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new PlotGrowthRecord(recordInputStream);
        }
    }, false),
    SERIES_INDEX(4197, SeriesIndexRecord.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            return new SeriesIndexRecord(recordInputStream);
        }
    }, false),
    ESCHER_AGGREGATE(9876, EscherAggregate.class, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tdh
        @Override // org.apache.poi.hssf.record.HSSFRecordTypes.RecordConstructor
        public final Record apply(RecordInputStream recordInputStream) {
            Record lambda$static$0;
            lambda$static$0 = HSSFRecordTypes.lambda$static$0(recordInputStream);
            return lambda$static$0;
        }
    });

    private static final Map<Short, HSSFRecordTypes> LOOKUP = (Map) Arrays.stream(values()).collect(Collectors.toMap(new Function() { // from class: com.sunia.HTREnginev2.udh
        @Override // java.util.function.Function
        public final Object apply(Object obj) {
            return Short.valueOf(((HSSFRecordTypes) obj).getSid());
        }
    }, Function.identity()));
    public final Class<? extends Record> clazz;
    public final boolean parse;
    public final RecordConstructor<? extends Record> recordConstructor;
    public final short sid;

    @FunctionalInterface
    /* loaded from: classes12.dex */
    public interface RecordConstructor<T extends Record> {
        T apply(RecordInputStream recordInputStream);
    }

    HSSFRecordTypes(int i, Class cls, RecordConstructor recordConstructor) {
        this(i, cls, recordConstructor, true);
    }

    public static HSSFRecordTypes forSID(int i) {
        return LOOKUP.getOrDefault(Short.valueOf((short) i), UNKNOWN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Record lambda$static$0(RecordInputStream recordInputStream) {
        return new EscherAggregate(true);
    }

    public Class<? extends Record> getClazz() {
        return this.clazz;
    }

    public RecordConstructor<? extends Record> getRecordConstructor() {
        return this.recordConstructor;
    }

    public short getSid() {
        return this.sid;
    }

    public boolean isParseable() {
        return this.parse;
    }

    HSSFRecordTypes(int i, Class cls, RecordConstructor recordConstructor, boolean z) {
        this.sid = (short) i;
        this.clazz = cls;
        this.recordConstructor = recordConstructor;
        this.parse = z;
    }
}
