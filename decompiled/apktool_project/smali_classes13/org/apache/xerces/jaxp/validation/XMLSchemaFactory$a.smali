.class public Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$a;
.super Lorg/apache/xerces/util/XMLGrammarPoolImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return p0
.end method
