.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSDKey"
.end annotation


# instance fields
.field referNS:Ljava/lang/String;

.field referType:S

.field systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-short v3, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    if-ne v3, v2, :cond_2

    :cond_1
    iget-short v3, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referType:S

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->systemId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDHandler$XSDKey;->referNS:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
