.class public Landroidx/databinding/adapters/SearchViewBindingAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/SearchViewBindingAdapter;->setOnQueryTextListener(Landroid/widget/SearchView;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

.field public final synthetic f:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;


# direct methods
.method public constructor <init>(Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/databinding/adapters/SearchViewBindingAdapter$a;->e:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    iput-object p2, p0, Landroidx/databinding/adapters/SearchViewBindingAdapter$a;->f:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/databinding/adapters/SearchViewBindingAdapter$a;->f:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/databinding/adapters/SearchViewBindingAdapter$a;->e:Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
