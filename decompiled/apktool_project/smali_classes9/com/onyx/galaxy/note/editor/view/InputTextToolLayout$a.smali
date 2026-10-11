.class public final Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->w(Landroid/view/View;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;->f:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->findByDisplayName(Ljava/util/List;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;->access$showTextFontListPopup(Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$a;->a(Ljava/util/List;)V

    return-void
.end method
