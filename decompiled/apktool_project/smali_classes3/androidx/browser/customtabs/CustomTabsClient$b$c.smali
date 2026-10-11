.class public Landroidx/browser/customtabs/CustomTabsClient$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$b;->onMessageChannelReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroidx/browser/customtabs/CustomTabsClient$b;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$b;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$b$c;->f:Landroidx/browser/customtabs/CustomTabsClient$b;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$b$c;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$c;->f:Landroidx/browser/customtabs/CustomTabsClient$b;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$b;->i:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroidx/browser/customtabs/CustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void
.end method
