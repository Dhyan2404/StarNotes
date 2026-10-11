.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->setSelectedTextView(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$dimen;->album_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->d(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->c(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    mul-int/2addr p1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {v1}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->c(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    mul-int/2addr p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$b;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->d(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
