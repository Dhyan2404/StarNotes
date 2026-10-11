.class public Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;
    }
.end annotation


# instance fields
.field protected final errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field protected final success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;-><init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    return-void
.end method

.method public constructor <init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-void
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

    check-cast p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public getErrorType()Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-object p0
.end method

.method public getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->b:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;->b:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
