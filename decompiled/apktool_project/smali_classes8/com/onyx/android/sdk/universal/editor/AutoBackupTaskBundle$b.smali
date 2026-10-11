.class public final Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->insertAutoBackupTask(Lcom/onyx/android/sdk/replicator/note/db/model/AutoBackupTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;->e:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle;->cleanAutoLocalBackTasks()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/AutoBackupTaskBundle$b;->a(Z)V

    return-void
.end method
