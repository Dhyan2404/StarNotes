.class public Landroidx/browser/customtabs/CustomTabsClient$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$b;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Landroidx/browser/customtabs/CustomTabsClient$b;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->g:Landroidx/browser/customtabs/CustomTabsClient$b;

    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->e:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->g:Landroidx/browser/customtabs/CustomTabsClient$b;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$b;->i:Landroidx/browser/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->e:Ljava/lang/String;

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$b;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroidx/browser/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
