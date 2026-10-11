.class public final Lcom/blankj/utilcode/util/LogUtils$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

.field public t:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

.field public u:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

.field public v:Lcom/blankj/utilcode/util/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "util"

    .line 3
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->c:Ljava/lang/String;

    const-string v0, ".txt"

    .line 4
    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->e:Z

    .line 6
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->f:Z

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->g:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->h:Z

    .line 9
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->i:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->j:Z

    .line 11
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->k:Z

    .line 12
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->l:Z

    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->m:I

    .line 14
    iput v2, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->n:I

    .line 15
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->o:I

    .line 16
    iput v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->p:I

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->q:I

    .line 18
    invoke-static {}, Lcom/blankj/utilcode/util/b;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->r:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/blankj/utilcode/util/b$a;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/b$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->v:Lcom/blankj/utilcode/util/b$a;

    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/b;->A0()Z

    move-result v0

    const-string v1, "log"

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->a:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->a:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/blankj/utilcode/util/LogUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->m:I

    return p0
.end method

.method public static synthetic b(Lcom/blankj/utilcode/util/LogUtils$Config;)I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->n:I

    return p0
.end method

.method public static synthetic c(Lcom/blankj/utilcode/util/LogUtils$Config;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->h:Z

    return p0
.end method

.method public static synthetic d(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->t:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/b$a;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->v:Lcom/blankj/utilcode/util/b$a;

    return-object p0
.end method

.method public static synthetic f(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$IFileWriter;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->s:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    return-object p0
.end method

.method public static synthetic g(Lcom/blankj/utilcode/util/LogUtils$Config;)Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->u:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    return-object p0
.end method


# virtual methods
.method public final addFileExtraHead(Ljava/lang/String;Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->v:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/blankj/utilcode/util/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addFileExtraHead(Ljava/util/Map;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->v:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {v0, p1}, Lcom/blankj/utilcode/util/b$a;->c(Ljava/util/Map;)V

    return-object p0
.end method

.method public final addFormatter(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Lcom/blankj/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->d()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->c(Lcom/blankj/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final getConsoleFilter()C
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->e()[C

    move-result-object v0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->m:I

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v0, p0

    return p0
.end method

.method public final getDefaultDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileFilter()C
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->e()[C

    move-result-object v0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->n:I

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v0, p0

    return p0
.end method

.method public final getFilePrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getGlobalTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/b;->D0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getProcessName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->r:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSaveDays()I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->q:I

    return p0
.end method

.method public final getStackDeep()I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->o:I

    return p0
.end method

.method public final getStackOffset()I
    .locals 0

    iget p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->p:I

    return p0
.end method

.method public final haveSetOnConsoleOutputListener()Z
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->t:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final haveSetOnFileOutputListener()Z
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->u:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLog2ConsoleSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->f:Z

    return p0
.end method

.method public final isLog2FileSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->j:Z

    return p0
.end method

.method public final isLogBorderSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->k:Z

    return p0
.end method

.method public final isLogHeadSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->i:Z

    return p0
.end method

.method public final isLogSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->e:Z

    return p0
.end method

.method public final isSingleTagSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->l:Z

    return p0
.end method

.method public final setBorderSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->k:Z

    return-object p0
.end method

.method public final setConsoleFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->m:I

    return-object p0
.end method

.method public final setConsoleSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->f:Z

    return-object p0
.end method

.method public final setDir(Ljava/io/File;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setDir(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->D0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->b:Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->b:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public final setFileExtension(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 2

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->D0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ".txt"

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->d:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final setFileFilter(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->n:I

    return-object p0
.end method

.method public final setFilePrefix(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->D0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "util"

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->c:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public final setFileWriter(Lcom/blankj/utilcode/util/LogUtils$IFileWriter;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->s:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    return-object p0
.end method

.method public final setGlobalTag(Ljava/lang/String;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 1

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->D0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->h:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->h:Z

    :goto_0
    return-object p0
.end method

.method public final setLog2FileSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->j:Z

    return-object p0
.end method

.method public final setLogHeadSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->i:Z

    return-object p0
.end method

.method public final setLogSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->e:Z

    return-object p0
.end method

.method public final setOnConsoleOutputListener(Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->t:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    return-object p0
.end method

.method public final setOnFileOutputListener(Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->u:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    return-object p0
.end method

.method public final setSaveDays(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->q:I

    return-object p0
.end method

.method public final setSingleTagSwitch(Z)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->l:Z

    return-object p0
.end method

.method public final setStackDeep(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->o:I

    return-object p0
.end method

.method public final setStackOffset(I)Lcom/blankj/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iput p1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->p:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "headSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filePrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "borderSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "singleTagSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getConsoleFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getFileFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stackDeep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackDeep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "stackOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getStackOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "saveDays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/LogUtils$Config;->getSaveDays()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "formatter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->d()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileWriter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->s:Lcom/blankj/utilcode/util/LogUtils$IFileWriter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onConsoleOutputListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->t:Lcom/blankj/utilcode/util/LogUtils$OnConsoleOutputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onFileOutputListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->u:Lcom/blankj/utilcode/util/LogUtils$OnFileOutputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/LogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileExtraHeader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/blankj/utilcode/util/LogUtils$Config;->v:Lcom/blankj/utilcode/util/b$a;

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/b$a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
