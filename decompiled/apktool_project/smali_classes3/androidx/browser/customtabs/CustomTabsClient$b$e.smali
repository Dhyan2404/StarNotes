.class public Landroidx/browser/customtabs/CustomTabsClient$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/CustomTabsClient$b;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Z

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Landroidx/browser/customtabs/CustomTabsClient$b;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$b;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->i:Landroidx/browser/customtabs/CustomTabsClient$b;

    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->e:I

    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->f:Landroid/net/Uri;

    iput-boolean p4, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->g:Z

    iput-object p5, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->h:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->i:Landroidx/browser/customtabs/CustomTabsClient$b;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$b;->i:Landroidx/browser/customtabs/CustomTabsCallback;

    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->e:I

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->f:Landroid/net/Uri;

    iget-boolean v3, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->g:Z

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsClient$b$e;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/browser/customtabs/CustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return-void
.end method
