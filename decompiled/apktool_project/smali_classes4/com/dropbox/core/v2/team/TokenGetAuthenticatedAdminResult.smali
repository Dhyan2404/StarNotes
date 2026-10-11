.class public Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;
    }
.end annotation


# instance fields
.field protected final adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/TeamMemberProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;->adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'adminProfile\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    if-eqz v2, :cond_4

    check-cast p1, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;->adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;->adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    if-eq p0, p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public getAdminProfile()Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;->adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;->adminProfile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;->b:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;->b:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
