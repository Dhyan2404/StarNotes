.class final Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->isEnabledEnsureDisplay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "invoke",
        "(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/Boolean;"
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
.field final synthetic $pageDisplayRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;->this$0:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;->$pageDisplayRectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/SliceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;->this$0:Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;->$pageDisplayRectF:Landroid/graphics/RectF;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;->access$isValidDirtyRect(Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteRenderArgs$isEnabledEnsureDisplay$containInvalidDirtyRectHighQualitySlice$2;->invoke(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
