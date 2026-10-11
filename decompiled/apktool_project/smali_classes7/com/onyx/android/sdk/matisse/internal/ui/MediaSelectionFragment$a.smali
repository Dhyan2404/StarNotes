.class public Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;->k0(Lcom/onyx/android/sdk/matisse/internal/ui/MediaSelectionFragment;Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;)V

    return-void
.end method
