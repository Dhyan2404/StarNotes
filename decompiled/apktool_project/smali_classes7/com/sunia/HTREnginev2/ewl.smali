.class public final synthetic Lcom/sunia/HTREnginev2/ewl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# instance fields
.field public final synthetic a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

.field public final synthetic b:Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ewl;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ewl;->b:Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;

    return-void
.end method


# virtual methods
.method public final onProgress(Ljava/lang/Object;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ewl;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ewl;->b:Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;

    move-object v2, p1

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->d(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/data/common/oss/PutObjectProgress;Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
