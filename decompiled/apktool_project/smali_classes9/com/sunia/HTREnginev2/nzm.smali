.class public final synthetic Lcom/sunia/HTREnginev2/nzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nzm;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/nzm;->f:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzm;->e:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/nzm;->f:Z

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->n(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;ZLjava/lang/Object;)V

    return-void
.end method
