.class public final synthetic Lcom/sunia/HTREnginev2/voe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/CustomTabsService$a;

.field public final synthetic b:Landroidx/browser/customtabs/CustomTabsSessionToken;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/voe;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/voe;->b:Landroidx/browser/customtabs/CustomTabsSessionToken;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/voe;->a:Landroidx/browser/customtabs/CustomTabsService$a;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/voe;->b:Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-static {v0, p0}, Landroidx/browser/customtabs/CustomTabsService$a;->a(Landroidx/browser/customtabs/CustomTabsService$a;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method
