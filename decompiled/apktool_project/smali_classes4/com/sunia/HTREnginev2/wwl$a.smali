.class public final Lcom/sunia/HTREnginev2/wwl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/wwl;->a(Landroid/widget/SearchView;Z)Lio/reactivex/rxjava3/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/SearchView;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Landroid/widget/SearchView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wwl$a;->e:Landroid/widget/SearchView;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/wwl$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wwl$a;->e:Landroid/widget/SearchView;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/wwl$a;->f:Z

    invoke-virtual {v0, p1, p0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/wwl$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
