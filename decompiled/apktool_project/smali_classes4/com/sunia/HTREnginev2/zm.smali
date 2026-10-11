.class public final synthetic Lcom/sunia/HTREnginev2/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter4/BaseDifferAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter4/BaseDifferAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zm;->a:Lcom/chad/library/adapter4/BaseDifferAdapter;

    return-void
.end method


# virtual methods
.method public final onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zm;->a:Lcom/chad/library/adapter4/BaseDifferAdapter;

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter4/BaseDifferAdapter;->l(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
