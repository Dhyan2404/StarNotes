.class public Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchSingleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;->a:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;->a:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->k0(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;)Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment$b;->a:Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;->k0(Lcom/onyx/android/sdk/matisse/internal/ui/PreviewItemFragment;)Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/listener/OnFragmentInteractionListener;->onClick()V

    :cond_0
    return-void
.end method
