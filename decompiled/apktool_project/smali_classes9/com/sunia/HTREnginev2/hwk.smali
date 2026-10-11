.class public final synthetic Lcom/sunia/HTREnginev2/hwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hwk;->e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hwk;->e:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;->o(Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;Ljava/util/List;)V

    return-void
.end method
