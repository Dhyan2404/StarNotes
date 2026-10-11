.class public Lorg/apache/poi/hwmf/record/HwmfHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private filesize:I

.field private maxRecord:J

.field private numberOfMembers:I

.field private numberOfObjects:I

.field private recordSize:I

.field private type:Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;

.field private version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;->values()[Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->type:Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->recordSize:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->version:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->filesize:I

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->numberOfObjects:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->maxRecord:J

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->numberOfMembers:I

    add-int/lit8 v0, v0, -0x2

    if-lez v0, :cond_0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hwmf/record/HwmfHeader;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfHeader;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->type:Lorg/apache/poi/hwmf/record/HwmfHeader$HwmfHeaderMetaType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->recordSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->filesize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->numberOfObjects:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->maxRecord:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfHeader;->numberOfMembers:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    new-instance v1, Lcom/sunia/HTREnginev2/i5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/i5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/j5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "recordSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/k5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/l5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "filesize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/m5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "numberOfObjects"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/n5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string v2, "maxRecord"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/o5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfHeader;)V

    const-string p0, "numberOfMembers"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
