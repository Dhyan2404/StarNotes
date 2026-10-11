.class public final Lcom/sunia/HTREnginev2/mmo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/sunia/HTREnginev2/mmo;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mmo;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sunia/HTREnginev2/mmo;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/mmo;->c:I

    iput p4, p0, Lcom/sunia/HTREnginev2/mmo;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mmo;->a:Ljava/lang/String;

    instance-of p1, p2, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getLineNumber()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/mmo;->b:I

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/mmo;->c:I

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getCharacterOffset()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/mmo;->b:I

    iput p1, p0, Lcom/sunia/HTREnginev2/mmo;->c:I

    :goto_0
    iput p1, p0, Lcom/sunia/HTREnginev2/mmo;->d:I

    return-void
.end method
