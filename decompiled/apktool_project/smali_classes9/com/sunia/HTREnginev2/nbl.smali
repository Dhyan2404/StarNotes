.class public final synthetic Lcom/sunia/HTREnginev2/nbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nbl;->e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nbl;->e:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->l(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
