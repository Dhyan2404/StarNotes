.class public final Lorg/apache/poi/hslf/record/VBAInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final _type:J


# instance fields
.field private _header:[B

.field private hasMacros:Z

.field private persistIdRef:J

.field private version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->VBAInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_type:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_header:[B

    const/4 v1, 0x0

    .line 3
    sget-wide v2, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_type:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->persistIdRef:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->hasMacros:Z

    const-wide/16 v0, 0x2

    .line 6
    iput-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->version:J

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 p3, p2, 0x8

    .line 8
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_header:[B

    .line 9
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->persistIdRef:J

    add-int/lit8 p3, p2, 0xc

    .line 10
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->hasMacros:Z

    add-int/lit8 p2, p2, 0x10

    .line 11
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->version:J

    return-void
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "persistIdRef"

    new-instance v1, Lcom/sunia/HTREnginev2/lzn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lzn;-><init>(Lorg/apache/poi/hslf/record/VBAInfoAtom;)V

    const-string v2, "hasMacros"

    new-instance v3, Lcom/sunia/HTREnginev2/mzn;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/mzn;-><init>(Lorg/apache/poi/hslf/record/VBAInfoAtom;)V

    const-string v4, "version"

    new-instance v5, Lcom/sunia/HTREnginev2/nzn;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/nzn;-><init>(Lorg/apache/poi/hslf/record/VBAInfoAtom;)V

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPersistIdRef()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->persistIdRef:J

    return-wide v0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_type:J

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->version:J

    return-wide v0
.end method

.method public isHasMacros()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->hasMacros:Z

    return p0
.end method

.method public setHasMacros(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->hasMacros:Z

    return-void
.end method

.method public setPersistIdRef(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->persistIdRef:J

    return-void
.end method

.method public setVersion(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->version:J

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->persistIdRef:J

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-boolean v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->hasMacros:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/VBAInfoAtom;->version:J

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putUInt(JLjava/io/OutputStream;)V

    return-void
.end method
