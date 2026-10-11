.class public Lorg/apache/poi/hslf/model/HSLFMetroShape;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "TS;TP;>;P::",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "TS;TP;+",
        "Lorg/apache/poi/sl/usermodel/TextRun;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/model/HSLFMetroShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/model/HSLFMetroShape;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/model/HSLFMetroShape;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    return-void
.end method

.method private getMetroProp()Lorg/apache/poi/ddf/EscherComplexProperty;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/model/HSLFMetroShape;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    sget-short v0, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__METROBLOB:Lorg/apache/poi/ddf/EscherPropertyTypes;

    iget-short v0, v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherComplexProperty;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getMetroBytes()[B
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/HSLFMetroShape;->getMetroProp()Lorg/apache/poi/ddf/EscherComplexProperty;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shape<",
            "TS;TP;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/HSLFMetroShape;->getMetroBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lorg/apache/poi/hslf/model/HSLFMetroShape;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/poi/sl/usermodel/MetroShapeProvider;

    invoke-static {v2, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/usermodel/MetroShapeProvider;

    :try_start_0
    invoke-interface {v1, p0}, Lorg/apache/poi/sl/usermodel/MetroShapeProvider;->parseShape([B)Lorg/apache/poi/sl/usermodel/Shape;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    sget-object v1, Lorg/apache/poi/hslf/model/HSLFMetroShape;->LOGGER:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "can\'t process metro blob, check if all dependencies for POI OOXML are in the classpath."

    invoke-interface {p0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public hasMetroBlob()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/HSLFMetroShape;->getMetroProp()Lorg/apache/poi/ddf/EscherComplexProperty;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
