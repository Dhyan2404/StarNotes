.class public final Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->decode(Lcom/onyx/android/sdk/reader/api/DrawArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/api/DrawArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;Lcom/onyx/android/sdk/reader/api/DrawArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;->e:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;->f:Lcom/onyx/android/sdk/reader/api/DrawArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/api/DrawArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/DrawArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;->e:Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->access$getReader$p(Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;->f:Lcom/onyx/android/sdk/reader/api/DrawArgs;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeRender(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache$a;->a(Lcom/onyx/android/sdk/reader/api/DrawArgs;)V

    return-void
.end method
