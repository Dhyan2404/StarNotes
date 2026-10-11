.class public Lcom/sunia/HTREnginev2/end$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/end$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/end;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/end;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/end;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/end$a;->a:Lcom/sunia/HTREnginev2/end;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/os/CancellationSignal;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;-><init>()V

    return-object p0
.end method

.method public b()Landroid/os/CancellationSignal;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/sunia/HTREnginev2/end$b;->b()Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method
