.class final Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/genericshape/Polygon$Companion;->resortLineCoordinateList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[[F",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0008\u0012\u00060\u0004j\u0002`\u00050\u0003j\u0002`\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "it",
        "",
        "",
        "Lcom/onyx/android/sdk/genericshape/Position;",
        "Lcom/onyx/android/sdk/genericshape/Line;",
        "invoke",
        "([[F)Ljava/util/concurrent/atomic/AtomicInteger;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;->INSTANCE:Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [[F

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/Polygon$Companion$resortLineCoordinateList$1$1;->invoke([[F)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public final invoke([[F)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0
    .param p1    # [[F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p0
.end method
