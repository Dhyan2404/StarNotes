.class public final synthetic Lcom/sunia/HTREnginev2/vif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vif;->e:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vif;->e:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->a(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method
