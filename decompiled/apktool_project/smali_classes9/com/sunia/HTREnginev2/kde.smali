.class public final synthetic Lcom/sunia/HTREnginev2/kde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kde;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kde;->e:Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;->m(Lcom/onyx/galaxy/note/editor/view/adapter/CountDownHistoryAdapter;)V

    return-void
.end method
