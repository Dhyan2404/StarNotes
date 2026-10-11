.class public final synthetic Lcom/onyx/galaxy/note/settings/ui/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/b;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/b;->e:Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment$backup$1;->a(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsLocalBackupFragment;)V

    return-void
.end method
