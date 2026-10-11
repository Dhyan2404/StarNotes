.class public final Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;",
        "",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "a",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "getNoteRenderSlice",
        "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "noteRenderSlice",
        "b",
        "getContentCacheSlice",
        "contentCacheSlice",
        "<init>",
        "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "noteRenderSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->a:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->b:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-void
.end method


# virtual methods
.method public final getContentCacheSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->b:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method

.method public final getNoteRenderSlice()Lcom/onyx/android/sdk/geometry/data/SliceInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteSliceRenderInfo;->a:Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    return-object p0
.end method
