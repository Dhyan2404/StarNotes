.class public final synthetic Lcom/sunia/HTREnginev2/hvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/penengine/auth/MiuiAuthHelper$AuthResultListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/device/XiaomiDevice;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hvo;->a:Lcom/onyx/android/sdk/device/XiaomiDevice;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/hvo;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onAuthComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/hvo;->a:Lcom/onyx/android/sdk/device/XiaomiDevice;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hvo;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/device/XiaomiDevice;->g(Lcom/onyx/android/sdk/device/XiaomiDevice;Landroid/content/Context;Z)V

    return-void
.end method
