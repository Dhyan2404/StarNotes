.class public final synthetic Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$c;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$c;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$onBitmapLoaded(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
