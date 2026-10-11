.class public final synthetic Lcom/sunia/HTREnginev2/nvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nvd;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nvd;->e:Ljava/io/File;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudBackupAction$j;->a(Ljava/io/File;)V

    return-void
.end method
