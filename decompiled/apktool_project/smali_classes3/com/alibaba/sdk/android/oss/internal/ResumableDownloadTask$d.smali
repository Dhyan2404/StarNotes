.class public Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$d;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field public final synthetic h:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask$d;->h:Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method
