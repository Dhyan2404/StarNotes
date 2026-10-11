.class public final Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;",
        "",
        "()V",
        "V0",
        "",
        "V1",
        "isLatestVersion",
        "",
        "v",
        "latestVersion",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final V0:I = 0x0

.field public static final V1:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLatestVersion(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteVersion;->latestVersion()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final latestVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
