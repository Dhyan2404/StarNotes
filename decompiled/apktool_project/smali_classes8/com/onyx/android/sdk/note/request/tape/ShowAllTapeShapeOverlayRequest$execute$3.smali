.class final Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;->INSTANCE:Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/ShapeKt;->isTapeShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/request/tape/ShowAllTapeShapeOverlayRequest$execute$3;->invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
