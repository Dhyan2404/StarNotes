.class public Lcom/blankj/utilcode/util/CacheDiskUtils$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/CacheDiskUtils$c;->l()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/blankj/utilcode/util/CacheDiskUtils$c;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/CacheDiskUtils$c;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/CacheDiskUtils$c$b;->e:Lcom/blankj/utilcode/util/CacheDiskUtils$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "cdu_"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
