.class public interface abstract Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;",
        "",
        "checkTraceMemoryAvailable",
        "",
        "requireReleaseMemory",
        "",
        "noteDoc",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "currentPageId",
        "",
        "Companion",
        "sdk-note_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:Z = false

.field public static final DEFAULT_MIN_MEMORY:J = 0x3c00000L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;->a:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement;->Companion:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocMemoryManagement$Companion;

    return-void
.end method


# virtual methods
.method public abstract checkTraceMemoryAvailable()Z
.end method

.method public abstract requireReleaseMemory(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
