.class public Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->a:Ljava/lang/String;

    iput-short p2, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->b:S

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->c:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->c:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->a:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/traversers/XSDHandler$c;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
