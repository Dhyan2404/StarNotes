.class public Lorg/apache/xerces/impl/dtd/XMLContentSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dtd/XMLContentSpec$Provider;
    }
.end annotation


# static fields
.field public static final CONTENTSPECNODE_ANY:S = 0x6s

.field public static final CONTENTSPECNODE_ANY_LAX:S = 0x16s

.field public static final CONTENTSPECNODE_ANY_LOCAL:S = 0x8s

.field public static final CONTENTSPECNODE_ANY_LOCAL_LAX:S = 0x18s

.field public static final CONTENTSPECNODE_ANY_LOCAL_SKIP:S = 0x28s

.field public static final CONTENTSPECNODE_ANY_OTHER:S = 0x7s

.field public static final CONTENTSPECNODE_ANY_OTHER_LAX:S = 0x17s

.field public static final CONTENTSPECNODE_ANY_OTHER_SKIP:S = 0x27s

.field public static final CONTENTSPECNODE_ANY_SKIP:S = 0x26s

.field public static final CONTENTSPECNODE_CHOICE:S = 0x4s

.field public static final CONTENTSPECNODE_LEAF:S = 0x0s

.field public static final CONTENTSPECNODE_ONE_OR_MORE:S = 0x3s

.field public static final CONTENTSPECNODE_SEQ:S = 0x5s

.field public static final CONTENTSPECNODE_ZERO_OR_MORE:S = 0x2s

.field public static final CONTENTSPECNODE_ZERO_OR_ONE:S = 0x1s


# instance fields
.field public otherValue:Ljava/lang/Object;

.field public type:S

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lorg/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(Lorg/apache/xerces/impl/dtd/XMLContentSpec;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    iget-short v1, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-short v2, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public setValues(Lorg/apache/xerces/impl/dtd/XMLContentSpec$Provider;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lorg/apache/xerces/impl/dtd/XMLContentSpec$Provider;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->clear()V

    :cond_0
    return-void
.end method

.method public setValues(Lorg/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 1

    .line 2
    iget-short v0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method

.method public setValues(SLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    iput-short p1, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iput-object p2, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    return-void
.end method
