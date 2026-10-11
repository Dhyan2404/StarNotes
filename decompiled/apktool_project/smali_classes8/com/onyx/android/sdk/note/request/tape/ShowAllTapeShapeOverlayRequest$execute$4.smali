.class final Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest;->execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $noteBundle:Lcom/onyx/android/sdk/note/NoteBundle;

.field final synthetic $strokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;->$noteBundle:Lcom/onyx/android/sdk/note/NoteBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;->$strokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;->invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;->$noteBundle:Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$4;->$strokeStyle:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/note/request/tape/UpdateTapeShapeStrokeStyleRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method
