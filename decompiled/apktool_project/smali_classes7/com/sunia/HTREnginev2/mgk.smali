.class public final synthetic Lcom/sunia/HTREnginev2/mgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/base/data/SortOrder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mgk;->e:Lcom/onyx/android/sdk/base/data/SortOrder;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mgk;->e:Lcom/onyx/android/sdk/base/data/SortOrder;

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->c(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I

    move-result p0

    return p0
.end method
