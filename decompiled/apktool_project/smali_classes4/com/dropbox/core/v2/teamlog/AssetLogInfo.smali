.class public final Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AssetLogInfo$b;,
        Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;


# instance fields
.field public a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

.field public b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

.field public c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

.field public d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

.field public e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

.field public f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/v2/teamlog/AssetLogInfo;)Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object p0
.end method

.method public static file(Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->g(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static folder(Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->h(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperDocument(Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->i(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperFolder(Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->j(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showcaseDocument(Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->k(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    if-eqz v2, :cond_d

    check-cast p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    if-eq p0, p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    if-eq p0, p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/FileLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v1

    :cond_c
    :goto_4
    return v0

    :cond_d
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FileLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object p0
.end method

.method public getFileValue()Lcom/dropbox/core/v2/teamlog/FileLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FILE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolderValue()Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperDocumentValue()Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_DOCUMENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperFolderValue()Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_FOLDER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShowcaseDocumentValue()Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SHOWCASE_DOCUMENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/FolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->b:Lcom/dropbox/core/v2/teamlog/FileLogInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->c:Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->d:Lcom/dropbox/core/v2/teamlog/PaperDocumentLogInfo;

    return-object p0
.end method

.method public isFile()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FILE:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaperDocument()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaperFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->PAPER_FOLDER:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowcaseDocument()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;->SHOWCASE_DOCUMENT:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->e:Lcom/dropbox/core/v2/teamlog/PaperFolderLogInfo;

    return-object p0
.end method

.method public final k(Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;)Lcom/dropbox/core/v2/teamlog/AssetLogInfo;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;

    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->f:Lcom/dropbox/core/v2/teamlog/ShowcaseDocumentLogInfo;

    return-object p0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo;->a:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AssetLogInfo$b;->b:Lcom/dropbox/core/v2/teamlog/AssetLogInfo$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
