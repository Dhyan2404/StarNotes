.class public final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->V0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$setResult$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->d1(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$m;->a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;)V

    return-void
.end method
