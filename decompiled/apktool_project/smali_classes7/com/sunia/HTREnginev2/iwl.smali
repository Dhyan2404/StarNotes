.class public final synthetic Lcom/sunia/HTREnginev2/iwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iwl;->e:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iwl;->e:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->b(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    return-void
.end method
