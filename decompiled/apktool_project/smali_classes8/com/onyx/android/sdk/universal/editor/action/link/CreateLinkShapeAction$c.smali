.class public final synthetic Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;->access$checkCanCreate(Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/CreateLinkShapeAction$c;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    move-result p0

    return p0
.end method
