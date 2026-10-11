.class public final synthetic Lcom/sunia/HTREnginev2/vjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/xjn;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/xjn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vjn;->e:Lcom/sunia/HTREnginev2/xjn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vjn;->e:Lcom/sunia/HTREnginev2/xjn;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/xjn;->a(Lcom/sunia/HTREnginev2/xjn;)V

    return-void
.end method
