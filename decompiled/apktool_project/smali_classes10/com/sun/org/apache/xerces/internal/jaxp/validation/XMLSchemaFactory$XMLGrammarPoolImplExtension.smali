.class Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
.super Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLGrammarPoolImplExtension"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getGrammarCount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return p0
.end method
