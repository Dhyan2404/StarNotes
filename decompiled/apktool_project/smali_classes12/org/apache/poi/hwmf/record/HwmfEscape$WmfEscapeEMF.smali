.class public Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfEscape$HwmfEscapeData;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfEscape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfEscapeEMF"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMF_COMMENT_IDENTIFIER:I = 0x43464d57


# instance fields
.field checksum:I

.field commentIdentifier:I

.field commentRecordCount:I

.field commentType:I

.field currentRecordSize:I

.field emfData:[B

.field emfRecordSize:I

.field flags:I

.field remainingBytes:I

.field version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentIdentifier:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->checksum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->flags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCommentRecordCount()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentRecordCount:I

    return p0
.end method

.method public getCurrentRecordSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->currentRecordSize:I

    return p0
.end method

.method public getEmfData()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->emfData:[B

    return-object p0
.end method

.method public getEmfRecordSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->emfRecordSize:I

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

    new-instance v1, Lcom/sunia/HTREnginev2/x2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "commentIdentifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/y2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "commentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/z2i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z2i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/a3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "checksum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/b3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/c3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "commentRecordCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/d3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "currentRecordSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/e3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "remainingBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/f3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string v2, "emfRecordSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/g3i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g3i;-><init>(Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;)V

    const-string p0, "emfData"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingBytes()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->remainingBytes:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hwmf/record/HwmfEscape$EscapeFunction;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    cmp-long p4, p2, v0

    if-gez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentIdentifier:I

    const v2, 0x43464d57

    const v3, 0xffff

    if-eq p4, v2, :cond_1

    sub-long v0, p2, v0

    long-to-int p4, v0

    invoke-static {p1, p4, v3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->emfData:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->remainingBytes:I

    long-to-int p0, p2

    return p0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentType:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->version:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->checksum:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentRecordCount:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->currentRecordSize:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->remainingBytes:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->emfRecordSize:I

    iget p2, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->currentRecordSize:I

    invoke-static {p1, p2, v3}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;II)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->emfData:[B

    array-length p0, p1

    add-int/lit8 p0, p0, 0x22

    return p0
.end method

.method public isValid()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfEscape$WmfEscapeEMF;->commentIdentifier:I

    const v0, 0x43464d57

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
