.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorImport;
.super Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x727523d6d5b3f375L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;-><init>()V

    return-void
.end method


# virtual methods
.method public getStylesheetInclErr()Ljava/lang/String;
    .locals 0

    const-string p0, "ER_IMPORTING_ITSELF"

    return-object p0
.end method

.method public getStylesheetType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
