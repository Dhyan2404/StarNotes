.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;

    invoke-interface {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$OnPhotoCapture;->capture()V

    :cond_0
    return-void
.end method
