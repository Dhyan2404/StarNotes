.class public final Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hash:I

.field private localName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nodetype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    .line 8
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    iget v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->hash:I

    return p0
.end method

.method public redefine(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method public redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->nodetype:I

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;->hash:I

    return-void
.end method
