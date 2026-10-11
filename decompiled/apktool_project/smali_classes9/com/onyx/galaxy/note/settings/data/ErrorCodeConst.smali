.class public final Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;",
        "",
        "()V",
        "ERROR_IMPORT_FAILED",
        "",
        "ERROR_NETWORK",
        "ERROR_NO_SPACE",
        "ERROR_PARSE_FAILED",
        "note_overseasRelease"
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
.field public static final ERROR_IMPORT_FAILED:Ljava/lang/String; = "cw0001"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_NETWORK:Ljava/lang/String; = "cw0002"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_NO_SPACE:Ljava/lang/String; = "cw0004"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_PARSE_FAILED:Ljava/lang/String; = "cw0003"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/ErrorCodeConst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
