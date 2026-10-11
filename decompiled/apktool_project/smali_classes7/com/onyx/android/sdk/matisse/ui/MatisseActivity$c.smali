.class public Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->onAlbumLoad(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/database/Cursor;

.field public final synthetic f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->e:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->E(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->getCurrentSelection()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->F(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->E(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;)Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/matisse/internal/model/AlbumCollection;->getCurrentSelection()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setSelection(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->e:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/onyx/android/sdk/matisse/internal/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->isAll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;

    move-result-object v1

    iget-boolean v1, v1, Lcom/onyx/android/sdk/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/matisse/internal/entity/Album;->addCaptureCount()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity$c;->f:Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;->G(Lcom/onyx/android/sdk/matisse/ui/MatisseActivity;Lcom/onyx/android/sdk/matisse/internal/entity/Album;)V

    return-void
.end method
