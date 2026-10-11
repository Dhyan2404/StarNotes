.class public final synthetic Lcom/sunia/HTREnginev2/e0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e0j;->e:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e0j;->e:Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;

    check-cast p1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;->l(Lcom/onyx/galaxy/note/editor/action/template/LoadTemplateColorsAction;Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    return-void
.end method
