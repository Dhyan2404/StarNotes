.class public final Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;->z(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

.field public final synthetic f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;->e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;->f:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;->e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;->f:Landroid/net/Uri;

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;->access$parseOtherFileIntent(Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;ZLandroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$p;->a(Z)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
