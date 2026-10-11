.class public final Lcom/dropbox/core/v1/DbxEntry$File;
.super Lcom/dropbox/core/v1/DbxEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "File"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxEntry$File$Location;,
        Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;,
        Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;
    }
.end annotation


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final clientMtime:Ljava/util/Date;

.field public final humanSize:Ljava/lang/String;

.field public final lastModified:Ljava/util/Date;

.field public final numBytes:J

.field public final photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

.field public final rev:Ljava/lang/String;

.field public final videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$a;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$b;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 9
    invoke-direct/range {v0 .. v11}, Lcom/dropbox/core/v1/DbxEntry$File;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$a;)V

    .line 2
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    .line 3
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    .line 4
    iput-object p7, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    .line 5
    iput-object p8, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    .line 6
    iput-object p9, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    .line 7
    iput-object p10, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    .line 8
    iput-object p11, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    return-void
.end method

.method private static nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/dropbox/core/util/DumpWriter;",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    if-ne p2, p3, :cond_1

    const-string p1, "pending"

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    :goto_0
    return-void
.end method


# virtual methods
.method public asFile()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 0

    return-object p0
.end method

.method public asFolder()Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not a folder"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/dropbox/core/v1/DbxEntry;->dumpFields(Lcom/dropbox/core/util/DumpWriter;)V

    const-string v0, "numBytes"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "humanSize"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "lastModified"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "clientMtime"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "rev"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    sget-object v1, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    const-string v2, "photoInfo"

    invoke-static {p1, v2, v0, v1}, Lcom/dropbox/core/v1/DbxEntry$File;->nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    const-string v1, "videoInfo"

    invoke-static {p1, v1, p0, v0}, Lcom/dropbox/core/v1/DbxEntry$File;->nullablePendingField(Lcom/dropbox/core/util/DumpWriter;Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;Lcom/dropbox/core/util/Dumpable;)V

    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$File;)Z
    .locals 6

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry;->partialEquals(Lcom/dropbox/core/v1/DbxEntry;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    iget-wide v4, p1, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->humanSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-static {v0, v2}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 9
    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-static {p0, p1}, Lcom/dropbox/core/util/LangUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-class v0, Lcom/dropbox/core/v1/DbxEntry$File;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$File;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File;->equals(Lcom/dropbox/core/v1/DbxEntry$File;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    const-string p0, "File"

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxEntry;->partialHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->clientMtime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->rev:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$File;->photoInfo:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    invoke-static {v1}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dropbox/core/v1/DbxEntry$File;->videoInfo:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    invoke-static {p0}, Lcom/dropbox/core/util/LangUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFolder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
