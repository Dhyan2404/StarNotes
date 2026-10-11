.class public Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;,
        Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$Builder;
    }
.end annotation


# instance fields
.field protected final externalUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/ExternalUserLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;-><init>(Lcom/dropbox/core/v2/teamlog/UserLogInfo;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/UserLogInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/teamlog/UserLogInfo;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/ExternalUserLogInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/ExternalUserLogInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An item in list \'externalUsers\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->externalUsers:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->externalUsers:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->externalUsers:Ljava/util/List;

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public getExternalUsers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/teamlog/ExternalUserLogInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->externalUsers:Ljava/util/List;

    return-object p0
.end method

.method public getSharedLinkOwner()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->sharedLinkOwner:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails;->externalUsers:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;->b:Lcom/dropbox/core/v2/teamlog/SharedLinkShareDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
