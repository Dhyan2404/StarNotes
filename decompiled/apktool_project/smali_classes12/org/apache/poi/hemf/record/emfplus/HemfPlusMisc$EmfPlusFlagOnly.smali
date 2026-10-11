.class public abstract Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EmfPlusFlagOnly"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAGS_MASK:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;


# instance fields
.field private flags:I

.field private recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf00

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->FLAGS_MASK:[I

    const-string v0, "COMBINE_MODE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mqh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;)V

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->FLAGS_MASK:[I

    sget-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object p0

    const-string v0, "flags"

    invoke-static {v0, p0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

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

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->flags:I

    invoke-static {p4, p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->getById(J)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusFlagOnly;->recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    const-wide/16 p0, 0x0

    return-wide p0
.end method
