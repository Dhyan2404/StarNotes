.class public Landroidx/appcompat/app/AppCompatDelegateImpl$r$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$r;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$r;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$r$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$r$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$r;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$r;->e()V

    return-void
.end method
