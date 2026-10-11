.class public Landroidx/print/PrintHelper$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$c$a;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/print/PrintHelper$c$a;


# direct methods
.method public constructor <init>(Landroidx/print/PrintHelper$c$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/print/PrintHelper$c$a$a;->a:Landroidx/print/PrintHelper$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Landroidx/print/PrintHelper$c$a$a;->a:Landroidx/print/PrintHelper$c$a;

    iget-object v0, v0, Landroidx/print/PrintHelper$c$a;->e:Landroidx/print/PrintHelper$c;

    invoke-virtual {v0}, Landroidx/print/PrintHelper$c;->a()V

    iget-object p0, p0, Landroidx/print/PrintHelper$c$a$a;->a:Landroidx/print/PrintHelper$c$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
