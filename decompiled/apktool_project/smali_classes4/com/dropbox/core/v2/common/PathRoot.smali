.class public final Lcom/dropbox/core/v2/common/PathRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/common/PathRoot$Serializer;,
        Lcom/dropbox/core/v2/common/PathRoot$Tag;
    }
.end annotation


# static fields
.field public static final HOME:Lcom/dropbox/core/v2/common/PathRoot;

.field public static final OTHER:Lcom/dropbox/core/v2/common/PathRoot;


# instance fields
.field public a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->HOME:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/common/PathRoot;->c(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRoot;->HOME:Lcom/dropbox/core/v2/common/PathRoot;

    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/common/PathRoot;->c(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRoot;->OTHER:Lcom/dropbox/core/v2/common/PathRoot;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/common/PathRoot;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/common/PathRoot;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static namespaceId(Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/common/PathRoot;->d(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static root(Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/common/PathRoot;->e(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Lcom/dropbox/core/v2/common/PathRoot$Tag;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {p0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {p0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/common/PathRoot$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/common/PathRoot;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/common/PathRoot;

    invoke-direct {p0}, Lcom/dropbox/core/v2/common/PathRoot;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/common/PathRoot;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/common/PathRoot;

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/common/PathRoot$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_9

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 p0, 0x4

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    return v1
.end method

.method public getNamespaceIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NAMESPACE_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRootValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ROOT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/common/PathRoot;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->c:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isHome()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Tag;->HOME:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNamespaceId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Tag;->NAMESPACE_ID:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoot()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Tag;->ROOT:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/common/PathRoot$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/common/PathRoot;->a:Lcom/dropbox/core/v2/common/PathRoot$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRoot$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/common/PathRoot$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRoot$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
