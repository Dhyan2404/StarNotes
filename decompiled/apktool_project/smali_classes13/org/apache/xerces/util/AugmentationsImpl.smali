.class public Lorg/apache/xerces/util/AugmentationsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/Augmentations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/AugmentationsImpl$b;,
        Lorg/apache/xerces/util/AugmentationsImpl$c;,
        Lorg/apache/xerces/util/AugmentationsImpl$a;
    }
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/util/AugmentationsImpl$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/util/AugmentationsImpl$c;

    invoke-direct {v0}, Lorg/apache/xerces/util/AugmentationsImpl$c;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/AugmentationsImpl$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p0}, Lorg/apache/xerces/util/AugmentationsImpl$a;->e()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xerces/util/AugmentationsImpl$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p2}, Lorg/apache/xerces/util/AugmentationsImpl$a;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p2}, Lorg/apache/xerces/util/AugmentationsImpl$a;->b()Lorg/apache/xerces/util/AugmentationsImpl$a;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    :cond_0
    return-object p1
.end method

.method public removeAllItems()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p0}, Lorg/apache/xerces/util/AugmentationsImpl$a;->a()V

    return-void
.end method

.method public removeItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/util/AugmentationsImpl$a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/util/AugmentationsImpl;->a:Lorg/apache/xerces/util/AugmentationsImpl$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
