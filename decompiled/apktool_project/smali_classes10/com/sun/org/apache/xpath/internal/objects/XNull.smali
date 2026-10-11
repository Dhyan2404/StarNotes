.class public Lcom/sun/org/apache/xpath/internal/objects/XNull;
.super Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x5ef28b163716bc5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    const-string p0, "#CLASS_NULL"

    return-object p0
.end method

.method public num()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rtf(Lcom/sun/org/apache/xpath/internal/XPathContext;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public str()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
