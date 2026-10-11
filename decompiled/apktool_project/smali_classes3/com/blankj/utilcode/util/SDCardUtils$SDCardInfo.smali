.class public Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SDCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDCardInfo"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->c:Z

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->S(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->d:J

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->R(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->e:J

    return-void
.end method

.method public static synthetic a(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    iget-wide v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->e:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->d:J

    return-wide v0
.end method

.method public isRemovable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDCardInfo {path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRemovable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->d:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", availableSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget-wide v2, p0, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->e:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
