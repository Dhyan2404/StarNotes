.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public H:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->H:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    return-void
.end method

.method public static synthetic G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;)Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$c;->H:Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;

    return-object p0
.end method
