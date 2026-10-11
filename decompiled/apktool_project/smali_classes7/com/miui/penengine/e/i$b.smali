.class public Lcom/miui/penengine/e/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/miui/penengine/e/i;


# direct methods
.method public constructor <init>(Lcom/miui/penengine/e/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/penengine/e/i$b;->a:Lcom/miui/penengine/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/penengine/e/i;Lcom/miui/penengine/e/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/penengine/e/i$b;-><init>(Lcom/miui/penengine/e/i;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/miui/penengine/e/i$b;->a:Lcom/miui/penengine/e/i;

    invoke-static {p2}, Lcom/miui/penengine/e/i;->a(Lcom/miui/penengine/e/i;)Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/miui/penengine/e/i$b;->a:Lcom/miui/penengine/e/i;

    iget-object p0, p0, Lcom/miui/penengine/e/i;->c:Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;

    invoke-interface {p0, p1}, Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;->onAuthComplete(Z)V

    :cond_1
    return-void
.end method
