.class public final synthetic Lcom/sunia/HTREnginev2/gwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BooleanSupplier;


# instance fields
.field public final synthetic e:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;


# direct methods
.method public synthetic constructor <init>([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gwl;->e:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gwl;->e:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->h([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)Z

    move-result p0

    return p0
.end method
