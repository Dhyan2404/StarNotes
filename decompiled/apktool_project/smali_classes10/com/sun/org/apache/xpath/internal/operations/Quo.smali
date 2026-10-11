.class public Lcom/sun/org/apache/xpath/internal/operations/Quo;
.super Lcom/sun/org/apache/xpath/internal/operations/Operation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x9a0bfdd28148eb1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XNumber;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide p1

    div-double/2addr v0, p1

    double-to-int p1, v0

    int-to-double p1, p1

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/objects/XNumber;-><init>(D)V

    return-object p0
.end method
