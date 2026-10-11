.class public final Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter4/loadState/LoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotLoading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;",
        "Lcom/chad/library/adapter4/loadState/LoadState;",
        "endOfPaginationReached",
        "",
        "(Z)V",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->Companion:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;

    new-instance v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;-><init>(Z)V

    sput-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->b:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    new-instance v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;-><init>(Z)V

    sput-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->c:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$getComplete$cp()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->b:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    return-object v0
.end method

.method public static final synthetic access$getIncomplete$cp()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->c:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    return-object v0
.end method

.method public static final getComplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->Companion:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;->getComplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    move-result-object v0

    return-object v0
.end method

.method public static final getIncomplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;->Companion:Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;->getIncomplete()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    check-cast p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotLoading(endOfPaginationReached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
