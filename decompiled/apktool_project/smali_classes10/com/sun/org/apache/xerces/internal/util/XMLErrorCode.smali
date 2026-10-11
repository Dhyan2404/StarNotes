.class final Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fDomain:Ljava/lang/String;

.field private fKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method
