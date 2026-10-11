.class public final synthetic Lcom/onyx/galaxy/note/editor/view/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/a;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/a;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$commitTitleEdit$1;->a(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)V

    return-void
.end method
