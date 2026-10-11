.class public final Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1;
.super Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2;->invoke()Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1",
        "Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;",
        "onDataChanged",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1;->a:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$checkEmptyDataObserver$2$1;->a:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V

    return-void
.end method
