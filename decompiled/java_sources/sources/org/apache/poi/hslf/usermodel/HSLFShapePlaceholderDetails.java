package org.apache.poi.hslf.usermodel;

import com.google.android.material.motion.MotionUtils;
import java.time.format.DateTimeFormatter;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import net.p110sf.saxon.om.StandardNames;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.model.HeadersFooters;
import org.apache.poi.hslf.record.CString;
import org.apache.poi.hslf.record.DateTimeMCAtom;
import org.apache.poi.hslf.record.EscherTextboxWrapper;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.OEPlaceholderAtom;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.RoundTripHFPlaceholder12;
import org.apache.poi.hslf.record.TextSpecInfoAtom;
import org.apache.poi.hslf.record.TextSpecInfoRun;
import org.apache.poi.hslf.usermodel.HSLFShapePlaceholderDetails;
import org.apache.poi.hslf.util.LocaleDateFormat;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.PlaceholderDetails;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.LocaleID;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class HSLFShapePlaceholderDetails extends HSLFPlaceholderDetails {
    private DateTimeMCAtom localDateTime;
    private OEPlaceholderAtom oePlaceholderAtom;
    private RoundTripHFPlaceholder12 roundTripHFPlaceholder12;
    final HSLFSimpleShape shape;
    private final PlaceholderContainer source;

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFShapePlaceholderDetails$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194641 {

        /* renamed from: $SwitchMap$org$apache$poi$hslf$usermodel$HSLFShapePlaceholderDetails$PlaceholderContainer */
        static final /* synthetic */ int[] f111384xe17f79fc;

        /* renamed from: $SwitchMap$org$apache$poi$sl$usermodel$PlaceholderDetails$PlaceholderSize */
        static final /* synthetic */ int[] f111385xcfbc3540;

        static {
            int[] iArr = new int[PlaceholderDetails.PlaceholderSize.values().length];
            f111385xcfbc3540 = iArr;
            try {
                iArr[PlaceholderDetails.PlaceholderSize.full.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111385xcfbc3540[PlaceholderDetails.PlaceholderSize.half.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111385xcfbc3540[PlaceholderDetails.PlaceholderSize.quarter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[PlaceholderContainer.values().length];
            f111384xe17f79fc = iArr2;
            try {
                iArr2[PlaceholderContainer.slide.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111384xe17f79fc[PlaceholderContainer.master.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111384xe17f79fc[PlaceholderContainer.notes.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111384xe17f79fc[PlaceholderContainer.notesMaster.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public enum PlaceholderContainer {
        slide,
        master,
        notes,
        notesMaster
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    public HSLFShapePlaceholderDetails(HSLFSimpleShape hSLFSimpleShape) {
        super(hSLFSimpleShape.getSheet(), null);
        this.shape = hSLFSimpleShape;
        Sheet<HSLFShape, HSLFTextParagraph> sheet = hSLFSimpleShape.getSheet();
        if (sheet instanceof HSLFSlideMaster) {
            this.source = PlaceholderContainer.master;
            return;
        }
        if (sheet instanceof HSLFNotes) {
            this.source = PlaceholderContainer.notes;
        } else if (sheet instanceof MasterSheet) {
            this.source = PlaceholderContainer.notesMaster;
        } else {
            this.source = PlaceholderContainer.slide;
        }
    }

    private byte getPlaceholderId(Placeholder placeholder) {
        int i = C194641.f111384xe17f79fc[this.source.ordinal()];
        byte b = (byte) (i != 2 ? i != 3 ? i != 4 ? placeholder.nativeSlideId : placeholder.nativeNotesMasterId : placeholder.nativeNotesId : placeholder.nativeSlideMasterId);
        if (b != -2) {
            return b;
        }
        throw new HSLFException("Placeholder " + placeholder.name() + " not supported for this sheet type (" + this.shape.getSheet().getClass() + MotionUtils.f31762d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getDateFormat$0(Record record) {
        return record instanceof TextSpecInfoAtom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TextSpecInfoRun lambda$getDateFormat$1(Record record) {
        return ((TextSpecInfoAtom) record).getTextSpecInfoRuns()[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Optional lambda$getDateFormat$2(Short sh) {
        return Optional.ofNullable(LocaleID.lookupByLcid(sh.shortValue()));
    }

    private void removePlaceholder() {
        HSLFEscherClientDataRecord clientData = this.shape.getClientData(false);
        if (clientData != null) {
            clientData.removeChild(OEPlaceholderAtom.class);
            clientData.removeChild(RoundTripHFPlaceholder12.class);
            if (clientData.getChildRecords().isEmpty()) {
                this.shape.getSpContainer().removeChildRecord(clientData);
            }
        }
        this.oePlaceholderAtom = null;
        this.roundTripHFPlaceholder12 = null;
    }

    private void updatePlaceholderAtom(boolean z) {
        EscherTextboxWrapper escherTextboxWrapper;
        this.localDateTime = null;
        HSLFSimpleShape hSLFSimpleShape = this.shape;
        if ((hSLFSimpleShape instanceof HSLFTextBox) && (escherTextboxWrapper = ((HSLFTextBox) hSLFSimpleShape).getEscherTextboxWrapper()) != null) {
            this.localDateTime = (DateTimeMCAtom) escherTextboxWrapper.findFirstOfType(RecordTypes.DateTimeMCAtom.typeID);
        }
        HSLFEscherClientDataRecord clientData = this.shape.getClientData(z);
        if (clientData == null) {
            this.oePlaceholderAtom = null;
            this.roundTripHFPlaceholder12 = null;
            if (z) {
                throw new HSLFException("Placeholder aren't allowed for shape type: " + this.shape.getClass().getSimpleName());
            }
            return;
        }
        for (Record record : clientData.getHSLFChildRecords()) {
            if (record instanceof OEPlaceholderAtom) {
                this.oePlaceholderAtom = (OEPlaceholderAtom) record;
            } else if (record instanceof RoundTripHFPlaceholder12) {
                this.roundTripHFPlaceholder12 = (RoundTripHFPlaceholder12) record;
            }
        }
        if (z) {
            if (this.oePlaceholderAtom == null) {
                OEPlaceholderAtom oEPlaceholderAtom = new OEPlaceholderAtom();
                this.oePlaceholderAtom = oEPlaceholderAtom;
                oEPlaceholderAtom.setPlaceholderSize((byte) 0);
                this.oePlaceholderAtom.setPlacementId(-1);
                clientData.addChild(this.oePlaceholderAtom);
            }
            if (this.roundTripHFPlaceholder12 == null) {
                RoundTripHFPlaceholder12 roundTripHFPlaceholder12 = new RoundTripHFPlaceholder12();
                this.roundTripHFPlaceholder12 = roundTripHFPlaceholder12;
                clientData.addChild(roundTripHFPlaceholder12);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public DateTimeFormatter getDateFormat() {
        DateTimeMCAtom dateTimeMCAtom = this.localDateTime;
        int index = dateTimeMCAtom != null ? dateTimeMCAtom.getIndex() : this.shape.getSheet().getHeadersFooters().getContainer().getHeadersFootersAtom().getFormatId();
        LocaleID lookupByLanguageTag = LocaleID.lookupByLanguageTag(LocaleUtil.getUserLocale().toLanguageTag());
        Optional flatMap = Stream.of((Object[]) ((HSLFTextShape) this.shape).getTextParagraphs().get(0).getRecords()).filter(new Predicate() { // from class: com.sunia.HTREnginev2.n7h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getDateFormat$0;
                lambda$getDateFormat$0 = HSLFShapePlaceholderDetails.lambda$getDateFormat$0((Record) obj);
                return lambda$getDateFormat$0;
            }
        }).findFirst().map(new Function() { // from class: com.sunia.HTREnginev2.o7h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                TextSpecInfoRun lambda$getDateFormat$1;
                lambda$getDateFormat$1 = HSLFShapePlaceholderDetails.lambda$getDateFormat$1((Record) obj);
                return lambda$getDateFormat$1;
            }
        }).map(new Function() { // from class: com.sunia.HTREnginev2.p7h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Short.valueOf(((TextSpecInfoRun) obj).getLangId());
            }
        }).flatMap(new Function() { // from class: com.sunia.HTREnginev2.q7h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Optional lambda$getDateFormat$2;
                lambda$getDateFormat$2 = HSLFShapePlaceholderDetails.lambda$getDateFormat$2((Short) obj);
                return lambda$getDateFormat$2;
            }
        });
        if (lookupByLanguageTag == null) {
            lookupByLanguageTag = LocaleID.EN_US;
        }
        return LocaleDateFormat.map((LocaleID) flatMap.orElse(lookupByLanguageTag), index, LocaleDateFormat.MapFormatId.PPT);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPlaceholderDetails, org.apache.poi.sl.usermodel.PlaceholderDetails
    public Placeholder getPlaceholder() {
        int placeholderId;
        updatePlaceholderAtom(false);
        OEPlaceholderAtom oEPlaceholderAtom = this.oePlaceholderAtom;
        if (oEPlaceholderAtom != null) {
            placeholderId = oEPlaceholderAtom.getPlaceholderId();
        } else {
            RoundTripHFPlaceholder12 roundTripHFPlaceholder12 = this.roundTripHFPlaceholder12;
            if (roundTripHFPlaceholder12 == null) {
                if (this.localDateTime != null) {
                    return Placeholder.DATETIME;
                }
                return null;
            }
            placeholderId = roundTripHFPlaceholder12.getPlaceholderId();
        }
        int i = C194641.f111384xe17f79fc[this.source.ordinal()];
        return i != 1 ? i != 3 ? i != 4 ? Placeholder.lookupNativeSlideMaster(placeholderId) : Placeholder.lookupNativeNotesMaster(placeholderId) : Placeholder.lookupNativeNotes(placeholderId) : Placeholder.lookupNativeSlide(placeholderId);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPlaceholderDetails, org.apache.poi.sl.usermodel.PlaceholderDetails
    public PlaceholderDetails.PlaceholderSize getSize() {
        if (getPlaceholder() == null) {
            return null;
        }
        OEPlaceholderAtom oEPlaceholderAtom = this.oePlaceholderAtom;
        int placeholderSize = oEPlaceholderAtom != null ? oEPlaceholderAtom.getPlaceholderSize() : 1;
        return placeholderSize != 0 ? placeholderSize != 2 ? PlaceholderDetails.PlaceholderSize.half : PlaceholderDetails.PlaceholderSize.quarter : PlaceholderDetails.PlaceholderSize.full;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [org.apache.poi.hslf.usermodel.HSLFSheet] */
    @Override // org.apache.poi.sl.usermodel.PlaceholderDetails
    public String getUserDate() {
        HeadersFooters headersFooters = this.shape.getSheet().getHeadersFooters();
        CString userDateAtom = headersFooters.getUserDateAtom();
        if (!headersFooters.isUserDateVisible() || userDateAtom == null) {
            return null;
        }
        return userDateAtom.getText();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPlaceholderDetails, org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setPlaceholder(Placeholder placeholder) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) this.shape.getEscherChild(EscherSpRecord.RECORD_ID);
        int flags = escherSpRecord.getFlags();
        escherSpRecord.setFlags(placeholder == null ? flags ^ 32 : flags | StandardNames.XS_UNSIGNED_SHORT);
        this.shape.setEscherProperty(EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, placeholder == null ? -1 : 262144);
        if (placeholder == null) {
            removePlaceholder();
            return;
        }
        updatePlaceholderAtom(true);
        byte placeholderId = getPlaceholderId(placeholder);
        this.oePlaceholderAtom.setPlaceholderId(placeholderId);
        this.roundTripHFPlaceholder12.setPlaceholderId(placeholderId);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPlaceholderDetails, org.apache.poi.sl.usermodel.PlaceholderDetails
    public void setSize(PlaceholderDetails.PlaceholderSize placeholderSize) {
        if (getPlaceholder() == null || placeholderSize == null) {
            return;
        }
        byte b = 1;
        updatePlaceholderAtom(true);
        int i = C194641.f111385xcfbc3540[placeholderSize.ordinal()];
        if (i == 1) {
            b = 0;
        } else if (i == 3) {
            b = 2;
        }
        this.oePlaceholderAtom.setPlaceholderSize(b);
    }
}
