.class public Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;III)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->h:Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;

    iput p2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->e:I

    iput p3, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->f:I

    iput p4, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->h:Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;

    iget v1, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->e:I

    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->f:I

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask$a;->g:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->uploadPart(III)V

    return-void
.end method
