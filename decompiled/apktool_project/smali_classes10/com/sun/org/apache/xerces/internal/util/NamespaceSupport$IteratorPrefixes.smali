.class public final Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IteratorPrefixes"
.end annotation


# instance fields
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->this$0:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->counter:I

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->prefixes:[Ljava/lang/String;

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->size:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->counter:I

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->counter:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->this$0:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->counter:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport$IteratorPrefixes;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
