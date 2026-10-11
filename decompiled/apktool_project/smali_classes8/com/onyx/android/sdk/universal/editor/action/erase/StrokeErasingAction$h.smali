.class public final Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->n(Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;)Lio/reactivex/rxjava3/core/Observable;
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
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;",
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

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;->mergeShapeList$default(Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$h;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
