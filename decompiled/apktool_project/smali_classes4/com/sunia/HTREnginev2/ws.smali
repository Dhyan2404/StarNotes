.class public final Lcom/sunia/HTREnginev2/ws;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/sunia/HTREnginev2/tve;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tve;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ws;->b:Z

    .line 4
    iput-object p1, p0, Lcom/sunia/HTREnginev2/ws;->a:Lcom/sunia/HTREnginev2/tve;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/sunia/HTREnginev2/ws;-><init>(Lcom/sunia/HTREnginev2/tve;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sunia/HTREnginev2/tve;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ws;->a:Lcom/sunia/HTREnginev2/tve;

    return-object p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/ws;->b:Z

    return p0
.end method
