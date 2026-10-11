.class public final Lcom/onyx/android/sdk/data/account/bean/UserRoleItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "NORMAL_ROLE_FLAG",
        "",
        "VIP_LIST",
        "",
        "",
        "getVIP_LIST",
        "()Ljava/util/List;",
        "VIP_ONYX",
        "VIP_ONYX_FLAG",
        "VIP_PERMANENT",
        "VIP_PERMANENT_FLAG",
        "VIP_STAR",
        "VIP_STAR_FLAG",
        "sdk-data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final NORMAL_ROLE_FLAG:I = 0x1

.field private static final VIP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIP_ONYX:Ljava/lang/String; = "galaxyOnyxMember"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIP_ONYX_FLAG:I = 0x2

.field public static final VIP_PERMANENT:Ljava/lang/String; = "galaxyStarNotePermanentMember"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIP_PERMANENT_FLAG:I = 0x4

.field public static final VIP_STAR:Ljava/lang/String; = "galaxyStarNoteMember"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIP_STAR_FLAG:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "galaxyStarNotePermanentMember"

    const-string v1, "galaxyStarNoteMember"

    const-string v2, "galaxyOnyxMember"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/data/account/bean/UserRoleItemKt;->VIP_LIST:Ljava/util/List;

    return-void
.end method

.method public static final getVIP_LIST()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/UserRoleItemKt;->VIP_LIST:Ljava/util/List;

    return-object v0
.end method
