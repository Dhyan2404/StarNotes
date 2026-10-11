.class public Lcom/sun/org/apache/xpath/internal/operations/Gte;
.super Lcom/sun/org/apache/xpath/internal/operations/Operation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x7ee244dd1899299cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->greaterThanOrEqual(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    :goto_0
    return-object p0
.end method
