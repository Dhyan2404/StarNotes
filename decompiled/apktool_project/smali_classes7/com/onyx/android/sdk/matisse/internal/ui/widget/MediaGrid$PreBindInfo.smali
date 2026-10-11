.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreBindInfo"
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Z

.field public d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->a:I

    iput-object p2, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->c:Z

    iput-object p4, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/MediaGrid$PreBindInfo;->d:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method
