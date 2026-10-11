.class public final synthetic Lcom/sunia/HTREnginev2/n6n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n6n;->e:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n6n;->e:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->c(Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;)V

    return-void
.end method
