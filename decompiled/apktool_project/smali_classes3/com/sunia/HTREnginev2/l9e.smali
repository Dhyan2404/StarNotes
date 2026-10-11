.class public final synthetic Lcom/sunia/HTREnginev2/l9e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/m9e;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/m9e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l9e;->a:Lcom/sunia/HTREnginev2/m9e;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l9e;->a:Lcom/sunia/HTREnginev2/m9e;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/m9e;->a(Lcom/sunia/HTREnginev2/m9e;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
