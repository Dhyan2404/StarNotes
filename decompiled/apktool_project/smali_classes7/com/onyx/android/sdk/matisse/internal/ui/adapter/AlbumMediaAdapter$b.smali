.class public Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public H:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$id;->hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;->H:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic G(Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/adapter/AlbumMediaAdapter$b;->H:Landroid/widget/TextView;

    return-object p0
.end method
