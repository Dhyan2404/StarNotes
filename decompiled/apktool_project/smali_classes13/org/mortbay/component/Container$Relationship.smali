.class public Lorg/mortbay/component/Container$Relationship;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/component/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relationship"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:Lorg/mortbay/component/Container;


# direct methods
.method public constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/mortbay/component/Container$Relationship;->d:Lorg/mortbay/component/Container;

    .line 4
    iput-object p2, p0, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/mortbay/component/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/component/Container$Relationship;-><init>(Lorg/mortbay/component/Container;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/mortbay/component/Container$Relationship;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/mortbay/component/Container$Relationship;

    iget-object v1, p1, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getChild()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public getContainer()Lorg/mortbay/component/Container;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->d:Lorg/mortbay/component/Container;

    return-object p0
.end method

.method public getParent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/component/Container$Relationship;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/component/Container$Relationship;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
