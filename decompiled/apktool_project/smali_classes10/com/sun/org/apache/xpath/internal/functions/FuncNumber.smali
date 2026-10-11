.class public Lcom/sun/org/apache/xpath/internal/functions/FuncNumber;
.super Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x64d8aa634ee113f4L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/functions/FunctionDef1Arg;->getArg0AsNumber(Lcom/sun/org/apache/xpath/internal/XPathContext;)D

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object v0
.end method
