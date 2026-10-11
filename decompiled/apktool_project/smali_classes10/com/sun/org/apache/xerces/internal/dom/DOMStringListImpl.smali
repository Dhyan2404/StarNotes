.class public Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMStringList;


# instance fields
.field private fStrings:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public item(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DOMStringListImpl;->fStrings:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
