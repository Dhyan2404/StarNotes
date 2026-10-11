.class public final Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;",
        "",
        "()V",
        "DISABLE_FAVORITE_TYPE",
        "",
        "getDISABLE_FAVORITE_TYPE",
        "()[I",
        "FAVORITE",
        "",
        "GROUP",
        "INVALID",
        "MEMO",
        "NONE",
        "READING",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DISABLE_FAVORITE_TYPE:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FAVORITE:I = 0x4

.field public static final GROUP:I = 0x3

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID:I = -0x1

.field public static final MEMO:I = 0x2

.field public static final NONE:I = 0x0

.field public static final READING:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;

    const/4 v0, -0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;->DISABLE_FAVORITE_TYPE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDISABLE_FAVORITE_TYPE()[I
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/AssociationType;->DISABLE_FAVORITE_TYPE:[I

    return-object p0
.end method
