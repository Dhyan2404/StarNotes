.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusSetClipRect"
.end annotation


# static fields
.field private static final COMBINE_MODE:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_MASK:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;


# instance fields
.field private final clipRect:Ljava/awt/geom/Rectangle2D;

.field private flags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->COMBINE_MODE:Lorg/apache/poi/util/BitField;

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->FLAGS_MASK:[I

    const-string v0, "COMBINE_MODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->clipRect:Ljava/awt/geom/Rectangle2D;

    return-void
.end method


# virtual methods
.method public getClipRect()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->clipRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getCombineMode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->COMBINE_MODE:Lorg/apache/poi/util/BitField;

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$CombineMode;

    move-result-object p0

    return-object p0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->setClipRect:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->flags:I

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

    new-instance v0, Lcom/sunia/HTREnginev2/pqh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;)V

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->FLAGS_MASK:[I

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/qqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;)V

    const-string p0, "flags"

    const-string v2, "clipRect"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->flags:I

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetClipRect;->clipRect:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readRectF(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
