.class public final synthetic Lcom/sunia/HTREnginev2/lwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lwk;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lwk;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lwk;->e:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lwk;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->n(Landroid/net/Uri;Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
