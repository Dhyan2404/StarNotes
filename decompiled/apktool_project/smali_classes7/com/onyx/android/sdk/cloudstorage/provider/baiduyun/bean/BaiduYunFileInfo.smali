.class public Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\'\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\u0008\u0016\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0007\u00a2\u0006\u0004\u0008[\u0010\\R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R$\u0010\u0019\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\"\u0010%\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u001c\u001a\u0004\u0008#\u0010\u001e\"\u0004\u0008$\u0010 R\"\u0010)\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u001c\u001a\u0004\u0008\'\u0010\u001e\"\u0004\u0008(\u0010 R$\u0010-\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u000c\u001a\u0004\u0008+\u0010\u000e\"\u0004\u0008,\u0010\u0010R\"\u00101\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0004\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\"\u00105\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0004\u001a\u0004\u00083\u0010\u0006\"\u0004\u00084\u0010\u0008R\"\u00109\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\u0004\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\"\u0010=\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0004\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\"\u0010A\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010\u0004\u001a\u0004\u0008?\u0010\u0006\"\u0004\u0008@\u0010\u0008R0\u0010I\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR$\u0010Q\u001a\u0004\u0018\u00010J8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0011\u0010S\u001a\u00020R8G\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010TR\u0019\u0010X\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010U8G\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010WR\u0011\u0010Z\u001a\u00020\n8G\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010\u000e\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "",
        "",
        "a",
        "J",
        "getFsId",
        "()J",
        "setFsId",
        "(J)V",
        "fsId",
        "",
        "b",
        "Ljava/lang/String;",
        "getPath",
        "()Ljava/lang/String;",
        "setPath",
        "(Ljava/lang/String;)V",
        "path",
        "c",
        "getServerFilename",
        "setServerFilename",
        "serverFilename",
        "d",
        "getDlink",
        "setDlink",
        "dlink",
        "",
        "e",
        "I",
        "getIsdir",
        "()I",
        "setIsdir",
        "(I)V",
        "isdir",
        "f",
        "getCategory",
        "setCategory",
        "category",
        "g",
        "getShare",
        "setShare",
        "share",
        "h",
        "getMd5",
        "setMd5",
        "md5",
        "i",
        "getSize",
        "setSize",
        "size",
        "j",
        "getServerMtime",
        "setServerMtime",
        "serverMtime",
        "k",
        "getServerCtime",
        "setServerCtime",
        "serverCtime",
        "l",
        "getLocalMtime",
        "setLocalMtime",
        "localMtime",
        "m",
        "getLocalCtime",
        "setLocalCtime",
        "localCtime",
        "",
        "n",
        "Ljava/util/Map;",
        "getThumbs",
        "()Ljava/util/Map;",
        "setThumbs",
        "(Ljava/util/Map;)V",
        "thumbs",
        "Lokhttp3/ResponseBody;",
        "o",
        "Lokhttp3/ResponseBody;",
        "getResponseBody",
        "()Lokhttp3/ResponseBody;",
        "setResponseBody",
        "(Lokhttp3/ResponseBody;)V",
        "responseBody",
        "",
        "isDirectory",
        "()Z",
        "",
        "getThumbList",
        "()Ljava/util/List;",
        "thumbList",
        "getFileName",
        "fileName",
        "<init>",
        "()V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "fs_id"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "server_filename"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:J

.field public j:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "server_mtime"
        }
    .end annotation
.end field

.field public k:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "server_ctime"
        }
    .end annotation
.end field

.field public l:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "local_mtime"
        }
    .end annotation
.end field

.field public m:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "local_ctime"
        }
    .end annotation
.end field

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lokhttp3/ResponseBody;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategory()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->f:I

    return p0
.end method

.method public final getDlink()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->b:Ljava/lang/String;

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "getName(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final getFsId()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->a:J

    return-wide v0
.end method

.method public final getIsdir()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->e:I

    return p0
.end method

.method public final getLocalCtime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->m:J

    return-wide v0
.end method

.method public final getLocalMtime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->l:J

    return-wide v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getResponseBody()Lokhttp3/ResponseBody;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->o:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method public final getServerCtime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->k:J

    return-wide v0
.end method

.method public final getServerFilename()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getServerMtime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->j:J

    return-wide v0
.end method

.method public final getShare()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->g:I

    return p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->i:J

    return-wide v0
.end method

.method public final getThumbList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->n:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->n:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public final getThumbs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->n:Ljava/util/Map;

    return-object p0
.end method

.method public final isDirectory()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->f:I

    return-void
.end method

.method public final setDlink(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final setFsId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->a:J

    return-void
.end method

.method public final setIsdir(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->e:I

    return-void
.end method

.method public final setLocalCtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->m:J

    return-void
.end method

.method public final setLocalMtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->l:J

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final setResponseBody(Lokhttp3/ResponseBody;)V
    .locals 0
    .param p1    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->o:Lokhttp3/ResponseBody;

    return-void
.end method

.method public final setServerCtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->k:J

    return-void
.end method

.method public final setServerFilename(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final setServerMtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->j:J

    return-void
.end method

.method public final setShare(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->g:I

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->i:J

    return-void
.end method

.method public final setThumbs(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->n:Ljava/util/Map;

    return-void
.end method
