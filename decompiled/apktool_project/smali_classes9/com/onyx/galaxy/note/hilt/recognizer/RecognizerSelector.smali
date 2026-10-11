.class public final Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001\u000fB,\u0008\u0007\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002\u00a2\u0006\u0002\u0008\u00060\u0004\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R%\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002\u00a2\u0006\u0002\u0008\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;",
        "",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "getRecognizer",
        "",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "a",
        "Ljava/util/Map;",
        "recognizerMap",
        "b",
        "Ljava/lang/String;",
        "type",
        "<init>",
        "(Ljava/util/Map;Ljava/lang/String;)V",
        "Creator",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "recognizerMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/galaxy/note/hilt/recognizer/RecognizerSelector;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    return-object p0
.end method
