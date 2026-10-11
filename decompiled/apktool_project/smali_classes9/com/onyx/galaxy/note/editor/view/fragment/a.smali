.class public final synthetic Lcom/onyx/galaxy/note/editor/view/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/a;->e:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/a;->e:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$addOneRecord$1$1;->a(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V

    return-void
.end method
