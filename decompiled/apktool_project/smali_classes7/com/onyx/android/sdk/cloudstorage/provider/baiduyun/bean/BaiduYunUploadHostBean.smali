.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;,
        Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;,
        Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\'\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0003IJKBy\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0005\u0012\u0006\u0010\u001b\u001a\u00020\u0005\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u0007\u0012\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0002\u0012\u0006\u0010 \u001a\u00020\u0007\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0002H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u000fH\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0002H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\u0093\u0001\u0010!\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00022\u0008\u0008\u0002\u0010 \u001a\u00020\u0007H\u00c6\u0001J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\u0007H\u00d6\u0001J\u0013\u0010&\u001a\u00020%2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001d\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0017\u0010\u0016\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0017\u0010\u0017\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u0017\u0010\u0018\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010,\u001a\u0004\u00084\u0010.R\u0017\u0010\u0019\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00100\u001a\u0004\u00086\u00102R\u0017\u0010\u001a\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010,\u001a\u0004\u00088\u0010.R\u0017\u0010\u001b\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010,\u001a\u0004\u0008:\u0010.R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010(\u001a\u0004\u0008<\u0010*R\u0017\u0010\u001d\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u0017\u0010\u001e\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u00100\u001a\u0004\u0008B\u00102R\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u0010(\u001a\u0004\u0008D\u0010*R\u0017\u0010 \u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u00100\u001a\u0004\u0008F\u00102\u00a8\u0006L"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;",
        "",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
        "component1",
        "",
        "component2",
        "",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
        "component8",
        "",
        "component9",
        "component10",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
        "component11",
        "component12",
        "bak_servers",
        "client_ip",
        "error_code",
        "error_msg",
        "expire",
        "host",
        "newno",
        "quic_servers",
        "request_id",
        "server_time",
        "servers",
        "sl",
        "copy",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Ljava/util/List;",
        "getBak_servers",
        "()Ljava/util/List;",
        "b",
        "Ljava/lang/String;",
        "getClient_ip",
        "()Ljava/lang/String;",
        "c",
        "I",
        "getError_code",
        "()I",
        "d",
        "getError_msg",
        "e",
        "getExpire",
        "f",
        "getHost",
        "g",
        "getNewno",
        "h",
        "getQuic_servers",
        "i",
        "J",
        "getRequest_id",
        "()J",
        "j",
        "getServer_time",
        "k",
        "getServers",
        "l",
        "getSl",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)V",
        "BakServer",
        "QuicServer",
        "Server",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:J

.field public final j:I

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
            ">;JI",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "bak_servers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_ip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error_msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newno"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quic_servers"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servers"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    iput p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    iput p5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    iput-object p6, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    iput-wide p9, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    iput p11, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    iput-object p12, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    iput p13, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;IILjava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-wide v10, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    goto :goto_8

    :cond_8
    move-wide/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    goto :goto_b

    :cond_b
    move/from16 v1, p13

    :goto_b
    move-object p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-wide/from16 p9, v10

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->copy(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    return-object p0
.end method

.method public final component10()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    return p0
.end method

.method public final component11()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    return-object p0
.end method

.method public final component12()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    return-object p0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    return-wide v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;
    .locals 15
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
            ">;JI",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
            ">;I)",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bak_servers"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "client_ip"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error_msg"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newno"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quic_servers"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servers"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;

    move-object v1, v0

    move/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;-><init>(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JILjava/util/List;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    iget v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    iget v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    iget-wide v5, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    iget v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    iget p1, p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getBak_servers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$BakServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getClient_ip()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getError_code()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    return p0
.end method

.method public final getError_msg()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpire()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    return p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getNewno()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuic_servers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$QuicServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    return-object p0
.end method

.method public final getRequest_id()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    return-wide v0
.end method

.method public final getServer_time()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    return p0
.end method

.method public final getServers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean$Server;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getSl()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaiduYunUploadHostBean(bak_servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", client_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error_msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quic_servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", server_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", servers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUploadHostBean;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
