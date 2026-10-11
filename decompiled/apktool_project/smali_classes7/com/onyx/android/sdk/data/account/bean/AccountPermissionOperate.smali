.class public final Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u000c\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;",
        "",
        "()V",
        "read",
        "",
        "getRead",
        "()Z",
        "setRead",
        "(Z)V",
        "write",
        "getWrite",
        "setWrite",
        "equals",
        "other",
        "hashCode",
        "",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private read:Z

.field private write:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountPermissionOperate"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->read:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->read:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->write:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->write:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getRead()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->read:Z

    return p0
.end method

.method public final getWrite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->write:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->read:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->write:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->read:Z

    return-void
.end method

.method public final setWrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->write:Z

    return-void
.end method
