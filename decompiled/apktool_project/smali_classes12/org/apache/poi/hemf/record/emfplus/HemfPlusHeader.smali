.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;,
        Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$GraphicsVersion;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMFFLAGS_MASK:[I

.field private static final EMFFLAGS_NAMES:[Ljava/lang/String;

.field private static final FLAGS_MASK:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;


# instance fields
.field private emfPlusFlags:J

.field private flags:I

.field private logicalDpiX:J

.field private logicalDpiY:J

.field private final version:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->FLAGS_MASK:[I

    const-string v2, "EMF_PLUS_MODE"

    const-string v3, "DUAL_MODE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->FLAGS_NAMES:[Ljava/lang/String;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->EMFFLAGS_MASK:[I

    const-string v0, "CONTEXT_PRINTER"

    const-string v1, "CONTEXT_VIDEO"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->EMFFLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->version:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_DCONTEXT:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-interface {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;->setState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;->EMF_DCONTEXT:Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->setRenderState(Lorg/apache/poi/hemf/draw/HemfGraphics$EmfRenderState;)V

    return-void
.end method

.method public getEmfPlusFlags()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->emfPlusFlags:J

    return-wide v0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->header:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/rph;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->FLAGS_MASK:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "version"

    new-instance v3, Lcom/sunia/HTREnginev2/sph;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/sph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;)V

    const-string v4, "emfPlusFlags"

    new-instance v5, Lcom/sunia/HTREnginev2/tph;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/tph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;)V

    sget-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->EMFFLAGS_MASK:[I

    sget-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->EMFFLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v5

    const-string v6, "logicalDpiX"

    new-instance v7, Lcom/sunia/HTREnginev2/uph;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/uph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;)V

    const-string v8, "logicalDpiY"

    new-instance v9, Lcom/sunia/HTREnginev2/vph;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/vph;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalDpiX()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->logicalDpiX:J

    return-wide v0
.end method

.method public getLogicalDpiY()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->logicalDpiY:J

    return-wide v0
.end method

.method public getVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->version:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->flags:I

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->version:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->emfPlusFlags:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->logicalDpiX:J

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->logicalDpiY:J

    const-wide/16 p0, 0x10

    return-wide p0
.end method

.method public isEmfPlusDualMode()Z
    .locals 1

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
