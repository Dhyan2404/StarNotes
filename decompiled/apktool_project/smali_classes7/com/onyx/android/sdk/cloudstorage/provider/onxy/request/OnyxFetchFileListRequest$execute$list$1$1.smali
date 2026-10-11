.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest$execute$list$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0011\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest$execute$list$1$1",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "compareTo",
        "",
        "other",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest$execute$list$1$1;->e:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 1
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest$execute$list$1$1;->e:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchFileListRequest$execute$list$1$1;->compareTo(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I

    move-result p0

    return p0
.end method
