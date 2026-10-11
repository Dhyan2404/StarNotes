.class final Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->getMagnifierViewport(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;",
        "it",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel$getMagnifierViewport$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    move-result-object p0

    return-object p0
.end method
