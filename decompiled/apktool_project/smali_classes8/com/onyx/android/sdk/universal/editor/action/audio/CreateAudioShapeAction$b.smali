.class public final Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction;->m(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;)Ljava/util/List;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;->getAudioShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/audio/CreateAudioShapeAction$b;->a(Lcom/onyx/android/sdk/universal/editor/request/audio/CreateAudioShapeRequest;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
