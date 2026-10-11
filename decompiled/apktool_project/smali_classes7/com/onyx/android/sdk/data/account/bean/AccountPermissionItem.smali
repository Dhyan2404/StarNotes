.class public final Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;",
        "",
        "()V",
        "module",
        "",
        "getModule",
        "()Ljava/lang/String;",
        "setModule",
        "(Ljava/lang/String;)V",
        "permission",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;",
        "getPermission",
        "()Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;",
        "setPermission",
        "(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)V",
        "subModule",
        "getSubModule",
        "setSubModule",
        "equals",
        "",
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
.field private module:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subModule:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

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
    const-class v1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;

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
    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.data.account.bean.AccountPermissionItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    iget-object p1, p1, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getModule()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    return-object p0
.end method

.method public final getPermission()Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    return-object p0
.end method

.method public final getSubModule()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setModule(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->module:Ljava/lang/String;

    return-void
.end method

.method public final setPermission(Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->permission:Lcom/onyx/android/sdk/data/account/bean/AccountPermissionOperate;

    return-void
.end method

.method public final setSubModule(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/bean/AccountPermissionItem;->subModule:Ljava/lang/String;

    return-void
.end method
