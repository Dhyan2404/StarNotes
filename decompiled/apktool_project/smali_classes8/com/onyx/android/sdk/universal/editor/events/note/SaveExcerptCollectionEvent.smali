.class public final Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0008R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;",
        "",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "a",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V",
        "args",
        "<init>",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;->a:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    return-void
.end method


# virtual methods
.method public final getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;->a:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    return-object p0
.end method

.method public final setArgs(Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/SaveExcerptCollectionEvent;->a:Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;

    return-void
.end method
