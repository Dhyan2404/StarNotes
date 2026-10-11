.class public final synthetic Lcom/sunia/HTREnginev2/uwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uwm;->e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uwm;->e:Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;->c(Lcom/onyx/galaxy/note/editor/view/custom/SplitScreenLayout;)V

    return-void
.end method
