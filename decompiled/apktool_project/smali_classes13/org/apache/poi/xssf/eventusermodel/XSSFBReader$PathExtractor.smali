.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathExtractor"
.end annotation


# static fields
.field private static final RECORDS:Lcom/zaxxer/sparsebits/SparseBitSet;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Lcom/zaxxer/sparsebits/SparseBitSet;

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Lcom/zaxxer/sparsebits/SparseBitSet;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-object p0
.end method

.method public handleRecord(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/xssf/binary/XSSFBParseException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-void
.end method
