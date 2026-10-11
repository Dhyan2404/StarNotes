.class public final Lcom/dropbox/core/v2/files/PathOrLink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/PathOrLink$b;,
        Lcom/dropbox/core/v2/files/PathOrLink$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/PathOrLink;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

.field public b:Ljava/lang/String;

.field public c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->OTHER:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/PathOrLink;->c(Lcom/dropbox/core/v2/files/PathOrLink$Tag;)Lcom/dropbox/core/v2/files/PathOrLink;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/PathOrLink;->OTHER:Lcom/dropbox/core/v2/files/PathOrLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/PathOrLink;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/files/PathOrLink;)Lcom/dropbox/core/v2/files/SharedLinkFileInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    return-object p0
.end method

.method public static link(Lcom/dropbox/core/v2/files/SharedLinkFileInfo;)Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->LINK:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/PathOrLink;->d(Lcom/dropbox/core/v2/files/PathOrLink$Tag;Lcom/dropbox/core/v2/files/SharedLinkFileInfo;)Lcom/dropbox/core/v2/files/PathOrLink;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static path(Ljava/lang/String;)Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->PATH:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/PathOrLink;->e(Lcom/dropbox/core/v2/files/PathOrLink$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/PathOrLink;

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
.method public final c(Lcom/dropbox/core/v2/files/PathOrLink$Tag;)Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    return-object p0
.end method

.method public final d(Lcom/dropbox/core/v2/files/PathOrLink$Tag;Lcom/dropbox/core/v2/files/SharedLinkFileInfo;)Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    return-object p0
.end method

.method public final e(Lcom/dropbox/core/v2/files/PathOrLink$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/PathOrLink;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/PathOrLink;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/PathOrLink;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/PathOrLink;

    if-eqz v2, :cond_a

    check-cast p1, Lcom/dropbox/core/v2/files/PathOrLink;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/PathOrLink$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SharedLinkFileInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

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

.method public getLinkValue()Lcom/dropbox/core/v2/files/SharedLinkFileInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->LINK:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LINK, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->PATH:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

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

    iget-object v0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/PathOrLink;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->c:Lcom/dropbox/core/v2/files/SharedLinkFileInfo;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isLink()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->LINK:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->OTHER:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPath()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/PathOrLink$Tag;->PATH:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/PathOrLink$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/PathOrLink;->a:Lcom/dropbox/core/v2/files/PathOrLink$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/PathOrLink$b;->b:Lcom/dropbox/core/v2/files/PathOrLink$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/PathOrLink$b;->b:Lcom/dropbox/core/v2/files/PathOrLink$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
