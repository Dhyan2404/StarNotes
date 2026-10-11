.class public final synthetic Lcom/sunia/HTREnginev2/f2l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic a:Landroidx/core/app/PendingIntentCompat$c;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/app/PendingIntentCompat$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f2l;->a:Landroidx/core/app/PendingIntentCompat$c;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f2l;->a:Landroidx/core/app/PendingIntentCompat$c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/app/PendingIntentCompat$c;->f(Landroidx/core/app/PendingIntentCompat$c;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
