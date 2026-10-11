.class public Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/filerequests/FileRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final created:Ljava/util/Date;

.field protected deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

.field protected destination:Ljava/lang/String;

.field protected final fileCount:J

.field protected final id:Ljava/lang/String;

.field protected final isOpen:Z

.field protected final title:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const-string v0, "[-_0-9a-zA-Z]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_3

    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_1

    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    iput-boolean p5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    iput-wide p6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'created\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'title\' is shorter than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'title\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'url\' is shorter than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'url\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'id\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'id\' is shorter than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'id\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 11

    new-instance v10, Lcom/dropbox/core/v2/filerequests/FileRequest;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->created:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->isOpen:Z

    iget-wide v6, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->fileCount:J

    iget-object v8, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/filerequests/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ZJLjava/lang/String;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)V

    return-object v10
.end method

.method public withDeadline(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->deadline:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object p0
.end method

.method public withDestination(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'destination\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/FileRequest$Builder;->destination:Ljava/lang/String;

    return-object p0
.end method
