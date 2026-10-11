.class public final Lorg/apache/poi/hslf/record/UserEditAtom;
.super Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;
.source "SourceFile"


# static fields
.field public static final LAST_VIEW_NONE:I = 0x0

.field public static final LAST_VIEW_NOTES:I = 0x3

.field public static final LAST_VIEW_OUTLINE_VIEW:I = 0x2

.field public static final LAST_VIEW_SLIDE_VIEW:I = 0x1

.field private static final _type:J


# instance fields
.field private _header:[B

.field private docPersistRef:I

.field private encryptSessionPersistIdRef:I

.field private lastUserEditAtomOffset:I

.field private lastViewType:S

.field private lastViewedSlideID:I

.field private maxPersistWritten:I

.field private persistPointersOffset:I

.field private pptVersion:I

.field private unused:S


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->UserEditAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/UserEditAtom;->_type:J

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/PositionDependentRecordAtom;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->encryptSessionPersistIdRef:I

    const/16 v0, 0x22

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->_header:[B

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewedSlideID:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->pptVersion:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->docPersistRef:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->maxPersistWritten:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewType:S

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->unused:S

    add-int/lit8 v0, v0, 0x2

    sub-int v1, v0, p2

    if-ge v1, p3, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->encryptSessionPersistIdRef:I

    add-int/lit8 v0, v0, 0x4

    :cond_1
    sub-int p0, v0, p2

    if-ne p0, p3, :cond_2

    return-void

    :cond_2
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Having invalid data in UserEditAtom: len: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", offset: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", start: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/UserEditAtom;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/UserEditAtom;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->pptVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDocPersistRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->docPersistRef:I

    return p0
.end method

.method public getEncryptSessionPersistIdRef()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->encryptSessionPersistIdRef:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
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

    new-instance v1, Lcom/sunia/HTREnginev2/nyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "lastViewedSlideID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/oyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "pptVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "lastUserEditAtomOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "persistPointersOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ryn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ryn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "docPersistRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/syn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/syn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "maxPersistWritten"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string v2, "lastViewType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uyn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uyn;-><init>(Lorg/apache/poi/hslf/record/UserEditAtom;)V

    const-string p0, "encryptSessionPersistIdRef"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserEditAtomOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    return p0
.end method

.method public getLastViewType()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewType:S

    return p0
.end method

.method public getLastViewedSlideID()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewedSlideID:I

    return p0
.end method

.method public getMaxPersistWritten()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->maxPersistWritten:I

    return p0
.end method

.method public getPersistPointersOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/UserEditAtom;->_type:J

    return-wide v0
.end method

.method public setEncryptSessionPersistIdRef(I)V
    .locals 1

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->encryptSessionPersistIdRef:I

    iget-object p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->_header:[B

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1c

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setLastUserEditAtomOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    return-void
.end method

.method public setLastViewType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewType:S

    return-void
.end method

.method public setMaxPersistWritten(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->maxPersistWritten:I

    return-void
.end method

.method public setPersistPointersOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    return-void
.end method

.method public updateOtherRecordReferences(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find the new location of the UserEditAtom that used to be at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find the new location of the PersistPtr that used to be at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewedSlideID:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->pptVersion:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastUserEditAtomOffset:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->persistPointersOffset:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->docPersistRef:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->maxPersistWritten:I

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->lastViewType:S

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget-short v0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->unused:S

    invoke-static {v0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(SLjava/io/OutputStream;)V

    iget p0, p0, Lorg/apache/poi/hslf/record/UserEditAtom;->encryptSessionPersistIdRef:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    :cond_0
    return-void
.end method
