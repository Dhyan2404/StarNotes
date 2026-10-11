.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;->m(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

.field public final synthetic f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$d;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$d;->f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$d;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$d;->f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;->access$saveAddedRecord(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V

    return-void
.end method
