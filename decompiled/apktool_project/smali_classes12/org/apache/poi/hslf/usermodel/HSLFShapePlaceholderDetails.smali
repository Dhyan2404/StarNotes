.class public Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;
.super Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;
    }
.end annotation


# instance fields
.field private localDateTime:Lorg/apache/poi/hslf/record/DateTimeMCAtom;

.field private oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

.field private roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

.field final shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

.field private final source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFPlaceholderDetails;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSheet;Lorg/apache/poi/sl/usermodel/Placeholder;)V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->master:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hslf/usermodel/HSLFNotes;

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->notes:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lorg/apache/poi/sl/usermodel/MasterSheet;

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->notesMaster:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->slide:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/Short;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->lambda$getDateFormat$2(Ljava/lang/Short;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hslf/record/Record;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->lambda$getDateFormat$0(Lorg/apache/poi/hslf/record/Record;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/TextSpecInfoRun;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->lambda$getDateFormat$1(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    move-result-object p0

    return-object p0
.end method

.method private getPlaceholderId(Lorg/apache/poi/sl/usermodel/Placeholder;)B
    .locals 3

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFShapePlaceholderDetails$PlaceholderContainer:[I

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideId:I

    :goto_0
    int-to-byte v0, v0

    goto :goto_1

    :cond_0
    iget v0, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesMasterId:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeNotesId:I

    goto :goto_0

    :cond_2
    iget v0, p1, Lorg/apache/poi/sl/usermodel/Placeholder;->nativeSlideMasterId:I

    goto :goto_0

    :goto_1
    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    return v0

    :cond_3
    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placeholder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported for this sheet type ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$getDateFormat$0(Lorg/apache/poi/hslf/record/Record;)Z
    .locals 0

    instance-of p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;

    return p0
.end method

.method private static synthetic lambda$getDateFormat$1(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/TextSpecInfoRun;
    .locals 1

    check-cast p0, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->getTextSpecInfoRuns()[Lorg/apache/poi/hslf/record/TextSpecInfoRun;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$getDateFormat$2(Ljava/lang/Short;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/LocaleID;->lookupByLcid(I)Lorg/apache/poi/util/LocaleID;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private removePlaceholder()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->removeChild(Ljava/lang/Class;)V

    const-class v1, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->removeChild(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->removeChildRecord(Lorg/apache/poi/ddf/EscherRecord;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    return-void
.end method

.method private updatePlaceholderAtom(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->localDateTime:Lorg/apache/poi/hslf/record/DateTimeMCAtom;

    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    instance-of v2, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextBox;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getEscherTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->DateTimeMCAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/DateTimeMCAtom;

    iput-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->localDateTime:Lorg/apache/poi/hslf/record/DateTimeMCAtom;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placeholder aren\'t allowed for shape type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getHSLFChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/record/Record;

    instance-of v3, v2, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    iput-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    if-nez p1, :cond_7

    new-instance p1, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->setPlaceholderSize(B)V

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->setPlacementId(I)V

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    :cond_7
    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    if-nez p1, :cond_8

    new-instance p1, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    invoke-direct {p1}, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->addChild(Lorg/apache/poi/hslf/record/Record;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/time/format/DateTimeFormatter;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->localDateTime:Lorg/apache/poi/hslf/record/DateTimeMCAtom;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/DateTimeMCAtom;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getContainer()Lorg/apache/poi/hslf/record/HeadersFootersContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersContainer;->getHeadersFootersAtom()Lorg/apache/poi/hslf/record/HeadersFootersAtom;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/HeadersFootersAtom;->getFormatId()I

    move-result v0

    :goto_0
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/LocaleID;->lookupByLanguageTag(Ljava/lang/String;)Lorg/apache/poi/util/LocaleID;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextShape;->getTextParagraphs()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/n7h;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/n7h;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/o7h;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/o7h;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/p7h;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/p7h;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sunia/HTREnginev2/q7h;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/q7h;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/util/LocaleID;->EN_US:Lorg/apache/poi/util/LocaleID;

    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/util/LocaleID;

    sget-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;->PPT:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/util/LocaleDateFormat;->map(Lorg/apache/poi/util/LocaleID;ILorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatId;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->updatePlaceholderAtom(Z)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->getPlaceholderId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->getPlaceholderId()I

    move-result v0

    :goto_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$1;->$SwitchMap$org$apache$poi$hslf$usermodel$HSLFShapePlaceholderDetails$PlaceholderContainer:[I

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->source:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNativeSlideMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNativeNotesMaster(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNativeNotes(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lorg/apache/poi/sl/usermodel/Placeholder;->lookupNativeSlide(I)Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->localDateTime:Lorg/apache/poi/hslf/record/DateTimeMCAtom;

    if-eqz p0, :cond_5

    sget-object p0, Lorg/apache/poi/sl/usermodel/Placeholder;->DATETIME:Lorg/apache/poi/sl/usermodel/Placeholder;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSize()Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->getPlaceholderSize()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->half:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->quarter:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;->full:Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;

    return-object p0
.end method

.method public getUserDate()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getHeadersFooters()Lorg/apache/poi/hslf/model/HeadersFooters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->getUserDateAtom()Lorg/apache/poi/hslf/record/CString;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HeadersFooters;->isUserDateVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/CString;->getText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    sget-short v1, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v1

    if-nez p1, :cond_0

    xor-int/lit8 v1, v1, 0x20

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v1, 0x220

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->shape:Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->PROTECTION__LOCKAGAINSTGROUPING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40000

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->removePlaceholder()V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->updatePlaceholderAtom(Z)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->getPlaceholderId(Lorg/apache/poi/sl/usermodel/Placeholder;)B

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->setPlaceholderId(B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->roundTripHFPlaceholder12:Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/RoundTripHFPlaceholder12;->setPlaceholderId(I)V

    return-void
.end method

.method public setSize(Lorg/apache/poi/sl/usermodel/PlaceholderDetails$PlaceholderSize;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->updatePlaceholderAtom(Z)V

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$1;->$SwitchMap$org$apache$poi$sl$usermodel$PlaceholderDetails$PlaceholderSize:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->oePlaceholderAtom:Lorg/apache/poi/hslf/record/OEPlaceholderAtom;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/OEPlaceholderAtom;->setPlaceholderSize(B)V

    :cond_3
    :goto_1
    return-void
.end method
