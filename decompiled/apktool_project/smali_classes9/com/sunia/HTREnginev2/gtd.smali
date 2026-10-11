.class public final synthetic Lcom/sunia/HTREnginev2/gtd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gtd;->a:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gtd;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/gtd;->c:Z

    iput-object p4, p0, Lcom/sunia/HTREnginev2/gtd;->d:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gtd;->a:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gtd;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/gtd;->c:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gtd;->d:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->m(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;Lio/reactivex/rxjava3/core/ObservableEmitter;)V

    return-void
.end method
