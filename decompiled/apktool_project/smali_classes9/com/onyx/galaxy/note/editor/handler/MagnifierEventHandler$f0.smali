.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->X()Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1041:1\n256#2,2:1042\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n*L\n815#1:1042,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1041:1\n256#2,2:1042\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$resetToMagnifierViewportArea$7\n*L\n815#1:1042,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f0;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$f0;->e:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getMagnifierViewportView$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
