.class public Lcom/sun/org/apache/xpath/internal/objects/XRTreeFragSelectWrapper;
.super Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x5a91a43a5bb8e343L


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;-><init>(Lcom/sun/org/apache/xpath/internal/Expression;)V

    return-void
.end method


# virtual methods
.method public asNodeIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XRTreeFrag;->m_allowRelease:Z

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->allowDetachToRelease(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public num()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rtf()I
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public str()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public xstr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
