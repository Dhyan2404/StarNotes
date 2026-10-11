.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->d(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;->f:Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;->access$updateColorSetStatus(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer;Lcom/onyx/android/sdk/base/extension/IntList;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeParamsContainer$a;->a(Z)V

    return-void
.end method
