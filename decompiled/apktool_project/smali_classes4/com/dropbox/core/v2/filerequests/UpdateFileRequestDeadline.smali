.class public final Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$b;,
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;
    }
.end annotation


# static fields
.field public static final NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field public static final OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;


# instance fields
.field public a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

.field public b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object p0
.end method

.method public static update()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 2

    .line 1
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->c(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object p1, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getUpdateValue()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isNoUpdate()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdate()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$b;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$b;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
