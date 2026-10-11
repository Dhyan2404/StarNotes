.class public Lcom/miui/penengine/a/b$c;
.super Lcom/miui/penengine/g/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field public final synthetic c:Lcom/miui/penengine/a/b;


# direct methods
.method public constructor <init>(Lcom/miui/penengine/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/penengine/a/b$c;->c:Lcom/miui/penengine/a/b;

    invoke-direct {p0}, Lcom/miui/penengine/g/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/penengine/a/b$c;->c:Lcom/miui/penengine/a/b;

    invoke-static {p0}, Lcom/miui/penengine/a/b;->b(Lcom/miui/penengine/a/b;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "color"

    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "color_space"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
