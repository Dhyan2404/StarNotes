.class public Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;III)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->h:Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;

    iput p2, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->e:I

    iput p3, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->f:I

    iput p4, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->h:Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;

    iget v1, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->e:I

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->f:I

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask$a;->g:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->uploadPart(III)V

    return-void
.end method
