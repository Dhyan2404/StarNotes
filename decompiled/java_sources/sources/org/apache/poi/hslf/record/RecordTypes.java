package org.apache.poi.hslf.record;

import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.filepicker.PickerFileConst;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackgroundType;
import com.sun.org.apache.xpath.internal.compiler.OpCodes;
import com.sunia.authlib.managers.AuthorizeManager;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.hslf.record.AnimationInfo;
import org.apache.poi.hslf.record.AnimationInfoAtom;
import org.apache.poi.hslf.record.BinaryTagDataBlob;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.ColorSchemeAtom;
import org.apache.poi.hslf.record.Comment2000;
import org.apache.poi.hslf.record.Comment2000Atom;
import org.apache.poi.hslf.record.DateTimeMCAtom;
import org.apache.poi.hslf.record.DocInfoListContainer;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.DocumentAtom;
import org.apache.poi.hslf.record.DocumentEncryptionAtom;
import org.apache.poi.hslf.record.DummyPositionSensitiveRecordWithChildren;
import org.apache.poi.hslf.record.Environment;
import org.apache.poi.hslf.record.ExAviMovie;
import org.apache.poi.hslf.record.ExControl;
import org.apache.poi.hslf.record.ExControlAtom;
import org.apache.poi.hslf.record.ExEmbed;
import org.apache.poi.hslf.record.ExEmbedAtom;
import org.apache.poi.hslf.record.ExHyperlink;
import org.apache.poi.hslf.record.ExHyperlinkAtom;
import org.apache.poi.hslf.record.ExMCIMovie;
import org.apache.poi.hslf.record.ExMediaAtom;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.ExObjListAtom;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.hslf.record.ExOleObjAtom;
import org.apache.poi.hslf.record.ExOleObjStg;
import org.apache.poi.hslf.record.ExVideoContainer;
import org.apache.poi.hslf.record.FontCollection;
import org.apache.poi.hslf.record.FontEmbeddedData;
import org.apache.poi.hslf.record.FontEntityAtom;
import org.apache.poi.hslf.record.HeadersFootersAtom;
import org.apache.poi.hslf.record.HeadersFootersContainer;
import org.apache.poi.hslf.record.InteractiveInfo;
import org.apache.poi.hslf.record.InteractiveInfoAtom;
import org.apache.poi.hslf.record.MainMaster;
import org.apache.poi.hslf.record.MasterTextPropAtom;
import org.apache.poi.hslf.record.Notes;
import org.apache.poi.hslf.record.NotesAtom;
import org.apache.poi.hslf.record.OEPlaceholderAtom;
import org.apache.poi.hslf.record.OutlineTextRefAtom;
import org.apache.poi.hslf.record.PPDrawing;
import org.apache.poi.hslf.record.PPDrawingGroup;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RoundTripHFPlaceholder12;
import org.apache.poi.hslf.record.SSSlideInfoAtom;
import org.apache.poi.hslf.record.Slide;
import org.apache.poi.hslf.record.SlideAtom;
import org.apache.poi.hslf.record.SlideListWithText;
import org.apache.poi.hslf.record.SlidePersistAtom;
import org.apache.poi.hslf.record.Sound;
import org.apache.poi.hslf.record.SoundCollection;
import org.apache.poi.hslf.record.SoundData;
import org.apache.poi.hslf.record.StyleTextProp9Atom;
import org.apache.poi.hslf.record.StyleTextPropAtom;
import org.apache.poi.hslf.record.TextBytesAtom;
import org.apache.poi.hslf.record.TextCharsAtom;
import org.apache.poi.hslf.record.TextHeaderAtom;
import org.apache.poi.hslf.record.TextRulerAtom;
import org.apache.poi.hslf.record.TextSpecInfoAtom;
import org.apache.poi.hslf.record.TxInteractiveInfoAtom;
import org.apache.poi.hslf.record.TxMasterStyleAtom;
import org.apache.poi.hslf.record.UnknownRecordPlaceholder;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.hslf.record.VBAInfoAtom;
import org.apache.poi.hslf.record.VBAInfoContainer;

/* loaded from: classes12.dex */
public enum RecordTypes {
    Unknown(0, null),
    UnknownRecordPlaceholder(-1, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new UnknownRecordPlaceholder(bArr, i, i2);
        }
    }),
    Document(1000, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Document(bArr, i, i2);
        }
    }),
    DocumentAtom(1001, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DocumentAtom(bArr, i, i2);
        }
    }),
    EndDocument(1002, null),
    Slide(1006, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Slide(bArr, i, i2);
        }
    }),
    SlideAtom(1007, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SlideAtom(bArr, i, i2);
        }
    }),
    Notes(1008, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Notes(bArr, i, i2);
        }
    }),
    NotesAtom(1009, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ahl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new NotesAtom(bArr, i, i2);
        }
    }),
    Environment(1010, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bhl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Environment(bArr, i, i2);
        }
    }),
    SlidePersistAtom(1011, new RecordConstructor() { // from class: com.sunia.HTREnginev2.chl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SlidePersistAtom(bArr, i, i2);
        }
    }),
    SSlideLayoutAtom(1015, null),
    MainMaster(1016, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dhl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new MainMaster(bArr, i, i2);
        }
    }),
    SSSlideInfoAtom(1017, new RecordConstructor() { // from class: com.sunia.HTREnginev2.efl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SSSlideInfoAtom(bArr, i, i2);
        }
    }),
    SlideViewInfo(1018, null),
    GuideAtom(1019, null),
    ViewInfo(1020, null),
    ViewInfoAtom(1021, null),
    SlideViewInfoAtom(1022, null),
    VBAInfo(1023, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new VBAInfoContainer(bArr, i, i2);
        }
    }),
    VBAInfoAtom(1024, new RecordConstructor() { // from class: com.sunia.HTREnginev2.agl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new VBAInfoAtom(bArr, i, i2);
        }
    }),
    SSDocInfoAtom(1025, null),
    Summary(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, null),
    DocRoutingSlip(1030, null),
    OutlineViewInfo(OpCodes.NODETYPE_TEXT, null),
    SorterViewInfo(OpCodes.NODETYPE_PI, null),
    ExObjList(1033, new RecordConstructor() { // from class: com.sunia.HTREnginev2.lgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExObjList(bArr, i, i2);
        }
    }),
    ExObjListAtom(OpCodes.NODETYPE_FUNCTEST, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExObjListAtom(bArr, i, i2);
        }
    }),
    PPDrawingGroup(1035, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ehl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new PPDrawingGroup(bArr, i, i2);
        }
    }),
    PPDrawing(1036, new RecordConstructor() { // from class: com.sunia.HTREnginev2.fhl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new PPDrawing(bArr, i, i2);
        }
    }),
    NamedShows(1040, null),
    NamedShow(1041, null),
    NamedShowSlides(1042, null),
    SheetProperties(1044, null),
    OriginalMainMasterId(1052, null),
    CompositeMasterId(1052, null),
    RoundTripContentMasterInfo12(OnyxStatisticConstant.TRIGGER_FROM_HOME_FUNC_SUB_FOLDER_CREATE, null),
    RoundTripShapeId12(OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_HEADER_CREATE, null),
    RoundTripHFPlaceholder12(OnyxStatisticConstant.TRIGGER_FROM_HOME_FUNC_FOLDER_MOVE_CREATE, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ghl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new RoundTripHFPlaceholder12(bArr, i, i2);
        }
    }),
    RoundTripContentMasterId(OnyxStatisticConstant.TRIGGER_FROM_HOME_FUNC_FOLDER_MOVE_MANGE_CREATE, null),
    RoundTripOArtTextStyles12(OnyxStatisticConstant.TRIGGER_FROM_HOME_LIST_ITEM_MOVE_MANGE_CREATE, null),
    RoundTripShapeCheckSumForCustomLayouts12(1062, null),
    RoundTripNotesMasterTextStyles12(1063, null),
    RoundTripCustomTableStyles12(1064, null),
    List(2000, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hhl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DocInfoListContainer(bArr, i, i2);
        }
    }),
    FontCollection(2005, new RecordConstructor() { // from class: com.sunia.HTREnginev2.uel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new FontCollection(bArr, i, i2);
        }
    }),
    BookmarkCollection(2019, null),
    SoundCollection(2020, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SoundCollection(bArr, i, i2);
        }
    }),
    SoundCollAtom(PickerFileConst.PICKER_FILE_INSERT_PAGE_CODE, null),
    Sound(2022, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Sound(bArr, i, i2);
        }
    }),
    SoundData(2023, new RecordConstructor() { // from class: com.sunia.HTREnginev2.yel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SoundData(bArr, i, i2);
        }
    }),
    BookmarkSeedAtom(2025, null),
    ColorSchemeAtom(2032, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zel
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ColorSchemeAtom(bArr, i, i2);
        }
    }),
    ExObjRefAtom(3009, new RecordConstructor() { // from class: com.sunia.HTREnginev2.afl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExObjRefAtom(bArr, i, i2);
        }
    }),
    OEPlaceholderAtom(OnyxStatisticConstant.TRIGGER_FROM_EDIT_NOTE_TOOL_BAR_QUICK_PHOTO_LIST_ITEM, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new OEPlaceholderAtom(bArr, i, i2);
        }
    }),
    GPopublicintAtom(3024, null),
    GRatioAtom(3031, null),
    OutlineTextRefAtom(3998, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new OutlineTextRefAtom(bArr, i, i2);
        }
    }),
    TextHeaderAtom(3999, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TextHeaderAtom(bArr, i, i2);
        }
    }),
    TextCharsAtom(4000, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ffl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TextCharsAtom(bArr, i, i2);
        }
    }),
    StyleTextPropAtom(4001, new RecordConstructor() { // from class: com.sunia.HTREnginev2.gfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new StyleTextPropAtom(bArr, i, i2);
        }
    }),
    MasterTextPropAtom(4002, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ifl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new MasterTextPropAtom(bArr, i, i2);
        }
    }),
    TxMasterStyleAtom(4003, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TxMasterStyleAtom(bArr, i, i2);
        }
    }),
    TxCFStyleAtom(4004, null),
    TxPFStyleAtom(4005, null),
    TextRulerAtom(NoteBackgroundType.HORIZONTAL_LINE_26, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TextRulerAtom(bArr, i, i2);
        }
    }),
    TextBookmarkAtom(NoteBackgroundType.HORIZONTAL_LINE_32, null),
    TextBytesAtom(NoteBackgroundType.MONTHLY_PLAN, new RecordConstructor() { // from class: com.sunia.HTREnginev2.lfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TextBytesAtom(bArr, i, i2);
        }
    }),
    TxSIStyleAtom(4009, null),
    TextSpecInfoAtom(AuthorizeManager.GET_DEVICEID_ERROR, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TextSpecInfoAtom(bArr, i, i2);
        }
    }),
    DefaultRulerAtom(AuthorizeManager.GET_MAC_ERROR, null),
    StyleTextProp9Atom(4012, new RecordConstructor() { // from class: com.sunia.HTREnginev2.nfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new StyleTextProp9Atom(bArr, i, i2);
        }
    }),
    FontEntityAtom(4023, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ofl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new FontEntityAtom(bArr, i, i2);
        }
    }),
    FontEmbeddedData(4024, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new FontEmbeddedData(bArr, i, i2);
        }
    }),
    CString(4026, new RecordConstructor() { // from class: com.sunia.HTREnginev2.rfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new CString(bArr, i, i2);
        }
    }),
    MetaFile(4033, null),
    ExOleObjAtom(4035, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExOleObjAtom(bArr, i, i2);
        }
    }),
    SrKinsoku(4040, null),
    HandOut(4041, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ufl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DummyPositionSensitiveRecordWithChildren(bArr, i, i2);
        }
    }),
    ExEmbed(4044, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExEmbed(bArr, i, i2);
        }
    }),
    ExEmbedAtom(4045, new RecordConstructor() { // from class: com.sunia.HTREnginev2.wfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExEmbedAtom(bArr, i, i2);
        }
    }),
    ExLink(4046, null),
    BookmarkEntityAtom(4048, null),
    ExLinkAtom(4049, null),
    SrKinsokuAtom(4050, null),
    ExHyperlinkAtom(4051, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExHyperlinkAtom(bArr, i, i2);
        }
    }),
    ExHyperlink(4055, new RecordConstructor() { // from class: com.sunia.HTREnginev2.yfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExHyperlink(bArr, i, i2);
        }
    }),
    SlideNumberMCAtom(4056, null),
    HeadersFooters(4057, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zfl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new HeadersFootersContainer(bArr, i, i2);
        }
    }),
    HeadersFootersAtom(4058, new RecordConstructor() { // from class: com.sunia.HTREnginev2.bgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new HeadersFootersAtom(bArr, i, i2);
        }
    }),
    TxInteractiveInfoAtom(4063, new RecordConstructor() { // from class: com.sunia.HTREnginev2.cgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new TxInteractiveInfoAtom(bArr, i, i2);
        }
    }),
    CharFormatAtom(4066, null),
    ParaFormatAtom(4067, null),
    RecolorInfoAtom(4071, null),
    ExQuickTimeMovie(4074, null),
    ExQuickTimeMovieData(4075, null),
    ExControl(4078, new RecordConstructor() { // from class: com.sunia.HTREnginev2.dgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExControl(bArr, i, i2);
        }
    }),
    SlideListWithText(4080, new RecordConstructor() { // from class: com.sunia.HTREnginev2.egl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new SlideListWithText(bArr, i, i2);
        }
    }),
    InteractiveInfo(4082, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ggl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new InteractiveInfo(bArr, i, i2);
        }
    }),
    InteractiveInfoAtom(4083, new RecordConstructor() { // from class: com.sunia.HTREnginev2.hgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new InteractiveInfoAtom(bArr, i, i2);
        }
    }),
    UserEditAtom(4085, new RecordConstructor() { // from class: com.sunia.HTREnginev2.igl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new UserEditAtom(bArr, i, i2);
        }
    }),
    CurrentUserAtom(4086, null),
    DateTimeMCAtom(4087, new RecordConstructor() { // from class: com.sunia.HTREnginev2.jgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DateTimeMCAtom(bArr, i, i2);
        }
    }),
    GenericDateMCAtom(4088, null),
    FooterMCAtom(4090, null),
    ExControlAtom(4091, new RecordConstructor() { // from class: com.sunia.HTREnginev2.kgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExControlAtom(bArr, i, i2);
        }
    }),
    ExMediaAtom(4100, new RecordConstructor() { // from class: com.sunia.HTREnginev2.mgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExMediaAtom(bArr, i, i2);
        }
    }),
    ExVideoContainer(4101, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ngl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExVideoContainer(bArr, i, i2);
        }
    }),
    ExAviMovie(4102, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ogl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExAviMovie(bArr, i, i2);
        }
    }),
    ExMCIMovie(4103, new RecordConstructor() { // from class: com.sunia.HTREnginev2.pgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExMCIMovie(bArr, i, i2);
        }
    }),
    ExMIDIAudio(4109, null),
    ExCDAudio(4110, null),
    ExWAVAudioEmbedded(4111, null),
    ExWAVAudioLink(4112, null),
    ExOleObjStg(4113, new RecordConstructor() { // from class: com.sunia.HTREnginev2.qgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new ExOleObjStg(bArr, i, i2);
        }
    }),
    ExCDAudioAtom(4114, null),
    ExWAVAudioEmbeddedAtom(4115, null),
    AnimationInfo(4116, new RecordConstructor() { // from class: com.sunia.HTREnginev2.sgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new AnimationInfo(bArr, i, i2);
        }
    }),
    AnimationInfoAtom(4081, new RecordConstructor() { // from class: com.sunia.HTREnginev2.tgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new AnimationInfoAtom(bArr, i, i2);
        }
    }),
    RTFDateTimeMCAtom(4117, null),
    ProgTags(5000, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ufl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DummyPositionSensitiveRecordWithChildren(bArr, i, i2);
        }
    }),
    ProgStringTag(5001, null),
    ProgBinaryTag(5002, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ufl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DummyPositionSensitiveRecordWithChildren(bArr, i, i2);
        }
    }),
    BinaryTagData(5003, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ugl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new BinaryTagDataBlob(bArr, i, i2);
        }
    }),
    PrpublicintOptions(6000, null),
    PersistPtrFullBlock(6001, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new PersistPtrHolder(bArr, i, i2);
        }
    }),
    PersistPtrIncrementalBlock(6002, new RecordConstructor() { // from class: com.sunia.HTREnginev2.vgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new PersistPtrHolder(bArr, i, i2);
        }
    }),
    GScalingAtom(10001, null),
    GRColorAtom(10002, null),
    Comment2000(CharsToNameCanonicalizer.f21320b, new RecordConstructor() { // from class: com.sunia.HTREnginev2.xgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Comment2000(bArr, i, i2);
        }
    }),
    Comment2000Atom(12001, new RecordConstructor() { // from class: com.sunia.HTREnginev2.ygl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new Comment2000Atom(bArr, i, i2);
        }
    }),
    Comment2000Summary(12004, null),
    Comment2000SummaryAtom(12005, null),
    DocumentEncryptionAtom(12052, new RecordConstructor() { // from class: com.sunia.HTREnginev2.zgl
        @Override // org.apache.poi.hslf.record.RecordTypes.RecordConstructor
        public final Record apply(byte[] bArr, int i, int i2) {
            return new DocumentEncryptionAtom(bArr, i, i2);
        }
    });

    private static final Map<Short, RecordTypes> LOOKUP = new HashMap();
    public final RecordConstructor<?> recordConstructor;
    public final short typeID;

    @FunctionalInterface
    /* loaded from: classes12.dex */
    public interface RecordConstructor<T extends Record> {
        T apply(byte[] bArr, int i, int i2);
    }

    static {
        for (RecordTypes recordTypes : values()) {
            LOOKUP.put(Short.valueOf(recordTypes.typeID), recordTypes);
        }
    }

    RecordTypes(int i, RecordConstructor recordConstructor) {
        this.typeID = (short) i;
        this.recordConstructor = recordConstructor;
    }

    public static RecordTypes forTypeID(int i) {
        RecordTypes recordTypes = LOOKUP.get(Short.valueOf((short) i));
        return recordTypes != null ? recordTypes : UnknownRecordPlaceholder;
    }
}
