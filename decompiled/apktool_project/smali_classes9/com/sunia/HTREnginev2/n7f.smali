.class public final synthetic Lcom/sunia/HTREnginev2/n7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n7f;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/n7f;->f:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n7f;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n7f;->f:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->r(Ljava/util/List;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Landroid/view/View;)V

    return-void
.end method
