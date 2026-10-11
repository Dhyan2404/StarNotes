.class public Lorg/apache/poi/hslf/record/TextSpecInfoRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;
    }
.end annotation


# static fields
.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final altLangFld:Lorg/apache/poi/util/BitField;

.field private static final bidiFld:Lorg/apache/poi/util/BitField;

.field private static final grammarErrorFld:Lorg/apache/poi/util/BitField;

.field private static final langFld:Lorg/apache/poi/util/BitField;

.field private static final pp10extFld:Lorg/apache/poi/util/BitField;

.field private static final pp10runidFld:Lorg/apache/poi/util/BitField;

.field private static final smartTagFld:Lorg/apache/poi/util/BitField;

.field private static final spellFld:Lorg/apache/poi/util/BitField;


# instance fields
.field private altLangId:S

.field private bidi:S

.field private langId:S

.field private length:I

.field private mask:I

.field private pp10extMask:I

.field private smartTagsBytes:[B

.field private spellInfo:S


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellFld:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langFld:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangFld:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidiFld:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagFld:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10runidFld:Lorg/apache/poi/util/BitField;

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->grammarErrorFld:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->FLAGS_MASKS:[I

    const-string v1, "SPELL"

    const-string v2, "LANG"

    const-string v3, "ALT_LANG"

    const-string v4, "PP10_EXT"

    const-string v5, "BIDI"

    const-string v6, "SMART_TAG"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->FLAGS_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x20
        0x40
        0x200
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    .line 3
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    .line 4
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    .line 5
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    .line 6
    iput v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->setLength(I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->setLangId(S)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    .line 11
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    .line 12
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    .line 13
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    .line 14
    iput v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->length:I

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    .line 17
    sget-object v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellFld:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    .line 19
    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    .line 21
    :cond_1
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    .line 23
    :cond_2
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidiFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    .line 25
    :cond_3
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    .line 27
    :cond_4
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readInt()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    add-long/2addr v1, v3

    .line 29
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagsBytes:[B

    const/4 v2, 0x0

    .line 30
    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 31
    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagsBytes:[B

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    invoke-virtual {p1, p0, v1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readFully([BII)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->lambda$getGenericProperties$0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAltLangId()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    return p0
.end method

.method public getBidi()Ljava/lang/Boolean;
    .locals 1

    iget-short p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/ifn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ifn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    sget-object v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->FLAGS_MASKS:[I

    sget-object v3, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "spellInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "langId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "altLangId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "bidi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "pp10RunId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ofn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ofn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string v2, "grammarError"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pfn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pfn;-><init>(Lorg/apache/poi/hslf/record/TextSpecInfoRun;)V

    const-string p0, "smartTags"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getGrammarError()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->grammarErrorFld:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getGrammarError(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->getPP10RunId()I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->grammarErrorFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    goto :goto_1

    .line 3
    :cond_1
    sget-object p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->grammarErrorFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    .line 4
    :goto_1
    sget-object p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    iget v2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public getLangId()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->length:I

    return p0
.end method

.method public getPP10RunId()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10runidFld:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getSmartTagsBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagsBytes:[B

    return-object p0
.end method

.method public getSpellInfo()Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;
    .locals 5

    iget-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->clean:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    sget-object v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->error:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    sget-object v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->grammar:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    iget-object v3, v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->bitField:Lorg/apache/poi/util/BitField;

    iget-short v4, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->correct:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    return-object p0
.end method

.method public setAltLangId(S)V
    .locals 3

    iput-short p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public setBidi(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-short v0, v0

    :goto_0
    iput-short v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidiFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public setLangId(S)V
    .locals 3

    iput-short p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->length:I

    return-void
.end method

.method public setPP10RunId(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->getGrammarError()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10runidFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10runidFld:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    :goto_1
    sget-object p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    iget v2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public setSmartTagsBytes([B)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagsBytes:[B

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagFld:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public setSpellInfo(Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->bitField:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v1

    int-to-short v1, v1

    :goto_0
    iput-short v1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    sget-object v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellFld:Lorg/apache/poi/util/BitField;

    iget v2, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-static {v2, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v5, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellFld:Lorg/apache/poi/util/BitField;

    iget-short v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->spellInfo:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const-string v7, "spell info"

    sget-object v8, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langFld:Lorg/apache/poi/util/BitField;

    iget-short v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->langId:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    const-string v10, "lang id"

    sget-object v11, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangFld:Lorg/apache/poi/util/BitField;

    iget-short v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->altLangId:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    const-string v13, "alt lang id"

    sget-object v14, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidiFld:Lorg/apache/poi/util/BitField;

    iget-short v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->bidi:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    const-string v16, "bidi"

    sget-object v17, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extFld:Lorg/apache/poi/util/BitField;

    iget v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->pp10extMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const-string v19, "pp10 extension field"

    sget-object v20, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagFld:Lorg/apache/poi/util/BitField;

    iget-object v3, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->smartTagsBytes:[B

    move-object/from16 v21, v3

    const-string v22, "smart tags"

    filled-new-array/range {v5 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    move v5, v4

    :goto_0
    const/16 v6, 0x11

    if-ge v5, v6, :cond_9

    add-int/lit8 v6, v5, 0x0

    aget-object v6, v3, v6

    check-cast v6, Lorg/apache/poi/util/BitField;

    add-int/lit8 v7, v5, 0x1

    aget-object v7, v3, v7

    iget v8, v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun;->mask:I

    invoke-virtual {v6, v8}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_6

    :cond_0
    instance-of v6, v7, [B

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    check-cast v7, [B

    array-length v6, v7

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :cond_2
    instance-of v6, v7, Ljava/lang/Integer;

    const/4 v10, -0x1

    if-eqz v6, :cond_4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v10, :cond_3

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    invoke-static {v2, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    :cond_4
    instance-of v6, v7, Ljava/lang/Short;

    if-eqz v6, :cond_6

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v6

    if-eq v6, v10, :cond_5

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    invoke-static {v2, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {v1, v2, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_6
    move v9, v4

    :goto_4
    if-nez v9, :cond_8

    add-int/2addr v5, v8

    const/16 v0, 0x12

    if-ge v5, v0, :cond_7

    aget-object v0, v3, v5

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is activated, but its value is invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    :cond_9
    return-void
.end method
