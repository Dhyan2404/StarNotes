.class public Lcom/sun/org/apache/xpath/internal/operations/String;
.super Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x29438c3e2055eea8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method
