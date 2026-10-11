.class public final synthetic Lcom/sunia/HTREnginev2/ewd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

.field public final synthetic f:Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ewd;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ewd;->f:Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ewd;->e:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ewd;->f:Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->a(Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;Z)V

    return-void
.end method
