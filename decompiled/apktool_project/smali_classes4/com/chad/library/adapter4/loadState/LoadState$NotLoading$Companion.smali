.class public final Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;",
        "",
        "()V",
        "Complete",
        "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;",
        "getComplete$annotations",
        "getComplete",
        "()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;",
        "Incomplete",
        "getIncomplete$annotations",
        "getIncomplete",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getComplete$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getIncomplete$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getComplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->access$getComplete$cp()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    move-result-object p0

    return-object p0
.end method

.method public final getIncomplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->access$getIncomplete$cp()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    move-result-object p0

    return-object p0
.end method
