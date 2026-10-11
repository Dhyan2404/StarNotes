.class public final synthetic Lcom/sunia/HTREnginev2/l9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/listener/OnRefreshListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l9f;->e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l9f;->e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->m0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Lcom/scwang/smart/refresh/layout/api/RefreshLayout;)V

    return-void
.end method
