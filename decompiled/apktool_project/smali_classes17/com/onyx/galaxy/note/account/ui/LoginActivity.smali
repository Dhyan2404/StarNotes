.class public final Lcom/onyx/galaxy/note/account/ui/LoginActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0015J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/ui/LoginActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "E",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final E()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->getDefaultLoginType()I

    move-result v2

    const-string v3, "key_login_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x3e8

    const-string v5, "trigger_from"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v4, "key_login_account"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingInflatedId"
        }
    .end annotation

    const v1, -0x54ffffe8

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
