.class public final Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;",
        "",
        "()V",
        "DEFAULT_SOURCE",
        "",
        "getDEFAULT_SOURCE",
        "()Ljava/lang/String;",
        "setDEFAULT_SOURCE",
        "(Ljava/lang/String;)V",
        "LOCAL_UPDATE_SOURCE",
        "getLOCAL_UPDATE_SOURCE",
        "setLOCAL_UPDATE_SOURCE",
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
.field private static DEFAULT_SOURCE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static LOCAL_UPDATE_SOURCE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;

    const-string v0, "Local"

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->DEFAULT_SOURCE:Ljava/lang/String;

    const-string v0, "Local_Update"

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->LOCAL_UPDATE_SOURCE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_SOURCE()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->DEFAULT_SOURCE:Ljava/lang/String;

    return-object p0
.end method

.method public final getLOCAL_UPDATE_SOURCE()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->LOCAL_UPDATE_SOURCE:Ljava/lang/String;

    return-object p0
.end method

.method public final setDEFAULT_SOURCE(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->DEFAULT_SOURCE:Ljava/lang/String;

    return-void
.end method

.method public final setLOCAL_UPDATE_SOURCE(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteSource;->LOCAL_UPDATE_SOURCE:Ljava/lang/String;

    return-void
.end method
