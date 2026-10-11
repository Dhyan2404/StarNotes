.class public Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->a(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {v0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->b(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner$a;->e:Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;->b(Lcom/onyx/android/sdk/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
