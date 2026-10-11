.class public Lcom/sun/org/apache/xpath/internal/functions/FuncFalse;
.super Lcom/sun/org/apache/xpath/internal/functions/Function;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x555c73639d54771fL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method
