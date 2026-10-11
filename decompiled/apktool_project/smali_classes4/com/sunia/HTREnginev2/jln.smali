.class public final synthetic Lcom/sunia/HTREnginev2/jln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jln;->e:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jln;->e:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    invoke-static {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->c(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    return-void
.end method
